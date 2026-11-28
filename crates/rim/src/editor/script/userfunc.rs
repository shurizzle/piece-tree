//! User functions, first part: defining, listing and deleting them (`:function`, `:endfunction`, `:delfunction` of
//! `eval/userfunc.c`). Calling them comes next.

use super::value::RcStr;
use std::{collections::HashMap, rc::Rc};

use super::{
    cmdline::{self, FNE_CHECK_START},
    docmd::ReaderBase,
    expr::{self, at, ends_excmd, skipwhite},
    lval::Place,
    value::{Lock, Value},
};
use crate::editor::Editor;

pub(super) const FC_ABORT: u8 = 1;
pub(super) const FC_RANGE: u8 = 2;
pub(super) const FC_DICT: u8 = 4;
pub(super) const FC_CLOSURE: u8 = 8;
/// No `a:` variables are used (a lambda): none are made (`FC_NOARGS`).
pub(super) const FC_NOARGS: u8 = 16;
/// `MAX_FUNC_NESTING`.
const MAX_FUNC_NESTING: usize = 50;
/// `MAX_FUNC_ARGS`.
const MAX_FUNC_ARGS: usize = 20;

/// `TFN_QUIET`.
pub(super) const TFN_QUIET: u32 = 1 << 1;
/// `TFN_INT`.
pub(super) const TFN_INT: u32 = 1 << 2;
/// `TFN_NO_DEREF`.
pub(super) const TFN_NO_DEREF: u32 = 1 << 3;
/// `TFN_NO_AUTOLOAD`.
pub(super) const TFN_NO_AUTOLOAD: u32 = 1 << 4;
/// The caller wants to know about a Dictionary item (`fdp` is not NULL): `scripts.fudi`.
pub(super) const TFN_DICT: u32 = 1 << 5;

/// A user function (`ufunc_T`).
pub(in crate::editor) struct UFunc {
    /// `uf_name`, as shown: a script-local one is `<SNR>1_Name`.
    pub name: RcStr,
    pub args: Vec<RcStr>,
    /// The default values of the last arguments (`uf_def_args`).
    pub def_args: Vec<String>,
    pub varargs: bool,
    pub flags: u8,
    /// The lines of the body; a continuation line is followed by `None` for each line it took, so that an index is a line
    /// number (`uf_lines`).
    pub lines: Vec<Option<String>>,
    /// The script it was defined in and which run of it (`uf_script_ctx.sc_sid`, `sc_seq`), and the line of its `:function` there
    /// (`sc_lnum`, which `<sflnum>` adds the line in the function to).
    pub sc_lnum: usize,
    pub sid: usize,
    pub seq: usize,
    /// `uf_calls`.
    pub calls: std::cell::Cell<usize>,
    /// A number for `funcref()` to find the function by, whatever happens to its name.
    pub id: usize,
    /// The variables of the function a closure was made in (`uf_scoped`).
    pub scoped: Option<Rc<Scoped>>,
    /// `:delfunction` took it out of the table (`FC_DELETED`): a Funcref that holds it cannot call it.
    pub deleted: std::cell::Cell<bool>,
}

/// The arguments of a function head.
pub(super) struct FuncArgs {
    pub args: Vec<RcStr>,
    pub def_args: Vec<String>,
    pub varargs: bool,
}

/// What `trans_function_name` found about a Dictionary item (`funcdict_T`).
#[derive(Default)]
pub(in crate::editor) struct FuncDict {
    pub dict: Option<super::value::Dict>,
    /// The key to add (`fd_newkey`).
    pub newkey: Option<RcStr>,
    /// The key of the item that exists (`fd_di`).
    pub key: Option<RcStr>,
}

/// What `:function` found before the body: the pieces that the definition needs once the lines are read.
pub(super) struct FuncDef {
    /// `eap->arg`, for the message of a locked Dictionary.
    arg: String,
    name: Option<RcStr>,
    args: Vec<RcStr>,
    def_args: Vec<String>,
    varargs: bool,
    flags: u8,
    skip: bool,
    forceit: bool,
    /// `did_emsg` before this `:function` (it is restored at the end).
    saved_did_emsg: bool,
    /// `function d.f()`: the Dictionary the function goes in.
    fudi: FuncDict,
    /// The line of the script this `:function` is on (`sc_lnum` of the new function).
    lnum: usize,
}

/// The state of `get_function_body` between two lines.
pub(super) struct FuncBody {
    nesting: usize,
    /// The end marker of a heredoc or `:append` text being skipped.
    skip_until: Option<String>,
    heredoc_trimmed: Option<String>,
    is_heredoc: bool,
    do_concat: bool,
    pub lines: Vec<Option<String>>,
}

impl FuncBody {
    fn new() -> Self {
        Self { nesting: 0, skip_until: None, heredoc_trimmed: None, is_heredoc: false, do_concat: true, lines: Vec::new() }
    }
}

enum Step {
    More,
    /// `:endfunction`; what follows it on its line (`eap->nextcmd`).
    End(Option<String>),
}

/// `checkforcmd`: `s[*p..]` starts with `cmd` of at least `len` characters and it is not followed by a letter.
fn checkforcmd(s: &str, p: &mut usize, cmd: &str, len: usize) -> bool {
    let c = cmd.as_bytes();
    let mut i = 0;
    while i < c.len() && at(s, *p + i) == c[i] {
        i += 1;
    }
    if i >= len && !at(s, *p + i).is_ascii_alphabetic() {
        *p = skipwhite(s, *p + i);
        return true;
    }
    false
}

/// `eval_fname_script`: 5 for `<SID>` and `<SNR>`, 2 for `s:`, else 0.
pub(super) fn eval_fname_script(s: &str) -> usize {
    let b = s.as_bytes();
    if b.first() == Some(&b'<') && s.len() >= 5 && (s[1..5].eq_ignore_ascii_case("SID>") || s[1..5].eq_ignore_ascii_case("SNR>")) {
        5
    } else if b.starts_with(b"s:") {
        2
    } else {
        0
    }
}

/// `func_name_refcount`: a numbered function or a lambda.
fn func_name_refcount(name: &str) -> bool {
    name.as_bytes().first().is_some_and(u8::is_ascii_digit) || name.starts_with("<l")
}

fn is_white(b: u8) -> bool {
    b == b' ' || b == b'\t'
}

fn skiptowhite(s: &str, mut p: usize) -> usize {
    while p < s.len() && !is_white(s.as_bytes()[p]) {
        p += 1;
    }
    p
}

impl Editor {
    /// `find_func`.
    pub(super) fn find_func(&self, name: &str) -> Option<Rc<UFunc>> {
        self.scripts.funcs.get(name).cloned()
    }

    /// `emsg_funcname`.
    fn emsg_funcname(&mut self, fmt: &str, name: &str) {
        self.error(fmt.replace("%s", name));
    }

