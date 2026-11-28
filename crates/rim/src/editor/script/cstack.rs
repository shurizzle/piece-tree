//! The conditional stack of `:if`, `:while` and `:for`: Neovim's `cstack_T` and `ex_eval.c`
//! (`ex_if`, `ex_else`, `ex_endif`, `ex_while`, `ex_continue`, `ex_break`, `ex_endwhile`,
//! `ex_finish`, `cleanup_conditionals`, `rewind_conditionals`) and `eval_for_line` /
//! `next_for_item` of `eval.c`. The `:try` parts (`CSF_TRY`, pending actions) come with
//! exceptions.

use super::value::RcStr;
use super::{List, Res, Value, cmdline::skipwhite};
use crate::editor::{Editor, graphemes};

pub(super) const CSTACK_LEN: usize = 50;

// `cs_flags`
pub(super) const CSF_TRUE: u32 = 0x0001;
pub(super) const CSF_ACTIVE: u32 = 0x0002;
pub(super) const CSF_ELSE: u32 = 0x0004;
pub(super) const CSF_WHILE: u32 = 0x0008;
pub(super) const CSF_FOR: u32 = 0x0010;
pub(super) const CSF_TRY: u32 = 0x0100;
pub(super) const CSF_FINALLY: u32 = 0x0200;
pub(super) const CSF_THROWN: u32 = 0x0800;
pub(super) const CSF_CAUGHT: u32 = 0x1000;
pub(super) const CSF_FINISHED: u32 = 0x2000;
pub(super) const CSF_SILENT: u32 = 0x4000;

// `cs_pending`: what a finally clause has pending
pub(super) const CSTP_NONE: u8 = 0;
pub(super) const CSTP_ERROR: u8 = 1;
pub(super) const CSTP_THROW: u8 = 4;
pub(super) const CSTP_BREAK: u8 = 8;
pub(super) const CSTP_CONTINUE: u8 = 16;
pub(super) const CSTP_RETURN: u8 = 24;
pub(super) const CSTP_FINISH: u8 = 32;

// `cs_lflags`
pub(super) const CSL_HAD_LOOP: u32 = 1;
pub(super) const CSL_HAD_ENDLOOP: u32 = 2;
pub(super) const CSL_HAD_CONT: u32 = 4;
pub(super) const CSL_HAD_FINA: u32 = 8;

/// What a `:for` loops over (`forinfo_T`).
// A List is walked by the index of the next item, which is kept in `State::for_watch` so that what the loop body does to
// the list moves it as vim's watcher does (`tv_list_watch_fix`): `remove()`, `insert()`, `extend()`, `:unlet l[i]`.
pub(in crate::editor) struct ForInfo {
    /// The variable(s) the items go to: the text of `{var}` of `:for {var} in {expr}`.
    vars: String,
    /// `fi_varcount` and `fi_semicolon` of `skip_var_list`.
    var_count: usize,
    semicolon: bool,
    source: ForSource,
}

enum ForSource {
    /// The list and the index of the next item (`lw_item`); `usize::MAX` once it was the last one
    /// when taken: items added meanwhile are not visited, as vim's pointer to the next item is
    /// then NULL.
    List(List, std::rc::Rc<std::cell::Cell<usize>>),
    /// The chars of a String, with the byte index of the next one.
    Str(RcStr, usize),
}

pub(in crate::editor) struct Cstack {
    pub idx: isize,
    pub flags: [u32; CSTACK_LEN],
    pub line: [isize; CSTACK_LEN],
    pub lflags: u32,
    pub looplevel: usize,
    pub forinfo: [Option<ForInfo>; CSTACK_LEN],
    /// What a finally clause has pending (`cs_pending`), the exception (`cs_exception`) and the value of a pending `:return`.
    pub pending: [u8; CSTACK_LEN],
    pub exception: [Option<super::exceptions::ExRef>; CSTACK_LEN],
    pub rettv: [Option<Value>; CSTACK_LEN],
    pub trylevel: usize,
    /// The `emsg_silent` that `:try` reset (`cs_emsg_silent_list`).
    pub emsg_silent_list: Vec<u32>,
}

