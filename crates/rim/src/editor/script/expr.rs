//! Port of Neovim's `eval.c` expression evaluator (`eval0` … `eval7`, `eval_index`, `eval_list`,
//! `eval_dict`, `handle_subscript`): one pass over the text, with an `evaluate` flag that turns the
//! same walk into a skip (`eval_flags & EVAL_EVALUATE`). Function names and the order of the checks
//! follow the C source, so errors and the position where an expression ends match.
//!
//! A position is a byte offset into the text (`*arg` in C); `at` gives 0 past the end, the NUL.

use super::value::DictMap;
use std::rc::Rc;
use std::cmp::Ordering;


use super::{Res, Value, value::str_to_float};
use crate::editor::Editor;
use super::keycodes::{self, Key};
use super::lval::NameLen;

/// `MAX_FUNC_ARGS`: arguments of one call; more is `E740`.
const MAX_FUNC_ARGS: usize = 20;

/// C's `FAIL`: with a message already given (`emsg`), or without one (`eval0` then reports
/// `E15: Invalid expression`).
#[derive(Debug)]
pub(super) enum Fail {
    Silent,
    Msg(String),
}

impl From<String> for Fail {
    fn from(m: String) -> Self {
        Fail::Msg(m)
    }
}

impl From<&str> for Fail {
    fn from(m: &str) -> Self {
        Fail::Msg(m.into())
    }
}

type R<T> = Result<T, Fail>;

pub(super) fn at(s: &str, p: usize) -> u8 {
    s.as_bytes().get(p).copied().unwrap_or(0)
}

pub(super) fn skipwhite(s: &str, mut p: usize) -> usize {
    while matches!(at(s, p), b' ' | b'\t') {
        p += 1;
    }
    p
}

/// `ends_excmd`: what an expression may be followed by.
pub(super) fn ends_excmd(c: u8) -> bool {
    matches!(c, 0 | b'|' | b'"' | b'\n')
}

fn char_at(s: &str, p: usize) -> usize {
    s[p..].chars().next().map_or(1, char::len_utf8)
}

/// `vim_str2nr` with `STR2NR_ALL`: the number at the start of `s` and the bytes it takes. `strict`:
/// a letter or digit right after makes it no number (length 0). Too large values clamp, as in C.
pub(super) fn vim_str2nr(s: &str, strict: bool) -> (i64, usize) {
    let b = s.as_bytes();
    let negative = at(s, 0) == b'-';
    let start = usize::from(negative);
    let (radix, mut p) = if at(s, start) == b'0' && start + 1 < b.len() && !matches!(at(s, start + 1), b'8' | b'9') {
        match at(s, start + 1) {
            b'x' | b'X' if at(s, start + 2).is_ascii_hexdigit() => (16, start + 2),
            b'b' | b'B' if matches!(at(s, start + 2), b'0' | b'1') => (2, start + 2),
            b'o' | b'O' if matches!(at(s, start + 2), b'0'..=b'7') => (8, start + 2),
            // The old octal form: 0 and octal digits only.
            b'0'..=b'7' if b[start + 1..].iter().take_while(|x| x.is_ascii_digit()).all(|x| *x <= b'7') => (8, start),
            _ => (10, start),
        }
    } else {
        (10, start)
    };
    let mut un: u64 = 0;
    while let Some(d) = (at(s, p) as char).to_digit(radix) {
        let (d, r) = (u64::from(d), u64::from(radix));
        un = if un < u64::MAX / r || (un == u64::MAX / r && (radix != 10 || d <= u64::MAX % 10)) { r * un + d } else { u64::MAX };
        p += 1;
    }
    if strict && at(s, p).is_ascii_alphanumeric() {
        return (0, 0);
    }
    let n = if negative {
        if un > i64::MAX as u64 { i64::MIN } else { -(un as i64) }
    } else {
        un.min(i64::MAX as u64) as i64
    };
    (n, p)
}

/// `string2float`: the float at the start of `s` (`inf`, `nan` and `strtod`'s forms) and its length.
pub(super) fn string2float(s: &str) -> (f64, usize) {
    let starts = |n: usize, w: &str| s.get(..n).is_some_and(|x| x.eq_ignore_ascii_case(w));
    if starts(3, "inf") {
        return (f64::INFINITY, 3);
    }
    if starts(4, "-inf") {
        return (f64::NEG_INFINITY, 4);
    }
    if starts(3, "nan") {
        return (f64::NAN, 3);
    }
    let mut e = usize::from(matches!(at(s, 0), b'-' | b'+'));
    // `strtod` reads a hexadecimal float too: "0x10" is 16.0, "0x1.8p1" is 3.0.
    if at(s, e) == b'0' && matches!(at(s, e + 1), b'x' | b'X') && (at(s, e + 2).is_ascii_hexdigit() || (at(s, e + 2) == b'.' && at(s, e + 3).is_ascii_hexdigit())) {
        let neg = at(s, 0) == b'-';
        let mut p = e + 2;
        let mut m = 0f64;
        while at(s, p).is_ascii_hexdigit() {
            m = m * 16.0 + f64::from((at(s, p) as char).to_digit(16).expect("a hex digit"));
            p += 1;
        }
        if at(s, p) == b'.' {
            p += 1;
            let mut scale = 1.0 / 16.0;
            while at(s, p).is_ascii_hexdigit() {
                m += f64::from((at(s, p) as char).to_digit(16).expect("a hex digit")) * scale;
                scale /= 16.0;
                p += 1;
            }
        }
        if matches!(at(s, p), b'p' | b'P') {
            let mut x = p + 1;
            let eneg = at(s, x) == b'-';
            if matches!(at(s, x), b'+' | b'-') {
                x += 1;
            }
            if at(s, x).is_ascii_digit() {
                let mut n = 0i32;
                while at(s, x).is_ascii_digit() {
                    n = n.saturating_mul(10).saturating_add(i32::from(at(s, x) - b'0'));
                    x += 1;
                }
                m *= 2f64.powi(if eneg { -n } else { n });
                p = x;
            }
        }
        return (if neg { -m } else { m }, p);
    }
    while at(s, e).is_ascii_digit() {
        e += 1;
    }
    if at(s, e) == b'.' {
        e += 1;
        while at(s, e).is_ascii_digit() {
            e += 1;
        }
    }
    if matches!(at(s, e), b'e' | b'E') {
        let mut x = e + 1;
        if matches!(at(s, x), b'+' | b'-') {
            x += 1;
        }
        if at(s, x).is_ascii_digit() {
            while at(s, x).is_ascii_digit() {
                x += 1;
            }
            e = x;
        }
    }
    (str_to_float(&s[..e]), e)
}

fn isnamec(c: u8) -> bool {
    c.is_ascii_alphanumeric() || c == b'_' || c == b':' || c == b'#'
}

/// `get_id_len`: the length of the variable or function name at `p` (0: none).
pub(super) fn id_len(s: &str, p: usize) -> usize {
    let mut q = p;
    while isnamec(at(s, q)) {
        if at(s, q) == b':' {
            // "s:" starts "s:var", but "n:" is no namespace: it can be a slice "[n:]".
            let len = q - p;
            if len > 1 || (len == 1 && !b"abglstvw".contains(&at(s, p))) {
                break;
            }
        }
        q += 1;
    }
    q - p
}