    /// `trans_function_name`: the name of the function at `s[*p..]`, the script ones translated (`s:F` is
    /// `<SNR>1_F`); `*p` moves behind it. None for an error (given unless `skip`).
    pub(super) fn trans_function_name(&mut self, s: &str, p: &mut usize, skip: bool, flags: u32) -> Option<RcStr> {
        let mut start = *p;
        let lead = eval_fname_script(&s[start..]);
        if lead > 2 {
            start += lead;
        }
        let (end, lv) = self.get_lval(s, start, None, false, skip, flags & TFN_QUIET != 0, if lead > 2 { 0 } else { FNE_CHECK_START }, true);
        if end == Some(start) {
            if !skip {
                self.error("E129: Function name required");
            }
            return None;
        }
        let end = end?;
        if flags & TFN_DICT != 0 {
            self.scripts.fudi = FuncDict::default();
        }
        if !matches!(lv.place, Place::Var) {
            // `lv.ll_tv != NULL`: a Dictionary or List item, which has to hold a Funcref (a Dictionary item may be new).
            if matches!(lv.place, Place::Range { .. }) || lead > 2 {
                if !skip {
                    let t = s[start..].to_string();
                    self.error(format!("E475: Invalid argument: {t}"));
                }
                return None;
            }
            let (item, has_dict, is_new) = match &lv.place {
                Place::Key { dict, key } => {
                    if flags & TFN_DICT != 0 {
                        self.scripts.fudi = FuncDict { dict: Some(dict.clone()), newkey: None, key: Some(key.clone().into()) };
                    }
                    (dict.borrow().get(key).cloned(), true, false)
                }
                Place::NewKey { dict, key } => {
                    if flags & TFN_DICT != 0 {
                        self.scripts.fudi = FuncDict { dict: Some(dict.clone()), newkey: Some(key.clone().into()), key: None };
                    }
                    (None, true, true)
                }
                Place::Item { list, idx } => (list.borrow().get(*idx).cloned(), false, false),
                _ => (None, false, false),
            };
            match item {
                Some(Value::Func(n)) => {
                    *p = end;
                    return Some(n.clone());
                }
                Some(Value::Partial(pt)) => {
                    *p = end;
                    return Some(pt.name.clone());
                }
                _ => {}
            }
            // Not a function: an error, unless a Dictionary key is to be added for the caller.
            if !skip && flags & TFN_QUIET == 0 && !(flags & TFN_DICT != 0 && has_dict && is_new) {
                self.error("E718: Funcref required");
            } else {
                *p = end;
            }
            return None;
        }
        let name = lv.name?;
        // A variable that holds a Funcref stands for the function it holds (`deref_func_name`).
        if flags & TFN_NO_DEREF == 0
            && let Some(f) = self.deref_func_var(&name)
        {
            *p = end;
            return Some(match f {
                Value::Func(n) => n.clone(),
                Value::Partial(pt) => pt.name.clone(),
                _ => name,
            });
        }
        // "s:" and "g:" are not part of the name.
        // A name made from `{expr}` (`ll_exp_name`) only loses a leading "s:", a "g:" stays and no function has it.
        let exp = super::lval::brace_span(&s[start..end]).is_some();
        let mut lead = lead;
        let mut name_part = &*name;
        if exp {
            if lead <= 2 && name_part.starts_with("s:") {
                name_part = &name_part[2..];
                lead = 2;
            }
        } else if lead == 2 || name_part.starts_with("g:") {
            name_part = &name_part[2..];
        }
        let mut prefix = String::new();
        if skip {
            // Only the end of the name is wanted.
        } else if lead > 0 {
            // "s:" and "<SID>" mean this script, "<SNR>123_" is the name as it is.
            // `eval_fname_sid`
            let sid_form = if exp { name.starts_with('s') || name.as_bytes().get(2).is_some_and(|c| c.eq_ignore_ascii_case(&b'I')) } else { at(s, *p) == b's' || at(s, *p + 2).eq_ignore_ascii_case(&b'I') };
            if sid_form {
                if self.scripts.cur == 0 {
                    self.error("E81: Using <SID> not in a script context");
                    return None;
                }
                prefix = format!("<SNR>{}_", self.scripts.cur);
            } else {
                prefix = "<SNR>".to_string();
            }
        } else if flags & TFN_INT == 0 && name_part.as_bytes().first().is_some_and(u8::is_ascii_lowercase) && name_part.as_bytes().get(1) != Some(&b':') && !name_part.contains('#') {
            let t = s[start..].to_string();
            self.error(format!("E128: Function name must start with a capital or \"s:\": {t}"));
            return None;
        }
        if !skip && flags & TFN_QUIET == 0 && flags & TFN_NO_DEREF == 0 && name_part.contains(':') {
            let t = s[start..].to_string();
            self.error(format!("E884: Function name cannot contain a colon: {t}"));
            return None;
        }
        *p = end;
        Some(crate::rc::format(format_args!("{prefix}{name_part}")))
    }

    /// `save_function_name`: `trans_function_name`, except that a lambda is returned as it is.
    pub(super) fn save_function_name(&mut self, s: &str, p: &mut usize, skip: bool, flags: u32) -> Option<RcStr> {
        if s[*p..].starts_with("<lambda>") {
            let mut q = *p + 8;
            while at(s, q).is_ascii_digit() {
                q += 1;
            }
            let name: RcStr = s[*p..q].into();
            *p = q;
            return Some(name);
        }
        self.trans_function_name(s, p, skip, flags)
    }

    /// `one_function_arg`: the end of one argument name at `s[arg..]`, or `arg` when something is wrong.
    fn one_function_arg(&mut self, s: &str, arg: usize, newargs: Option<&mut Vec<RcStr>>, skip: bool) -> usize {
        let mut p = arg;
        while at(s, p).is_ascii_alphanumeric() || at(s, p) == b'_' {
            p += 1;
        }
        if arg == p || at(s, arg).is_ascii_digit() || (p - arg == 9 && &s[arg..p] == "firstline") || (p - arg == 8 && &s[arg..p] == "lastline") {
            if !skip {
                let t = s[arg..].to_string();
                self.error(format!("E125: Illegal argument: {t}"));
            }
            return arg;
        }
        if let Some(newargs) = newargs {
            let name = &s[arg..p];
            if newargs.iter().any(|a| &**a == name) {
                self.error(format!("E853: Duplicate argument name: {name}"));
                return arg;
            }
            newargs.push(name.into());
        }
        p
    }

    /// `get_function_args`: the arguments up to `endchar` (not for a lambda: `-`). None for an error; `*argp` is after
    /// `endchar` then.
    fn get_function_args(&mut self, s: &str, argp: &mut usize, endchar: u8, collect: bool, skip: bool) -> Option<FuncArgs> {
        let mut mustend = false;
        let mut p = *argp;
        // A lambda (`endchar` is `-`) has no default values.
        let with_defaults = endchar == b')';
        let mut out = FuncArgs { args: Vec::new(), def_args: Vec::new(), varargs: false };
        let mut any_default = false;
        while at(s, p) != endchar {
            if at(s, p) == b'.' && at(s, p + 1) == b'.' && at(s, p + 2) == b'.' {
                out.varargs = true;
                p += 3;
                mustend = true;
            } else {
                let arg = p;
                p = self.one_function_arg(s, p, collect.then_some(&mut out.args), skip);
                if p == arg {
                    break;
                }
                if at(s, skipwhite(s, p)) == b'=' && with_defaults {
                    any_default = true;
                    p = skipwhite(s, skipwhite(s, p) + 1);
                    let expr_start = p;
                    // The default value is skipped over, not evaluated (`eval1` without `evalarg`).
                    match self.eval1(s, &mut p, false) {
                        Ok(_) => {
                            while p > expr_start && is_white(s.as_bytes()[p - 1]) {
                                p -= 1;
                            }
                            out.def_args.push(s[expr_start..p].to_string());
                        }
                        Err(f) => {
                            if let expr::Fail::Msg(m) = f {
                                self.error(m);
                            }
                            mustend = true;
                        }
                    }
                } else if any_default {
                    self.error("E989: Non-default argument follows default argument");
                    mustend = true;
                }
                if is_white(at(s, p)) && at(s, skipwhite(s, p)) == b',' {
                    // Be tolerant when skipping.
                    if !skip {
                        let t = s[p..].to_string();
                        self.error(format!("E1068: No white space allowed before ',': {t}"));
                        return None;
                    }
                    p = skipwhite(s, p);
                }
                if at(s, p) == b',' {
                    p += 1;
                } else {
                    mustend = true;
                }
            }
            p = skipwhite(s, p);
            if mustend && at(s, p) != endchar {
                if !skip {
                    let t = s[*argp..].to_string();
                    self.error(format!("E475: Invalid argument: {t}"));
                }
                break;
            }
        }
        if at(s, p) != endchar {
            return None;
        }
        *argp = p + 1;
        Some(out)
    }