impl Cstack {
    pub fn new() -> Self {
        Self { idx: -1, flags: [0; CSTACK_LEN], line: [0; CSTACK_LEN], lflags: 0, looplevel: 0, forinfo: [const { None }; CSTACK_LEN], pending: [0; CSTACK_LEN], exception: [const { None }; CSTACK_LEN], rettv: [const { None }; CSTACK_LEN], trylevel: 0, emsg_silent_list: Vec::new() }
    }

    fn top(&self) -> usize {
        usize::try_from(self.idx).expect("a conditional is open")
    }

    /// `CHECK_SKIP`: an error was reported, or the enclosing conditional is inactive.
    fn check_skip(&self, did_emsg: bool) -> bool {
        did_emsg || (self.idx > 0 && self.flags[self.top() - 1] & CSF_ACTIVE == 0)
    }
}

/// `rewind_conditionals`: pops down to `idx`, counting out the loops (`cond_type`; `:try`s have
/// their own count, with exceptions).
pub(super) fn rewind_conditionals(cs: &mut Cstack, idx: isize, cond_type: u32) {
    while cs.idx > idx {
        let top = cs.top();
        if cs.flags[top] & cond_type & (CSF_WHILE | CSF_FOR) != 0 {
            cs.looplevel -= 1;
        }
        if cs.flags[top] & cond_type & CSF_TRY != 0 {
            cs.trylevel -= 1;
        }
        cs.forinfo[top] = None;
        cs.idx -= 1;
    }
}

impl Editor {
    /// `cleanup_conditionals`: makes the conditionals inactive up to the one searched for (`searched` flags), or the try that
    /// is not in its finally clause; what a try has pending is discarded after an error or in a finally clause. Returns the
    /// index it stopped at.
    pub(super) fn cleanup_conditionals(&mut self, cs: &mut Cstack, searched: u32, inclusive: bool) -> isize {
        let mut idx = cs.idx;
        let mut stop = false;
        while idx >= 0 {
            let i = idx as usize;
            if cs.flags[i] & CSF_TRY != 0 {
                // Anything pending in a finally clause goes; a `:continue`, `:break`, `:return` or `:finish` before it
                // only after an error.
                if self.scripts.did_emsg || cs.flags[i] & CSF_FINALLY != 0 {
                    match cs.pending[i] {
                        CSTP_NONE => {}
                        CSTP_CONTINUE | CSTP_BREAK | CSTP_FINISH => cs.pending[i] = CSTP_NONE,
                        CSTP_RETURN => {
                            cs.rettv[i] = None;
                            cs.pending[i] = CSTP_NONE;
                        }
                        _ => {
                            if cs.flags[i] & CSF_FINALLY != 0 {
                                if cs.pending[i] & CSTP_THROW != 0
                                    && let Some(ex) = cs.exception[i].take()
                                {
                                    self.discard_exception(&ex);
                                }
                                cs.pending[i] = CSTP_NONE;
                            }
                        }
                    }
                }
                // Stop at a try not in its finally clause. In an active catch clause the caught exception is finished.
                if cs.flags[i] & CSF_FINALLY == 0 {
                    if cs.flags[i] & CSF_ACTIVE != 0 && cs.flags[i] & CSF_CAUGHT != 0 && cs.flags[i] & CSF_FINISHED == 0 {
                        if let Some(ex) = cs.exception[i].clone() {
                            self.finish_exception(&ex);
                        }
                        cs.flags[i] |= CSF_FINISHED;
                    }
                    // Not when the try block never got active.
                    if cs.flags[i] & CSF_TRUE != 0 {
                        if searched == 0 && !inclusive {
                            break;
                        }
                        stop = true;
                    }
                }
            }
            // Stop on the searched conditional type.
            if cs.flags[i] & searched != 0 {
                if !inclusive {
                    break;
                }
                stop = true;
            }
            cs.flags[i] &= !CSF_ACTIVE;
            if stop && searched != (CSF_TRY | CSF_SILENT) {
                break;
            }
            // Leaving a try that reset `emsg_silent` on its entry: the saved value comes back.
            if cs.flags[i] & CSF_TRY != 0
                && cs.flags[i] & CSF_SILENT != 0
                && let Some(v) = cs.emsg_silent_list.pop()
            {
                self.scripts.emsg_silent = v;
                cs.flags[i] &= !CSF_SILENT;
            }
            if stop {
                break;
            }
            idx -= 1;
        }
        idx
    }

