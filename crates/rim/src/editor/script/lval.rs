//! Port of Neovim's lvalues: `get_lval` and `set_var_lval` (`eval.c`), `eexe_mod_op` (`eval/executor.c`),
//! `ex_let_vars`, `ex_let_one` and its `$VAR`, `&option` and `@r` parts (`eval/vars.c`). A position is a byte
//! offset into the text of the command, as in `expr.rs`; a message that C prints with `%s` from a pointer into the
//! command line goes on to the end of it (`tail`).

use std::rc::Rc;
use dumpster::unsync::Gc;

use super::{
    Scope, Value, cmdline,
    expr::{Fail, at, ends_excmd, skipwhite},
    set_env,
    value::{Dict, List, Lock, value_check_lock, var_check_lock, var_check_ro},
    vimvars,
};
use crate::editor::{
    Editor,
    registers::{Reg, RegKind},
};

/// Where an lvalue points (`lval_T`): what `get_lval` found and `set_var_lval` changes.
#[derive(Debug)]
pub(super) enum Place {
    /// `ll_tv == NULL`: a variable by name.
    Var,
    /// A variable that the name alone (`x`, no subscript) did not reach: `let x.= 'a'`, where `.` is no key. The value is
    /// changed in place.
    VarTv,
    /// A List item, by index.
    Item { list: List, idx: usize },
    /// A slice `l[a:b]`: first index, last index, and whether it was left out (`l[a:]`).
    Range { list: List, first: usize, last: i64, empty2: bool },
    /// An item of a Dictionary that exists.
    Key { dict: Dict, key: String },
    /// A key to add (`ll_newkey`).
    NewKey { dict: Dict, key: String },
}

/// What `get_name_len` found: a name (its length and the expanded name when it had braces), none (0, with the
/// message to give when there is one), or braces that could not be expanded (-1, with the message of the expression).
pub(super) enum NameLen {
    Found(usize, Option<String>),
    None(Option<String>),
    Bad(Option<String>),
}

/// `lval_T`: the name (none when it could not be made) and the place.
#[derive(Debug)]
pub(super) struct Lval {
    pub name: Option<Rc<str>>,
    pub place: Place,
    /// The lock of the value the lvalue stands in (`ll_tv->v_lock`): of the variable, or of the item reached last.
    pub tv_lock: Lock,
    /// What C prints for `ll_name` once the name is followed by a subscript: the rest of the command line.
    pub rest: String,
}

fn is_white(c: u8) -> bool {
    c == b' ' || c == b'\t'
}

/// The first `{...}` of a name that `find_name_end` found: where the `{` is and the `}` (none when it is not closed).
pub(super) fn brace_span(name: &str) -> Option<(usize, Option<usize>)> {
    let b = name.as_bytes();
    let (mut mb, mut br, mut p) = (0i32, 0i32, 0usize);
    let (mut start, mut end) = (None, None);
    while p < b.len() {
        match b[p] {
            q @ (b'\'' | b'"') => {
                p += 1;
                while p < b.len() && b[p] != q {
                    if q == b'"' && b[p] == b'\\' {
                        p += 1;
                    }
                    p += 1;
                }
            }
            b'[' if mb == 0 => br += 1,
            b']' if mb == 0 => br -= 1,
            b'{' if br == 0 => {
                if mb == 0 && start.is_none() {
                    start = Some(p);
                }
                mb += 1;
            }
            b'}' if br == 0 => {
                mb -= 1;
                if mb == 0 && end.is_none() {
                    end = Some(p);
                }
            }
            _ => {}
        }
        p += 1;
    }
    Some((start?, end))
}

/// `valid_varname` without the message.
pub(super) fn valid_varname(name: &str) -> bool {
    name.bytes().enumerate().all(|(i, c)| c.is_ascii_alphabetic() || c == b'_' || (i > 0 && c.is_ascii_digit()) || c == b'#')
}

/// `tv_list_find_index`: the item of `*n` (a negative one counts from the end); one out of range on the negative
/// side is the first item, with `*n` set to 0.
fn find_index(len: usize, n: &mut i64) -> Option<usize> {
    let uidx = |n: i64| {
        let n = if n < 0 { n + len as i64 } else { n };
        (0..len as i64).contains(&n).then_some(n as usize)
    };
    if let Some(i) = uidx(*n) {
        return Some(i);
    }
    if *n < 0 {
        *n = 0;
        return uidx(0);
    }
    None
}