impl Editor {
    /// `eval0`: the expression at the start of `arg`, which must end the command (`|`, `"`, the
    /// end). Gives the value or the message, and where it stopped (for the next command).
    pub(in crate::editor) fn eval0(&mut self, arg: &str) -> (Res<Value>, usize) {
        self.eval0_ev(arg, true)
    }

    /// `eval0` with `evaluate` off (`eap->skip`): only where the expression ends, as the code that
    /// finds the end of a command needs, with no side effect.
    pub(in crate::editor) fn eval0_ev(&mut self, arg: &str, ev: bool) -> (Res<Value>, usize) {
        let mut p = skipwhite(arg, 0);
        let called = self.scripts.called_emsg;
        self.scripts.emsg_skip += u32::from(!ev);
        let ret = self.eval1(arg, &mut p, ev);
        self.scripts.emsg_skip -= u32::from(!ev);
        let res = match ret {
            Ok(_) if !ends_excmd(at(arg, p)) => Err(format!("E488: Trailing characters: {}", &arg[p..])),
            Ok(v) => Ok(v),
            Err(Fail::Msg(m)) => Err(m),
            // `eval1_emsg`: the invalid expression is reported unless a more specific error was given.
            Err(Fail::Silent) if self.scripts.called_emsg != called || self.aborting() => Err(String::new()),
            Err(Fail::Silent) => Err(format!("E15: Invalid expression: \"{arg}\"")),
        };
        (res, p)
    }

    /// The expressions of `:echo` and `:execute`: `eval1` over `arg` until a `|` or a newline. The
    /// values got before a failure come back with its message, as `ex_echo` has shown them by then.
    pub(in crate::editor) fn eval_items(&mut self, arg: &str) -> (Vec<Value>, Option<String>) {
        let mut out = Vec::new();
        let err = self.eval_items_with(arg, |_, v| out.push(v));
        (out, err)
    }

    /// `eval_items`, calling `each` with every value right after it is evaluated: what `ex_echo` shows
    /// of an item comes before what the evaluation of the next one reports.
    pub(in crate::editor) fn eval_items_with(&mut self, arg: &str, mut each: impl FnMut(&mut Editor, Value)) -> Option<String> {
        let mut p = 0;
        while !matches!(at(arg, p), 0 | b'|' | b'\n') {
            let start = p;
            let called = self.scripts.called_emsg;
            match self.eval1(arg, &mut p, true) {
                Ok(v) => each(self, v),
                Err(Fail::Msg(m)) => return Some(m),
                // `eval1_emsg`: no E15 after a more specific error.
                Err(Fail::Silent) if self.scripts.called_emsg != called || self.aborting() => return Some(String::new()),
                Err(Fail::Silent) => return Some(format!("E15: Invalid expression: \"{}\"", &arg[start..])),
            }
            p = skipwhite(arg, p);
        }
        None
    }

    /// `var_exists`: a variable name, then the subscripts after it (`d.key`, `l[1]`), and nothing else.
    pub(in crate::editor) fn var_exists(&mut self, s: &str) -> bool {
        let end = super::cmdline::find_name_end(s, 0);
        if end == 0 {
            return false;
        }
        let Some(v) = self.lookup_var(&s[..end]) else { return false };
        let mut p = end;
        self.scripts.emsg_skip += 1;
        let ok = self.handle_subscript(s, &mut p, v, true).is_ok();
        self.scripts.emsg_skip -= 1;
        ok && p == s.len()
    }

    /// `eval1` without evaluating: how `ex_echo` and the others find where an expression stops.
    pub(in crate::editor) fn skip_expr(&mut self, s: &str, p: &mut usize) -> Result<(), ()> {
        self.scripts.emsg_skip += 1;
        let r = self.eval1(s, p, false).map(drop).map_err(drop);
        self.scripts.emsg_skip -= 1;
        r
    }

    /// `eval1`: `expr2 ? expr1 : expr1` and `expr2 ?? expr1`.
    pub(super) fn eval1(&mut self, s: &str, p: &mut usize, ev: bool) -> R<Value> {
        let mut rettv = self.eval2(s, p, ev)?;
        if at(s, *p) != b'?' {
            return Ok(rettv);
        }
        let falsy = at(s, *p + 1) == b'?';
        let mut result = false;
        if ev {
            result = if falsy { self.tv2bool(&rettv) } else { self.to_int(&rettv)? != 0 };
        }
        if falsy {
            *p += 1;
        }
        *p = skipwhite(s, *p + 1);
        let var2 = self.eval1(s, p, ev && (if falsy { !result } else { result }))?;
        if !falsy || !result {
            rettv = var2;
        }
        if !falsy {
            if at(s, *p) != b':' {
                return Err("E109: Missing ':' after '?'".into());
            }
            *p = skipwhite(s, *p + 1);
            let var2 = self.eval1(s, p, ev && !result)?;
            if ev && !result {
                rettv = var2;
            }
        }
        Ok(rettv)
    }

    /// `tv2bool`.
    fn tv2bool(&self, v: &Value) -> bool {
        match v {
            Value::Int(n) => *n != 0,
            Value::Float(f) => *f != 0.0,
            Value::Str(s) => !s.is_empty(),
            Value::Bool(b) => *b,
            Value::None => false,
            Value::List(l) => !l.borrow().is_empty(),
            Value::Dict(d) => !d.borrow().is_empty(),
            Value::Func(_) | Value::Partial(_) => true,
        }
    }

    /// `eval2`: `expr3 || expr3`.
    fn eval2(&mut self, s: &str, p: &mut usize, ev: bool) -> R<Value> {
        let mut rettv = self.eval3(s, p, ev)?;
        if at(s, *p) == b'|' && at(s, *p + 1) == b'|' {
            let mut result = false;
            if ev {
                result = self.to_int(&rettv)? != 0;
            }
            while at(s, *p) == b'|' && at(s, *p + 1) == b'|' {
                *p = skipwhite(s, *p + 2);
                let var2 = self.eval3(s, p, ev && !result)?;
                if ev && !result {
                    result = self.to_int(&var2)? != 0;
                }
                if ev {
                    rettv = Value::Int(i64::from(result));
                }
            }
        }
        Ok(rettv)
    }

    /// `eval3`: `expr4 && expr4`.
    fn eval3(&mut self, s: &str, p: &mut usize, ev: bool) -> R<Value> {
        let mut rettv = self.eval4(s, p, ev)?;
        if at(s, *p) == b'&' && at(s, *p + 1) == b'&' {
            let mut result = true;
            if ev {
                result = self.to_int(&rettv)? != 0;
            }
            while at(s, *p) == b'&' && at(s, *p + 1) == b'&' {
                *p = skipwhite(s, *p + 2);
                let var2 = self.eval4(s, p, ev && result)?;
                if ev && result {
                    result = self.to_int(&var2)? != 0;
                }
                if ev {
                    rettv = Value::Int(i64::from(result));
                }
            }
        }
        Ok(rettv)
    }

