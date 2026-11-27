//! Exceptions: `:throw`, `:try`, `:catch`, `:finally`, `:endtry` and the conversion of errors into exceptions
//! (`ex_eval.c`). An error under an active `:try` is thrown after the command that failed has returned, as
//! `Vim(cmd):E123: text`; one that no `:catch` takes is given at the end.

use std::{cell::RefCell, rc::Rc};

use super::{
    Res, Value,
    cmdline::{self, ends_excmd},
    cstack::{CSF_ACTIVE, CSF_CAUGHT, CSF_FINALLY, CSF_FOR, CSF_SILENT, CSF_THROWN, CSF_TRUE, CSF_TRY, CSF_WHILE, CSL_HAD_FINA, CSTACK_LEN, CSTP_BREAK, CSTP_CONTINUE, CSTP_ERROR, CSTP_FINISH, CSTP_NONE, CSTP_RETURN, CSTP_THROW, Cstack, rewind_conditionals},
};
use crate::editor::Editor;

/// What was thrown (`except_type_T`): a `:throw`, or an error.
#[derive(Clone, Copy, PartialEq)]
pub(in crate::editor) enum ExKind {
    User,
    Error,
}

/// An error message kept to be thrown (`msglist_T`).
#[derive(Clone)]
pub(in crate::editor) struct Msg {
    pub msg: String,
    pub multiline: bool,
    pub throw_msg: Option<String>,
    pub sfile: Option<String>,
    pub slnum: usize,
}

/// An exception (`except_T`).
pub(in crate::editor) struct Except {
    pub value: Rc<str>,
    pub kind: ExKind,
    pub messages: Vec<Msg>,
    pub throw_name: Rc<str>,
    pub throw_lnum: usize,
}

pub(in crate::editor) type ExRef = Rc<RefCell<Except>>;

/// `exception_state_T`: what a deferred call must not see of the exception that may be going on.
pub(in crate::editor) struct ExceptionState {
    exception: Option<ExRef>,
    did_throw: bool,
    need_rethrow: bool,
    trylevel: usize,
    did_emsg: bool,
}

impl Editor {
    pub(super) fn exception_state_save(&self) -> ExceptionState {
        ExceptionState {
            exception: self.scripts.current_exception.clone(),
            did_throw: self.scripts.did_throw,
            need_rethrow: self.scripts.need_rethrow,
            trylevel: self.scripts.trylevel,
            did_emsg: self.scripts.did_emsg,
        }
    }

    pub(super) fn exception_state_clear(&mut self) {
        self.scripts.current_exception = None;
        self.scripts.did_throw = false;
        self.scripts.need_rethrow = false;
        self.scripts.trylevel = 0;
        self.scripts.did_emsg = false;
    }

    pub(super) fn exception_state_restore(&mut self, e: ExceptionState) {
        // Handle any outstanding exceptions before restoring the state.
        if self.scripts.did_throw {
            self.handle_did_throw();
        }
        self.scripts.current_exception = e.exception;
        self.scripts.did_throw = e.did_throw;
        self.scripts.need_rethrow = e.need_rethrow;
        self.scripts.trylevel = e.trylevel;
        self.scripts.did_emsg = e.did_emsg;
    }

    /// `aborting`: an error under `abort`, or an exception that was not caught yet.
    pub(super) fn aborting(&self) -> bool {
        (self.scripts.did_emsg && self.scripts.force_abort) || self.scripts.did_throw
    }

