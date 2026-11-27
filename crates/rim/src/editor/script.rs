//! Vimscript: values (`value.rs`), expressions (`expr.rs`, `lval.rs`, `typval.rs`), builtin functions
//! (`funcs.rs`, `printf.rs`), and here the statements: variables and their scopes, `:let`,
//! `:unlet`, `:echo` and friends.

mod append;
mod cmdline;
mod cstack;
mod docmd;
mod exceptions;
mod exnames;
mod expr;
mod funcs;
mod heredoc;
mod keycodes;

#[cfg(test)]
mod golden;
mod lval;
mod typval;
mod userfunc;
pub(super) mod range;
mod printf;
mod value;
mod vimvars;

use super::{
    Editor,
    messages::{Level, trans},
};
pub(super) use docmd::State;

/// The `v:` dictionary at start.
pub(in crate::editor) fn init_vim_vars() -> Vars {
    {
    let mut d = value::DictData::new(vimvars::init());
    // `vimvardict.dv_lock = VAR_FIXED` and the flags of `vimvars[]`.
    d.lock = value::Lock::Fixed;
    for &(name, _, flags) in vimvars::VIMVARS {
        if let Some(i) = d.map.get_mut(name) {
            i.flags = value::DI_FIX | if flags & vimvars::RO != 0 { value::DI_RO } else if flags & vimvars::RO_SBX != 0 { value::DI_RO_SBX } else { 0 };
        }
    }
    // `set_argv_var`: the List and its items are fixed; `v:event` and `v:completed_item` are fixed Dictionaries.
    if let Some(Value::List(l)) = d.map.get("argv").map(|i| &i.tv) {
        let mut l = l.borrow_mut();
        l.lock = value::Lock::Fixed;
        l.items.iter_mut().for_each(|i| i.lock = value::Lock::Fixed);
    }
    for k in ["event", "completed_item"] {
        if let Some(Value::Dict(x)) = d.map.get(k).map(|i| &i.tv) {
            x.borrow_mut().lock = value::Lock::Fixed;
        }
    }
    Vars::new(std::cell::RefCell::new(d))
}
}

/// `vim_str2nr` of the start of `s` with every base allowed and a strict end: the value and the length used.
pub(in crate::editor) fn vim_str2nr_all(s: &str) -> (i64, usize) {
    expr::vim_str2nr(s, true)
}
pub(in crate::editor) use range::AddrType;
pub(super) use value::{List, Value, str_to_int};

type Res<T> = Result<T, String>;

/// The variables of a scope are a Dictionary, which `g:`, `b:`, `w:`, `t:`, `v:` and `s:` are as values.
pub(super) type Vars = value::Dict;

/// The scope a variable name is in: `g:`, `b:`, `w:` or `v:`; none written means `g:`.
#[derive(Clone, Copy, PartialEq)]
enum Scope {
    Global,
    Buffer,
    Window,
    Tab,
    /// `l:`: the variables of the running function; also the names with no scope written inside a function.
    Func,
    /// `a:`: its arguments.
    Args,
    Script,
    Vim,
}

/// The scope of `name`; one written with none is `l:` inside a function (`in_func`), else `g:`.
fn scope_of_in(name: &str, in_func: bool) -> (Scope, &str) {
    match name.split_once(':') {
        Some(("g", n)) => (Scope::Global, n),
        Some(("b", n)) => (Scope::Buffer, n),
        Some(("w", n)) => (Scope::Window, n),
        Some(("t", n)) => (Scope::Tab, n),
        Some(("l", n)) => (Scope::Func, n),
        Some(("a", n)) => (Scope::Args, n),
        Some(("s", n)) => (Scope::Script, n),
        Some(("v", n)) => (Scope::Vim, n),
        _ => (if in_func { Scope::Func } else { Scope::Global }, name),
    }
}