    /// `eval4`: the comparisons.
    fn eval4(&mut self, s: &str, p: &mut usize, ev: bool) -> R<Value> {
        let rettv = self.eval5(s, p, ev)?;
        let (c0, c1) = (at(s, *p), at(s, *p + 1));
        let mut len = 2;
        let op = match (c0, c1) {
            (b'=', b'=') => Some("=="),
            (b'=', b'~') => Some("=~"),
            (b'!', b'=') => Some("!="),
            (b'!', b'~') => Some("!~"),
            (b'>', b'=') => Some(">="),
            (b'>', _) => {
                len = 1;
                Some(">")
            }
            (b'<', b'=') => Some("<="),
            (b'<', _) => {
                len = 1;
                Some("<")
            }
            (b'i', b's') => {
                if s[*p..].starts_with("isnot") {
                    len = 5;
                }
                let next = at(s, *p + len);
                (!next.is_ascii_alphanumeric() && next != b'_').then_some(if len == 2 { "is" } else { "isnot" })
            }
            _ => None,
        };
        let Some(op) = op else { return Ok(rettv) };
        let ic = match at(s, *p + len) {
            b'?' => {
                len += 1;
                true
            }
            b'#' => {
                len += 1;
                false
            }
            _ => self.buf.opts.ignorecase,
        };
        *p = skipwhite(s, *p + len);
        let var2 = self.eval5(s, p, ev)?;
        if ev {
            return Ok(Value::Int(i64::from(self.typval_compare(&rettv, &var2, op, ic)?)));
        }
        Ok(rettv)
    }

    /// `eval5`: `+`, `-`, `.`, `..`.
    fn eval5(&mut self, s: &str, p: &mut usize, ev: bool) -> R<Value> {
        let mut rettv = self.eval6(s, p, ev, false)?;
        loop {
            let op = at(s, *p);
            if !matches!(op, b'+' | b'-' | b'.') {
                break;
            }
            if ev && (op != b'+' || !matches!(rettv, Value::List(_))) && (op == b'.' || !matches!(rettv, Value::Float(_))) {
                // Checked before the second operand is evaluated: no side effects after an error.
                if op == b'.' {
                    self.check_str(&rettv)?;
                } else {
                    self.check_num(&rettv)?;
                }
            }
            if op == b'.' && at(s, *p + 1) == b'.' {
                *p += 1;
            }
            *p = skipwhite(s, *p + 1);
            let var2 = self.eval6(s, p, ev, op == b'.')?;
            if ev {
                rettv = match (op, &rettv, &var2) {
                    (b'.', ..) => {
                        let (a, b) = (self.to_string(&rettv)?, self.to_string(&var2)?);
                        Value::Str((a + &b).into())
                    }
                    (b'+', Value::List(x), Value::List(y)) => Value::list(x.borrow().iter().chain(y.borrow().iter()).cloned().collect()),
                    _ => self.addsub_number(&rettv, &var2, op)?,
                };
            }
        }
        Ok(rettv)
    }

    /// `tv_check_str`.
    pub(super) fn check_str(&self, v: &Value) -> R<()> {
        match v {
            Value::List(_) => Err("E730: Using a List as a String".into()),
            Value::Dict(_) => Err("E731: Using a Dictionary as a String".into()),
            _ => Ok(()),
        }
    }

    /// `tv_check_num`.
    fn check_num(&self, v: &Value) -> R<()> {
        match v {
            Value::List(_) => Err("E745: Using a List as a Number".into()),
            Value::Dict(_) => Err("E728: Using a Dictionary as a Number".into()),
            _ => Ok(()),
        }
    }

    /// `eval_addsub_number`.
    fn addsub_number(&self, a: &Value, b: &Value, op: u8) -> R<Value> {
        let n1 = if let Value::Float(_) = a { 0 } else { self.to_int(a)? };
        let n2 = if let Value::Float(_) = b { 0 } else { self.to_int(b)? };
        if matches!(a, Value::Float(_)) || matches!(b, Value::Float(_)) {
            let f = |v: &Value, n: i64| if let Value::Float(f) = v { *f } else { n as f64 };
            let (x, y) = (f(a, n1), f(b, n2));
            return Ok(Value::Float(if op == b'+' { x + y } else { x - y }));
        }
        Ok(Value::Int(if op == b'+' { n1.wrapping_add(n2) } else { n1.wrapping_sub(n2) }))
    }

    /// `eval6`: `*`, `/`, `%`.
    fn eval6(&mut self, s: &str, p: &mut usize, ev: bool, want_string: bool) -> R<Value> {
        let mut rettv = self.eval7(s, p, ev, want_string)?;
        while matches!(at(s, *p), b'*' | b'/' | b'%') {
            let op = at(s, *p);
            *p = skipwhite(s, *p + 1);
            let var2 = self.eval7(s, p, ev, false)?;
            if ev {
                rettv = self.multdiv_number(&rettv, &var2, op)?;
            }
        }
        Ok(rettv)
    }

    /// `eval_multdiv_number`.
    fn multdiv_number(&self, a: &Value, b: &Value, op: u8) -> R<Value> {
        let n1 = if let Value::Float(_) = a { 0 } else { self.to_int(a)? };
        let n2 = if let Value::Float(_) = b { 0 } else { self.to_int(b)? };
        if matches!(a, Value::Float(_)) || matches!(b, Value::Float(_)) {
            let f = |v: &Value, n: i64| if let Value::Float(f) = v { *f } else { n as f64 };
            let (x, y) = (f(a, n1), f(b, n2));
            return Ok(Value::Float(match op {
                b'*' => x * y,
                b'/' if y == 0.0 => {
                    if x == 0.0 {
                        f64::NAN
                    } else if x > 0.0 {
                        f64::INFINITY
                    } else {
                        f64::NEG_INFINITY
                    }
                }
                b'/' => x / y,
                _ => return Err("E804: Cannot use '%' with Float".into()),
            }));
        }
        Ok(Value::Int(match op {
            b'*' => n1.wrapping_mul(n2),
            // `num_divide`: x / 0 is the largest number of its sign, 0 / 0 the smallest.
            b'/' if n2 == 0 => match n1.cmp(&0) {
                Ordering::Greater => i64::MAX,
                Ordering::Less => -i64::MAX,
                Ordering::Equal => i64::MIN,
            },
            b'/' => n1.wrapping_div(n2),
            // `num_modulus`
            _ if n2 == 0 => 0,
            _ => n1.wrapping_rem(n2),
        }))
    }

    /// `eval7`: constants, names, calls, the `!`, `-`, `+` in front and the subscripts behind.
    fn eval7(&mut self, s: &str, p: &mut usize, ev: bool, want_string: bool) -> R<Value> {
        let start_leader = *p;
        while matches!(at(s, *p), b'!' | b'-' | b'+') {
            *p = skipwhite(s, *p + 1);
        }
        let mut end_leader = *p;
        // Neovim limits the recursion to 1000 levels.
        if self.scripts.expr_depth == 1000 {
            return Err(format!("E1169: Expression too recursive: {}", &s[*p..]).into());
        }
        self.scripts.expr_depth += 1;
        let r = stacker::maybe_grow(64 * 1024, 1024 * 1024, || self.eval7_inner(s, p, ev, want_string, start_leader, &mut end_leader));
        self.scripts.expr_depth -= 1;
        r
    }