/// `num_divide`.
pub(super) fn num_divide(a: i64, b: i64) -> i64 {
    if b == 0 {
        if a == 0 {
            i64::MIN
        } else if a < 0 {
            -i64::MAX
        } else {
            i64::MAX
        }
    } else if a == i64::MIN && b == -1 {
        i64::MAX
    } else {
        a / b
    }
}

/// `num_modulus`.
pub(super) fn num_modulus(a: i64, b: i64) -> i64 {
    if b == 0 { 0 } else { a.wrapping_rem(b) }
}

impl Editor {
    /// What C prints for a `%s` of a pointer into the command line: the text from `pos` to the end of the line.
    pub(super) fn tail(&self, s: &str, pos: usize) -> String {
        format!("{}{}", &s[pos..], self.scripts.arg_rest)
    }

    /// The scope a Dictionary is the variables of, if it is one (`dv_scope`).
    fn dict_scope(&self, d: &Dict) -> Option<Scope> {
        [Scope::Global, Scope::Buffer, Scope::Window, Scope::Tab, Scope::Func, Scope::Args, Scope::Script, Scope::Vim].into_iter().find(|&sc| Gc::ptr_eq(self.vars(sc), d))
    }

    /// `eval1` as `get_lval` calls it: always evaluating, the message given here.
    fn lval_eval(&mut self, s: &str, p: &mut usize) -> Option<Value> {
        match self.eval1(s, p, true) {
            Ok(v) => Some(v),
            Err(Fail::Msg(m)) => {
                self.error(m);
                None
            }
            Err(Fail::Silent) => None,
        }
    }

    /// `tv_check_str`: a Number or a String, the message given otherwise.
    fn lval_check_str(&mut self, v: &Value) -> bool {
        match self.check_str(v) {
            Ok(()) => true,
            Err(Fail::Msg(m)) => {
                self.error(m);
                false
            }
            Err(Fail::Silent) => false,
        }
    }

    /// `make_expanded_name`: the name with the `{expr}` in it replaced by the value of the expression, again while
    /// the result has braces. The error is the message of the expression, if it gave one.
    fn make_expanded_name(&mut self, text: &str, start: usize, end: Option<usize>, in_end: usize) -> Result<String, Option<String>> {
        let end = end.ok_or(None)?;
        // C ends the expression with a NUL at the `}`: what follows on the command line is not part of a message.
        let rest = std::mem::take(&mut self.scripts.arg_rest);
        let value = self.eval0(&text[start + 1..end]).0;
        self.scripts.arg_rest = rest;
        let value = value.map_err(Some)?;
        // `typval2string`: a List or Dictionary is written as `string()` does (and expanded again if it has braces).
        let val = if matches!(value, Value::List(_) | Value::Dict(_)) {
            let (s, recursed) = value.encode(super::value::Enc::String);
            if recursed {
                self.error("E724: unable to correctly dump variable with self-referencing container");
            }
            s
        } else {
            self.tv_str(&value)
        };
        let name = format!("{}{}{}", &text[..start], val, &text[end + 1..in_end]);
        let name_end = cmdline::find_name_end(&name, 0);
        match brace_span(&name[..name_end]) {
            Some((bs, be)) => self.make_expanded_name(&name, bs, be, name_end),
            None => Ok(name),
        }
    }

    /// `get_name_len`: the name of a variable or function at `s[*p..]`, with `{expr}` in it expanded when `evaluate`.
    /// `*p` goes to after it.
    pub(super) fn get_name_len(&mut self, s: &str, p: &mut usize, evaluate: bool, verbose: bool) -> NameLen {
        let from = *p;
        // A literal `<SID>` or `<SNR>` is part of the name (`s:` is found by `find_name_end` itself).
        let lead = if super::userfunc::eval_fname_script(&s[from..]) > 2 { 5 } else { 0 };
        let nfrom = from + lead;
        // Find the end of the name; check for {} construction.
        let end = nfrom + cmdline::find_name_end(&s[nfrom..], if lead > 0 { 0 } else { cmdline::FNE_CHECK_START });
        if let Some((bs, be)) = brace_span(&s[nfrom..end]) {
            if !evaluate {
                *p = skipwhite(s, end);
                return NameLen::Found(end - from, None);
            }
            return match self.make_expanded_name(&s[from..end], bs + lead, be.map(|b| b + lead), end - from) {
                Err(m) => NameLen::Bad(m),
                Ok(name) => {
                    *p = skipwhite(s, end);
                    NameLen::Found(name.len(), Some(name))
                }
            };
        }
        let len = lead + super::expr::id_len(s, nfrom);
        if len == 0 {
            // Only an error when there is something, otherwise it is reported at a higher level.
            return NameLen::None((verbose && at(s, from) != 0).then(|| format!("E15: Invalid expression: \"{}\"", self.tail(s, from))));
        }
        *p = from + len;
        NameLen::Found(len, None)
    }