    /// `ex_function`. `arg` is everything after the command name (up to the end of the whole line: `:function` does not stop
    /// at a `|`); what follows the command is left in `scripts.nextcmd`.
    pub(super) fn ex_function(&mut self, skip: bool, forceit: bool, arg: &str) {
        let s = arg;
        if ends_excmd(at(s, 0)) {
            if !skip {
                self.list_functions(None);
            }
            self.scripts.nextcmd = cmdline::check_nextcmd(s).map(str::to_string);
            return;
        }
        if at(s, 0) == b'/' {
            let end = cmdline::skip_regexp(s, 1, b'/');
            if !skip {
                self.list_functions(Some(&s[1..end.min(s.len())]));
            }
            let end = if at(s, end) == b'/' { end + 1 } else { end };
            self.scripts.nextcmd = cmdline::check_nextcmd(&s[end..]).map(str::to_string);
            return;
        }
        let mut p = 0;
        let name = self.save_function_name(s, &mut p, skip, TFN_NO_AUTOLOAD | TFN_DICT);
        let fudi = std::mem::take(&mut self.scripts.fudi);
        let paren = s[p..].contains('(');
        if name.is_none() && (fudi.dict.is_none() || !paren) && !skip {
            if let Some(k) = &fudi.newkey {
                self.error(format!("E716: Key not present in Dictionary: \"{k}\""));
            }
            return;
        }
        let saved_did_emsg = std::mem::replace(&mut self.scripts.did_emsg, false);
        if !paren {
            self.list_one_function(skip, forceit, name.as_deref(), s, p);
            self.scripts.did_emsg |= saved_did_emsg;
            return;
        }
        p = skipwhite(s, p);
        if at(s, p) != b'(' {
            if !skip {
                self.error(format!("E124: Missing '(': {s}"));
                self.scripts.did_emsg |= saved_did_emsg;
                return;
            }
            if let Some(i) = s[p..].find('(') {
                p += i;
            }
        }
        p = skipwhite(s, p + 1);
        if !skip {
            if let Some(n) = &name
                && fudi.key.is_none()
            {
                // The name must be made of name characters.
                let base = n.split_once('_').filter(|_| n.starts_with("<SNR>")).map_or(&**n, |(_, r)| r);
                let ok = base.bytes().enumerate().all(|(i, b)| if i == 0 { b.is_ascii_alphabetic() || b == b'_' } else { b.is_ascii_alphanumeric() || b == b'_' || b == b'#' });
                if !ok {
                    self.emsg_funcname("E475: Invalid argument: %s", n);
                    self.scripts.did_emsg |= saved_did_emsg;
                    return;
                }
            }
            // Not the dictionary of the global variables.
            if fudi.dict.as_ref().is_some_and(|d| super::value::Gc::ptr_eq(d, &self.vars)) {
                self.error("E862: Cannot use g: here");
                self.scripts.did_emsg |= saved_did_emsg;
                return;
            }
        }
        let Some(FuncArgs { args: newargs, def_args: default_args, varargs }) = self.get_function_args(s, &mut p, b')', true, skip) else {
            self.scripts.did_emsg |= saved_did_emsg;
            return;
        };
        let mut flags = 0;
        loop {
            p = skipwhite(s, p);
            let rest = &s[p..];
            if rest.starts_with("range") {
                flags |= FC_RANGE;
                p += 5;
            } else if rest.starts_with("dict") {
                flags |= FC_DICT;
                p += 4;
            } else if rest.starts_with("abort") {
                flags |= FC_ABORT;
                p += 5;
            } else if rest.starts_with("closure") {
                flags |= FC_CLOSURE;
                p += 7;
                // No function is running at the top level to take variables from.
                if self.scripts.calls.is_empty() {
                    self.emsg_funcname("E932: Closure function should not be at top level: %s", name.as_deref().unwrap_or(""));
                    self.scripts.did_emsg |= saved_did_emsg;
                    return;
                }
            } else {
                break;
            }
        }
        let mut line_arg: Option<&str> = None;
        let key_typed = self.scripts.typed;
        if at(s, p) == b'\n' {
            line_arg = Some(&s[p + 1..]);
        } else if p < s.len() && at(s, p) != b'"' && !skip && !self.scripts.did_emsg {
            let t = s[p..].to_string();
            self.error(format!("E488: Trailing characters: {t}"));
        }
        if key_typed {
            if !skip && !forceit {
                if fudi.dict.is_some() && fudi.newkey.is_none() {
                    self.error("E717: Dictionary entry already exists");
                } else if let Some(n) = &name
                    && self.find_func(n).is_some()
                {
                    self.emsg_funcname("E122: Function %s already exists, add ! to replace it", n);
                }
            }
            if !skip && self.scripts.did_emsg {
                self.scripts.did_emsg |= saved_did_emsg;
                return;
            }
            // `msg_putchar('\n')`: the lines of the body do not overwrite the name.
            self.capture_msg("\n", true);
        }
        let def = FuncDef { arg: arg.to_string(), name, args: newargs, def_args: default_args, varargs, flags, skip, forceit, saved_did_emsg, fudi, lnum: self.scripts.stack.last().map_or(0, |f| f.lnum) };
        let cmdline = self.scripts.cmdlinep.clone();
        // The lines of the body.
        let mut body = FuncBody::new();
        loop {
            let mut off = 0;
            let theline = match line_arg {
                Some(rest) => match rest.split_once('\n') {
                    Some((l, r)) => {
                        line_arg = Some(r);
                        Some(l.to_string())
                    }
                    None => {
                        line_arg = Some("");
                        Some(rest.to_string())
                    }
                },
                None => {
                    if self.scripts.typed && matches!(self.scripts.readers.last().map(|r| &r.base), None | Some(ReaderBase::None)) {
                        // Typed at the prompt: the next lines typed are the body.
                        self.scripts.pending_func = Some(PendingFunc { def, body, cmdline });
                        return;
                    }
                    let l = self.ea_getline(body.do_concat);
                    off = self.sourced_lines_extra();
                    l
                }
            };
            let Some(theline) = theline else {
                match &body.skip_until {
                    Some(m) => self.error(format!("E1145: Missing heredoc end marker: {m}")),
                    None => self.error("E126: Missing :endfunction"),
                }
                self.func_finish(def, body.lines, false, None);
                return;
            };
            let rest_after = line_arg.filter(|r| !r.is_empty());
            match self.body_line(&mut body, &theline, off, rest_after) {
                Step::More => {}
                Step::End(next) => {
                    self.func_finish(def, body.lines, true, next);
                    return;
                }
            }
            if line_arg == Some("") {
                line_arg = None;
            }
        }
    }

    /// How many lines more than one the last line read took (`sourcing_lnum_off`).
    fn sourced_lines_extra(&self) -> usize {
        let Some(f) = self.scripts.stack.last() else { return 0 };
        if !self.scripts.sourcing {
            return 0;
        }
        f.cookie.sourcing_lnum.saturating_sub(f.lnum)
    }

    /// One line of the body (`get_function_body`): the line is kept, and `:endfunction` of the function ends it.
    fn body_line(&mut self, bd: &mut FuncBody, theline: &str, off: usize, line_arg: Option<&str>) -> Step {
        if let Some(until) = bd.skip_until.clone() {
            let trimmed_ok = match &bd.heredoc_trimmed {
                None => true,
                Some(t) => (bd.is_heredoc && skipwhite(theline, 0) == 0) || theline.starts_with(t.as_str()),
            };
            if trimmed_ok {
                let p = match &bd.heredoc_trimmed {
                    None => theline,
                    Some(t) if bd.is_heredoc => {
                        if skipwhite(theline, 0) == 0 {
                            theline
                        } else {
                            &theline[t.len()..]
                        }
                    }
                    Some(t) => &theline[t.len()..],
                };
                if p == until {
                    bd.skip_until = None;
                    bd.heredoc_trimmed = None;
                    bd.do_concat = true;
                    bd.is_heredoc = false;
                }
            }
        } else {
            let s = theline;
            let mut p = 0;
            while is_white(at(s, p)) || at(s, p) == b':' {
                p += 1;
            }
            if checkforcmd(s, &mut p, "endfunction", 4) {
                let nested = bd.nesting > 0;
                if nested {
                    bd.nesting -= 1;
                } else {
                    if at(s, p) == b'!' {
                        p += 1;
                    }
                    let mut next = None;
                    if at(s, p) == b'|' {
                        next = Some(s[p + 1..].to_string());
                    } else if line_arg.is_some_and(|l| !l.trim_start_matches([' ', '\t']).is_empty()) {
                        next = line_arg.map(str::to_string);
                    }
                    return Step::End(next);
                }
            }
            if checkforcmd(s, &mut p, "function", 2) {
                if at(s, p) == b'!' {
                    p = skipwhite(s, p + 1);
                }
                p += eval_fname_script(&s[p..]);
                let mut q = p;
                let _ = self.trans_function_name(s, &mut q, true, 0);
                p = q;
                if at(s, skipwhite(s, p)) == b'(' {
                    if bd.nesting == MAX_FUNC_NESTING - 1 {
                        self.error("E1058: Function nesting too deep");
                    } else {
                        bd.nesting += 1;
                    }
                }
            }
            let tp = cmdline::skip_range(&s[p..]);
            let tp = s.len() - tp.len();
            p = tp;
            let mut q = p;
            let white_nl_nul = |c: u8| c == 0 || is_white(c) || c == b'\n';
            if (checkforcmd(s, &mut q, "append", 1) || checkforcmd(s, &mut q, "change", 1) || checkforcmd(s, &mut q, "insert", 1)) && (matches!(at(s, q), b'!' | b'|') || white_nl_nul(at(s, q))) {
                // `:append` text runs up to a line with only a dot.
                bd.skip_until = Some(".".to_string());
                p = q;
            } else {
                p = tp;
            }
            // ":python <<EOF", ":lua <<EOF" and the like.
            let arg = skipwhite(s, skiptowhite(s, p));
            let pb = &s.as_bytes()[p.min(s.len())..];
            let c = |i: usize| pb.get(i).copied().unwrap_or(0);
            let lang = (c(0) == b'p' && c(1) == b'y' && (!c(2).is_ascii_alphanumeric() || c(2) == b't' || ((c(2) == b'3' || c(2) == b'x') && !c(3).is_ascii_alphabetic())))
                || (c(0) == b'p' && c(1) == b'e' && (!c(2).is_ascii_alphabetic() || c(2) == b'r'))
                || (c(0) == b't' && c(1) == b'c' && (!c(2).is_ascii_alphabetic() || c(2) == b'l'))
                || (c(0) == b'l' && c(1) == b'u' && c(2) == b'a' && !c(3).is_ascii_alphabetic())
                || (c(0) == b'r' && c(1) == b'u' && c(2) == b'b' && (!c(3).is_ascii_alphabetic() || c(3) == b'y'))
                || (c(0) == b'm' && c(1) == b'z' && (!c(2).is_ascii_alphabetic() || c(2) == b's'));
            if at(s, arg) == b'<' && at(s, arg + 1) == b'<' && lang {
                // Continues until a dot, like `:append`.
                p = skipwhite(s, arg + 2);
                if s[p..].starts_with("trim") && (at(s, p + 4) == 0 || is_white(at(s, p + 4))) {
                    p = skipwhite(s, p + 4);
                    let n = skipwhite(s, 0);
                    bd.heredoc_trimmed = Some(s[..n].to_string());
                }
                if at(s, p) == 0 {
                    bd.skip_until = Some(".".to_string());
                } else {
                    bd.skip_until = Some(s[p..skiptowhite(s, p)].to_string());
                }
                bd.do_concat = false;
                bd.is_heredoc = true;
            }
            if !bd.is_heredoc {
                // ":let v =<< [trim] EOF" and ":let [a, b] =<< [trim] EOF", also ":const".
                let mut a = p;
                if (checkforcmd(s, &mut a, "let", 2) || checkforcmd(s, &mut p, "const", 5))
                    && let Ok(n) = cmdline::skip_var_list(&s[a..])
                    && s[skipwhite(s, a + n)..].starts_with("=<<")
                {
                    let mut q = skipwhite(s, skipwhite(s, a + n) + 3);
                    let mut has_trim = false;
                    loop {
                        if s[q..].starts_with("trim") && (at(s, q + 4) == 0 || is_white(at(s, q + 4))) {
                            q = skipwhite(s, q + 4);
                            has_trim = true;
                            continue;
                        }
                        if s[q..].starts_with("eval") && (at(s, q + 4) == 0 || is_white(at(s, q + 4))) {
                            q = skipwhite(s, q + 4);
                            continue;
                        }
                        break;
                    }
                    if has_trim {
                        let n = skipwhite(s, 0);
                        bd.heredoc_trimmed = Some(s[..n].to_string());
                    }
                    bd.skip_until = Some(s[q..skiptowhite(s, q)].to_string());
                    bd.do_concat = false;
                    bd.is_heredoc = true;
                }
            }
        }
        // The line goes in, and a `None` for each line it took more (a continuation line).
        bd.lines.push(Some(theline.to_string()));
        bd.lines.extend(std::iter::repeat_n(None, off));
        Step::More
    }