    /// `cause_errthrow`: keeps the message to be thrown as an exception when one is wanted. True when `emsg` must
    /// not show it.
    pub(in crate::editor) fn cause_errthrow(&mut self, mesg: &str, multiline: bool, severe: bool) -> bool {
        if self.scripts.suppress_errthrow {
            return false;
        }
        // The first message of a command: `force_abort` is off until the throw point has been reached.
        if !self.scripts.did_emsg {
            self.scripts.cause_abort = self.scripts.force_abort;
            self.scripts.force_abort = false;
        }
        // No try conditional, no exception being thrown and no error in one so far: nothing (for scripts that do not
        // use exceptions), and `:silent!` keeps the message for `v:errmsg`.
        if ((self.scripts.trylevel == 0 && !self.scripts.cause_abort) || self.scripts.emsg_silent > 0) && !self.scripts.did_throw {
            return false;
        }
        // All commands in nested function calls and sourced files are aborted at once.
        self.scripts.cause_abort = true;
        // An exception that is being thrown is discarded: it must not be caught after an error in a conditional.
        if self.scripts.did_throw {
            self.discard_current_exception();
        }
        let sfile = self.estack_sfile();
        let slnum = self.scripts.stack.last().map_or(0, |f| f.lnum);
        if let Some(list) = &mut self.scripts.msg_list {
            let first = list.is_empty();
            let mut elem = Msg { msg: mesg.to_string(), multiline, throw_msg: None, sfile, slnum };
            if first || severe {
                // Skip the extra "Vim " prefix of "E458".
                let t = mesg.as_bytes();
                let tm = if mesg.starts_with("Vim E") && t.len() > 9 && t[5..8].iter().all(u8::is_ascii_digit) && t[8] == b':' && t[9] == b' ' { &mesg[4..] } else { mesg };
                if first {
                    elem.throw_msg = Some(tm.to_string());
                } else {
                    list[0].throw_msg = Some(tm.to_string());
                }
            }
            list.push(elem);
        }
        true
    }

    /// `estack_sfile(ESTACK_NONE)`: the execution stack as `script[3]..function F`, none when it is empty.
    pub(super) fn estack_sfile(&self) -> Option<String> {
        if self.scripts.stack.is_empty() {
            None
        } else {
            Some(self.scripts.chain_string())
        }
    }

    /// `get_exception_string` for an error: `Vim(cmd):E123: text` or `Vim:E123: text`.
    fn error_exception_string(mesg: &str, cmdname: Option<&str>) -> String {
        match cmdname {
            Some(c) if !c.is_empty() => format!("Vim({c}):{mesg}"),
            _ => format!("Vim:{mesg}"),
        }
    }

    /// `throw_exception`. False when it cannot be thrown (a user exception with the prefix `Vim`).
    fn throw_exception(&mut self, user: Option<String>, messages: Vec<Msg>, cmdname: Option<&str>) -> bool {
        let (value, kind) = match user {
            Some(v) => {
                // An error or interrupt exception cannot be faked.
                if v.starts_with("Vim") && matches!(v.as_bytes().get(3), None | Some(b':') | Some(b'(')) {
                    self.error("E608: Cannot :throw exceptions with 'Vim' prefix");
                    self.scripts.current_exception = None;
                    return false;
                }
                (v, ExKind::User)
            }
            None => {
                let mesg = messages[0].throw_msg.clone().unwrap_or_else(|| messages[0].msg.clone());
                (Self::error_exception_string(&mesg, cmdname), ExKind::Error)
            }
        };
        let (throw_name, throw_lnum) = match messages.first().and_then(|m| m.sfile.clone().map(|s| (s, m.slnum))) {
            Some((n, l)) if kind == ExKind::Error => (n, l),
            _ => (self.estack_sfile().unwrap_or_default(), self.scripts.stack.last().map_or(0, |f| f.lnum)),
        };
        self.scripts.current_exception = Some(Rc::new(RefCell::new(Except { value: value.into(), kind, messages, throw_name: throw_name.into(), throw_lnum })));
        true
    }

    /// `discard_current_exception`.
    pub(super) fn discard_current_exception(&mut self) {
        self.scripts.current_exception = None;
        self.scripts.did_throw = false;
        self.scripts.need_rethrow = false;
    }

    /// `discard_exception`: `ex` is no longer the exception being thrown.
    pub(super) fn discard_exception(&mut self, ex: &ExRef) {
        if self.scripts.current_exception.as_ref().is_some_and(|c| Rc::ptr_eq(c, ex)) {
            self.scripts.current_exception = None;
        }
    }