    /// `get_lval`: the lvalue at `s[start..]` (a name, `d.key`, `l[i]`, `l[a:b]`) and the position after it. The
    /// position is none for an error; `Lval::name` is none when the name could not be made. `rettv` is the value to
    /// assign (none for `:unlet`), `fne` the flags of `find_name_end`.
    #[allow(clippy::too_many_arguments)]
    pub(super) fn get_lval(&mut self, s: &str, start: usize, rettv: Option<&Value>, unlet: bool, skip: bool, quiet: bool, fne: u32, read_only: bool) -> (Option<usize>, Lval) {
        let mut lv = Lval { name: None, place: Place::Var, tv_lock: Lock::Unlocked, rest: String::new() };
        let rest = &s[start..];
        if skip {
            // When skipping just find the end of the name.
            lv.name = Some(rest.into());
            return (Some(start + cmdline::find_name_end(rest, cmdline::FNE_INCL_BR | fne)), lv);
        }
        let mut p = start + cmdline::find_name_end(rest, fne);
        if let Some((bs, be)) = brace_span(&s[start..p]) {
            let c = at(s, p);
            // Don't expand the name when we already know there is an error.
            if unlet && !is_white(c) && !ends_excmd(c) && c != b'[' && c != b'.' {
                let t = self.tail(s, p);
                self.error(format!("E488: Trailing characters: {t}"));
                return (None, lv);
            }
            match self.make_expanded_name(&s[start..p], bs, be, p - start) {
                Ok(n) => lv.name = Some(n.into()),
                Err(m) => {
                    // The expression gives its own error, `quiet` only silences the one below.
                    if let Some(m) = m {
                        self.error(m);
                    }
                }
            }
            if lv.name.is_none() && !quiet {
                let t = self.tail(s, start);
                self.scripts.emsg_severe = true;
                self.error(format!("E475: Invalid argument: {t}"));
                return (None, lv);
            }
        } else {
            lv.name = Some(s[start..p].into());
        }
        // Without [idx] or .key we are done.
        let Some(name) = lv.name.clone() else { return (Some(p), lv) };
        if at(s, p) != b'[' && at(s, p) != b'.' {
            return (Some(p), lv);
        }
        let Some(mut cur) = self.lookup_var(&name) else {
            if !quiet {
                self.error(format!("E121: Undefined variable: {name}"));
            }
            return (None, lv);
        };
        lv.place = Place::VarTv;
        lv.rest = self.tail(s, start);
        lv.tv_lock = self.find_item(&name).map_or(Lock::Unlocked, |(d, k)| d.borrow().map.get(&*k).map_or(Lock::Unlocked, |i| i.lock));
        let mut range = false;
        // Loop until no more [idx] or .key is following.
        while at(s, p) == b'[' || (at(s, p) == b'.' && at(s, p + 1) != b'=' && at(s, p + 1) != b'.') {
            if at(s, p) == b'.' && !matches!(cur, Value::Dict(_)) {
                if !quiet {
                    let t = self.tail(s, start);
                    self.error(format!("E1203: Dot can only be used on a dictionary: {t}"));
                }
                return (None, lv);
            }
            if !matches!(cur, Value::List(_) | Value::Dict(_)) {
                if !quiet {
                    self.error("E689: Can only index a List, Dictionary or Blob");
                }
                return (None, lv);
            }
            if range {
                if !quiet {
                    self.error("E708: [:] must come last");
                }
                return (None, lv);
            }
            let (mut key, mut var1, mut var2) = (None::<std::ops::Range<usize>>, None::<Value>, None::<Value>);
            let (mut empty1, mut empty2) = (false, false);
            if at(s, p) == b'.' {
                let from = p + 1;
                let mut q = from;
                while at(s, q).is_ascii_alphanumeric() || at(s, q) == b'_' {
                    q += 1;
                }
                if q == from {
                    if !quiet {
                        self.error("E713: Cannot use empty key after .");
                    }
                    return (None, lv);
                }
                key = Some(from..q);
                p = q;
            } else {
                // Get the index [expr] or the first index [expr: ].
                p = skipwhite(s, p + 1);
                if at(s, p) == b':' {
                    empty1 = true;
                } else {
                    let Some(v) = self.lval_eval(s, &mut p) else { return (None, lv) };
                    if !self.lval_check_str(&v) {
                        return (None, lv);
                    }
                    var1 = Some(v);
                    p = skipwhite(s, p);
                }
                // Optionally get the second index [ :expr].
                if at(s, p) == b':' {
                    if matches!(cur, Value::Dict(_)) {
                        if !quiet {
                            self.error("E719: Cannot slice a Dictionary");
                        }
                        return (None, lv);
                    }
                    if rettv.is_some_and(|r| !matches!(r, Value::List(_))) {
                        if !quiet {
                            self.error("E709: [:] requires a List or Blob value");
                        }
                        return (None, lv);
                    }
                    p = skipwhite(s, p + 1);
                    if at(s, p) == b']' {
                        empty2 = true;
                    } else {
                        let Some(v) = self.lval_eval(s, &mut p) else { return (None, lv) };
                        if !self.lval_check_str(&v) {
                            return (None, lv);
                        }
                        var2 = Some(v);
                    }
                    range = true;
                } else {
                    range = false;
                }
                if at(s, p) != b']' {
                    if !quiet {
                        self.error("E111: Missing ']'");
                    }
                    return (None, lv);
                }
                p += 1;
            }
            match cur.clone() {
                Value::Dict(d) => {
                    // `get_lval_dict_item`
                    let k = match &key {
                        Some(r) => s[r.clone()].to_string(),
                        None => var1.as_ref().map(|v| self.tv_str(v)).unwrap_or_default(),
                    };
                    let existing = d.borrow().map.get(k.as_str()).cloned();
                    let scope = self.dict_scope(&d);
                    // When assigning to a scope dictionary check that the variable name is valid.
                    if rettv.is_some() && scope.is_some() && !valid_varname(&k) {
                        self.error(format!("E461: Illegal variable name: {k}"));
                        return (None, lv);
                    }
                    match existing {
                        None => {
                            // Can't add "v:" or "a:" variable.
                            if scope == Some(Scope::Vim) || scope == Some(Scope::Args) {
                                let t = self.tail(s, start);
                                self.error(format!("E461: Illegal variable name: {t}"));
                                return (None, lv);
                            }
                            // Key does not exist in dict: may need to add it.
                            if at(s, p) == b'[' || at(s, p) == b'.' || unlet {
                                if !quiet {
                                    let shown = match &key {
                                        Some(r) => self.tail(s, r.start),
                                        None => k,
                                    };
                                    self.error(format!("E716: Key not present in Dictionary: \"{shown}\""));
                                }
                                return (None, lv);
                            }
                            lv.place = Place::NewKey { dict: d, key: k };
                            return (Some(p), lv);
                        }
                        Some(item) => {
                            // An existing variable, check that it can be changed.
                            if !read_only {
                                let shown = &s[start..p];
                                if let Some(m) = var_check_ro(item.flags, shown).or_else(|| var_check_lock(item.flags, shown)) {
                                    self.error(m);
                                    return (None, lv);
                                }
                            }
                            lv.place = Place::Key { dict: d, key: k };
                            lv.tv_lock = item.lock;
                            cur = item.tv;
                        }
                    }
                }
                Value::List(l) => {
                    // `get_lval_list`
                    let mut n1 = if empty1 { 0 } else { self.lval_number(var1.as_ref()) };
                    let len = l.borrow().len();
                    let Some(first) = find_index(len, &mut n1) else {
                        if !quiet {
                            self.error(format!("E684: List index out of range: {n1}"));
                        }
                        return (None, lv);
                    };
                    let mut last = 0;
                    if range && !empty2 {
                        // `tv_list_check_range_index_two`
                        last = self.lval_number(var2.as_ref());
                        let bad = |e: &mut Editor, n: i64| {
                            if !quiet {
                                e.error(format!("E684: List index out of range: {n}"));
                            }
                        };
                        if last < 0 {
                            if last + (len as i64) < 0 {
                                bad(self, last);
                                return (None, lv);
                            }
                            last += len as i64;
                        }
                        if last < first as i64 {
                            bad(self, last);
                            return (None, lv);
                        }
                    }
                    cur = l.borrow()[first].clone();
                    lv.tv_lock = l.borrow().items[first].lock;
                    lv.place = if range { Place::Range { list: l, first, last, empty2 } } else { Place::Item { list: l, idx: first } };
                }
                _ => unreachable!("checked to be a List or a Dictionary"),
            }
        }
        (Some(p), lv)
    }