    /// The end of `ex_function` once the body has been read: define the function, or give up (`erret`).
    fn func_finish(&mut self, def: FuncDef, lines: Vec<Option<String>>, got_body: bool, next: Option<String>) {
        self.scripts.nextcmd = next;
        let FuncDef { arg, name, args, def_args, varargs, mut flags, skip, forceit, saved_did_emsg, fudi, lnum: sc_lnum } = def;
        let ok = got_body && !self.scripts.did_emsg && !skip;
        if ok && (name.is_some() || fudi.dict.is_some()) {
            let (sid, seq) = (self.scripts.cur, self.scripts.cur_seq);
            // A closure keeps the variables of the call it was defined in (`register_closure`).
            let scoped = if flags & FC_CLOSURE != 0 { self.current_scope() } else { None };
            let name = if let Some(dict) = &fudi.dict {
                // `function d.f()`: the function has a number for a name, the Dictionary item holds it.
                if fudi.newkey.is_none() && !forceit {
                    self.error("E717: Dictionary entry already exists");
                    self.scripts.did_emsg |= saved_did_emsg;
                    return;
                }
                // A function cannot be added to a locked Dictionary, nor change a locked item.
                let lock = match &fudi.key {
                    None => dict.borrow().lock,
                    Some(k) => dict.borrow().map.get(&**k).map_or(Lock::Unlocked, |i| i.lock),
                };
                if let Some(m) = super::value::value_check_lock(lock, Some(&arg)) {
                    self.error(m);
                    self.scripts.did_emsg |= saved_did_emsg;
                    return;
                }
                self.scripts.last_dict_func += 1;
                let n: RcStr = crate::rc::format(format_args!("{}", self.scripts.last_dict_func));
                flags |= FC_DICT;
                let key = fudi.newkey.clone().or(fudi.key.clone()).unwrap_or_default();
                dict.borrow_mut().insert(key, Value::Func(n.clone()));
                n
            } else {
                let name = name.expect("a name");
                // A variable that holds a Funcref of that name is in the way.
                if self.lookup_var(&name).is_some_and(|v| matches!(v, Value::Func(_) | Value::Partial(_))) {
                    self.emsg_funcname("E707: Function name conflicts with variable: %s", &name);
                    self.scripts.did_emsg |= saved_did_emsg;
                    return;
                }
                if let Some(old) = self.find_func(&name) {
                    if !forceit && (old.sid != sid || old.seq == seq) {
                        self.emsg_funcname("E122: Function %s already exists, add ! to replace it", &name);
                        self.scripts.did_emsg |= saved_did_emsg;
                        return;
                    }
                    if old.calls.get() > 0 {
                        self.emsg_funcname("E127: Cannot redefine function %s: It is in use", &name);
                        self.scripts.did_emsg |= saved_did_emsg;
                        return;
                    }
                }
                if !self.scripts.funcs.contains_key(&name) && name.contains('#') && !self.autoload_name_matches(&name) {
                    self.error(format!("E746: Function name does not match script file name: {name}"));
                    self.scripts.did_emsg |= saved_did_emsg;
                    return;
                }
                name
            };
            self.scripts.last_func_id += 1;
            let id = self.scripts.last_func_id;
            // shortcut: every function ever defined stays in `func_ids` so that a `funcref()` keeps its body; they are not freed
            let f = Rc::new(UFunc { name: name.clone(), args, def_args, varargs, flags, lines, sid, seq, calls: std::cell::Cell::new(0), id, deleted: std::cell::Cell::new(false), scoped, sc_lnum });
            self.scripts.func_ids.insert(id, f.clone());
            self.scripts.funcs.insert(name, f);
        }
        self.scripts.did_emsg |= saved_did_emsg;
    }

    /// An autoload function `a#b#c` belongs in the script `autoload/a/b.vim`: the file being sourced must end so.
    fn autoload_name_matches(&self, name: &str) -> bool {
        let Some(top) = self.scripts.stack.last() else { return false };
        let mut path = String::with_capacity(name.len() + 5);
        for part in name.split('#') {
            path.push('/');
            path.push_str(part);
        }
        path.push_str(".vim");
        // "autoload/" comes first in the name `autoload_name` makes; the comparison starts at its first `/`.
        top.name.len() > path.len() && top.name.ends_with(&path)
    }

    /// A line typed while the body of a function waits for its lines. `abort` is Esc or Ctrl-C: the end is missing.
    pub(in crate::editor) fn func_typed_line(&mut self, line: &str, abort: bool) {
        let Some(mut p) = self.scripts.pending_func.take() else { return };
        if abort {
            let msg = match &p.body.skip_until {
                Some(m) => format!("E1145: Missing heredoc end marker: {m}"),
                None => "E126: Missing :endfunction".to_string(),
            };
            self.error(msg);
            self.func_finish(p.def, p.body.lines, false, None);
            return;
        }
        self.scripts.cmdlinep = p.cmdline.clone();
        match self.body_line(&mut p.body, line, 0, None) {
            Step::More => self.scripts.pending_func = Some(p),
            Step::End(next) => self.func_finish(p.def, p.body.lines, true, next),
        }
    }

    /// Esc or Ctrl-C at the lines of a function.
    pub(in crate::editor) fn func_abort(&mut self) {
        self.scripts.typed = true;
        self.func_typed_line("", true);
        self.scripts.typed = false;
    }

    /// `list_func_head`.
    fn func_head(f: &UFunc, indent: bool, force: bool) -> String {
        let mut s = String::new();
        Self::func_head_into(&mut s, f, indent, force);
        s
    }