impl Editor {
    /// `scope_of_in` for the code that runs now.
    fn scope_of<'a>(&self, name: &'a str) -> (Scope, &'a str) {
        scope_of_in(name, !self.scripts.calls.is_empty())
    }

    /// The dictionary of a scope: shared, so that `g:` is the variables themselves.
    fn vars(&self, scope: Scope) -> &Vars {
        match scope {
            Scope::Global => &self.vars,
            Scope::Buffer => &self.buf.vars,
            Scope::Window => &self.win.vars,
            Scope::Tab => &self.tab_vars,
            // Outside a function there is no `l:` and `a:`: an empty dictionary stands for them.
            Scope::Func => self.scripts.calls.last().map_or(&self.func_vars, |c| &c.l_vars),
            Scope::Args => self.scripts.calls.last().map_or(&self.func_vars, |c| &c.a_vars),
            Scope::Script => &self.scripts.vars[self.scripts.cur],
            Scope::Vim => &self.vim_vars,
        }
    }

    /// `find_var`: the Dictionary that holds the variable `name` and its key (a closure sees the variables of the calls
    /// it was made in, `find_var_in_scoped_ht`).
    pub(super) fn find_item(&self, name: &str) -> Option<(value::Dict, std::rc::Rc<str>)> {
        let (scope, n) = self.scope_of(name);
        if n.is_empty() {
            return None;
        }
        if self.vars(scope).borrow().contains_key(n) {
            return Some((self.vars(scope).clone(), n.into()));
        }
        if matches!(scope, Scope::Func | Scope::Args) {
            let mut sc = self.scripts.calls.last().and_then(|c| c.func.scoped.clone());
            while let Some(s) = sc {
                let d = if scope == Scope::Func { &s.l_vars } else { &s.a_vars };
                if d.borrow().contains_key(n) {
                    return Some((d.clone(), n.into()));
                }
                sc = s.parent.clone();
            }
        }
        None
    }

    pub(super) fn lookup_var(&self, name: &str) -> Option<Value> {
        // `g:` alone is the dictionary of the scope.
        if let Some((prefix, "")) = name.split_once(':')
            && (matches!(prefix, "g" | "b" | "w" | "t" | "v" | "s") || (matches!(prefix, "l" | "a") && !self.scripts.calls.is_empty())) {
                return Some(Value::Dict(self.vars(self.scope_of(name).0).clone()));
            }
        let (scope, n) = self.scope_of(name);
        if let Some(v) = self.vars(scope).borrow().get(n).cloned() {
            return Some(v);
        }
        // `find_var_in_scoped_ht`: a closure sees the variables of the call it was made in, and of the ones before it.
        if matches!(scope, Scope::Func | Scope::Args) {
            let mut sc = self.scripts.calls.last().and_then(|c| c.func.scoped.clone());
            while let Some(s) = sc {
                if let Some(v) = (if scope == Scope::Func { &s.l_vars } else { &s.a_vars }).borrow().get(n).cloned() {
                    return Some(v);
                }
                sc = s.parent.clone();
            }
        }
        None
    }

    pub(super) fn get_var(&self, name: &str) -> Res<Value> {
        self.lookup_var(name).ok_or_else(|| format!("E121: Undefined variable: {name}"))
    }

    fn set_var(&mut self, name: &str, value: Value) -> Res<()> {
        self.set_var_const(name, value, false, false)
    }

    /// `set_var_const`: a variable is set; with `is_const` it is made, locked, and what it holds is locked too.
    ///
    /// `shared`: something besides the caller holds the value (`refcount > 1`), asked of it before the clone that is
    /// passed here.
    fn set_var_const(&mut self, name: &str, value: Value, is_const: bool, shared: bool) -> Res<()> {
        let (scope, n) = self.scope_of(name);
        let mut value = value;
        // `*varname == NUL`: `g:` alone is a scope, not a variable. `l:` and `a:` need a function; `a:` cannot get a new one.
        if n.is_empty() || (scope == Scope::Func && self.scripts.calls.is_empty()) || scope == Scope::Args && self.scripts.calls.is_empty() {
            return Err(format!("E461: Illegal variable name: {name}"));
        }
        // A Funcref goes in a variable that starts with a capital (`var_wrong_func_name`), and does not hide a function.
        if matches!(value, Value::Func(_) | Value::Partial(_)) {
            let b = name.as_bytes();
            let capital = if b.len() > 1 && b[1] == b':' && !(b[0] != 0 && b"wbst".contains(&b[0])) { b.get(2) } else { b.first() };
            let allowed = (b.len() > 1 && b[1] == b':' && b"wbst".contains(&b[0])) || capital.is_some_and(u8::is_ascii_uppercase);
            if !allowed {
                return Err(format!("E704: Funcref variable name must start with a capital: {name}"));
            }
            let new_var = !self.vars(scope).borrow().contains_key(n);
            if new_var && self.user_function_exists(name) == Some(true) {
                return Err(format!("E705: Variable name conflicts with existing function: {name}"));
            }
        }
        // An existing variable that is read-only or locked (`set_var_const`: in this order).
        if is_const && self.find_item(name).is_some() {
            return Err("E995: Cannot modify existing variable".into());
        }
        if let Some((d, k)) = self.find_item(name) {
            let d = d.borrow();
            let it = &d.map[&*k];
            if let Some(m) = value::var_check_ro(it.flags, name).or_else(|| value::value_check_lock(it.lock, Some(name))).or_else(|| value::var_check_lock(it.flags, name)) {
                return Err(m);
            }
        }
        if scope == Scope::Args {
            // The arguments are read-only (`DI_FLAGS_RO`).
            return Err(if self.vars(scope).borrow().contains_key(n) { format!("E46: Cannot change read-only variable \"{name}\"") } else { format!("E461: Illegal variable name: {name}") });
        }
        if scope == Scope::Vim && !self.vars(scope).borrow().contains_key(n) {
            // `v:val` and `v:key` are not in the dictionary until `filter()` gives them a value.
            return Err(format!("E461: Illegal variable name: v:{n}"));
        }
        if scope == Scope::Vim {
            // A String or Number variable takes any value as its text or number; the others keep their type.
            value = match (vimvars::check_set(n)?, &value) {
                (vimvars::VType::Str, v) => Value::Str(self.tv_str(v).into()),
                (vimvars::VType::Num, v) => Value::Int(self.nr(v)),
                (vimvars::VType::List, Value::List(_)) | (vimvars::VType::Dict, Value::Dict(_)) => value,
                _ => return Err(format!("E963: Setting v:{n} to value with wrong type")),
            };
        }
        // A new variable needs a valid name (`valid_varname`); the name is shown without its scope.
        if !self.vars(scope).borrow().contains_key(n) && !lval::valid_varname(n) {
            return Err(format!("E461: Illegal variable name: {n}"));
        }
        // A variable of the enclosing call that a closure sets is the one that changes (`find_var_in_scoped_ht`).
        if scope == Scope::Func && !self.vars(scope).borrow().contains_key(n) {
            let mut sc = self.scripts.calls.last().and_then(|c| c.func.scoped.clone());
            while let Some(s) = sc {
                if s.l_vars.borrow().contains_key(n) {
                    s.l_vars.borrow_mut().insert(n.to_string().into(), value);
                    return Ok(());
                }
                sc = s.parent.clone();
            }
        }
        let dict = self.vars(scope).clone();
        dict.borrow_mut().insert(n.into(), value);
        if is_const {
            // Like `:lockvar! name`, but a List or Dictionary that something else holds too stays as it is: only literal
            // values are locked.
            let (tv, mut slot) = {
                let mut d = dict.borrow_mut();
                let it = d.map.get_mut(n).expect("just added");
                it.flags |= value::DI_LOCK;
                (it.tv.clone(), it.lock)
            };
            self.item_lock_in(&mut slot, &tv, value::MAX_NEST as i32, true, Some(shared), 0);
            if let Some(it) = dict.borrow_mut().map.get_mut(n) {
                it.lock = slot;
            }
        }
        Ok(())
    }

    /// `f_exists`: `$ENV`, `&option` and `+option`, `*function`, `:command` (2 written in full, 1 abbreviated), `#event`
    /// (autocommands: none), else a variable with its subscripts.
    pub(super) fn exists(&mut self, spec: &str) -> i64 {
        match spec.chars().next() {
            Some('$') => i64::from(std::env::var_os(&spec[1..]).is_some() || expand_env_exists(spec)),
            Some('&' | '+') => {
                let opt = spec[1..].trim_start_matches("l:").trim_start_matches("g:");
                i64::from(self.buf.opts.lookup(opt).is_some())
            }
            Some('*') => i64::from(self.user_function_exists(&spec[1..]).unwrap_or_else(|| funcs::known(&spec[1..]))),
            Some(':') => cmdline::cmd_exists(&spec[1..]),
            Some('#') => i64::from(spec[1..].strip_prefix('#').is_some_and(autocmd_supported)),
            Some(_) => i64::from(self.var_exists(spec)),
            None => 0,
        }
    }

    // ---- :let ---------------------------------------------------------------------------------

    /// `ex_let`: `:let` alone lists the variables; `:let x y` shows them; `:let x = 1` assigns.
    pub(super) fn let_cmd(&mut self, arg: &str, is_const: bool) -> Res<()> {
        // The variables (or list of them) first, then what follows says what to do.
        let (argend, var_count, semicolon) = cmdline::skip_var_list_n(arg)?;
        let expr = arg[argend..].trim_start_matches([' ', '\t']);
        let concat = expr.starts_with("..=");
        let has_assign = expr.starts_with('=') || (expr.starts_with(['+', '-', '*', '/', '%', '.']) && expr.as_bytes().get(1) == Some(&b'='));
        if !has_assign && !concat {
            // `:let` without `=`: list variables.
            if arg.starts_with('[') {
                return Err("E474: Invalid argument".into());
            }
            if !expr::ends_excmd(arg.as_bytes().first().copied().unwrap_or(0)) {
                self.list_arg_vars(arg);
            } else {
                self.list_all_vars();
            }
            return Ok(());
        }
        if let Some(here) = expr.strip_prefix("=<<") {
            // `heredoc_get`: the lines of the here document are assigned like the value of an expression.
            let cmdline = self.scripts.cmdlinep.clone();
            if self.heredoc_is_typed(here) {
                let target = heredoc::HeredocTarget { arg: arg.to_string(), var_count, semicolon, is_const };
                self.heredoc_pend(&cmdline, here, false, Some(target));
                return Ok(());
            }
            let (list, next) = self.heredoc_get(&cmdline, here, false);
            self.scripts.nextcmd = next;
            if let Some(lines) = list {
                let rhs = Value::list(lines.into_iter().map(|s| Value::Str(s.into())).collect());
                self.ex_let_vars(arg, 0, &rhs, semicolon, var_count, is_const, Some('='));
            }
            return Ok(());
        }
        let (op, len) = if concat {
            ('.', 3)
        } else if expr.starts_with('=') {
            ('=', 1)
        } else {
            (expr.as_bytes()[0] as char, 2)
        };
        let rhs = self.eval(expr[len..].trim_start_matches([' ', '\t']))?;
        self.ex_let_vars(arg, 0, &rhs, semicolon, var_count, is_const, Some(op));
        Ok(())
    }

    /// `:let` alone: `list_glob_vars`, `list_buf_vars`, `list_win_vars`, `list_tab_vars`, `list_script_vars` (only in a
    /// sourced script), `list_vim_vars`: one message, each variable on its row.
    // shortcut: `b:changedtick` is not there (rim keeps no change counter); the `v:` variables are rim's table, with the values it has, and a `v:` String that is empty is taken for a NULL one (not listed)
    fn list_all_vars(&mut self) {
        let mut lines = Vec::new();
        for (scope, prefix) in [(Scope::Global, ""), (Scope::Buffer, "b:"), (Scope::Window, "w:"), (Scope::Tab, "t:"), (Scope::Script, "s:"), (Scope::Vim, "v:")] {
            if scope == Scope::Script && self.scripts.cur == 0 {
                continue;
            }
            self.hashtable_lines(scope, prefix, &mut lines);
        }
        if !lines.is_empty() {
            self.msgs.listing = true;
            self.info(lines.join("\n"));
            self.msgs.listing = false;
        }
    }

    /// `list_hashtable_vars`: the variables of a scope, in the order of the names (the map's own is arbitrary).
    fn hashtable_lines(&self, scope: Scope, prefix: &str, out: &mut Vec<String>) {
        let dict = self.vars(scope).borrow();
        let mut vars: Vec<(&std::rc::Rc<str>, &Value)> = dict.iter().collect();
        vars.sort_by_key(|&(k, _)| k);
        // `empty` is false for `s:` and `v:`: a String that was never set (NULL) is not listed. rim has no NULL
        // String, so an empty one in `v:` stands for it.
        let skip = |v: &Value| scope == Scope::Vim && matches!(v, Value::Str(s) if s.is_empty());
        out.extend(vars.into_iter().filter(|&(_, v)| !skip(v)).map(|(k, v)| list_line(&format!("{prefix}{k}"), v)));
    }

    /// `list_arg_vars`: `:let x y` shows each variable (with its subscripts), `:let g:` the variables of a scope.
    fn list_arg_vars(&mut self, arg: &str) {
        let (mut error, mut p) = (false, 0usize);
        while !expr::ends_excmd(arg.as_bytes().get(p).copied().unwrap_or(0)) {
            let rest = &arg[p..];
            if error {
                p += cmdline::find_name_end(rest, 3);
                let c = arg.as_bytes().get(p).copied().unwrap_or(0);
                if c != b' ' && c != b'\t' && !expr::ends_excmd(c) {
                    let t = self.tail(arg, p);
                    self.error(format!("E488: Trailing characters: {t}"));
                    break;
                }
            } else {
                let name_start = p;
                let mut q = p;
                // `get_name_len` takes care of expanding curly braces.
                match self.get_name_len(arg, &mut q, true, true) {
                    lval::NameLen::Bad(m) => {
                        // Expanding curly braces failed: this overrules the message of the expression.
                        if let Some(m) = m {
                            self.error(m);
                        }
                        let t = self.tail(arg, p);
                        self.error(format!("E475: Invalid argument: {t}"));
                        break;
                    }
                    lval::NameLen::None(m) => {
                        if let Some(m) = m {
                            self.error(m);
                        }
                        error = true;
                    }
                    lval::NameLen::Found(len, alias) => {
                        let name = alias.unwrap_or_else(|| arg[name_start..name_start + len].to_string());
                        match self.eval_variable(&name) {
                            Err(f) => {
                                if let expr::Fail::Msg(m) = f {
                                    self.error(m);
                                }
                                error = true;
                                p = q;
                            }
                            Ok(v) => {
                                // handle d.key, l[idx], f(expr)
                                let mut r = q;
                                match self.handle_subscript(arg, &mut r, v, true) {
                                    Err(f) => {
                                        if let expr::Fail::Msg(m) = f {
                                            self.error(m);
                                        }
                                        error = true;
                                        p = r;
                                    }
                                    Ok(val) => {
                                        if r == q && name.len() == 2 && name.ends_with(':') {
                                            match name.as_bytes()[0] {
                                                b'g' | b'b' | b'w' | b't' | b'v' | b's' => self.list_scope(&name),
                                                // `list_func_vars`: only inside a function.
                                                b'l' => {
                                                    if !self.scripts.calls.is_empty() {
                                                        self.list_scope(&name);
                                                    }
                                                }
                                                _ => self.error(format!("E738: Can't list variables for {name}")),
                                            }
                                        } else {
                                            let used = if r == q { name.as_str() } else { &arg[name_start..r] };
                                            self.msgs.listing = true;
                                            self.info(list_line(used, &val));
                                            self.msgs.listing = false;
                                        }
                                        p = r;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            p = expr::skipwhite(arg, p);
        }
    }

    /// `:let g:`: the variables of a scope, by name.
    fn list_scope(&mut self, name: &str) {
        let mut lines = Vec::new();
        self.hashtable_lines(self.scope_of(name).0, if name == "g:" { "" } else { name }, &mut lines);
        self.msgs.listing = true;
        self.info(lines.join("\n"));
        self.msgs.listing = false;
    }

    /// `ex_let_option`: `:let &name = value` and the `op=` forms, with the conversions of `tv_to_optval`.
    /// An error of the first kind ends the `:let` item (`goto theend`); one from setting the option comes back as `Ok(Some(message))`
    /// (the name was taken, as `arg_end = p` does).
    pub(super) fn let_option(&mut self, name: &str, op: char, rhs: &Value) -> Res<Option<String>> {
        use super::options::OptKind;
        let Some(kind) = self.buf.opts.kind(name) else { return Err(format!("E355: Unknown option: {name}")) };
        let op = (op != '=').then_some(op);
        if op.is_some() && ((kind != OptKind::Text && op == Some('.')) || (kind == OptKind::Text && op != Some('.'))) {
            return Err(format!("E734: Wrong variable type for {}=", op.unwrap_or('=')));
        }
        let cur = self.buf.opts.lookup(name).unwrap_or(Value::Int(0));
        match kind {
            OptKind::Flag | OptKind::Number => {
                let Some(mut n) = self.nr_chk(rhs) else { return Err(String::new()) };
                // "0" is a number, any other string with no digits is not.
                if let Value::Str(s) = rhs {
                    let zeros = s.bytes().take_while(|&b| b == b'0').count();
                    if n == 0 && (zeros == 0 || zeros != s.len()) {
                        return Err(format!("E521: Number required: &{name} = '{s}'"));
                    }
                }
                if let (Some(op), Value::Int(c)) = (op, &cur) {
                    n = match op {
                        '+' => c.wrapping_add(n),
                        '-' => c.wrapping_sub(n),
                        '*' => c.wrapping_mul(n),
                        '/' => if n == 0 { if *c == 0 { i64::MIN } else if *c < 0 { -i64::MAX } else { i64::MAX } } else { c.wrapping_div(n) },
                        _ => if n == 0 { 0 } else { c.wrapping_rem(n) },
                    };
                }
                if kind == OptKind::Flag {
                    self.buf.opts.set_flag(name, n != 0);
                    Ok(None)
                } else {
                    Ok(self.buf.opts.set_number(name, n).err().map(String::from))
                }
            }
            OptKind::Text => {
                if matches!(rhs, Value::Bool(_) | Value::None) {
                    return Err("E928: String required".into());
                }
                let Some(mut s) = self.str_chk(rhs) else { return Err(String::new()) };
                if op.is_some() {
                    s = format!("{}{s}", cur.text());
                }
                Ok(self.buf.opts.set_text(name, &s).err().map(String::from))
            }
        }
    }

    // ---- :unlet -------------------------------------------------------------------------------

    /// `ex_unletlock` for `:unlet`: each name goes; with `!` (`GLV_QUIET`) a missing one is no error. After the first
    /// error the names are only skipped over; a name that cannot be parsed ends the command and takes the rest of
    /// its line (`nextcmd` stays NULL).
    pub(super) fn unlet_cmd(&mut self, bang: bool, arg: &str) -> Res<()> {
        self.unletlock(None, bang, arg)
    }

    /// `ex_lockvar` and `ex_unlockvar`: the depth is `!` (everything), a number, or 2.
    pub(super) fn lockvar_cmd(&mut self, lock: bool, bang: bool, arg: &str) -> Res<()> {
        let (mut deep, mut arg) = (2i32, arg);
        if bang {
            deep = -1;
        } else if arg.as_bytes().first().is_some_and(u8::is_ascii_digit) {
            let end = arg.find(|c: char| !c.is_ascii_digit()).unwrap_or(arg.len());
            // `getdigits_int`: a number that does not fit is -1.
            deep = arg[..end].parse::<i32>().unwrap_or(-1);
            arg = arg[end..].trim_start_matches([' ', '\t']);
        }
        self.unletlock(Some((lock, deep)), false, arg)
    }

    /// `ex_unletlock`: `lock` is none for `:unlet`, else (lock or unlock, depth).
    fn unletlock(&mut self, lock: Option<(bool, i32)>, bang: bool, arg: &str) -> Res<()> {
        if arg.is_empty() {
            return Err("E471: Argument required".into());
        }
        let (mut p, mut error) = (0usize, false);
        loop {
            let name_end;
            if expr::at(arg, p) == b'$' {
                let from = p + 1;
                let mut q = from;
                while expr::at(arg, q).is_ascii_alphanumeric() || expr::at(arg, q) == b'_' {
                    q += 1;
                }
                if q == from {
                    let t = self.tail(arg, p);
                    self.error(format!("E475: Invalid argument: {t}"));
                    self.scripts.drop_next = true;
                    return Ok(());
                }
                if !error && lock.is_some() {
                    // `do_lock_var` of an environment variable (the name goes on to the end of the command line).
                    let t = self.tail(arg, p);
                    self.error(format!("E940: Cannot lock or unlock variable {t}"));
                    error = true;
                } else if !error && let Err(e) = set_env(&arg[from..q], None) {
                    self.error(e);
                    error = true;
                }
                name_end = q;
            } else {
                let (end, lv) = self.get_lval(arg, p, None, true, error, bang, cmdline::FNE_CHECK_START, false);
                if lv.name.is_none() {
                    error = true;
                }
                let bad = match end {
                    None => true,
                    Some(e) => !matches!(expr::at(arg, e), b' ' | b'\t') && !expr::ends_excmd(expr::at(arg, e)),
                };
                if bad {
                    if let Some(e) = end {
                        let t = self.tail(arg, e);
                        self.scripts.emsg_severe = true;
                        self.error(format!("E488: Trailing characters: {t}"));
                    }
                    self.scripts.drop_next = true;
                    return Ok(());
                }
                name_end = end.unwrap_or(p);
                let ok = !error && match lock {
                    None => self.do_unlet_var(&lv, bang, &arg[p..name_end]),
                    Some((l, deep)) => self.do_lock_var(&lv, l, deep),
                };
                if !error && !ok {
                    error = true;
                }
            }
            p = expr::skipwhite(arg, name_end);
            if expr::ends_excmd(expr::at(arg, p)) {
                return Ok(());
            }
        }
    }

    /// `do_unlet_var`: removes what the lvalue points to; false for an error (the message is given).
    fn do_unlet_var(&mut self, lv: &lval::Lval, forceit: bool, shown: &str) -> bool {
        match &lv.place {
            lval::Place::Var => {
                let name = lv.name.as_deref().unwrap_or("");
                self.do_unlet(name, forceit)
            }
            lval::Place::VarTv => true,
            lval::Place::Range { list, .. } | lval::Place::Item { list, .. } if self.unlet_locked(shown, Some(list), None) => false,
            lval::Place::Key { dict, .. } if self.unlet_locked(shown, None, Some(dict)) => false,
            lval::Place::Range { list, first, last, empty2 } => {
                let len = list.borrow().len();
                let end = if *empty2 { len - 1 } else { (*last as usize).min(len - 1) };
                list.borrow_mut().drain(*first..=end);
                self.list_changed(list, *first, end - first + 1, false);
                true
            }
            lval::Place::Item { list, idx } => {
                list.borrow_mut().remove(*idx);
                self.list_changed(list, *idx, 1, false);
                true
            }
            lval::Place::Key { dict, key } => {
                dict.borrow_mut().remove(key);
                true
            }
            lval::Place::NewKey { .. } => true,
        }
    }

    /// `do_unlet_var` checks of a List item, a slice or a Dictionary item: the container is locked (`E741`, the name is
    /// the rest of the command line). The message is given.
    fn unlet_locked(&mut self, shown: &str, list: Option<&value::List>, dict: Option<&value::Dict>) -> bool {
        let lock = list.map(|l| l.borrow().lock).or_else(|| dict.map(|d| d.borrow().lock)).unwrap_or_default();
        match value::value_check_lock(lock, Some(shown)) {
            Some(m) => {
                self.error(m);
                true
            }
            None => false,
        }
    }

    /// `do_lock_var`: locks or unlocks the variable, item or slice and, `deep` levels down, what it holds.
    fn do_lock_var(&mut self, lv: &lval::Lval, lock: bool, deep: i32) -> bool {
        match &lv.place {
            lval::Place::Var => {
                let name = lv.name.as_deref().unwrap_or("");
                // A scope alone (`g:`) is the Dictionary of its variables: its own item is fixed.
                if let Some((_, "")) = name.split_once(':')
                    && let Some(tv) = self.lookup_var(name)
                {
                    let mut slot = value::Lock::Fixed;
                    if deep != 0 {
                        self.tv_item_lock(&mut slot, &tv, deep, lock);
                    }
                    return true;
                }
                let Some((d, k)) = self.find_item(name) else { return false };
                let (tv, mut slot) = {
                    let mut b = d.borrow_mut();
                    let it = b.map.get_mut(&*k).expect("found");
                    // For historical reasons a List or Dictionary of a fixed variable may be locked.
                    if it.flags & value::DI_FIX != 0 && !matches!(it.tv, Value::List(_) | Value::Dict(_)) {
                        drop(b);
                        self.error(format!("E940: Cannot lock or unlock variable {name}"));
                        return false;
                    }
                    if lock {
                        it.flags |= value::DI_LOCK;
                    } else {
                        it.flags &= !value::DI_LOCK;
                    }
                    (it.tv.clone(), it.lock)
                };
                if deep != 0 {
                    self.tv_item_lock(&mut slot, &tv, deep, lock);
                    if let Some(it) = d.borrow_mut().map.get_mut(&*k) {
                        it.lock = slot;
                    }
                }
            }
            _ if deep == 0 => {}
            lval::Place::Range { list, first, last, empty2 } => {
                let mut i = *first;
                while i < list.borrow().len() && (*empty2 || *last >= i as i64) {
                    self.lock_list_item(list, i, deep, lock);
                    i += 1;
                }
            }
            lval::Place::Item { list, idx } => self.lock_list_item(list, *idx, deep, lock),
            lval::Place::Key { dict, key } => {
                let Some((tv, mut slot)) = dict.borrow().map.get(&**key).map(|i| (i.tv.clone(), i.lock)) else { return true };
                self.tv_item_lock(&mut slot, &tv, deep, lock);
                if let Some(it) = dict.borrow_mut().map.get_mut(&**key) {
                    it.lock = slot;
                }
            }
            lval::Place::VarTv | lval::Place::NewKey { .. } => {}
        }
        true
    }

    fn lock_list_item(&mut self, list: &value::List, i: usize, deep: i32, lock: bool) {
        let Some((tv, mut slot)) = list.borrow().items.get(i).map(|it| (it.tv.clone(), it.lock)) else { return };
        self.tv_item_lock(&mut slot, &tv, deep, lock);
        if let Some(it) = list.borrow_mut().items.get_mut(i) {
            it.lock = slot;
        }
    }

    /// `tv_item_lock` (without `check_refcount`): locks or unlocks the slot, the container the value is, and `deep - 1`
    /// levels of what it holds (`-1` is everything). Deeper than `DICT_MAXNEST` is `E743`.
    pub(super) fn tv_item_lock(&mut self, slot: &mut value::Lock, tv: &Value, deep: i32, lock: bool) {
        self.item_lock_in(slot, tv, deep, lock, None, 0);
    }

    /// `check_refcount` is `Some(shared)`: a List or Dictionary that something else holds is not locked, `shared` says
    /// it of `tv`, and of each child it is asked before the child is cloned. None locks all.
    pub(super) fn item_lock_in(&mut self, slot: &mut value::Lock, tv: &Value, deep: i32, lock: bool, check: Option<bool>, recurse: usize) {
        if recurse >= value::MAX_NEST {
            self.error("E743: Variable nested too deep for (un)lock");
            return;
        }
        if deep == 0 {
            return;
        }
        slot.change(lock);
        let shared = check == Some(true);
        match tv {
            Value::List(l) if !shared => {
                l.borrow_mut().lock.change(lock);
                if !(0..=1).contains(&deep) {
                    let n = l.borrow().len();
                    for i in 0..n {
                        let Some((child, mut s, sh)) = l.borrow().items.get(i).map(|it| { let sh = it.tv.is_shared(); (it.tv.clone(), it.lock, sh) }) else { break };
                        self.item_lock_in(&mut s, &child, deep - 1, lock, check.map(|_| sh), recurse + 1);
                        if let Some(it) = l.borrow_mut().items.get_mut(i) {
                            it.lock = s;
                        }
                    }
                }
            }
            Value::Dict(d) if !shared => {
                d.borrow_mut().lock.change(lock);
                if !(0..=1).contains(&deep) {
                    let keys: Vec<std::rc::Rc<str>> = d.borrow().keys().cloned().collect();
                    for k in keys {
                        let Some((child, mut s, sh)) = d.borrow().map.get(&*k).map(|it| { let sh = it.tv.is_shared(); (it.tv.clone(), it.lock, sh) }) else { continue };
                        self.item_lock_in(&mut s, &child, deep - 1, lock, check.map(|_| sh), recurse + 1);
                        if let Some(it) = d.borrow_mut().map.get_mut(&*k) {
                            it.lock = s;
                        }
                    }
                }
            }
            _ => {}
        }
    }

    /// `do_unlet`: a variable by name; a `v:` variable cannot go, a missing one is an error unless `forceit`.
    fn do_unlet(&mut self, name: &str, forceit: bool) -> bool {
        let (scope, n) = self.scope_of(name);
        if !n.is_empty() && self.vars(scope).borrow().contains_key(n) {
            let d = self.vars(scope).borrow();
            let it = &d.map[n];
            let m = value::var_check_fixed(it.flags, name)
                .or_else(|| value::var_check_ro(it.flags, name))
                .or_else(|| value::value_check_lock(d.lock, Some(name)));
            drop(d);
            if let Some(m) = m {
                self.error(m);
                return false;
            }
            self.vars(scope).borrow_mut().remove(n);
            return true;
        }
        if forceit {
            return true;
        }
        self.error(format!("E108: No such variable: \"{name}\""));
        false
    }

    // ---- :echo --------------------------------------------------------------------------------

    /// `:echo`, `:echon`, `:echomsg`, `:echoerr`: the values of the expressions, as text.
    pub(super) fn echo_cmd(&mut self, kind: Echo, arg: &str) -> Res<()> {
        if matches!(kind, Echo::Plain | Echo::NoNewline) {
            return self.echo_items(kind == Echo::Plain, arg);
        }
        let (values, err) = self.eval_items(arg);
        if let Some(err) = err {
            return Err(err);
        }
        // Without an item `ga_data` is NULL in `ex_execute`: nothing is shown (an empty String is an item).
        if values.is_empty() {
            return Ok(());
        }
        let parts: Vec<String> = values.iter().map(Value::echo).collect();
        let raw = parts.join(if kind == Echo::NoNewline { "" } else { " " });
        // What is shown (and what `:redir` collects) is translated: `:echomsg` writes it with
        // `msg_outtrans` (even a newline is `^@`), the others with `msg_multiline`.
        let text = trans(&raw, kind != Echo::Msg);
        match kind {
            Echo::Plain | Echo::NoNewline => unreachable!("echo_items"),
            Echo::Msg => {
                // Never cut here: a command line has `msg_scroll` on, and a long message scrolls (`msg_strtrunc` needs it off).
                self.capture_msg(&text, false);
                if self.scripts.msg_silent == 0 {
                    let keep = self.buf.opts.msg_history;
                    self.msgs.show_as(Level::Info, text, Some(raw), keep);
                }
            }
            Echo::Err => {
                // `:echoerr` is an error message that does not abort what follows.
                let did_emsg = self.scripts.did_emsg;
                self.error_ml(raw, true);
                self.scripts.did_emsg = did_emsg;
            }
        }
        Ok(())
    }

    /// `:echo` (`newline`) and `:echon`: each item is shown right after it is evaluated, as `ex_echo` does, so
    /// an error the evaluation of the next one gives comes after it.
    fn echo_items(&mut self, newline: bool, arg: &str) -> Res<()> {
        let mut atstart = true;
        let err = self.eval_items_with(arg, |e, v| {
            let text = trans(&v.echo(), true);
            if atstart && newline {
                // `msg_start`: below what this command line showed before.
                e.capture_msg(&text, false);
                e.show_echo(text);
            } else {
                let text = if atstart || !newline { text } else { format!(" {text}") };
                e.capture_msg(&text, true);
                if e.scripts.msg_silent == 0 {
                    let keep = e.buf.opts.msg_history;
                    e.msgs.append(Level::Info, &text, keep);
                }
            }
            atstart = false;
        });
        // Without an item nothing is started (`msg_start` runs for the first one): the row is only cleared
        // when this command line has shown nothing yet.
        if atstart && !(self.msgs.scroll && self.msgs.didout) {
            self.msgs.clear();
        }
        err.map_or(Ok(()), Err)
    }

    // ---- :execute and :call -------------------------------------------------------------------

    /// `:execute expr ...`: the values, joined by blanks, run as one command line. Returns false to quit.
    pub(super) fn execute_cmd(&mut self, arg: &str) -> Res<bool> {
        let (values, err) = self.eval_items(arg);
        if let Some(err) = err {
            return Err(err);
        }
        if values.is_empty() {
            return Ok(true);
        }
        let parts = values.iter().map(|v| self.to_string(v)).collect::<Res<Vec<_>>>()?;
        // `do_cmdline(.., eap->ea_getline, .., DOCMD_NOWAIT | DOCMD_VERBOSE)`: in a sourced file the
        // lines after it belong to a block it opens.
        // The lines that follow (a block `:execute` opens) come from where the line did: a file or a function.
        let sourcing = self.scripts.readers.last().is_some_and(|r| !matches!(r.base, docmd::ReaderBase::None));
        Ok(self.do_cmdline(Some(parts.join(" ")), sourcing, false, true))
    }

    /// `ex_redir`: `:redir => var` and `:redir =>> var` collect what is shown into the variable, `:redir > file` and
    /// `>> file` write it to a file (`!` overwrites), `:redir @r`, `@r>` and `@r>>` put it in a register when it ends, `:redir END` stops.
    // shortcut: a register gets the text when the redirection ends, Neovim writes it with every message; `:redir > file` takes the first name only
    pub(super) fn redir_cmd(&mut self, bang: bool, arg: &str) -> Res<()> {
        if arg.eq_ignore_ascii_case("END") {
            self.close_redir();
            return Ok(());
        }
        if let Some(rest) = arg.strip_prefix('>') {
            let (mode_append, rest) = match rest.strip_prefix('>') {
                Some(r) => (true, r),
                None => (false, rest),
            };
            self.close_redir();
            let name = docmd::expand_env(rest.trim_start_matches([' ', '\t']));
            if name.is_empty() {
                return Ok(());
            }
            let path = std::path::Path::new(&name);
            if path.is_dir() {
                self.error(format!("E17: \"{name}\" is a directory"));
            } else if !bang && !mode_append && path.exists() {
                self.error(format!("E189: \"{name}\" exists (add ! to override)"));
            } else {
                match std::fs::OpenOptions::new().write(true).create(true).append(mode_append).truncate(!mode_append).open(path) {
                    Ok(f) => self.msgs.file_redir = Some(f),
                    Err(_) => self.error(format!("E190: Cannot open \"{name}\" for writing")),
                }
            }
            return Ok(());
        }
        if let Some(rest) = arg.strip_prefix('@') {
            self.close_redir();
            // `:redir @` alone does nothing (the register is not valid and nothing follows it).
            if rest.is_empty() {
                return Ok(());
            }
            let mut chars = rest.chars();
            let Some(reg) = chars.next().filter(|c| (c.is_ascii_alphanumeric() || matches!(c, '#' | '"' | '-' | '*' | '+')) && *c != '_') else {
                return Err(format!("E475: Invalid argument: {arg}"));
            };
            let tail = chars.as_str();
            let (append, tail) = match tail.strip_prefix(">>") {
                Some(t) => (true, t),
                None => (false, tail.strip_prefix('>').unwrap_or(tail)),
            };
            if !tail.is_empty() {
                return Err(format!("E475: Invalid argument: {arg}"));
            }
            // Without appending, a register that is not `A`-`Z` starts empty.
            if !append && !reg.is_ascii_uppercase() {
                self.write_reg_contents(reg, String::new());
            }
            self.msgs.reg_redir = Some((reg, append || reg.is_ascii_uppercase(), String::new()));
            return Ok(());
        }
        let Some(rest) = arg.strip_prefix("=>") else {
            return Err(format!("E475: Invalid argument: {arg}"));
        };
        self.close_redir();
        let (append, name) = match rest.strip_prefix('>') {
            Some(n) => (true, n),
            None => (false, rest),
        };
        self.var_redir_start(name.trim_start_matches([' ', '\t']), append);
        Ok(())
    }

    /// `var_redir_start`: the name is checked and the variable set to (or appended) an empty String, so that it can be written.
    fn var_redir_start(&mut self, name: &str, append: bool) {
        if !name.as_bytes().first().is_some_and(|c| c.is_ascii_alphabetic() || *c == b'_') {
            return self.error("E474: Invalid argument");
        }
        let (end, lv) = self.get_lval(name, 0, None, false, false, false, cmdline::FNE_CHECK_START, false);
        if end.is_none() || lv.name.is_none() || end.is_some_and(|e| e < name.len()) {
            if let Some(e) = end.filter(|&e| e < name.len()) {
                self.error(format!("E488: Trailing characters: {}", &name[e..]));
            } else {
                self.error(format!("E475: Invalid argument: {name}"));
            }
            return;
        }
        let emsg_before = self.scripts.called_emsg;
        self.set_var_lval(&lv, &Value::Str(String::new().into()), if append { '.' } else { '=' }, false);
        if self.scripts.called_emsg > emsg_before {
            return;
        }
        self.msgs.var_redir = Some((name.to_string(), String::new()));
    }

    /// `var_redir_stop`: the text goes to the variable (`.=` on what the start put there).
    pub(super) fn close_redir(&mut self) {
        self.msgs.file_redir = None;
        if let Some((reg, append, text)) = self.msgs.reg_redir.take() {
            // `@A` and `@a>>` add to what the register holds.
            let old = if append && !reg.is_ascii_uppercase() { self.reg(reg).map_or_else(String::new, |r| r.text) } else { String::new() };
            self.write_reg_contents(reg, old + &text);
        }
        let Some((name, text)) = self.msgs.var_redir.take() else { return };
        let (end, lv) = self.get_lval(&name, 0, None, false, false, false, cmdline::FNE_CHECK_START, false);
        if end.is_some() && lv.name.is_some() {
            self.set_var_lval(&lv, &Value::Str(text.into()), '.', false);
        }
    }

    /// `ex_call`: `:call func(args)` for each line of the range (the cursor goes there); the value is dropped.
    // shortcut: a name that is a variable holding a Funcref and `dict.func()` need Funcrefs
    pub(super) fn call_cmd(&mut self, r: Option<&crate::editor::ex::LineRange>, arg: &str, defer: bool) -> Res<()> {
        // `trans_function_name`: the name (`get_lval`, read only), without a leading `g:`.
        let (end, lv) = self.get_lval(arg, 0, None, false, false, false, cmdline::FNE_CHECK_START, true);
        if end == Some(0) {
            return Err("E129: Function name required".into());
        }
        let Some(end) = end else {
            self.scripts.drop_next = true;
            return Ok(());
        };
        if let lval::Place::NewKey { key, .. } = &lv.place {
            // Still needed: the message for the missing key.
            self.error(format!("E716: Key not present in Dictionary: \"{key}\""));
            self.scripts.drop_next = true;
            return Ok(());
        }
        // A Funcref in a Dictionary or List item is the function; the Dictionary is its `self`.
        let mut callee: Option<(Value, Option<value::Dict>)> = None;
        match &lv.place {
            lval::Place::Key { dict, key } => {
                let item = dict.borrow().get(key).cloned();
                if let Some(f @ (Value::Func(_) | Value::Partial(_))) = item {
                    callee = Some((f, Some(dict.clone())));
                }
            }
            lval::Place::Item { list, idx } => {
                let item = list.borrow().get(*idx).cloned();
                if let Some(f @ (Value::Func(_) | Value::Partial(_))) = item {
                    callee = Some((f, None));
                }
            }
            _ => {}
        }
        if callee.is_none() && (!matches!(lv.place, lval::Place::Var | lval::Place::VarTv) || lv.name.is_none()) {
            // A name with a subscript is a function in a Dictionary: no Funcref exists yet.
            let t = self.tail(arg, 0);
            self.error(if matches!(lv.place, lval::Place::Range { .. }) { format!("E475: Invalid argument: {t}") } else { "E718: Funcref required".to_string() });
            self.scripts.drop_next = true;
            return Ok(());
        }
        let full = lv.name.unwrap_or_default();
        // `s:F`, `<SID>F` and `<SNR>1_F` are translated as `trans_function_name` does; `g:F` is `F`.
        let translated;
        let name = if userfunc::eval_fname_script(arg) > 0 {
            let mut q = 0;
            let Some(n) = self.trans_function_name(arg, &mut q, false, userfunc::TFN_INT) else {
                self.scripts.drop_next = true;
                return Ok(());
            };
            translated = n;
            &*translated
        } else {
            let name = full.strip_prefix("g:").unwrap_or(&full);
            if name.contains(':') {
                let t = self.tail(arg, 0);
                self.error(format!("E884: Function name cannot contain a colon: {t}"));
                self.scripts.drop_next = true;
                return Ok(());
            }
            name
        };
        // Skip white space to allow ":call func ()".
        let start = expr::skipwhite(arg, end);
        if expr::at(arg, start) != b'(' {
            let t = self.tail(arg, 0);
            self.error(format!("E107: Missing parentheses: {t}"));
            self.scripts.drop_next = true;
            return Ok(());
        }
        if defer {
            // `ex_defer_inner`: the function is the one a Funcref (variable or item) stands for, with the arguments of a partial.
            let found = match &callee {
                Some((f, _)) => Some(f.clone()),
                None => self.deref_func_var(name),
            };
            let (fname, partial) = match found {
                Some(Value::Func(n)) => (n.clone(), None),
                Some(Value::Partial(pt)) => (pt.name.clone(), Some((pt.args.clone(), pt.dict.is_some()))),
                _ => (name.into(), None),
            };
            let mut p = start;
            let failed = self.defer_inner(arg, &mut p, &fname, partial);
            if failed {
                self.scripts.drop_next = true;
            } else if !expr::ends_excmd(expr::at(arg, p)) {
                // No blank is skipped before the check (`ex_call` skips one only for `:call`): `:defer F() | echo` is an error.
                let t = self.tail(arg, p);
                self.error(format!("E488: Trailing characters: {t}"));
            } else {
                self.scripts.nextcmd = cmdline::check_nextcmd(&arg[p..]).map(str::to_string);
            }
            return Ok(());
        }
        let lines = if r.is_some() { Some(self.lines(r, (1, 1))?) } else { None };
        // Without a range the line is the cursor's (`eap->line1`, `line2`); `a:firstline` and `a:lastline` get them.
        let cursor = self.win.line + 1;
        let (first, last) = lines.unwrap_or((cursor, cursor));
        let (mut p, mut failed) = (start, false);
        for lnum in first..=last {
            if lines.is_some() {
                if lnum > self.line_count() {
                    // The function deleted lines or switched buffer.
                    self.error("E16: Invalid range");
                    break;
                }
                (self.win.line, self.win.col, self.win.want_col) = (lnum - 1, 0, 0);
            }
            p = start;
            self.scripts.does_range = false;
            self.scripts.call_range_cmd = Some((first, last));
            let called = match &callee {
                Some((f, sd)) => self.call_func_rettv(arg, &mut p, f, true, None, sd.clone()),
                None => self.eval_func(arg, &mut p, name, true),
            };
            let v = match called {
                Ok(v) => v,
                Err(f) => {
                    if let expr::Fail::Msg(m) = f {
                        self.error(m);
                    }
                    failed = true;
                    break;
                }
            };
            // Handle a function returning a Funcref, Dict or List.
            p = expr::skipwhite(arg, p);
            if let Err(f) = self.handle_subscript(arg, &mut p, v, true) {
                if let expr::Fail::Msg(m) = f {
                    self.error(m);
                }
                failed = true;
                break;
            }
            // A function with `range` is called once for the whole range.
            if std::mem::take(&mut self.scripts.does_range) {
                break;
            }
        }
        p = expr::skipwhite(arg, p);
        // When inside :try the following `| catch` or `| endtry` is looked for, also after a failed call. Not after an
        // error that aborts, but after an exception that was thrown: then `eap->nextcmd` stays NULL and the rest of the
        // line does not run.
        if (!self.aborting() || self.scripts.did_throw) && (!failed || self.scripts.trylevel > 0) {
            if !expr::ends_excmd(expr::at(arg, p)) && !failed && !self.aborting() {
                let t = self.tail(arg, p);
                self.scripts.emsg_severe = true;
                self.error(format!("E488: Trailing characters: {t}"));
            }
        } else {
            self.scripts.drop_next = true;
        }
        Ok(())
    }
}

/// `:let $NAME = value`, or `:unlet $NAME` with no value.
fn set_env(name: &str, value: Option<&str>) -> Res<()> {
    if name.is_empty() || name.contains(['=', '\0']) || value.is_some_and(|v| v.contains('\0')) {
        return Err("E474: Invalid argument".into());
    }
    // SAFETY: changing the environment is unsound only while another thread reads it. The one other
    // thread rim starts is the background save (`ex::write_atomic`), which opens files by path and
    // never reads the environment; the name and value hold no `=` or NUL, the other panics of std.
    unsafe {
        match value {
            Some(v) => std::env::set_var(name, v),
            None => std::env::remove_var(name),
        }
    }
    Ok(())
}

#[derive(Clone, Copy, PartialEq)]
pub(super) enum Echo {
    Plain,
    NoNewline,
    Msg,
    Err,
}

/// A line of `:let` listing: the name, then `#` before a Number, `*` before a Funcref, a blank otherwise.
/// `expand_env_save` of `$VIM` and `${HOME}` forms: whether it expands to something.
fn expand_env_exists(spec: &str) -> bool {
    let name = spec[1..].trim_start_matches('{').trim_end_matches('}');
    std::env::var_os(name).is_some()
}

/// `list_one_var_a`: the name, a blank, up to column 22, then `#` for a Number, `[` or `{` which the text of a List or a
/// Dictionary then goes on without, a blank otherwise, and the text.
fn list_line(name: &str, v: &Value) -> String {
    let text = v.echo();
    // A Funcref is listed with its call parentheses.
    let func_text = format!("{text}()");
    let (mark, text) = match v {
        Value::Int(_) => ("#", text.as_str()),
        Value::List(_) => ("[", text.strip_prefix('[').unwrap_or(&text)),
        Value::Dict(_) => ("{", text.strip_prefix('{').unwrap_or(&text)),
        Value::Func(_) | Value::Partial(_) => ("*", func_text.as_str()),
        _ => (" ", text.as_str()),
    };
    let pad = 22usize.saturating_sub(name.chars().count() + 1);
    format!("{name} {}{mark}{text}", " ".repeat(pad))
}

/// The names of the events of `auevents.lua` (v0.12.6) and their aliases, for `exists('##Event')` (`autocmd_supported`).
// shortcut: rim has no autocommands, so only the names are known; `exists('#Event')` is always 0
const AUTOCMD_EVENTS: &[&str] = &[
    "BufAdd",
    "BufDelete",
    "BufEnter",
    "BufFilePost",
    "BufFilePre",
    "BufHidden",
    "BufLeave",
    "BufModifiedSet",
    "BufNew",
    "BufNewFile",
    "BufReadCmd",
    "BufReadPost",
    "BufReadPre",
    "BufUnload",
    "BufWinEnter",
    "BufWinLeave",
    "BufWipeout",
    "BufWriteCmd",
    "BufWritePost",
    "BufWritePre",
    "ChanInfo",
    "ChanOpen",
    "CmdUndefined",
    "CmdlineChanged",
    "CmdlineEnter",
    "CmdlineLeave",
    "CmdlineLeavePre",
    "CmdwinEnter",
    "CmdwinLeave",
    "ColorScheme",
    "ColorSchemePre",
    "CompleteChanged",
    "CompleteDone",
    "CompleteDonePre",
    "CursorHold",
    "CursorHoldI",
    "CursorMoved",
    "CursorMovedC",
    "CursorMovedI",
    "DiagnosticChanged",
    "DiffUpdated",
    "DirChanged",
    "DirChangedPre",
    "EncodingChanged",
    "ExitPre",
    "FileAppendCmd",
    "FileAppendPost",
    "FileAppendPre",
    "FileChangedRO",
    "FileChangedShell",
    "FileChangedShellPost",
    "FileReadCmd",
    "FileReadPost",
    "FileReadPre",
    "FileType",
    "FileWriteCmd",
    "FileWritePost",
    "FileWritePre",
    "FilterReadPost",
    "FilterReadPre",
    "FilterWritePost",
    "FilterWritePre",
    "FocusGained",
    "FocusLost",
    "FuncUndefined",
    "GUIEnter",
    "GUIFailed",
    "InsertChange",
    "InsertCharPre",
    "InsertEnter",
    "InsertLeave",
    "InsertLeavePre",
    "LspAttach",
    "LspDetach",
    "LspNotify",
    "LspProgress",
    "LspRequest",
    "LspTokenUpdate",
    "MarkSet",
    "MenuPopup",
    "ModeChanged",
    "OptionSet",
    "QuickFixCmdPost",
    "QuickFixCmdPre",
    "QuitPre",
    "PackChangedPre",
    "PackChanged",
    "Progress",
    "RecordingEnter",
    "RecordingLeave",
    "RemoteReply",
    "SafeState",
    "SearchWrapped",
    "SessionLoadPost",
    "SessionLoadPre",
    "SessionWritePost",
    "ShellCmdPost",
    "ShellFilterPost",
    "Signal",
    "SourceCmd",
    "SourcePost",
    "SourcePre",
    "SpellFileMissing",
    "StdinReadPost",
    "StdinReadPre",
    "SwapExists",
    "Syntax",
    "TabClosed",
    "TabClosedPre",
    "TabEnter",
    "TabLeave",
    "TabNew",
    "TabNewEntered",
    "TermChanged",
    "TermClose",
    "TermEnter",
    "TermLeave",
    "TermOpen",
    "TermRequest",
    "TermResponse",
    "TextChanged",
    "TextChangedI",
    "TextChangedP",
    "TextChangedT",
    "TextYankPost",
    "UIEnter",
    "UILeave",
    "User",
    "VimEnter",
    "VimLeave",
    "VimLeavePre",
    "VimResized",
    "VimResume",
    "VimSuspend",
    "WinClosed",
    "WinEnter",
    "WinLeave",
    "WinNewPre",
    "WinNew",
    "WinResized",
    "WinScrolled",
    "BufModifiedSet",
    "DiagnosticChanged",
    "LspAttach",
    "LspDetach",
    "LspNotify",
    "LspProgress",
    "LspRequest",
    "LspTokenUpdate",
    "PackChangedPre",
    "PackChanged",
    "Progress",
    "RecordingEnter",
    "RecordingLeave",
    "Signal",
    "TabNewEntered",
    "TermClose",
    "TermOpen",
    "TermRequest",
    "UIEnter",
    "UILeave",
    "BufCreate",
    "BufRead",
    "BufWrite",
    "FileEncoding",
];

/// `autocmd_supported`: the name ends at a blank, a comma or a bar; the case does not matter (`event_name2nr`).
fn autocmd_supported(arg: &str) -> bool {
    let end = arg.find([',', '|', ' ', '\t']).unwrap_or(arg.len());
    let name = &arg[..end];
    AUTOCMD_EVENTS.iter().any(|e| e.eq_ignore_ascii_case(name))
}

#[cfg(test)]
mod tests {
    use super::*;

    // Reaches the `unsafe` of `set_env`, so it runs under Miri too.
    #[test]
    fn env_is_set_and_removed() {
        set_env("RIM_SCRIPT_TEST", Some("a b")).unwrap();
        assert_eq!(std::env::var("RIM_SCRIPT_TEST").as_deref(), Ok("a b"));
        set_env("RIM_SCRIPT_TEST", None).unwrap();
        assert!(std::env::var("RIM_SCRIPT_TEST").is_err());
        for bad in [("", Some("x")), ("A=B", Some("x")), ("A", Some("x\0"))] {
            assert_eq!(set_env(bad.0, bad.1), Err("E474: Invalid argument".into()));
        }
    }
}