    fn eval7_inner(&mut self, s: &str, p: &mut usize, ev: bool, want_string: bool, start_leader: usize, end_leader: &mut usize) -> R<Value> {
        // `None`: NOTDONE, it must be a variable or function name.
        let done = match at(s, *p) {
            b'0'..=b'9' => {
                let v = self.eval_number(s, p, ev, want_string)?;
                // The "-" and "+" in front apply now: it matters when "->" follows.
                Some(if ev && *end_leader > start_leader { self.eval7_leader(v, true, s, start_leader, end_leader)? } else { v })
            }
            b'"' => Some(self.eval_string(s, p, ev)?),
            b'\'' => Some(self.eval_lit_string(s, p, ev)?),
            b'[' => Some(self.eval_list(s, p, ev)?),
            b'#' if at(s, *p + 1) == b'{' => {
                *p += 1;
                self.eval_dict(s, p, ev, true)?
            }
            b'{' => match self.get_lambda_tv(s, p, ev)? {
                Some(v) => Some(v),
                None => self.eval_dict(s, p, ev, false)?,
            },
            b'&' => Some(self.eval_option(s, p, ev)?),
            b'$' => Some(self.eval_env_var(s, p, ev)?),
            b'@' => {
                *p += 1;
                let name = s[*p..].chars().next();
                if let Some(c) = name {
                    *p += c.len_utf8();
                }
                Some(if ev { Value::Str(name.map(|c| if c == '@' { '"' } else { c }).and_then(|c| self.reg(c)).map_or_else(String::new, |r| r.text).into()) } else { Value::None })
            }
            b'(' => {
                *p = skipwhite(s, *p + 1);
                let v = self.eval1(s, p, ev)?;
                if at(s, *p) != b')' {
                    return Err("E110: Missing ')'".into());
                }
                *p += 1;
                Some(v)
            }
            _ => None,
        };
        let mut rettv = match done {
            Some(v) => v,
            None => {
                let name_at = *p;
                let mut q = name_at;
                let (len, alias) = match self.get_name_len(s, &mut q, ev, true) {
                    NameLen::Found(len, alias) => (len, alias),
                    NameLen::None(m) | NameLen::Bad(m) => return Err(m.map_or(Fail::Silent, Fail::Msg)),
                };
                *p = skipwhite(s, q);
                let name = alias.as_deref().unwrap_or(&s[name_at..name_at + len]);
                if at(s, *p) == b'(' {
                    self.eval_func(s, p, name, ev)?
                } else if ev {
                    self.eval_variable(name)?
                } else {
                    // Skipping over the name: a local variable makes a lambda a closure.
                    self.check_vars(name);
                    Value::None
                }
            }
        };
        self.scripts.eval_progress = true;
        *p = skipwhite(s, *p);
        rettv = self.handle_subscript(s, p, rettv, ev)?;
        // Logical NOT and unary minus, from the right; "+" is ignored.
        if ev && *end_leader > start_leader {
            rettv = self.eval7_leader(rettv, false, s, start_leader, end_leader)?;
        }
        Ok(rettv)
    }

    /// `eval_variable`.
    pub(super) fn eval_variable(&mut self, name: &str) -> R<Value> {
        Ok(match name {
            "v:true" => Value::Bool(true),
            "v:false" => Value::Bool(false),
            "v:null" => Value::None,
            _ => self.get_var(name)?,
        })
    }

    /// `eval7_leader`: the `!`, `-` and `+` in front of an operand, applied from the right up to
    /// `start`; `end` is left where it stopped.
    fn eval7_leader(&self, rettv: Value, numeric_only: bool, s: &str, start: usize, end: &mut usize) -> R<Value> {
        let mut float = if let Value::Float(f) = rettv { Some(f) } else { None };
        let mut val = if float.is_some() { 0 } else { self.to_int(&rettv)? };
        while *end > start {
            *end -= 1;
            match at(s, *end) {
                b'!' => {
                    if numeric_only {
                        *end += 1;
                        break;
                    }
                    // "!" of a Float is a Boolean, then no Float any more.
                    val = match float.take() {
                        Some(f) => i64::from(f == 0.0),
                        None => i64::from(val == 0),
                    };
                }
                b'-' => match &mut float {
                    Some(f) => *f = -*f,
                    None => val = val.wrapping_neg(),
                },
                _ => {}
            }
        }
        Ok(float.map_or(Value::Int(val), Value::Float))
    }

    /// `eval_number`.
    fn eval_number(&mut self, s: &str, p: &mut usize, ev: bool, want_string: bool) -> R<Value> {
        let skipdigits = |mut q: usize| {
            while at(s, q).is_ascii_digit() {
                q += 1;
            }
            q
        };
        let mut q = skipdigits(*p + 1);
        let mut get_float = false;
        // Strict, for old scripts: "[0-9]\+\.[0-9]\+\([eE][+-]\?[0-9]\+\)\?". Not after the "."
        // operator, so that ":let vers = 1.2.3" does not fail.
        if !want_string && at(s, q) == b'.' && at(s, q + 1).is_ascii_digit() {
            get_float = true;
            q = skipdigits(q + 2);
            if matches!(at(s, q), b'e' | b'E') {
                q += 1;
                if matches!(at(s, q), b'-' | b'+') {
                    q += 1;
                }
                if at(s, q).is_ascii_digit() {
                    q = skipdigits(q + 1);
                } else {
                    get_float = false;
                }
            }
            if at(s, q).is_ascii_alphabetic() || at(s, q) == b'.' {
                get_float = false;
            }
        }
        if get_float {
            let (f, len) = string2float(&s[*p..]);
            *p += len;
            return Ok(if ev { Value::Float(f) } else { Value::None });
        }
        let (n, len) = vim_str2nr(&s[*p..], true);
        if len == 0 {
            // Without evaluating, `eval0` reports it.
            return Err(if ev { Fail::Msg(format!("E15: Invalid expression: \"{}\"", &s[*p..])) } else { Fail::Silent });
        }
        *p += len;
        Ok(if ev { Value::Int(n) } else { Value::None })
    }