    /// `catch_exception`: the exception is on the stack of the caught ones, `v:exception` and `v:throwpoint` say so.
    fn catch_exception(&mut self, ex: &ExRef) {
        self.scripts.caught_stack.push(ex.clone());
        self.set_exception_vars(Some(ex));
    }

    /// `finish_exception`.
    pub(super) fn finish_exception(&mut self, ex: &ExRef) {
        self.scripts.caught_stack.pop();
        let top = self.scripts.caught_stack.last().cloned();
        self.set_exception_vars(top.as_ref());
        self.discard_exception(ex);
    }

    fn set_exception_vars(&mut self, ex: Option<&ExRef>) {
        let (value, point) = match ex {
            Some(e) => {
                let e = e.borrow();
                let point = if e.throw_name.is_empty() {
                    String::new()
                } else if e.throw_lnum != 0 {
                    format!("{}, line {}", e.throw_name, e.throw_lnum)
                } else {
                    e.throw_name.to_string()
                };
                (e.value.clone(), point)
            }
            None => (Rc::from(""), String::new()),
        };
        let mut v = self.vim_vars.borrow_mut();
        v.insert("exception".into(), Value::Str(value));
        v.insert("throwpoint".into(), Value::Str(point.into()));
    }

    /// `do_errthrow`: throws the messages kept for the command that failed; without a `cstack` (`do_cmdline` could
    /// not start) the throw waits.
    pub(super) fn do_errthrow(&mut self, cs: Option<&mut Cstack>, cmdname: Option<&str>) {
        if self.scripts.cause_abort {
            self.scripts.cause_abort = false;
            self.scripts.force_abort = true;
        }
        let Some(list) = self.scripts.msg_list.as_mut().filter(|l| !l.is_empty()) else { return };
        let messages = std::mem::take(list);
        if self.throw_exception(None, messages, cmdname) {
            match cs {
                Some(cs) => self.do_throw(cs),
                None => self.scripts.need_rethrow = true,
            }
        }
    }

    /// `do_throw`: the current exception goes up the conditionals to the try that may catch it.
    pub(super) fn do_throw(&mut self, cs: &mut Cstack) {
        let idx = self.cleanup_conditionals(cs, 0, false);
        if idx >= 0 {
            let i = idx as usize;
            // When this try is active and before its first `:catch`, the `:catch` commands look at the exception.
            if cs.flags[i] & CSF_CAUGHT == 0 {
                if cs.flags[i] & CSF_ACTIVE != 0 {
                    cs.flags[i] |= CSF_THROWN;
                } else {
                    // THROWN may be set for an exception that was discarded; it is for the new one that this is read.
                    cs.flags[i] &= !CSF_THROWN;
                }
            }
            cs.flags[i] &= !CSF_ACTIVE;
            cs.exception[i] = self.scripts.current_exception.clone();
        }
        self.scripts.did_throw = true;
    }

    /// `handle_did_throw`: an exception nothing caught is reported.
    pub(super) fn handle_did_throw(&mut self) {
        let Some(ex) = self.scripts.current_exception.clone() else { return };
        let (kind, value, messages, throw_name, throw_lnum) = {
            let e = ex.borrow();
            (e.kind, e.value.clone(), e.messages.clone(), e.throw_name.clone(), e.throw_lnum)
        };
        // The report is made at the place the exception was thrown.
        self.scripts.stack.push(super::docmd::Frame::except(throw_name, throw_lnum));
        // The report names its own place, even when the last error was in the same one.
        self.scripts.last_name = None;
        self.discard_current_exception();
        // Under `:silent!` the exception is not fatal.
        if self.scripts.emsg_silent == 0 {
            self.scripts.suppress_errthrow = true;
            self.scripts.force_abort = true;
        }
        match kind {
            ExKind::User => self.error(format!("E605: Exception not caught: {value}")),
            ExKind::Error => {
                for m in messages {
                    self.error_ml(m.msg, m.multiline);
                }
            }
        }
        self.scripts.stack.pop();
    }