    /// `(int)tv_get_number(tv)` of an index.
    fn lval_number(&mut self, v: Option<&Value>) -> i64 {
        v.map_or(0, |v| i64::from(self.nr(v) as i32))
    }

    /// `eexe_mod_op`: `tv1 op= tv2` for `+ - * / % .`. The new value of `tv1`; none after the message.
    pub(super) fn mod_op(&mut self, tv1: &Value, tv2: &Value, op: char) -> Option<Value> {
        let wrong = |e: &mut Editor| {
            e.error(format!("E734: Wrong variable type for {op}="));
            None
        };
        // Can't do anything with a Dict on the right. v:true and friends only work with "..=".
        if matches!(tv2, Value::Dict(_)) || (matches!(tv2, Value::Bool(_) | Value::None) && op == '.') {
            return wrong(self);
        }
        let out = match tv1 {
            Value::Dict(_) | Value::Bool(_) | Value::None | Value::Func(_) | Value::Partial(_) => None,
            Value::List(x) => match tv2 {
                Value::List(y) if op == '+' => {
                    let items = y.borrow().to_vec();
                    x.borrow_mut().extend(items);
                    Some(tv1.clone())
                }
                _ => None,
            },
            Value::Int(_) | Value::Str(_) => {
                if matches!(tv2, Value::List(_)) {
                    None
                } else if "+-*/%".contains(op) {
                    // `tv_op_number`
                    let n = self.nr(tv1);
                    if let Value::Float(f) = tv2 {
                        let n = n as f64;
                        match op {
                            '%' => None,
                            '+' => Some(Value::Float(n + f)),
                            '-' => Some(Value::Float(n - f)),
                            '*' => Some(Value::Float(n * f)),
                            _ => Some(Value::Float(n / f)),
                        }
                    } else {
                        let m = self.nr(tv2);
                        Some(Value::Int(match op {
                            '+' => n.wrapping_add(m),
                            '-' => n.wrapping_sub(m),
                            '*' => n.wrapping_mul(m),
                            '/' => num_divide(n, m),
                            _ => num_modulus(n, m),
                        }))
                    }
                } else if matches!(tv2, Value::Float(_)) {
                    // `tv_op_string`
                    None
                } else {
                    let (a, b) = (self.tv_str(tv1), self.tv_str(tv2));
                    Some(Value::Str((a + &b).into()))
                }
            }
            Value::Float(f) => {
                if op == '%' || op == '.' || !matches!(tv2, Value::Float(_) | Value::Int(_) | Value::Str(_)) {
                    None
                } else {
                    let g = if let Value::Float(g) = tv2 { *g } else { self.nr(tv2) as f64 };
                    Some(Value::Float(match op {
                        '+' => f + g,
                        '-' => f - g,
                        '*' => f * g,
                        _ => f / g,
                    }))
                }
            }
        };
        if out.is_none() {
            return wrong(self);
        }
        out
    }