    /// `eval_to_bool`: the truth of `arg`; `skip` parses only.
    fn eval_to_bool(&mut self, arg: &str, skip: bool) -> (bool, bool) {
        if skip {
            return (false, false);
        }
        match self.eval(arg).and_then(|v| self.truthy(&v)) {
            Ok(b) => (b, false),
            Err(e) => {
                if !e.is_empty() {
                    self.error(e);
                }
                (false, true)
            }
        }
    }

    /// `ex_if`.
    pub(in crate::editor) fn ex_if(&mut self, cs: &mut Cstack, arg: &str) -> Res<()> {
        if cs.idx == CSTACK_LEN as isize - 1 {
            return Err("E579: :if nesting too deep".into());
        }
        cs.idx += 1;
        let top = cs.top();
        cs.flags[top] = 0;
        let skip = cs.check_skip(self.scripts.did_emsg || self.scripts.did_throw);
        let (result, error) = self.eval_to_bool(arg, skip);
        if !skip && !error {
            if result {
                cs.flags[top] = CSF_ACTIVE | CSF_TRUE;
            }
        } else {
            cs.flags[top] = CSF_TRUE;
        }
        Ok(())
    }

    /// `ex_else` for `:else` and `:elseif`.
    pub(in crate::editor) fn ex_else(&mut self, cs: &mut Cstack, is_elseif: bool, arg: &str) -> Res<()> {
        let mut skip = cs.check_skip(self.scripts.did_emsg || self.scripts.did_throw);
        let mut errmsg = None;
        if cs.idx < 0 || cs.flags[cs.top()] & (CSF_WHILE | CSF_FOR | CSF_TRY) != 0 {
            if !is_elseif {
                return Err("E581: :else without :if".into());
            }
            errmsg = Some("E582: :elseif without :if");
            skip = true;
        } else if cs.flags[cs.top()] & CSF_ELSE != 0 {
            if !is_elseif {
                return Err("E583: Multiple :else".into());
            }
            errmsg = Some("E584: :elseif after :else");
            skip = true;
        }
        // Without an open conditional there is nothing to update (vim indexes `cs_idx` -1 here and
        // never reads it: the `:elseif` branch only reports).
        let top = usize::try_from(cs.idx).ok();
        if let Some(top) = top {
            if skip || cs.flags[top] & CSF_TRUE != 0 {
                if errmsg.is_none() {
                    cs.flags[top] = CSF_TRUE;
                }
                skip = true;
            } else {
                cs.flags[top] = CSF_ACTIVE;
            }
        } else {
            skip = true;
        }
        if is_elseif {
            let mut result = false;
            let mut error = false;
            if skip && !arg.starts_with('"') && super::cmdline::ends_excmd(arg.bytes().next()) {
                self.error(format!("E15: Invalid expression: \"{arg}\""));
            } else {
                (result, error) = self.eval_to_bool(arg, skip);
            }
            if let Some(top) = top {
                if !skip && !error {
                    cs.flags[top] = if result { CSF_ACTIVE | CSF_TRUE } else { 0 };
                } else if errmsg.is_none() {
                    cs.flags[top] = CSF_TRUE;
                }
            }
        } else if let Some(top) = top {
            cs.flags[top] |= CSF_ELSE;
        }
        errmsg.map_or(Ok(()), |m| Err(m.into()))
    }

    /// `ex_endif`.
    pub(in crate::editor) fn ex_endif(&mut self, cs: &mut Cstack) -> Res<()> {
        self.scripts.did_endif = true;
        if cs.idx < 0 || cs.flags[cs.top()] & (CSF_WHILE | CSF_FOR | CSF_TRY) != 0 {
            return Err("E580: :endif without :if".into());
        }
        cs.idx -= 1;
        Ok(())
    }