    /// `eval_string`: `"..."` and its backslash escapes.
    fn eval_string(&mut self, s: &str, p: &mut usize, ev: bool) -> R<Value> {
        let start = *p;
        let mut q = start + 1;
        while q < s.len() && at(s, q) != b'"' {
            if at(s, q) == b'\\' && q + 1 < s.len() {
                q += 1;
                // A key name may hold a quote (`"\<M-\">"`), so it is looked for here too, which is also
                // where its error is given when only skipping.
                if at(s, q) == b'<' {
                    match keycodes::find_special_key(&s[q..], at(s, q + 1) != b'*') {
                        Ok(Some((_, len))) => q += len - 1,
                        Ok(None) => {}
                        Err(msg) => self.error(msg),
                    }
                }
            }
            q += char_at(s, q);
        }
        if at(s, q) != b'"' {
            return Err(format!("E114: Missing quote: {}", &s[start..]).into());
        }
        *p = q + 1;
        if !ev {
            return Ok(Value::None);
        }
        let mut out = String::new();
        let mut i = start + 1;
        while i < q {
            let c = s[i..].chars().next().expect("a char");
            i += c.len_utf8();
            if c != '\\' {
                out.push(c);
                continue;
            }
            let e = s[i..].chars().next().expect("a char after the backslash");
            i += e.len_utf8();
            match e {
                'b' => out.push('\u{8}'),
                'e' => out.push('\u{1b}'),
                'f' => out.push('\u{c}'),
                'n' => out.push('\n'),
                'r' => out.push('\r'),
                't' => out.push('\t'),
                'x' | 'X' | 'u' | 'U' if at(s, i).is_ascii_hexdigit() => {
                    let max = match e {
                        'x' | 'X' => 2,
                        'u' => 4,
                        _ => 8,
                    };
                    let mut nr = 0u32;
                    let mut n = 0;
                    while n < max && at(s, i).is_ascii_hexdigit() {
                        nr = nr.wrapping_shl(4) | (at(s, i) as char).to_digit(16).expect("a hex digit");
                        i += 1;
                        n += 1;
                    }
                    // Deliberate difference: strings are always valid UTF-8, so "\x80" and lone surrogates (bytes that are not UTF-8 in Neovim) become U+FFFD
                    out.push(char::from_u32(nr).unwrap_or('\u{fffd}'));
                }
                // "\x" without a digit is the "x" itself.
                '0'..='7' => {
                    let mut v = e as u32 - '0' as u32;
                    for _ in 0..2 {
                        if matches!(at(s, i), b'0'..=b'7') {
                            v = (v << 3) + u32::from(at(s, i) - b'0');
                            i += 1;
                        }
                    }
                    // Deliberate difference: strings are always valid UTF-8, so an octal escape above 0x7f is the char of that code, not a bare byte
                    out.push(char::from_u32(v & 0xff).unwrap_or('\u{fffd}'));
                }
                '<' => {
                    // `"\<C-W>"`: `p[1] != '*'` is `FSK_SIMPLIFY`.
                    let from = i - 1;
                    match keycodes::find_special_key(&s[from..], at(s, from + 1) != b'*') {
                        Ok(Some((Key::Char(k), len))) => {
                            out.push(k);
                            i = from + len;
                        }
                        // Deliberate difference: a key Neovim stores as `K_SPECIAL` bytes ("\<Up>", "\<BS>", "\<M-a>") is not UTF-8, so it stays as typed
                        Ok(Some((Key::Special, len))) => {
                            out.push_str(&s[from - 1..from + len]);
                            i = from + len;
                        }
                        Ok(None) => out.push('<'),
                        Err(msg) => {
                            self.error(msg);
                            out.push('<');
                        }
                    }
                }
                other => out.push(other),
            }
        }
        Ok(Value::Str(out.into()))
    }

    /// `eval_lit_string`: `'str''ing'`.
    fn eval_lit_string(&mut self, s: &str, p: &mut usize, ev: bool) -> R<Value> {
        let start = *p;
        let mut q = start + 1;
        let mut out = String::new();
        while q < s.len() {
            if at(s, q) == b'\'' {
                if at(s, q + 1) != b'\'' {
                    break;
                }
                q += 1;
            }
            let c = s[q..].chars().next().expect("a char");
            out.push(c);
            q += c.len_utf8();
        }
        if at(s, q) != b'\'' {
            return Err(format!("E115: Missing quote: {}", &s[start..]).into());
        }
        *p = q + 1;
        Ok(if ev { Value::Str(out.into()) } else { Value::None })
    }

    /// `eval_list`.
    fn eval_list(&mut self, s: &str, p: &mut usize, ev: bool) -> R<Value> {
        let mut items = Vec::new();
        *p = skipwhite(s, *p + 1);
        while at(s, *p) != b']' && at(s, *p) != 0 {
            let v = self.eval1(s, p, ev)?;
            if ev {
                items.push(v);
            }
            // The comma must come after the value.
            let had_comma = at(s, *p) == b',';
            if had_comma {
                *p = skipwhite(s, *p + 1);
            }
            if at(s, *p) == b']' {
                break;
            }
            if !had_comma {
                return Err(format!("E696: Missing comma in List: {}", &s[*p..]).into());
            }
        }
        if at(s, *p) != b']' {
            return Err(format!("E697: Missing end of List ']': {}", &s[*p..]).into());
        }
        *p = skipwhite(s, *p + 1);
        Ok(if ev { Value::list(items) } else { Value::None })
    }

    /// `eval_dict`; `None` is NOTDONE: `{expr}` is a curly-braces name, no Dictionary.
    fn eval_dict(&mut self, s: &str, p: &mut usize, ev: bool, literal: bool) -> R<Option<Value>> {
        let mut curly = skipwhite(s, *p + 1);
        // Tried without evaluating, so that a function is not called twice.
        if at(s, curly) != b'}' && !literal {
            match self.eval1(s, &mut curly, false) {
                Ok(_) if at(s, skipwhite(s, curly)) == b'}' => return Ok(None),
                // The error of the first try is given, and the Dictionary is parsed all the same.
                Err(Fail::Msg(m)) => self.error(m),
                _ => {}
            }
        }
        let mut map = DictMap::new();
        *p = skipwhite(s, *p + 1);
        while at(s, *p) != b'}' && at(s, *p) != 0 {
            let key = if literal {
                let keyc = |c: u8| c.is_ascii_alphanumeric() || c == b'_' || c == b'-';
                let from = *p;
                while keyc(at(s, *p)) {
                    *p += 1;
                }
                if *p == from {
                    return Err(Fail::Silent);
                }
                let k = Value::Str(s[from..*p].to_string().into());
                *p = skipwhite(s, *p);
                k
            } else {
                self.eval1(s, p, ev)?
            };
            if at(s, *p) != b':' {
                return Err(format!("E720: Missing colon in Dictionary: {}", &s[*p..]).into());
            }
            let key = if ev { Some(self.to_string(&key)?) } else { None };
            *p = skipwhite(s, *p + 1);
            let v = self.eval1(s, p, ev)?;
            if let Some(k) = key {
                if map.contains_key(&*k) {
                    return Err(format!("E721: Duplicate key in Dictionary: \"{k}\"").into());
                }
                map.insert(k.into(), v);
            }
            let had_comma = at(s, *p) == b',';
            if had_comma {
                *p = skipwhite(s, *p + 1);
            }
            if at(s, *p) == b'}' {
                break;
            }
            if !had_comma {
                return Err(format!("E722: Missing comma in Dictionary: {}", &s[*p..]).into());
            }
        }
        if at(s, *p) != b'}' {
            return Err(format!("E723: Missing end of Dictionary '}}': {}", &s[*p..]).into());
        }
        *p = skipwhite(s, *p + 1);
        Ok(Some(if ev { Value::dict(map) } else { Value::None }))
    }