    fn func_head_into(s: &mut String, f: &UFunc, indent: bool, force: bool) {
        if indent {
            s.push_str("   ");
        }
        s.push_str(if force { "function! " } else { "function " });
        s.push_str(&f.name);
        s.push('(');
        let mut j = 0;
        while j < f.args.len() {
            if j > 0 {
                s.push_str(", ");
            }
            s.push_str(&f.args[j]);
            if j + f.def_args.len() >= f.args.len() {
                s.push_str(" = ");
                s.push_str(&f.def_args[j + f.def_args.len() - f.args.len()]);
            }
            j += 1;
        }
        if f.varargs {
            if j > 0 {
                s.push_str(", ");
            }
            s.push_str("...");
        }
        s.push(')');
        for (flag, word) in [(FC_ABORT, " abort"), (FC_RANGE, " range"), (FC_DICT, " dict"), (FC_CLOSURE, " closure")] {
            if f.flags & flag != 0 {
                s.push_str(word);
            }
        }
    }

    /// `list_functions`: all of them, or the ones whose name matches `pat`.
    fn list_functions(&mut self, pat: Option<&str>) {
        let mut names: Vec<RcStr> = self.scripts.funcs.keys().cloned().collect();
        names.sort();
        let mut lines = String::new();
        for n in names {
            let listed = match pat {
                None => !func_name_refcount(&n),
                Some(p) => {
                    if n.as_bytes()[0].is_ascii_digit() {
                        false
                    } else {
                        match self.regex_find(&n, p, false) {
                            Ok(m) => m.is_some(),
                            Err(m) => {
                                self.error(m);
                                return;
                            }
                        }
                    }
                }
            };
            if listed {
                if !lines.is_empty() {
                    lines.push('\n');
                }
                Self::func_head_into(&mut lines, &self.scripts.funcs[&*n], false, false);
            }
        }
        if !lines.is_empty() {
            self.info(lines);
        }
    }

    /// `list_one_function`: `:function Name` shows the definition, with line numbers unless `!`.
    fn list_one_function(&mut self, skip: bool, forceit: bool, name: Option<&str>, s: &str, p: usize) {
        if !ends_excmd(at(s, skipwhite(s, p))) {
            let t = s[p..].to_string();
            self.error(format!("E488: Trailing characters: {t}"));
            return;
        }
        self.scripts.nextcmd = cmdline::check_nextcmd(&s[p..]).map(str::to_string);
        let Some(name) = name else { return };
        if skip {
            return;
        }
        let Some(f) = self.find_func(name) else {
            self.emsg_funcname("E123: Undefined function: %s", name);
            return;
        };
        let mut out = Self::func_head(&f, !forceit, forceit);
        for (j, line) in f.lines.iter().enumerate() {
            let Some(line) = line else { continue };
            // `msg_prt_line`: a tab is spaces up to the next tab stop of the line, other control characters are shown as `^X`.
            let line = self.prt_line(line);
            out.push('\n');
            if forceit {
                out.push_str(&line);
            } else {
                use std::fmt::Write as _;
                let _ = write!(&mut out, "{}{}{}", j + 1, if j < 9 { "  " } else if j < 99 { " " } else { "" }, line);
            }
        }
        out.push_str(if forceit { "\nendfunction" } else { "\n   endfunction" });
        self.info(out);
    }

    /// `msg_prt_line` with 'list' off: tabs become spaces to the next multiple of 'tabstop', counted in the line.
    fn prt_line(&self, line: &str) -> String {
        let tabs = self.buf.opts.tabs();
        let mut out = String::new();
        let mut col = 0;
        for c in line.chars() {
            if c == '\t' {
                let n = tabs.pad(col);
                out.extend(std::iter::repeat_n(' ', n));
                col += n;
            } else {
                let old_len = out.len();
                crate::editor::messages::trans_in(&mut out, [c], false);
                col += crate::editor::graphemes::width(&out[old_len..], 1);
            }
        }
        out
    }

    /// `ex_delfunction`.
    pub(super) fn ex_delfunction(&mut self, skip: bool, forceit: bool, arg: &str) {
        let mut p = 0;
        let name = self.trans_function_name(arg, &mut p, skip, TFN_DICT);
        let fudi = std::mem::take(&mut self.scripts.fudi);
        let Some(name) = name else {
            if fudi.dict.is_some() && !skip {
                self.error("E718: Funcref required");
            }
            return;
        };
        if !ends_excmd(at(arg, skipwhite(arg, p))) {
            let t = arg[p..].to_string();
            self.error(format!("E488: Trailing characters: {t}"));
            return;
        }
        self.scripts.nextcmd = cmdline::check_nextcmd(&arg[p..]).map(str::to_string);
        if name.as_bytes()[0].is_ascii_digit() && fudi.dict.is_none() {
            if !skip {
                self.error(format!("E475: Invalid argument: {arg}"));
            }
            return;
        }
        if skip {
            return;
        }
        let Some(f) = self.find_func(&name) else {
            if !forceit {
                self.error(format!("E130: Unknown function: {arg}"));
            }
            return;
        };
        if f.calls.get() > 0 {
            self.error(format!("E131: Cannot delete function {arg}: It is in use"));
            return;
        }
        if let (Some(d), Some(k)) = (&fudi.dict, &fudi.key) {
            // The item that holds the function goes; the function lives on while something refers to it (a numbered
            // function is only freed with its last reference), which here means for good.
            d.borrow_mut().remove(k);
            return;
        }
        f.deleted.set(true);
        self.scripts.funcs.remove(&name);
    }

    /// `:endfunction` outside a function.
    pub(super) fn ex_endfunction(&mut self) {
        self.error("E193: :endfunction not inside a function");
    }
}

/// A `:function` typed at the prompt: the lines typed next are the body.
pub(in crate::editor) struct PendingFunc {
    def: FuncDef,
    body: FuncBody,
    cmdline: String,
}

/// The functions of the editor.
pub(super) type Funcs = HashMap<RcStr, Rc<UFunc>>;

/// A running call of a user function (`funccall_T`).
pub(in crate::editor) struct FuncCall {
    pub func: Rc<UFunc>,
    /// The next line of the body to read (`fc_linenr`).
    linenr: usize,
    /// A `:return` ended it (`fc_returned`).
    pub returned: bool,
    /// The value it returns (`fc_rettv`).
    rettv: Value,
    /// `l:`.
    pub l_vars: super::Vars,
    /// `a:`.
    pub a_vars: super::Vars,
    /// The calls added by `:defer`, run when the function ends, the last one first (`fc_defer`).
    pub defers: Vec<(String, Vec<Value>)>,
}

/// `builtin_function`: a name that starts with a lower case letter and has no `#` is not a user function.
fn builtin_function(name: &str) -> bool {
    name.as_bytes().first().is_some_and(u8::is_ascii_lowercase) && name.as_bytes().get(1) != Some(&b':') && !name.contains('#')
}

impl Editor {
    /// `fname_trans_sid`: `s:F` and `<SID>F` are this script's, `<SNR>1_F` as written. Err for `<SID>` outside a script.
    pub(super) fn fname_trans_sid(&self, name: &str) -> Result<String, ()> {
        let lead = eval_fname_script(name);
        if lead == 0 {
            return Ok(name.to_string());
        }
        let rest = &name[lead..];
        // `eval_fname_sid`
        if at(name, 0) == b's' || at(name, 2).eq_ignore_ascii_case(&b'I') {
            if self.scripts.cur == 0 {
                return Err(());
            }
            Ok(format!("<SNR>{}_{rest}", self.scripts.cur))
        } else {
            Ok(format!("<SNR>{rest}"))
        }
    }

    /// Does the function `spec` exist (`exists('*Name')`, `function_exists`)? Builtins are in `funcs`.
    pub(super) fn user_function_exists(&mut self, spec: &str) -> Option<bool> {
        // A variable that holds a Funcref stands for the function it holds (`deref_func_name`).
        if let Some(f) = self.deref_func_var(spec) {
            let name = match &f {
                Value::Func(n) => n.clone(),
                Value::Partial(p) => p.name.clone(),
                _ => RcStr::from(""),
            };
            return Some(if builtin_function(&name) { super::funcs::known(&name) } else { self.find_func(&name).is_some() });
        }
        let mut p = 0;
        let name = self.trans_function_name(spec, &mut p, false, TFN_INT | TFN_QUIET | TFN_NO_AUTOLOAD)?;
        let p = skipwhite(spec, p);
        if p < spec.len() && at(spec, p) != b'(' {
            return Some(false);
        }
        Some(if builtin_function(&name) { super::funcs::known(&name) } else { self.find_func(&name).is_some() })
    }