    /// `eval_for_line`: the loop variables and what is looped over; none on an error.
    fn eval_for_line(&mut self, arg: &str, skip: bool) -> Option<ForInfo> {
        let (varend, var_count, semicolon) = match super::cmdline::skip_var_list_n(arg) {
            Ok(e) => e,
            Err(m) => {
                self.error(m);
                return None;
            }
        };
        let expr = skipwhite(&arg[varend..]);
        let b = expr.as_bytes();
        if b.first() != Some(&b'i') || b.get(1) != Some(&b'n') || !(b.len() == 2 || b[2] == b' ' || b[2] == b'\t') {
            self.error("E690: Missing \"in\" after :for");
            return None;
        }
        let expr = skipwhite(&expr[2..]);
        if skip {
            return Some(ForInfo { vars: arg.to_string(), var_count, semicolon, source: ForSource::Str(String::new().into(), 0) });
        }
        let source = match self.eval(expr) {
            Ok(Value::List(l)) => {
                let next = std::rc::Rc::new(std::cell::Cell::new(0));
                self.scripts.for_watch.push((dumpster::unsync::Gc::as_ptr(&l) as usize, std::rc::Rc::downgrade(&next)));
                ForSource::List(l, next)
            }
            Ok(Value::Str(s)) => ForSource::Str(s.clone(), 0),
            Ok(_) => {
                self.error("E1098: String, List or Blob required");
                return None;
            }
            Err(e) => {
                if !e.is_empty() {
                    self.error(e);
                }
                return None;
            }
        };
        Some(ForInfo { vars: arg.to_string(), var_count, semicolon, source })
    }

    /// `next_for_item`: assigns the next item; false when there is none (or the assignment failed).
    fn next_for_item(&mut self, fi: &mut ForInfo) -> bool {
        let item = match &mut fi.source {
            ForSource::List(l, i) => {
                let list = l.borrow();
                let Some(v) = list.get(i.get()).cloned() else { return false };
                i.set(if i.get() + 1 < list.len() { i.get() + 1 } else { usize::MAX });
                v
            }
            ForSource::Str(s, at) => {
                let Some(g) = graphemes::iter(&s[*at..]).next() else { return false };
                *at += g.len();
                Value::Str(g.into())
            }
        };
        self.scripts.arg_rest.clear();
        self.ex_let_vars(&fi.vars, 0, &item, fi.semicolon, fi.var_count, false, None)
    }

    /// `ex_while` for `:while` and `:for`.
    pub(in crate::editor) fn ex_while(&mut self, cs: &mut Cstack, is_for: bool, arg: &str) -> Res<()> {
        if cs.idx == CSTACK_LEN as isize - 1 {
            return Err("E585: :while/:for nesting too deep".into());
        }
        if cs.lflags & CSL_HAD_LOOP == 0 {
            cs.idx += 1;
            cs.looplevel += 1;
            let top = cs.top();
            cs.line[top] = -1;
        }
        let top = cs.top();
        cs.flags[top] = if is_for { CSF_FOR } else { CSF_WHILE };
        let skip = cs.check_skip(self.scripts.did_emsg || self.scripts.did_throw);
        let (result, error);
        if !is_for {
            (result, error) = self.eval_to_bool(arg, skip);
        } else {
            let mut fi = if cs.lflags & CSL_HAD_LOOP != 0 { cs.forinfo[top].take() } else { self.eval_for_line(arg, skip) };
            let err = fi.is_none();
            result = match &mut fi {
                Some(f) if !skip => self.next_for_item(f),
                _ => false,
            };
            error = err;
            cs.forinfo[top] = if result { fi } else { None };
        }
        if !skip && !error && result {
            cs.flags[top] |= CSF_ACTIVE | CSF_TRUE;
            cs.lflags ^= CSL_HAD_LOOP;
        } else {
            cs.lflags &= !CSL_HAD_LOOP;
            if !skip && !error {
                cs.flags[top] |= CSF_TRUE;
            }
        }
        Ok(())
    }