    /// `set_var_lval`: assigns `rettv` to the lvalue, or applies `op` (`=`, `+`, `-`, `*`, `/`, `%`, `.`) with it.
    pub(super) fn set_var_lval(&mut self, lv: &Lval, rettv: &Value, op: char, is_const: bool) {
        let name = lv.name.as_deref().unwrap_or("");
        // A locked value, or a locked Dictionary a key is added to (the name is the rest of the command line).
        let locked = match &lv.place {
            Place::Var => None,
            Place::NewKey { dict, .. } => value_check_lock(dict.borrow().lock, Some(&lv.rest)),
            _ => value_check_lock(lv.tv_lock, Some(&lv.rest)),
        };
        if let Some(m) = locked {
            return self.error(m);
        }
        if is_const {
            // `:const` makes a variable: not an operator, a slice, nor an item.
            match &lv.place {
                Place::Var if op == '=' => {}
                Place::Var => return self.error("E995: Cannot modify existing variable"),
                Place::Range { .. } => return self.error("E996: Cannot lock a range"),
                _ => return self.error("E996: Cannot lock a list or dict"),
            }
        }
        match &lv.place {
            Place::Var => {
                if op != '=' {
                    // `tv_check_lock` of the variable.
                    if let Some((d, k)) = self.find_item(name) {
                        let d = d.borrow();
                        let it = &d.map[&*k];
                        let container = match &it.tv {
                            Value::List(l) => l.borrow().lock,
                            Value::Dict(x) => x.borrow().lock,
                            _ => Lock::Unlocked,
                        };
                        let m = var_check_ro(it.flags, name)
                            .or_else(|| value_check_lock(it.lock, Some(name)))
                            .or_else(|| if container == Lock::Unlocked { None } else { value_check_lock(container, Some(name)) });
                        if let Some(m) = m {
                            drop(d);
                            return self.error(m);
                        }
                    }
                    // handle +=, -=, *=, /=, %= and .=
                    let tv = match self.eval_variable(name) {
                        Ok(v) => v,
                        Err(Fail::Msg(m)) => return self.error(m),
                        Err(Fail::Silent) => return,
                    };
                    let (scope, n) = self.scope_of(name);
                    if scope == Scope::Vim
                        && let Err(m) = vimvars::check_set(n)
                    {
                        return self.error(m);
                    }
                    if let Some(v) = self.mod_op(&tv, rettv, op)
                        && let Err(e) = self.set_var(name, v)
                    {
                        self.error(e);
                    }
                } else if let Err(e) = {
                    // Asked before the clone below is made.
                    let shared = rettv.is_shared();
                    self.set_var_const(name, rettv.clone(), is_const, shared)
                } {
                    self.error(e);
                }
            }
            Place::VarTv => {
                // The value of the variable itself, changed in place.
                let (scope, n) = self.scope_of(name);
                let new = if op == '=' {
                    Some(rettv.clone())
                } else {
                    let Some(cur) = self.vars(scope).borrow().get(n).cloned() else { return };
                    self.mod_op(&cur, rettv, op)
                };
                if let Some(v) = new {
                    self.vars(scope).borrow_mut().insert(n.to_string().into(), v);
                }
            }
            Place::Range { list, first, last, empty2 } => {
                let Value::List(src) = rettv else { return };
                let src = src.borrow().to_vec();
                // Any locked item stops it before a change is made.
                let (mut idx, mut at) = (*first as i64, *first);
                for _ in 0..src.len() {
                    let Some(lock) = list.borrow().items.get(at).map(|i| i.lock) else { break };
                    if let Some(m) = value_check_lock(lock, Some(&lv.rest)) {
                        return self.error(m);
                    }
                    if (!*empty2 && *last == idx) || at + 1 >= list.borrow().len() {
                        break;
                    }
                    at += 1;
                    idx += 1;
                }
                self.assign_range(list, &src, *first, *last, *empty2, op);
            }
            Place::NewKey { dict, key } => {
                if op != '=' {
                    return self.error(format!("E716: Key not present in Dictionary: \"{key}\""));
                }
                dict.borrow_mut().insert(key.clone().into(), rettv.clone());
            }
            Place::Item { list, idx } => {
                let Some(cur) = list.borrow().get(*idx).cloned() else { return };
                let new = if op == '=' { Some(rettv.clone()) } else { self.mod_op(&cur, rettv, op) };
                if let (Some(v), Some(slot)) = (new, list.borrow_mut().get_mut(*idx)) {
                    *slot = v;
                }
            }
            Place::Key { dict, key } => {
                let Some(cur) = dict.borrow().get(key).cloned() else { return };
                let new = if op == '=' { Some(rettv.clone()) } else { self.mod_op(&cur, rettv, op) };
                if let Some(v) = new {
                    dict.borrow_mut().insert(key.clone().into(), v);
                }
            }
        }
    }