    /// `ex_throw`.
    pub(super) fn ex_throw(&mut self, cs: &mut Cstack, skip: bool, arg: &str) {
        let mut value = None;
        if !matches!(arg.as_bytes().first(), None | Some(b'|' | b'\n')) {
            // `eval_to_string_skip`: the value of the expression as a String, none when skipping or on an error.
            if skip {
                self.scripts.emsg_skip += 1;
            }
            let r = self.eval(arg);
            if skip {
                self.scripts.emsg_skip -= 1;
            }
            match r {
                // `tv_get_string` gives the empty string after its error: that is what is thrown.
                Ok(v) if !skip => match self.to_string(&v) {
                    Ok(s) => value = Some(s),
                    Err(m) => {
                        self.error(m);
                        value = Some(String::new());
                    }
                },
                Ok(_) => {}
                Err(m) => self.error(m),
            }
        } else {
            self.error("E471: Argument required");
        }
        if !skip && let Some(v) = value && self.throw_exception(Some(v), Vec::new(), None) {
            self.do_throw(cs);
        }
    }

    /// `ex_try`.
    pub(super) fn ex_try(&mut self, cs: &mut Cstack) -> Res<()> {
        if cs.idx == CSTACK_LEN as isize - 1 {
            return Err("E601: :try nesting too deep".into());
        }
        cs.idx += 1;
        cs.trylevel += 1;
        let top = cs.idx as usize;
        cs.flags[top] = CSF_TRY;
        cs.pending[top] = CSTP_NONE;
        let skip = self.scripts.did_emsg || self.scripts.did_throw || (cs.idx > 0 && cs.flags[top - 1] & CSF_ACTIVE == 0);
        if !skip {
            // ACTIVE and TRUE: the `:catch` commands check for a match if an exception is thrown, and the finally
            // clause is executed.
            cs.flags[top] |= CSF_ACTIVE | CSF_TRUE;
            // `:silent!` is switched off for the errors in this try: they are converted to exceptions.
            if self.scripts.emsg_silent > 0 {
                cs.emsg_silent_list.push(self.scripts.emsg_silent);
                cs.flags[top] |= CSF_SILENT;
                self.scripts.emsg_silent = 0;
            }
        }
        Ok(())
    }