    /// `ex_continue`.
    pub(in crate::editor) fn ex_continue(&mut self, cs: &mut Cstack) -> Res<()> {
        if cs.looplevel == 0 || cs.idx < 0 {
            return Err("E586: :continue without :while or :for".into());
        }
        // The try that is not in its finally clause is stopped at: the `:continue` is made pending for the `:endtry`.
        let idx = self.cleanup_conditionals(cs, CSF_WHILE | CSF_FOR, false);
        if cs.flags[idx as usize] & (CSF_WHILE | CSF_FOR) != 0 {
            rewind_conditionals(cs, idx, CSF_TRY);
            cs.lflags |= CSL_HAD_CONT;
        } else {
            cs.pending[idx as usize] = CSTP_CONTINUE;
        }
        Ok(())
    }

    /// `ex_break`.
    pub(in crate::editor) fn ex_break(&mut self, cs: &mut Cstack) -> Res<()> {
        if cs.looplevel == 0 || cs.idx < 0 {
            return Err("E587: :break without :while or :for".into());
        }
        let idx = self.cleanup_conditionals(cs, CSF_WHILE | CSF_FOR, true);
        if idx >= 0 && cs.flags[idx as usize] & (CSF_WHILE | CSF_FOR) == 0 {
            cs.pending[idx as usize] = CSTP_BREAK;
        }
        Ok(())
    }

    /// `ex_endwhile` for `:endwhile` and `:endfor`.
    pub(in crate::editor) fn ex_endwhile(&mut self, cs: &mut Cstack, is_for: bool) -> Res<()> {
        let (err, csf) = if is_for { ("E588: :endfor without :for", CSF_FOR) } else { ("E588: :endwhile without :while", CSF_WHILE) };
        if cs.looplevel == 0 || cs.idx < 0 {
            return Err(err.into());
        }
        let fl = cs.flags[cs.top()];
        let mut errmsg = None;
        if fl & csf == 0 {
            if fl & CSF_WHILE != 0 {
                errmsg = Some("E732: Using :endfor with :while");
            } else if fl & CSF_FOR != 0 {
                errmsg = Some("E733: Using :endwhile with :for");
            }
        }
        if fl & (CSF_WHILE | CSF_FOR) == 0 {
            if fl & CSF_TRY == 0 {
                errmsg = Some("E171: Missing :endif");
            } else if fl & CSF_FINALLY != 0 {
                errmsg = Some("E600: Missing :endtry");
            }
            let mut idx = cs.idx;
            while idx > 0 {
                let f = cs.flags[idx as usize];
                if f & CSF_TRY != 0 && f & CSF_FINALLY == 0 {
                    // Give up at a try that is not in its finally clause: the `:endwhile` is ignored.
                    return Err(err.into());
                }
                if f & csf != 0 {
                    break;
                }
                idx -= 1;
            }
            // All the conditionals inside the loop that are not closed are cleaned up and rewound.
            self.cleanup_conditionals(cs, CSF_WHILE | CSF_FOR, false);
            rewind_conditionals(cs, idx, CSF_TRY);
        }
        cs.lflags |= CSL_HAD_ENDLOOP;
        errmsg.map_or(Ok(()), |m| Err(m.into()))
    }

    /// `ex_finish`.
    pub(in crate::editor) fn ex_finish(&mut self, cs: &mut Cstack) -> Res<()> {
        if !self.scripts.sourcing {
            // `emsg`, not the error of `do_one_cmd`: no command line follows it.
            self.error("E168: :finish used outside of a sourced file");
            return Ok(());
        }
        self.do_finish(cs, false);
        Ok(())
    }

    /// `do_finish`: the rest of the sourced file is not read; a try that is not in its finally clause makes it pending.
    pub(in crate::editor) fn do_finish(&mut self, cs: &mut Cstack, reanimate: bool) {
        if reanimate && let Some(f) = self.scripts.stack.last_mut() {
            f.cookie.finished = false;
        }
        let idx = self.cleanup_conditionals(cs, 0, true);
        if idx >= 0 {
            cs.pending[idx as usize] = CSTP_FINISH;
        } else if let Some(f) = self.scripts.stack.last_mut() {
            f.cookie.finished = true;
        }
    }
}