    /// Calls the user function `name`, if it is one: None for a builtin. `Err` is the message of an error that the caller
    /// gives (a wrong number of arguments).
    pub(super) fn call_user(&mut self, name: &str, args: Vec<Value>, selfdict: Option<super::value::Dict>) -> Option<Result<Value, String>> {
        let fname = match self.fname_trans_sid(name) {
            Ok(f) => f,
            Err(()) => return Some(Err(format!("E120: Using <SID> not in a script context: {name}"))),
        };
        let rfname = fname.strip_prefix("g:").unwrap_or(&fname).to_string();
        if builtin_function(&rfname) {
            return None;
        }
        let Some(fp) = self.find_func(&rfname) else {
            return Some(Err(format!("E117: Unknown function: {name}")));
        };
        // `check_user_func_argcount`
        let regular = fp.args.len();
        if args.len() < regular - fp.def_args.len() {
            return Some(Err(format!("E119: Not enough arguments for function: {name}")));
        }
        if !fp.varargs && args.len() > regular {
            return Some(Err(format!("E118: Too many arguments for function: {name}")));
        }
        if fp.flags & FC_DICT != 0 && selfdict.is_none() {
            return Some(Err(format!("E725: Calling dict function without Dictionary: {name}")));
        }
        let (first, last) = self.scripts.call_range;
        if fp.flags & FC_RANGE != 0 {
            self.scripts.does_range = true;
        }
        let selfdict = if fp.flags & FC_DICT != 0 { selfdict } else { None };
        Some(Ok(self.call_user_func(fp, args, first, last, selfdict)))
    }

    /// `call_user_func`.
    pub(super) fn call_user_func(&mut self, fp: Rc<UFunc>, args: Vec<Value>, firstline: usize, lastline: usize, selfdict: Option<super::value::Dict>) -> Value {
        if self.scripts.calls.len() >= self.scripts.maxfuncdepth {
            self.error("E132: Function call depth is higher than 'maxfuncdepth'");
            return Value::Int(-1);
        }
        fp.calls.set(fp.calls.get() + 1);
        let (l_vars, a_vars) = (super::Vars::default(), super::Vars::default());
        if let Some(d) = selfdict {
            // `l:self`
            l_vars.borrow_mut().insert_fixed("self".into(), Value::Dict(d), Lock::Unlocked);
        }
        a_vars.borrow_mut().lock = Lock::Fixed;
        let islambda = fp.name.starts_with("<lambda>");
        let noargs = fp.flags & FC_NOARGS != 0;
        // `a:0`, `a:000`, `a:firstline`, `a:lastline` (none in a lambda that does not use `a:`), the named arguments and `a:1`...
        let named = fp.args.len();
        if !noargs {
            let mut a = a_vars.borrow_mut();
            a.insert_fixed("0".into(), Value::Int(args.len().saturating_sub(named) as i64), Lock::Fixed);
            let extra = Value::list(args.iter().skip(named).cloned().collect());
            if let Value::List(l) = &extra {
                let mut l = l.borrow_mut();
                l.lock = Lock::Fixed;
                l.items.iter_mut().for_each(|i| i.lock = Lock::Fixed);
            }
            a.insert_fixed("000".into(), extra, Lock::Fixed);
            a.insert_fixed("firstline".into(), Value::Int(firstline as i64), Lock::Fixed);
            a.insert_fixed("lastline".into(), Value::Int(lastline as i64), Lock::Fixed);
        }
        let mut default_arg_err = false;
        for i in 0..args.len().max(named) {
            if i < named {
                let value = if i < args.len() {
                    args[i].clone()
                } else {
                    // A default value is evaluated when it is needed.
                    let expr_text = fp.def_args[i + fp.def_args.len() - named].clone();
                    // The earlier arguments are visible to it.
                    self.scripts.calls.push(FuncCall { func: fp.clone(), linenr: 0, returned: false, rettv: Value::Int(0), l_vars: l_vars.clone(), a_vars: a_vars.clone(), defers: Vec::new() });
                    let r = self.eval(&expr_text);
                    self.scripts.calls.pop();
                    match r {
                        Ok(v) => v,
                        Err(m) => {
                            self.error(m);
                            default_arg_err = true;
                            break;
                        }
                    }
                };
                // The named arguments of a lambda are local variables.
                if islambda { &l_vars } else { &a_vars }.borrow_mut().insert_fixed(fp.args[i].clone(), value, Lock::Fixed);
            } else {
                if noargs {
                    break;
                }
                a_vars.borrow_mut().insert_fixed(crate::rc::format(format_args!("{}", i - named + 1)), args[i].clone(), Lock::Fixed);
            }
        }
        let idx = self.scripts.calls.len();
        self.scripts.calls.push(FuncCall { func: fp.clone(), linenr: 0, returned: false, rettv: Value::Int(0), l_vars, a_vars, defers: Vec::new() });
        self.scripts.stack.push(super::docmd::Frame::function(fp.name.clone()));
        let save_did_emsg = std::mem::replace(&mut self.scripts.did_emsg, false);
        if default_arg_err && fp.flags & FC_ABORT != 0 {
            self.scripts.did_emsg = true;
        } else if islambda {
            // A lambda is `return {expr}`: the expression is evaluated at once.
            let text = fp.lines[0].as_deref().unwrap_or("")[7..].to_string();
            self.scripts.eval_progress = false;
            match self.eval(&text) {
                Ok(v) => self.scripts.calls[idx].rettv = v,
                Err(m) => {
                    self.error(m);
                    // An expression that fails before it has a value leaves none: -1; after a term was evaluated, the
                    // value is the 0 it started with.
                    if !self.scripts.eval_progress {
                        self.scripts.calls[idx].rettv = Value::Int(-1);
                    }
                }
            }
        } else {
            self.scripts.next_base = Some(ReaderBase::Func(idx));
            self.do_cmdline(None, true, true, true);
        }
        // Invoke the functions added with `:defer`.
        self.handle_defer_one(idx);
        // When the function was aborted because of an error, it returns -1.
        let aborted = self.scripts.did_emsg && fp.flags & FC_ABORT != 0;
        let call = self.scripts.calls.pop().expect("the call");
        self.scripts.stack.pop();
        self.scripts.did_emsg |= save_did_emsg;
        fp.calls.set(fp.calls.get() - 1);
        if aborted { Value::Int(-1) } else { call.rettv }
    }

    /// `get_func_line`: the next line of the body of call `c`, none after a `:return` or an error of an `abort` function.
    pub(super) fn get_func_line(&mut self, c: usize) -> Option<String> {
        let call = &self.scripts.calls[c];
        if // The `abort` flag is ignored after an error inside a try conditional (`aborted_in_try()` is `force_abort`).
        (call.func.flags & FC_ABORT != 0 && self.scripts.did_emsg && !self.scripts.force_abort) || call.returned {
            return None;
        }
        let func = call.func.clone();
        let call = &mut self.scripts.calls[c];
        // Lines that continue the one before are holes.
        while call.linenr < func.lines.len() && func.lines[call.linenr].is_none() {
            call.linenr += 1;
        }
        if call.linenr >= func.lines.len() {
            return None;
        }
        let line = func.lines[call.linenr].clone();
        call.linenr += 1;
        let lnum = call.linenr;
        if let Some(f) = self.scripts.stack.last_mut() {
            f.lnum = lnum;
        }
        line
    }

    /// `func_has_ended`: a `:return` was done, or an `abort` function met an error.
    pub(super) fn func_has_ended(&self, c: usize) -> bool {
        let call = &self.scripts.calls[c];
        (call.func.flags & FC_ABORT != 0 && self.scripts.did_emsg) || call.returned
    }

    /// `ex_return`: `:return [expr]`.
    pub(super) fn ex_return(&mut self, cs: &mut super::cstack::Cstack, skip: bool, arg: &str) {
        if self.scripts.calls.is_empty() {
            self.error("E133: :return not inside a function");
            return;
        }
        self.scripts.nextcmd = None;
        let has_arg = !matches!(at(arg, 0), 0 | b'|' | b'\n');
        let mut value = None;
        let mut failed = false;
        if has_arg {
            if skip {
                self.scripts.emsg_skip += 1;
            }
            match self.eval(arg) {
                Ok(v) => value = Some(v),
                Err(m) => {
                    failed = true;
                    if !skip && !m.is_empty() {
                        self.error(m);
                    }
                }
            }
            if skip {
                self.scripts.emsg_skip -= 1;
            }
        }
        let mut returning = false;
        if !skip {
            // It is safer to return also on error, but not when the expression was cancelled by an exception.
            if !(failed && self.aborting()) {
                returning = self.do_return(cs, false, true, value);
            }
        }
        if !returning && self.scripts.nextcmd.is_none() {
            self.scripts.nextcmd = cmdline::check_nextcmd(arg).map(str::to_string);
        }
    }