    /// `tv_list_assign_range`: the items of `src` go one by one into `dest` from `first`, so what was assigned stays
    /// when the lengths differ. `last` is the index of the last item to replace, unless `empty2`.
    fn assign_range(&mut self, dest: &List, src: &[Value], first: usize, last: i64, empty2: bool, op: char) -> bool {
        let (mut idx, mut at) = (first as i64, first);
        let mut taken = 0;
        while taken < src.len() {
            let cur = dest.borrow().get(at).cloned().unwrap_or(Value::Int(0));
            let new = if op == '=' { Some(src[taken].clone()) } else { self.mod_op(&cur, &src[taken], op) };
            if let (Some(v), Some(slot)) = (new, dest.borrow_mut().get_mut(at)) {
                *slot = v;
            }
            taken += 1;
            if taken == src.len() || (!empty2 && last == idx) {
                break;
            }
            if at + 1 == dest.borrow().len() {
                // Need to add an empty item.
                dest.borrow_mut().push(Value::Int(0));
            }
            at += 1;
            idx += 1;
        }
        if taken < src.len() {
            self.error("E710: List value has more items than target");
            return false;
        }
        if if empty2 { at + 1 < dest.borrow().len() } else { idx != last } {
            self.error("E711: List value has not enough items");
            return false;
        }
        true
    }