    /// `eval_option`: `&name`, `&l:name`, `&g:name`.
    fn eval_option(&mut self, s: &str, p: &mut usize, ev: bool) -> R<Value> {
        let mut q = *p + 1;
        if matches!(at(s, q), b'g' | b'l') && at(s, q + 1) == b':' {
            q += 2;
        }
        let from = q;
        while at(s, q).is_ascii_alphanumeric() || at(s, q) == b'_' {
            q += 1;
        }
        if q == from {
            return Err(format!("E112: Option name missing: {}", &s[*p..]).into());
        }
        let name = &s[from..q];
        self.opts_in();
        let v = if ev { self.buf.opts.lookup(name).ok_or_else(|| format!("E113: Unknown option: {name}"))? } else { Value::None };
        *p = q;
        Ok(v)
    }

    /// `eval_env_var`: `$NAME`.
    fn eval_env_var(&mut self, s: &str, p: &mut usize, ev: bool) -> R<Value> {
        let from = *p + 1;
        let mut q = from;
        while at(s, q).is_ascii_alphanumeric() || at(s, q) == b'_' {
            q += 1;
        }
        *p = q;
        if !ev {
            return Ok(Value::None);
        }
        if q == from {
            return Err(Fail::Silent);
        }
        Ok(Value::Str(std::env::var(&s[from..q]).unwrap_or_default().into()))
    }

    /// `get_func_arguments`: the arguments after `(` or `,` up to the `)`; `base` is the first
    /// argument of a `->` call. `Ok(false)`: the arguments are not well formed.
    pub(super) fn get_func_arguments(&mut self, s: &str, argp: &mut usize, ev: bool, args: &mut Vec<Value>) -> R<bool> {
        let mut ok = true;
        // The base of a `->` call is already in `args` and does not count (`argv_add_base` adds it later in Neovim).
        let start = args.len();
        while args.len() - start < MAX_FUNC_ARGS {
            *argp = skipwhite(s, *argp + 1);
            if matches!(at(s, *argp), b')' | b',' | 0) {
                break;
            }
            match self.eval1(s, argp, ev) {
                Ok(v) => args.push(v),
                Err(Fail::Silent) => {
                    ok = false;
                    break;
                }
                // The message is given where it is found (`emsg`); `get_func_tv` then adds E116.
                Err(Fail::Msg(m)) => {
                    self.error(m);
                    ok = false;
                    break;
                }
            }
            if at(s, *argp) != b',' {
                break;
            }
        }
        *argp = skipwhite(s, *argp);
        if at(s, *argp) == b')' {
            *argp += 1;
        } else {
            ok = false;
        }
        Ok(ok)
    }

    /// `eval_func` and `get_func_tv`: `name(args)` with `*p` at the `(`.
    pub(super) fn eval_func(&mut self, s: &str, p: &mut usize, name: &str, ev: bool) -> R<Value> {
        if !ev {
            self.check_vars(name);
        }
        self.call_with(s, p, name, ev, Vec::new())
    }

    fn call_with(&mut self, s: &str, p: &mut usize, name: &str, ev: bool, mut args: Vec<Value>) -> R<Value> {
        let mut argp = *p;
        let start = args.len();
        // `a:firstline` and `a:lastline`: the range of the `:call` for its function, the cursor line for any other.
        let range = self.scripts.call_range_cmd.take().unwrap_or_else(|| (self.win.line + 1, self.win.line + 1));
        let ok = self.get_func_arguments(s, &mut argp, ev, &mut args)?;
        *p = skipwhite(s, argp);
        if !ok {
            return Err(if !ev || self.aborting() {
                Fail::Silent
            } else if args.len() - start == MAX_FUNC_ARGS {
                Fail::Msg(format!("E740: Too many arguments for function {name}"))
            } else {
                Fail::Msg(format!("E116: Invalid arguments for function {name}"))
            });
        }
        if ev {
            self.scripts.eval_progress = true;
            self.scripts.call_range = range;
            // A variable that holds a Funcref or partial is called through it (`deref_func_name`).
            let r = if let Some(f) = self.deref_func_var(name) {
                // A variable that was found: an unknown function is not callable (`found_var`).
                self.call_value(&f, args, None).map_err(|m| match m.strip_prefix("E117: Unknown function: ") {
                    Some(n) => format!("E1085: Not a callable type: {n}"),
                    None => m,
                })
            } else {
                self.call(name, args)
            };
            // An exception thrown in the function (or an error under `abort`) stops the evaluation of the expression.
            if self.aborting() {
                return Err(Fail::Silent);
            }
            Ok(r?)
        } else {
            Ok(Value::None)
        }
    }

    /// `handle_subscript`: `[idx]`, `[a:b]`, `.key`, `->name()`.
    pub(super) fn handle_subscript(&mut self, s: &str, p: &mut usize, mut rettv: Value, ev: bool) -> R<Value> {
        // The Dictionary the last `.key` or `[key]` was taken from, to be `self` for a function that is called or bound.
        let mut selfdict: Option<super::value::Dict> = None;
        loop {
            let c = at(s, *p);
            let subscript = (c == b'[' || (c == b'.' && matches!(rettv, Value::Dict(_))) || (c == b'(' && (!ev || matches!(rettv, Value::Func(_) | Value::Partial(_))))) && *p > 0 && !matches!(at(s, *p - 1), b' ' | b'\t');
            if c == b'-' && at(s, *p + 1) == b'>' {
                rettv = self.eval_method(s, p, rettv, ev)?;
            } else if c == b'(' && subscript {
                rettv = self.call_func_rettv(s, p, &rettv, ev, None, selfdict.take())?;
            } else if subscript {
                selfdict = if let Value::Dict(d) = &rettv { Some(d.clone()) } else { None };
                rettv = self.eval_index(s, p, rettv, ev)?;
            } else {
                // Turn "dict.Func" into a partial for "Func" bound to "dict".
                if let Some(d) = selfdict
                    && matches!(rettv, Value::Func(_) | Value::Partial(_))
                {
                    rettv = self.set_selfdict(rettv, d);
                }
                return Ok(rettv);
            }
        }
    }

    /// `set_selfdict` and `make_partial`: a function with the `dict` flag that was taken out of a Dictionary is bound to it.
    fn set_selfdict(&mut self, rettv: Value, selfdict: super::value::Dict) -> Value {
        // Not when "dict.Func" is a partial that was bound explicitly.
        if let Value::Partial(p) = &rettv
            && !p.auto
            && p.dict.is_some()
        {
            return rettv;
        }
        let (name, func_id, args) = match &rettv {
            Value::Func(n) => (n.clone(), None, Vec::new()),
            Value::Partial(p) => (p.name.clone(), p.func_id, p.args.clone()),
            _ => return rettv,
        };
        let fp = match func_id.and_then(|id| self.scripts.func_ids.get(&id).cloned()) {
            Some(fp) => Some(fp),
            None => self.fname_trans_sid(&name).ok().and_then(|f| self.find_func(&f)),
        };
        match fp {
            Some(fp) if fp.flags & super::userfunc::FC_DICT != 0 => Value::Partial(super::value::Gc::new(super::value::Partial { name, func_id, args, dict: Some(selfdict), auto: true })),
            _ => rettv,
        }
    }