    /// `do_return`: the function returns, or the `:return` becomes pending for the `:endtry` of a try that is not in its
    /// finally clause. True when it is carried out.
    pub(super) fn do_return(&mut self, cs: &mut super::cstack::Cstack, reanimate: bool, is_cmd: bool, value: Option<Value>) -> bool {
        let c = self.scripts.calls.len() - 1;
        if reanimate {
            // The return is undone.
            self.scripts.calls[c].returned = false;
        }
        let idx = self.cleanup_conditionals(cs, 0, true);
        let _ = is_cmd;
        if idx >= 0 {
            let i = idx as usize;
            cs.pending[i] = super::cstack::CSTP_RETURN;
            cs.rettv[i] = if reanimate {
                // The value that was stored is the pending one; the function gets the default again.
                Some(std::mem::replace(&mut self.scripts.calls[c].rettv, Value::Int(0)))
            } else {
                value
            };
        } else {
            self.scripts.calls[c].returned = true;
            if !reanimate && let Some(v) = value {
                self.scripts.calls[c].rettv = v;
            }
        }
        idx < 0
    }
}

impl super::docmd::Frame {
    /// The entry for a call of the function `name` (`estack_push_ufunc`).
    pub(super) fn function(name: RcStr) -> Self {
        super::docmd::Frame::new_func(name)
    }
}

impl Editor {
    /// The Funcref or partial that the variable `name` holds, for a call of `name(...)` (`deref_func_name`).
    pub(super) fn deref_func_var(&self, name: &str) -> Option<Value> {
        self.lookup_var(name).filter(|v| matches!(v, Value::Func(_) | Value::Partial(_)))
    }

    /// Calls `f`: a Funcref, a partial (its arguments first, its Dictionary as `self`) or the name of a function.
    pub(in crate::editor) fn call_value(&mut self, f: &Value, args: Vec<Value>, selfdict: Option<super::value::Dict>) -> Result<Value, String> {
        match f {
            Value::Partial(p) => {
                let mut all = p.args.clone();
                all.extend(args);
                // The Dictionary of the partial wins, unless it was bound by `dict.func` and one is given.
                let selfd = match &p.dict {
                    Some(d) if selfdict.is_none() || !p.auto => Some(d.clone()),
                    _ => selfdict,
                };
                if let Some(fp) = p.func_id.and_then(|id| self.scripts.func_ids.get(&id).cloned()) {
                    return self.call_ufunc(fp, &p.name, all, selfd);
                }
                self.call_named(&p.name, all, selfd)
            }
            Value::Func(name) => self.call_named(name, args, selfdict),
            v => {
                let name = self.to_string(v)?;
                self.call_named(&name, args, selfdict)
            }
        }
    }

    /// A call of the function `fp` that `name` stands for: the arguments are counted first.
    fn call_ufunc(&mut self, fp: Rc<UFunc>, name: &str, args: Vec<Value>, selfdict: Option<super::value::Dict>) -> Result<Value, String> {
        if fp.deleted.get() {
            return Err(format!("E933: Function was deleted: {name}"));
        }
        let regular = fp.args.len();
        if args.len() < regular - fp.def_args.len() {
            return Err(format!("E119: Not enough arguments for function: {name}"));
        }
        if !fp.varargs && args.len() > regular {
            return Err(format!("E118: Too many arguments for function: {name}"));
        }
        if fp.flags & FC_DICT != 0 && selfdict.is_none() {
            return Err(format!("E725: Calling dict function without Dictionary: {name}"));
        }
        let (first, last) = self.scripts.call_range;
        if fp.flags & FC_RANGE != 0 {
            self.scripts.does_range = true;
        }
        let selfdict = if fp.flags & FC_DICT != 0 { selfdict } else { None };
        Ok(self.call_user_func(fp, args, first, last, selfdict))
    }

    /// `function()` and `funcref()` (`common_function`).
    pub(super) fn common_function(&mut self, a: &[Value], is_funcref: bool) -> Value {
        let fail = Value::Int(0);
        let (mut s, use_string, arg_pt): (Option<RcStr>, bool, Option<super::value::Gc<super::value::Partial>>) = match &a[0] {
            Value::Func(n) => (Some(n.clone()), false, None),
            Value::Partial(p) => (Some(p.name.clone()), false, Some(p.clone())),
            v => (Some(self.tv_str(v).into()), true, None),
        };
        let mut trans_name = None;
        if (use_string && !s.as_deref().unwrap_or("").contains('#')) || is_funcref {
            let text = s.clone().unwrap_or_default();
            let mut p = 0;
            trans_name = self.save_function_name(&text, &mut p, false, TFN_INT | TFN_QUIET | TFN_NO_AUTOLOAD | TFN_NO_DEREF);
            if p < text.len() {
                s = None;
            }
        }
        let bad = match &s {
            None => true,
            Some(t) => t.is_empty() || (use_string && t.as_bytes()[0].is_ascii_digit()) || (is_funcref && trans_name.is_none()),
        };
        if bad {
            let t = if use_string { self.tv_str(&a[0]) } else { s.as_deref().unwrap_or_default().to_string() };
            self.error(format!("E475: Invalid argument: {t}"));
            return fail;
        }
        let s = s.expect("a name");
        if let Some(tn) = &trans_name {
            let exists = if is_funcref { self.find_func(tn).is_some() } else if builtin_function(tn) { super::funcs::known(tn) } else { self.find_func(tn).is_some() };
            if !exists {
                self.error(format!("E700: Unknown function: {s}"));
                return fail;
            }
        }
        // `s:` and `<SID>` become `<SNR>nr_`, so that the function can also be called from another script.
        let name = if s.starts_with("s:") || s.starts_with("<SID>") {
            if self.scripts.cur == 0 {
                self.error("E81: Using <SID> not in a script context");
                return fail;
            }
            crate::rc::format(format_args!("<SNR>{}_{}", self.scripts.cur, &s[if s.starts_with('s') { 2 } else { 5 }..]))
        } else {
            s.clone()
        };
        let (mut dict_idx, mut arg_idx) = (None, None);
        if let Some(second) = a.get(1) {
            if a.get(2).is_some() {
                (arg_idx, dict_idx) = (Some(1), Some(2));
            } else if matches!(second, Value::Dict(_)) {
                dict_idx = Some(1);
            } else {
                arg_idx = Some(1);
            }
            if let Some(i) = dict_idx
                && !self.check_arg(matches!(a[i], Value::Dict(_)), "E1206: Dictionary", i)
            {
                return fail;
            }
            if let Some(i) = arg_idx {
                let Value::List(l) = &a[i] else {
                    self.error("E923: Second argument of function() must be a list or a dict");
                    return fail;
                };
                if l.borrow().is_empty() {
                    arg_idx = None;
                } else if l.borrow().len() > MAX_FUNC_ARGS {
                    self.error(format!("E118: Too many arguments for function: {s}"));
                    return fail;
                }
            }
        }
        if dict_idx.is_some() || arg_idx.is_some() || arg_pt.is_some() || is_funcref {
            let mut args = arg_pt.as_ref().map(|p| p.args.clone()).unwrap_or_default();
            if let Some(i) = arg_idx
                && let Value::List(l) = &a[i]
            {
                args.extend(l.borrow().iter().cloned());
            }
            let (dict, auto) = match (dict_idx, &arg_pt) {
                (Some(i), _) => match &a[i] {
                    Value::Dict(d) => (Some(d.clone()), false),
                    _ => (None, false),
                },
                (None, Some(p)) => (p.dict.clone(), p.auto),
                _ => (None, false),
            };
            let (pname, func_id) = if let Some(p) = arg_pt.as_ref().filter(|p| p.func_id.is_some()) {
                (p.name.clone(), p.func_id)
            } else if is_funcref {
                let fp = self.find_func(trans_name.as_deref().unwrap_or("")).expect("checked");
                (fp.name.clone(), Some(fp.id))
            } else {
                (name, None)
            };
            Value::Partial(super::value::Gc::new(super::value::Partial { name: pname, func_id, args, dict, auto }))
        } else {
            Value::Func(name)
        }
    }

    /// `get_func_arity`: (required, optional, varargs) of a builtin or a user function.
    pub(super) fn func_arity(&mut self, name: &str) -> Option<(usize, usize, bool)> {
        if let Some((min, max)) = super::funcs::arity(name) {
            return Some((min, max - min, false));
        }
        let fname = self.fname_trans_sid(name).ok()?;
        let fp = self.find_func(&fname)?;
        let required = fp.args.len() - fp.def_args.len();
        Some((required, fp.args.len() - required, fp.varargs))
    }