    /// `ex_let_vars`: assigns `tv` to the variable, or the `[a, b; c]` variables, at `s[start..]`. `op` is `=` or the
    /// operator of `+=` and the like; none for `:for`.
    #[allow(clippy::too_many_arguments)]
    pub(super) fn ex_let_vars(&mut self, s: &str, start: usize, tv: &Value, semicolon: bool, var_count: usize, is_const: bool, op: Option<char>) -> bool {
        let mut p = start;
        if at(s, p) != b'[' {
            // ":let var = expr" or ":for var in list": what follows the name is the operator (`ex_let_one(.., op, op)`).
            let ends = op.map(String::from);
            return self.ex_let_one(s, p, tv, is_const, ends.as_deref(), op).is_some();
        }
        // ":let [v1, v2] = list" or ":for [v1, v2] in listlist"
        let Value::List(l) = tv else {
            self.error("E714: List required");
            return false;
        };
        let items = l.borrow().clone();
        let len = items.len();
        if !semicolon && var_count < len {
            self.error("E687: Less targets than List items");
            return false;
        }
        if var_count - usize::from(semicolon) > len {
            self.error("E688: More targets than List items");
            return false;
        }
        let mut item = 0;
        while at(s, p) != b']' {
            p = skipwhite(s, p + 1);
            let Some(e) = self.ex_let_one(s, p, &items[item], is_const, Some(",;]"), op) else { return false };
            item += 1;
            p = skipwhite(s, e);
            if at(s, p) == b';' {
                // Put the rest of the list (may be empty) in the var after ';'.
                let rest = Value::list(items.iter().skip(item).cloned().collect());
                return self.ex_let_one(s, skipwhite(s, p + 1), &rest, is_const, Some("]"), op).is_some();
            } else if at(s, p) != b',' && at(s, p) != b']' {
                self.error("E685: Internal error: ex_let_vars()");
                return false;
            }
        }
        true
    }