    /// `call_func_rettv`: `value(args)`, the value being a Funcref or partial; `*p` is at the `(`.
    pub(super) fn call_func_rettv(&mut self, s: &str, p: &mut usize, f: &Value, ev: bool, base: Option<Value>, selfdict: Option<super::value::Dict>) -> R<Value> {
        let mut argp = *p;
        let mut args: Vec<Value> = base.into_iter().collect();
        let range = self.scripts.call_range_cmd.take().unwrap_or_else(|| (self.win.line + 1, self.win.line + 1));
        let ok = self.get_func_arguments(s, &mut argp, ev, &mut args)?;
        *p = skipwhite(s, argp);
        let name = match f {
            Value::Func(n) => n.clone(),
            Value::Partial(pt) => pt.name.clone(),
            _ => Rc::from(""),
        };
        if !ok {
            return Err(if !ev || self.aborting() {
                Fail::Silent
            } else if args.len() == MAX_FUNC_ARGS {
                Fail::Msg(format!("E740: Too many arguments for function {name}"))
            } else {
                Fail::Msg(format!("E116: Invalid arguments for function {name}"))
            });
        }
        if !ev {
            return Ok(Value::None);
        }
        self.scripts.call_range = range;
        let r = self.call_value(f, args, selfdict);
        if self.aborting() {
            return Err(Fail::Silent);
        }
        Ok(r?)
    }

    /// `eval_method`: `base->name(args)`; the base is the first argument.
    fn eval_method(&mut self, s: &str, p: &mut usize, base: Value, ev: bool) -> R<Value> {
        *p += 2;
        let from = *p;
        // `base->{lambda}(args)`: the lambda is the function.
        if at(s, from) == b'{' {
            let mut q = from;
            let Some(f) = self.get_lambda_tv(s, &mut q, ev)? else { return Err(Fail::Silent) };
            *p = q;
            if at(s, *p) != b'(' {
                return Err(if at(s, skipwhite(s, *p)) == b'(' { "E274: No white space allowed before parenthesis".into() } else { "E107: Missing parentheses: lambda".into() });
            }
            return self.call_func_rettv(s, p, &f, ev, Some(base), None);
        }
        let len = id_len(s, from);
        if len == 0 {
            if at(s, from) != 0 {
                let t = self.tail(s, from);
                self.error(format!("E15: Invalid expression: \"{t}\""));
            }
            return Err("E260: Missing name after ->".into());
        }
        let name = &s[from..from + len];
        *p = skipwhite(s, from + len);
        if at(s, *p) != b'(' {
            return Err(format!("E107: Missing parentheses: {name}").into());
        }
        if matches!(at(s, *p - 1), b' ' | b'\t') {
            return Err("E274: No white space allowed before parenthesis".into());
        }
        self.call_with(s, p, name, ev, vec![base])
    }

    /// `eval_index`: `[expr]`, `[expr:expr]` and `.key`, with `*p` at the `[` or `.`.
    fn eval_index(&mut self, s: &str, p: &mut usize, rettv: Value, ev: bool) -> R<Value> {
        // `check_can_index`
        match &rettv {
            Value::Float(_) => return Err("E806: Using a Float as a String".into()),
            Value::Bool(_) => return Err("E909: Cannot index a special variable".into()),
            Value::None if ev => return Err("E909: Cannot index a special variable".into()),
            _ => {}
        }
        let (mut var1, mut var2, mut range, mut key) = (None, None, false, None);
        if at(s, *p) == b'.' {
            let from = *p + 1;
            let mut q = from;
            while at(s, q).is_ascii_alphanumeric() || at(s, q) == b'_' {
                q += 1;
            }
            if q == from {
                return Err(Fail::Silent);
            }
            key = Some(s[from..q].to_string());
            *p = skipwhite(s, q);
        } else {
            *p = skipwhite(s, *p + 1);
            if at(s, *p) != b':' {
                let v = self.eval1(s, p, ev)?;
                if ev {
                    self.check_str(&v)?;
                }
                var1 = Some(v);
            }
            if at(s, *p) == b':' {
                range = true;
                *p = skipwhite(s, *p + 1);
                if at(s, *p) != b']' {
                    let v = self.eval1(s, p, ev)?;
                    if ev {
                        self.check_str(&v)?;
                    }
                    var2 = Some(v);
                }
            }
            if at(s, *p) != b']' {
                return Err("E111: Missing ']'".into());
            }
            *p = skipwhite(s, *p + 1);
        }
        if !ev {
            return Ok(Value::None);
        }
        self.eval_index_inner(rettv, range, var1, var2, key)
    }

    /// `eval_index_inner` (without the exclusive form `slice()` uses).
    fn eval_index_inner(&mut self, rettv: Value, range: bool, var1: Option<Value>, var2: Option<Value>, key: Option<String>) -> R<Value> {
        let is_dict = matches!(rettv, Value::Dict(_));
        let mut n1 = match &var1 {
            Some(v) if !is_dict => self.to_int(v)?,
            _ => 0,
        };
        let mut n2 = 0;
        if range {
            if is_dict {
                return Err("E719: Cannot slice a Dictionary".into());
            }
            n2 = match &var2 {
                Some(v) => self.to_int(v)?,
                None => i64::MAX,
            };
        }
        match rettv {
            Value::Int(_) | Value::Str(_) => {
                let text = self.to_string(&rettv)?;
                let len = text.len() as i64;
                let bytes = text.as_bytes();
                let out: &[u8] = if range {
                    // Out of range indexes give an empty result.
                    if n1 < 0 {
                        n1 = (len + n1).max(0);
                    }
                    if n2 < 0 {
                        n2 += len;
                    } else if n2 >= len {
                        n2 = len;
                    }
                    if n1 >= len || n2 < 0 || n1 > n2 { &[] } else { &bytes[n1 as usize..=n2.min(len - 1) as usize] }
                } else if n1 < 0 || n1 >= len {
                    &[]
                } else {
                    &bytes[n1 as usize..=n1 as usize]
                };
                // Deliberate difference: strings are always valid UTF-8, a cut inside a multibyte char gives U+FFFD where Neovim gives the bare bytes
                Ok(Value::Str(String::from_utf8_lossy(out).into_owned().into()))
            }
            Value::List(l) => {
                let l = l.borrow();
                let len = l.len() as i64;
                let n1_arg = n1;
                if n1 < 0 {
                    n1 += len;
                }
                if n1 < 0 || n1 >= len {
                    // A range may go out of bounds and gives an empty List, an item may not.
                    if !range {
                        return Err(format!("E684: List index out of range: {n1_arg}").into());
                    }
                    n1 = len;
                }
                if !range {
                    return Ok(l[n1 as usize].clone());
                }
                if n2 < 0 {
                    n2 += len;
                } else if n2 >= len {
                    n2 = len - 1;
                }
                if n2 < 0 || n2 + 1 < n1 {
                    n2 = -1;
                }
                Ok(Value::list(if n2 < n1 { Vec::new() } else { l.items[n1 as usize..=n2 as usize].iter().map(|i| i.tv.clone()).collect() }))
            }
            Value::Dict(d) => {
                let k = match key {
                    Some(k) => k,
                    None => self.to_string(&var1.expect("a key"))?,
                };
                let found = d.borrow().get(&k).cloned();
                found.ok_or_else(|| Fail::Msg(format!("E716: Key not present in Dictionary: \"{k}\"")))
            }
            other => Ok(other),
        }
    }