    /// The message that says what is missing to end the conditional at the top (`get_end_emsg`).
    fn get_end_emsg(cs: &Cstack) -> &'static str {
        let f = cs.flags[cs.idx as usize];
        if f & CSF_WHILE != 0 {
            "E170: Missing :endwhile"
        } else if f & CSF_FOR != 0 {
            "E170: Missing :endfor"
        } else {
            "E171: Missing :endif"
        }
    }

    /// `ex_catch`: `:catch /{pattern}/` and `:catch`.
    pub(super) fn ex_catch(&mut self, cs: &mut Cstack, arg: &str) -> Res<()> {
        let mut idx = 0usize;
        let mut give_up = false;
        let mut skip = false;
        let mut errmsg: Option<String> = None;
        if cs.trylevel == 0 || cs.idx < 0 {
            errmsg = Some("E603: :catch without :try".into());
            give_up = true;
        } else {
            if cs.flags[cs.idx as usize] & CSF_TRY == 0 {
                // What is missing if the matching `:try` is not in its finally clause.
                errmsg = Some(Self::get_end_emsg(cs).into());
                skip = true;
            }
            idx = cs.idx as usize;
            while idx > 0 && cs.flags[idx] & CSF_TRY == 0 {
                idx -= 1;
            }
            if cs.flags[idx] & CSF_FINALLY != 0 {
                // A `:catch` after `:finally` is ignored.
                errmsg = Some("E604: :catch after :finally".into());
                give_up = true;
            } else {
                rewind_conditionals(cs, idx as isize, CSF_WHILE | CSF_FOR);
            }
        }
        let (pat, end): (String, Option<usize>);
        if ends_excmd(arg.bytes().next()) {
            // No argument: catch all errors.
            pat = ".*".into();
            end = None;
            self.scripts.nextcmd = cmdline::check_nextcmd(arg).map(str::to_string);
        } else {
            let delim = arg.as_bytes()[0];
            let e = cmdline::skip_regexp(arg, 1, delim);
            pat = arg[1..e.min(arg.len())].to_string();
            end = Some(e);
            if super::expr::at(arg, e) != delim {
                // `skip_regexp_err`: the end of the pattern is missing.
                self.error(format!("E654: Missing delimiter after search pattern: {pat}"));
                give_up = true;
            }
        }
        if !give_up {
            let mut caught = false;
            // Nothing when no exception was thrown or the try never got active.
            if !self.scripts.did_throw || cs.flags[idx] & CSF_TRUE == 0 {
                skip = true;
            }
            // A match is checked for an exception that no previous `:catch` took.
            if !skip && cs.flags[idx] & CSF_THROWN != 0 && cs.flags[idx] & CSF_CAUGHT == 0 {
                if let Some(e) = end
                    && super::expr::at(arg, e) != 0
                    && !ends_excmd(Some(super::expr::at(arg, super::expr::skipwhite(arg, e + 1))).filter(|&c| c != 0))
                {
                    let t = arg[e..].to_string();
                    self.error(format!("E488: Trailing characters: {t}"));
                    return Ok(());
                }
                let value = self.scripts.current_exception.as_ref().map(|e| e.borrow().value.clone()).unwrap_or_default();
                match self.regex_find(&value, &pat, false) {
                    Ok(m) => caught = m.is_some(),
                    Err(_) => {
                        self.error(format!("E475: Invalid argument: {pat}"));
                    }
                }
            }
            if caught {
                // This catch clause is active; the exception goes on the caught stack.
                cs.flags[idx] |= CSF_ACTIVE | CSF_CAUGHT;
                self.scripts.did_emsg = false;
                self.scripts.did_throw = false;
                if let Some(ex) = cs.exception[idx].clone() {
                    self.catch_exception(&ex);
                }
            } else {
                // A preceding catch clause that caught the exception finishes it now; an error after a
                // `:continue`, `:break`, `:return` or `:finish` discards the pending action.
                self.cleanup_conditionals(cs, CSF_TRY, true);
            }
        }
        if let Some(e) = end {
            self.scripts.nextcmd = arg.get(e..).and_then(|r| r.find(['|', '\n']).map(|i| r[i + 1..].to_string()));
        }
        errmsg.map_or(Ok(()), Err)
    }

    /// `ex_finally`.
    pub(super) fn ex_finally(&mut self, cs: &mut Cstack) -> Res<()> {
        let mut pending = CSTP_NONE;
        let mut idx = cs.idx;
        while idx >= 0 && cs.flags[idx as usize] & CSF_TRY == 0 {
            idx -= 1;
        }
        if cs.trylevel == 0 || idx < 0 {
            return Err("E606: :finally without :try".into());
        }
        let idx = idx as usize;
        let mut errmsg = None;
        if cs.flags[cs.idx as usize] & CSF_TRY == 0 {
            errmsg = Some(Self::get_end_emsg(cs));
            // Made pending so that the finally clause that follows is executed.
            pending = CSTP_ERROR;
        }
        if cs.flags[idx] & CSF_FINALLY != 0 {
            // A multiple `:finally` is ignored.
            return Err("E607: Multiple :finally".into());
        }
        rewind_conditionals(cs, idx as isize, CSF_WHILE | CSF_FOR);
        let top = cs.idx as usize;
        // Nothing when the try never got active, or for a `:finally` without `:try`.
        let skip = cs.flags[top] & CSF_TRUE == 0;
        if !skip {
            // A preceding catch clause that caught the exception finishes it now.
            self.cleanup_conditionals(cs, CSF_TRY, false);
            // `did_emsg` and `did_throw` become pending: they overrule a pending `:continue`, `:break`, `:return`
            // or `:finish`. The `:endtry` restores them.
            if pending == CSTP_ERROR || self.scripts.did_emsg || self.scripts.did_throw {
                if cs.pending[top] == CSTP_RETURN {
                    cs.rettv[top] = None;
                }
                if (pending == CSTP_ERROR && !self.scripts.did_emsg) || self.scripts.did_throw {
                    pending |= CSTP_THROW;
                }
                if self.scripts.did_emsg {
                    pending |= CSTP_ERROR;
                }
                cs.pending[top] = pending;
            }
            // The finally clause is made active after `do_cmdline` has reset `did_emsg` and `did_throw`.
            cs.lflags |= CSL_HAD_FINA;
        }
        errmsg.map_or(Ok(()), |m| Err(m.into()))
    }

    /// `ex_endtry`.
    pub(super) fn ex_endtry(&mut self, cs: &mut Cstack) -> Res<()> {
        let mut rethrow = false;
        let mut pending = CSTP_NONE;
        let mut rettv: Option<Value> = None;
        let mut idx = cs.idx;
        while idx >= 0 && cs.flags[idx as usize] & CSF_TRY == 0 {
            idx -= 1;
        }
        if cs.trylevel == 0 || idx < 0 {
            return Err("E602: :endtry without :try".into());
        }
        let mut idx = idx as usize;
        // Nothing after an error or throw in the try block, catch clause or finally clause, or when the try never got
        // active.
        let mut skip = self.scripts.did_emsg || self.scripts.did_throw || cs.flags[cs.idx as usize] & CSF_TRUE == 0;
        let mut errmsg = None;
        if cs.flags[cs.idx as usize] & CSF_TRY == 0 {
            errmsg = Some(Self::get_end_emsg(cs));
            // The matching `:try` is found and what is missing reported.
            rewind_conditionals(cs, idx as isize, CSF_WHILE | CSF_FOR);
            skip = true;
            // An exception that is being thrown is discarded: it would be by the error message.
            if self.scripts.did_throw {
                self.discard_current_exception();
            }
            self.scripts.did_emsg = false;
        } else {
            idx = cs.idx as usize;
            // The exception that was being thrown here, with no finally clause: it is rethrown after the conditional.
            if self.scripts.did_throw && cs.flags[idx] & CSF_TRUE != 0 && cs.flags[idx] & CSF_FINALLY == 0 {
                rethrow = true;
            }
        }
        // A pending `:return` is resumed after the try is closed, and an exception a finally clause made pending is
        // rethrown: it becomes the current one.
        if !skip {
            pending = cs.pending[idx];
            cs.pending[idx] = CSTP_NONE;
            if pending == CSTP_RETURN {
                rettv = cs.rettv[idx].take();
            } else if pending & CSTP_THROW != 0 {
                self.scripts.current_exception = cs.exception[idx].clone();
            }
        }
        // Whatever is pending after an error or throw in the finally clause goes; an exception that the last catch
        // clause caught and no finally clause followed is finished; `emsg_silent` is put back.
        self.cleanup_conditionals(cs, CSF_TRY | CSF_SILENT, true);
        if cs.idx >= 0 && cs.flags[cs.idx as usize] & CSF_TRY != 0 {
            cs.idx -= 1;
        }
        cs.trylevel -= 1;
        if !skip {
            match pending {
                CSTP_NONE => {}
                // Reactivate a pending `:continue`, `:break`, `:return` or `:finish` of the try block or a catch clause.
                CSTP_CONTINUE => {
                    let _ = self.ex_continue(cs);
                }
                CSTP_BREAK => {
                    let _ = self.ex_break(cs);
                }
                CSTP_RETURN => {
                    self.do_return(cs, false, false, rettv);
                }
                CSTP_FINISH => self.do_finish(cs, false),
                // The finally clause was entered because of an error or throw: they are restored, unless there was a
                // new one in the finally clause.
                _ => {
                    if pending & CSTP_ERROR != 0 {
                        self.scripts.did_emsg = true;
                    }
                    if pending & CSTP_THROW != 0 {
                        rethrow = true;
                    }
                }
            }
        }
        if rethrow {
            // The current exception is thrown again, within this cstack.
            self.do_throw(cs);
        }
        errmsg.map_or(Ok(()), |m| Err(m.into()))
    }
}