    /// `call(func, arglist [, dict])`.
    pub(super) fn f_call_func(&mut self, a: &[Value]) -> Value {
        if !self.check_arg(matches!(a[1], Value::List(_)), "E1211: List", 1) {
            return Value::Int(0);
        }
        let name_empty = match &a[0] {
            Value::Func(n) => n.is_empty(),
            Value::Partial(p) => p.name.is_empty(),
            v => {
                let Some(n) = self.str_chk(v) else { return Value::Int(0) };
                n.is_empty()
            }
        };
        if name_empty {
            return Value::Int(0);
        }
        let mut f = a[0].clone();
        if let Value::Str(n) = &a[0] {
            let mut p = 0;
            let Some(tn) = self.trans_function_name(n, &mut p, false, TFN_INT | TFN_QUIET) else {
                self.error(format!("E117: Unknown function: {n}"));
                return Value::Int(0);
            };
            f = Value::Str(tn);
        }
        let mut selfdict = None;
        if let Some(d) = a.get(2) {
            let Value::Dict(dd) = d else {
                self.check_arg(false, "E1206: Dictionary", 2);
                return Value::Int(0);
            };
            selfdict = Some(dd.clone());
        }
        let Value::List(l) = &a[1] else { return Value::Int(0) };
        let args = l.borrow().to_vec();
        if args.len() > MAX_FUNC_ARGS - match &a[0] { Value::Partial(p) => p.args.len(), _ => 0 } {
            self.error("E699: Too many arguments");
            return Value::Int(0);
        }
        // `curwin->w_cursor.lnum` for `a:firstline` and `a:lastline`.
        let cursor = self.win.line + 1;
        self.scripts.call_range = (cursor, cursor);
        match self.call_value(&f, args, selfdict) {
            Ok(v) => v,
            Err(m) => {
                self.error(m);
                Value::Int(0)
            }
        }
    }
}

/// The variables of a call that a closure or lambda was made in (`uf_scoped`), and the ones that call was in itself.
pub(in crate::editor) struct Scoped {
    pub l_vars: super::Vars,
    pub a_vars: super::Vars,
    pub parent: Option<Rc<Scoped>>,
}

impl Editor {
    /// The scope of the running call, for a closure to keep.
    pub(super) fn current_scope(&self) -> Option<Rc<Scoped>> {
        let c = self.scripts.calls.last()?;
        Some(Rc::new(Scoped { l_vars: c.l_vars.clone(), a_vars: c.a_vars.clone(), parent: c.func.scoped.clone() }))
    }

    /// `check_vars`: a name that is a local variable or an argument of the running function makes the lambda being
    /// skipped over a closure.
    pub(super) fn check_vars(&mut self, name: &str) {
        if self.scripts.lavars.is_none() || self.scripts.calls.is_empty() {
            return;
        }
        let (scope, n) = self.scope_of(name);
        if matches!(scope, super::Scope::Func | super::Scope::Args) && self.lookup_var(name).is_some() && !n.is_empty() {
            self.scripts.lavars = Some(true);
        }
    }

    /// `get_lambda_tv`: `{args -> expr}` at `s[*p..]` (the `{`). None when it is not a lambda (`NOTDONE`: a Dictionary).
    pub(super) fn get_lambda_tv(&mut self, s: &str, p: &mut usize, ev: bool) -> Result<Option<Value>, expr::Fail> {
        // First check that this is a lambda: "->" must exist.
        let mut sp = skipwhite(s, *p + 1);
        let probe = self.get_function_args(s, &mut sp, b'-', false, true);
        if probe.is_none() || at(s, sp) != b'>' {
            return Ok(None);
        }
        // Parse the arguments again.
        *p = skipwhite(s, *p + 1);
        let Some(fa) = self.get_function_args(s, p, b'-', ev, false) else { return Err(expr::Fail::Silent) };
        if at(s, *p) != b'>' {
            return Err(expr::Fail::Silent);
        }
        // Set up a flag for checking local variables and arguments.
        let old_lavars = self.scripts.lavars;
        if ev {
            self.scripts.lavars = Some(false);
        }
        *p = skipwhite(s, *p + 1);
        let start = *p;
        let skipped = self.eval1(s, p, false);
        let lavars = ev && self.scripts.lavars == Some(true);
        // Skipping, the outer lambda's flag is the one that was set; evaluating, the outer one is put back.
        if ev {
            self.scripts.lavars = old_lavars;
        }
        skipped?;
        let end = *p;
        *p = skipwhite(s, *p);
        if at(s, *p) != b'}' {
            let t = s[*p..].to_string();
            self.error(format!("E451: Expected }}: {t}"));
            return Err(expr::Fail::Silent);
        }
        *p += 1;
        if !ev {
            return Ok(Some(Value::None));
        }
        self.scripts.last_lambda += 1;
        let name: RcStr = crate::rc::format(format_args!("<lambda>{}", self.scripts.last_lambda));
        let body = format!("return {}", &s[start..end]);
        let mut flags = 0;
        if !body[7..].contains("a:") {
            // No `a:` variables are used for sure.
            flags |= FC_NOARGS;
        }
        let scoped = if !self.scripts.calls.is_empty() && lavars {
            flags |= FC_CLOSURE;
            self.current_scope()
        } else {
            None
        };
        self.scripts.last_func_id += 1;
        let id = self.scripts.last_func_id;
        let f = Rc::new(UFunc {
            name: name.clone(),
            args: fa.args,
            def_args: Vec::new(),
            varargs: true,
            flags,
            lines: vec![Some(body)],
            sid: self.scripts.cur,
            seq: self.scripts.cur_seq,
            calls: std::cell::Cell::new(0),
            id,
            deleted: std::cell::Cell::new(false),
            scoped,
            sc_lnum: self.scripts.stack.last().map_or(0, |f| f.lnum),
        });
        self.scripts.func_ids.insert(id, f.clone());
        self.scripts.funcs.insert(name.clone(), f);
        Ok(Some(Value::Partial(super::value::Gc::new(super::value::Partial { name, func_id: Some(id), args: Vec::new(), dict: None, auto: false }))))
    }
}

impl Editor {
    /// `handle_defer_one`: the calls of `:defer` of call `idx`, the last one first. A deferred function runs as if nothing was
    /// thrown (`exception_state_*`), also when the function ends by an exception.
    fn handle_defer_one(&mut self, idx: usize) {
        let defers = std::mem::take(&mut self.scripts.calls[idx].defers);
        for (name, args) in defers.into_iter().rev() {
            let estate = self.exception_state_save();
            self.exception_state_clear();
            // A `:qa` inside the function must not cut the deferred function short.
            let quitting = std::mem::take(&mut self.scripts.quitting);
            if let Err(m) = self.call_named(&name, args, None) {
                self.error(m);
            }
            self.scripts.quitting |= quitting;
            self.exception_state_restore(estate);
        }
    }

    /// `ex_defer_inner`, after the name is known: `arg[*p..]` is at the `(`. The call is checked and kept. True for a failure.
    pub(super) fn defer_inner(&mut self, arg: &str, p: &mut usize, name: &str, partial: Option<(Vec<Value>, bool)>) -> bool {
        if self.scripts.calls.is_empty() {
            self.error("E193: defer not inside a function");
            return true;
        }
        let mut args = Vec::new();
        if let Some((pargs, has_dict)) = partial {
            if has_dict {
                self.error("E1300: Cannot use a partial with dictionary for :defer");
                return true;
            }
            args = pargs;
        }
        match self.get_func_arguments(arg, p, true, &mut args) {
            Ok(true) => {}
            Ok(false) => return true,
            Err(f) => {
                if let super::expr::Fail::Msg(m) = f {
                    self.error(m);
                }
                return true;
            }
        }
        let checked = if builtin_function(name) {
            super::funcs::check_args(name, args.len())
        } else if let Some(fp) = self.find_func(name) {
            // `check_user_func_argcount`
            let regular = fp.args.len();
            if args.len() < regular - fp.def_args.len() {
                Err(format!("E119: Not enough arguments for function: {name}"))
            } else if !fp.varargs && args.len() > regular {
                Err(format!("E118: Too many arguments for function: {name}"))
            } else {
                Ok(())
            }
        } else {
            // An unknown function is tolerated, it might be defined later.
            Ok(())
        };
        if let Err(m) = checked {
            self.error(m);
            return true;
        }
        self.scripts.calls.last_mut().expect("a call").defers.push((name.to_string(), args));
        false
    }
}