    /// `typval_compare`.
    pub(super) fn typval_compare(&mut self, a: &Value, b: &Value, op: &str, ic: bool) -> R<bool> {
        let is = matches!(op, "is" | "isnot");
        let neg = matches!(op, "!=" | "!~" | "isnot");
        let same_type = std::mem::discriminant(a) == std::mem::discriminant(b);
        if is && !same_type {
            return Ok(op == "isnot");
        }
        for (what, code, bad) in [("List", "E691", "E692: Invalid operation for List"), ("Dictionary", "E735", "E736: Invalid operation for Dictionary")] {
            let kind = |v: &Value| matches!((what, v), ("List", Value::List(_)) | ("Dictionary", Value::Dict(_)));
            if !kind(a) && !kind(b) {
                continue;
            }
            if is {
                return Ok(a.same_container(b) != neg);
            }
            if !same_type {
                return Err(format!("{code}: Can only compare {what} with {what}").into());
            }
            if !matches!(op, "==" | "!=") {
                return Err(bad.into());
            }
            return Ok(self.equal(a, b, ic, 0)? != neg);
        }
        let is_func = |v: &Value| matches!(v, Value::Func(_) | Value::Partial(_));
        if is_func(a) || is_func(b) {
            if !matches!(op, "==" | "!=" | "is" | "isnot") {
                return Err("E694: Invalid operation for Funcrefs".into());
            }
            let same = if is {
                match (a, b) {
                    (Value::Func(_), Value::Func(_)) => self.equal(a, b, ic, 0)?,
                    (Value::Partial(x), Value::Partial(y)) => super::value::Gc::ptr_eq(x, y),
                    _ => false,
                }
            } else {
                self.equal(a, b, ic, 0)?
            };
            return Ok(same != neg);
        }
        let matching = matches!(op, "=~" | "!~");
        if !matching && (matches!(a, Value::Float(_)) || matches!(b, Value::Float(_))) {
            let (x, y) = (self.tv_get_float(a), self.tv_get_float(b));
            return Ok(match op {
                "==" | "is" => x == y,
                "!=" | "isnot" => x != y,
                ">" => x > y,
                ">=" => x >= y,
                "<" => x < y,
                _ => x <= y,
            });
        }
        if !matching && (matches!(a, Value::Int(_)) || matches!(b, Value::Int(_))) {
            let (x, y) = (self.to_int(a)?, self.to_int(b)?);
            return Ok(match op {
                "==" | "is" => x == y,
                "!=" | "isnot" => x != y,
                ">" => x > y,
                ">=" => x >= y,
                "<" => x < y,
                _ => x <= y,
            });
        }
        let (x, y) = (a.text(), b.text());
        if matching {
            return Ok(self.regex_find(&x, &y, ic)?.is_some() != neg);
        }
        let ord = if ic { x.to_lowercase().cmp(&y.to_lowercase()) } else { x.cmp(&y) };
        Ok(match op {
            "==" | "is" => ord == Ordering::Equal,
            "!=" | "isnot" => ord != Ordering::Equal,
            ">" => ord == Ordering::Greater,
            ">=" => ord != Ordering::Less,
            "<" => ord == Ordering::Less,
            _ => ord != Ordering::Greater,
        })
    }

    /// `tv_equal`: lists and dictionaries are compared down to a limit that falls each time it is reached, so
    /// one that holds itself is taken as equal (`depth` is `recursive_cnt`).
    /// `func_equal`: the same function, arguments and Dictionary.
    fn func_equal(&mut self, a: &Value, b: &Value, ic: bool, depth: usize) -> R<bool> {
        let parts = |v: &Value| match v {
            Value::Func(n) => (n.clone(), None, Vec::new()),
            Value::Partial(p) => (p.name.clone(), p.dict.clone(), p.args.clone()),
            _ => (Rc::from(""), None, Vec::new()),
        };
        let ((n1, d1, a1), (n2, d2, a2)) = (parts(a), parts(b));
        if n1 != n2 {
            return Ok(false);
        }
        // An empty Dictionary and none are different.
        match (&d1, &d2) {
            (None, None) => {}
            (Some(x), Some(y)) => {
                if !self.equal(&Value::Dict(x.clone()), &Value::Dict(y.clone()), ic, depth + 1)? {
                    return Ok(false);
                }
            }
            _ => return Ok(false),
        }
        if a1.len() != a2.len() {
            return Ok(false);
        }
        for (p, q) in a1.iter().zip(&a2) {
            if !self.equal(p, q, ic, depth + 1)? {
                return Ok(false);
            }
        }
        Ok(true)
    }

    pub(super) fn equal(&mut self, a: &Value, b: &Value, ic: bool, depth: usize) -> R<bool> {
        if depth == 0 {
            self.scripts.equal_limit = 1000;
        }
        if depth >= self.scripts.equal_limit {
            self.scripts.equal_limit -= 1;
            return Ok(true);
        }
        match (a, b) {
            (Value::List(x), Value::List(y)) => {
                if a.same_container(b) {
                    return Ok(true);
                }
                let (x, y) = (x.borrow().clone(), y.borrow().clone());
                if x.len() != y.len() {
                    return Ok(false);
                }
                for (p, q) in x.iter().zip(&y) {
                    if !self.equal(p, q, ic, depth + 1)? {
                        return Ok(false);
                    }
                }
                Ok(true)
            }
            (Value::Dict(x), Value::Dict(y)) => {
                if a.same_container(b) {
                    return Ok(true);
                }
                let (x, y) = (x.borrow().clone(), y.borrow().clone());
                if x.len() != y.len() {
                    return Ok(false);
                }
                for (k, p) in &x {
                    match y.get(k) {
                        Some(q) if self.equal(p, q, ic, depth + 1)? => {}
                        _ => return Ok(false),
                    }
                }
                Ok(true)
            }
            (Value::Int(x), Value::Int(y)) => Ok(x == y),
            (Value::Float(x), Value::Float(y)) => Ok(x == y),
            (Value::Str(x), Value::Str(y)) => Ok(if ic { x.to_lowercase() == y.to_lowercase() } else { x == y }),
            (Value::Bool(x), Value::Bool(y)) => Ok(x == y),
            (Value::None, Value::None) => Ok(true),
            (Value::Func(_) | Value::Partial(_), Value::Func(_) | Value::Partial(_)) => self.func_equal(a, b, ic, depth),
            _ => Ok(false),
        }
    }
}