    /// `ex_let_one`: assigns one item of `:let var = expr` or `:let [v1, v2] = list`. `endchars` are the characters
    /// that may follow the name. The position after the name, or none for an error.
    pub(super) fn ex_let_one(&mut self, s: &str, p: usize, tv: &Value, is_const: bool, endchars: Option<&str>, op: Option<char>) -> Option<usize> {
        let opc = op.unwrap_or('=');
        let unexpected = |e: &mut Editor, at_end: usize| {
            let c = at(s, skipwhite(s, at_end));
            let bad = endchars.is_some_and(|ec| c == 0 || !ec.as_bytes().contains(&c));
            if bad {
                e.error("E18: Unexpected characters in :let");
            }
            bad
        };
        match at(s, p) {
            b'$' | b'&' | b'@' if is_const => {
                let what = match at(s, p) {
                    b'$' => "an environment variable",
                    b'&' => "an option",
                    _ => "a register",
                };
                self.error(format!("E996: Cannot lock {what}"));
                None
            }
            b'$' => {
                // ":let $VAR = expr": Set environment variable.
                let from = p + 1;
                let mut q = from;
                while at(s, q).is_ascii_alphanumeric() || at(s, q) == b'_' {
                    q += 1;
                }
                if q == from {
                    let t = self.tail(s, p);
                    self.error(format!("E475: Invalid argument: {t}"));
                } else if "+-*/%".contains(opc) {
                    self.error(format!("E734: Wrong variable type for {opc}="));
                } else if !unexpected(self, q) {
                    let name = &s[from..q];
                    if let Some(mut val) = self.str_chk(tv) {
                        if opc == '.'
                            && let Ok(old) = std::env::var(name)
                        {
                            val = old + &val;
                        }
                        if let Err(e) = set_env(name, Some(&val)) {
                            self.error(e);
                        }
                        return Some(q);
                    }
                }
                None
            }
            b'&' => {
                // ":let &option = expr": Set option value.
                let mut q = p + 1;
                if matches!(at(s, q), b'g' | b'l') && at(s, q + 1) == b':' {
                    q += 2;
                }
                let from = q;
                while at(s, q).is_ascii_alphanumeric() || at(s, q) == b'_' {
                    q += 1;
                }
                if q == from {
                    self.error("E18: Unexpected characters in :let");
                    return None;
                }
                if unexpected(self, q) {
                    return None;
                }
                match self.let_option(&s[from..q], opc, tv) {
                    Err(m) => {
                        // An empty message was given already (`tv_to_optval`).
                        if !m.is_empty() {
                            self.error(m);
                        }
                        None
                    }
                    Ok(late) => {
                        if let Some(m) = late {
                            self.error(m);
                        }
                        Some(q)
                    }
                }
            }
            b'@' => {
                // ":let @r = expr": Set register contents.
                let r = s[p + 1..].chars().next().unwrap_or('\0');
                let q = (p + 1 + r.len_utf8()).min(s.len());
                if "+-*/%".contains(opc) {
                    self.error(format!("E734: Wrong variable type for {opc}="));
                } else if !unexpected(self, q.min(s.len())) {
                    let reg = if r == '@' { '"' } else { r };
                    if let Some(mut text) = self.str_chk(tv) {
                        if opc == '.'
                            && let Some(old) = self.reg(reg)
                        {
                            text = old.text + &text;
                        }
                        self.write_reg_contents(reg, text);
                        return Some(q);
                    }
                }
                None
            }
            c if c.is_ascii_alphabetic() || c == b'_' || c == b'{' => {
                // ":let var = expr": Set internal variable.
                let (end, lv) = self.get_lval(s, p, Some(tv), false, false, false, cmdline::FNE_CHECK_START, false);
                let mut out = None;
                if let (Some(e), Some(_)) = (end, &lv.name)
                    && !unexpected(self, e)
                {
                    self.set_var_lval(&lv, tv, opc, is_const);
                    out = Some(e);
                }
                out
            }
            _ => {
                let t = self.tail(s, p);
                self.error(format!("E475: Invalid argument: {t}"));
                None
            }
        }
    }

    /// `write_reg_contents`: `@/` is the search pattern, `@_` the black hole, any other register holds the text, linewise
    /// when it ends in a newline or a carriage return.
    // shortcut: `@#` (the alternate buffer) and `@=` (the expression) are registers like the others, when rim has them
    pub(in crate::editor) fn write_reg_contents(&mut self, reg: char, text: String) {
        if reg == '/' {
            match self.new_search(&text) {
                Ok(search) => self.last_search = Some(search),
                Err(e) => self.error(e),
            }
            return;
        }
        if reg == '_' {
            return;
        }
        if !(reg.is_ascii_alphanumeric() || matches!(reg, '#' | '"' | '-' | '*' | '+' | '=')) {
            return self.error(format!("E354: Invalid register name: '{}'", crate::editor::messages::trans(&reg.to_string(), false)));
        }
        // A linewise register holds its lines with a newline after each: "l\r" is the line `l\r`.
        let kind = if text.ends_with(['\n', '\r']) { RegKind::Line } else { RegKind::Char };
        let text = if text.ends_with('\r') { text + "\n" } else { text };
        self.regs.write(reg, Reg { text, kind });
    }
}
