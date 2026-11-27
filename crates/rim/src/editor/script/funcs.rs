//! The builtin functions: ports of `eval/funcs.c`, `eval/list.c`, `eval/typval.c` and `strings.c`, one `fn` per
//! function. A C builtin that fails gives `emsg()` and leaves its return value as it was (a Number 0 unless the
//! function set another one first), then evaluation goes on: so a function here gives its message with
//! `Editor::error` and returns that value, it does not fail the expression. The arity is `eval.lua`'s.

use std::{cmp::Ordering, collections::HashMap, rc::Rc, sync::LazyLock};

use dumpster::unsync::Gc;
use piece_tree::{Regex, Text};

use super::{
    Res, Value,
    expr::{self, skipwhite},
    value::{DictItem, DictMap, Enc, Item},
};
use crate::editor::{Editor, graphemes};

type F = fn(&mut Editor, &[Value]) -> Value;

struct Func {
    name: &'static str,
    min: usize,
    max: usize,
    run: F,
}

const fn func(name: &'static str, min: usize, max: usize, run: F) -> Func {
    Func { name, min, max, run }
}

const FUNCS: &[Func] = &[
    func("abs", 1, 1, f_abs),
    func("add", 2, 2, f_add),
    func("atan", 1, 1, |e, a| float_op(e, a, f64::atan)),
    func("atan2", 2, 2, f_atan2),
    func("ceil", 1, 1, |e, a| float_op(e, a, f64::ceil)),
    func("char2nr", 1, 2, f_char2nr),
    func("col", 1, 2, f_col),
    func("copy", 1, 1, |_, a| var_item_copy(&a[0], false, &mut Memo::new(false), 0).unwrap_or_else(|| null_of(&a[0]))),
    func("cos", 1, 1, |e, a| float_op(e, a, f64::cos)),
    func("count", 2, 4, f_count),
    func("deepcopy", 1, 2, f_deepcopy),
    func("empty", 1, 1, f_empty),
    func("escape", 2, 2, f_escape),
    func("eval", 1, 1, f_eval),
    func("execute", 1, 2, f_execute),
    func("exists", 1, 1, f_exists),
    func("exp", 1, 1, |e, a| float_op(e, a, f64::exp)),
    func("extend", 2, 3, f_extend),
    func("flatten", 1, 2, f_flatten),
    func("filter", 2, 2, |e, a| filter_map(e, a, FilterMap::Filter)),
    func("float2nr", 1, 1, f_float2nr),
    func("foreach", 2, 2, |e, a| filter_map(e, a, FilterMap::Foreach)),
    func("floor", 1, 1, |e, a| float_op(e, a, f64::floor)),
    func("call", 2, 3, |e, a| e.f_call_func(a)),
    func("function", 1, 3, |e, a| e.common_function(a, false)),
    func("funcref", 1, 3, |e, a| e.common_function(a, true)),
    func("garbagecollect", 0, 1, f_garbagecollect),
    func("get", 2, 3, f_get),
    func("getline", 1, 2, f_getline),
    func("getreg", 0, 3, f_getreg),
    func("has", 1, 1, f_has),
    func("has_key", 2, 2, f_has_key),
    func("index", 2, 4, f_index),
    func("insert", 2, 3, f_insert),
    func("items", 1, 1, |e, a| f_dict2list(e, a, Dict2List::Items)),
    func("join", 1, 2, f_join),
    func("keys", 1, 1, |e, a| f_dict2list(e, a, Dict2List::Keys)),
    func("len", 1, 1, f_len),
    func("line", 1, 2, f_line),
    func("log", 1, 1, |e, a| float_op(e, a, f64::ln)),
    func("log10", 1, 1, |e, a| float_op(e, a, f64::log10)),
    func("matchstr", 2, 4, f_matchstr),
    func("map", 2, 2, |e, a| filter_map(e, a, FilterMap::Map)),
    func("mapnew", 2, 2, |e, a| filter_map(e, a, FilterMap::Mapnew)),
    func("max", 1, 1, |e, a| max_min(e, &a[0], true)),
    func("min", 1, 1, |e, a| max_min(e, &a[0], false)),
    func("nr2char", 1, 2, f_nr2char),
    func("pow", 2, 2, f_pow),
    func("printf", 1, 20, |e, a| Value::Str(e.f_printf_impl(&a[0], &a[1..]).into())),
    func("range", 1, 3, f_range),
    func("remove", 2, 3, f_remove),
    func("repeat", 2, 2, f_repeat),
    func("reverse", 1, 1, f_reverse),
    func("round", 1, 1, |e, a| float_op(e, a, f64::round)),
    func("sin", 1, 1, |e, a| float_op(e, a, f64::sin)),
    func("sort", 1, 3, |e, a| do_sort_uniq(e, a, true)),
    func("split", 1, 3, f_split),
    func("sqrt", 1, 1, |e, a| float_op(e, a, f64::sqrt)),
    func("str2float", 1, 1, f_str2float),
    func("str2nr", 1, 3, f_str2nr),
    func("strcharlen", 1, 1, |e, a| strchar_common(e, &a[0], true)),
    func("strchars", 1, 2, f_strchars),
    func("stridx", 2, 3, f_stridx),
    func("string", 1, 1, f_string),
    func("strlen", 1, 1, |e, a| Value::Int(e.tv_str(&a[0]).len() as i64)),
    func("strpart", 2, 4, f_strpart),
    func("strridx", 2, 3, f_strridx),
    func("substitute", 4, 4, f_substitute),
    func("tan", 1, 1, |e, a| float_op(e, a, f64::tan)),
    func("tolower", 1, 1, |e, a| Value::Str(strcase_save(&e.tv_str(&a[0]), false).into())),
    func("toupper", 1, 1, |e, a| Value::Str(strcase_save(&e.tv_str(&a[0]), true).into())),
    func("tr", 3, 3, f_tr),
    func("trim", 1, 3, f_trim),
    func("type", 1, 1, f_type),
    func("uniq", 1, 3, |e, a| do_sort_uniq(e, a, false)),
    func("values", 1, 1, |e, a| f_dict2list(e, a, Dict2List::Values)),
];

/// `FUNCS` by name.
static BY_NAME: LazyLock<HashMap<&'static str, &'static Func>> = LazyLock::new(|| FUNCS.iter().map(|f| (f.name, f)).collect());

fn find(name: &str) -> Option<&'static Func> {
    BY_NAME.get(name).copied()
}

/// `check_internal_func`: the builtin `name` takes `n` arguments, else the message; `E117` for no such function.
pub(super) fn check_args(name: &str, n: usize) -> Res<()> {
    let f = find(name).ok_or_else(|| format!("E117: Unknown function: {name}"))?;
    if n < f.min {
        return Err(format!("E119: Not enough arguments for function: {name}"));
    }
    if n > f.max {
        return Err(format!("E118: Too many arguments for function: {name}"));
    }
    Ok(())
}

/// The least and most arguments a builtin takes.
pub(super) fn arity(name: &str) -> Option<(usize, usize)> {
    find(name).map(|f| (f.min, f.max))
}

/// Whether builtin function `name` exists (`exists('*name')`).
pub(in crate::editor) fn known(name: &str) -> bool {
    find(name).is_some()
}

impl Editor {
    /// `call_func` of a builtin: the arity is checked, then the function runs.
    pub(in crate::editor) fn call(&mut self, name: &str, args: Vec<Value>) -> Res<Value> {
        self.call_named(name, args, None)
    }

    /// `call_func` of a name: a user function, else a builtin (which has no `self`).
    pub(in crate::editor) fn call_named(&mut self, name: &str, args: Vec<Value>, selfdict: Option<super::value::Dict>) -> Res<Value> {
        // A name that is not a builtin's is a user function.
        if let Some(r) = self.call_user(name, args.clone(), selfdict) {
            return r;
        }
        let f = find(name).ok_or_else(|| format!("E117: Unknown function: {name}"))?;
        if args.len() < f.min {
            return Err(format!("E119: Not enough arguments for function: {name}"));
        }
        if args.len() > f.max {
            return Err(format!("E118: Too many arguments for function: {name}"));
        }
        Ok((f.run)(self, &args))
    }

    // ---- `tv_get_*`: the conversions with the messages of typval.c -----------------------------

    /// `tv_get_number_chk`: None after the error is given.
    pub(super) fn nr_chk(&mut self, v: &Value) -> Option<i64> {
        match v {
            Value::Int(n) => Some(*n),
            Value::Str(s) => Some(super::str_to_int(s)),
            Value::Bool(b) => Some(i64::from(*b)),
            Value::None => Some(0),
            Value::Float(_) => self.error_none("E805: Using a Float as a Number"),
            Value::Func(_) | Value::Partial(_) => self.error_none("E703: Using a Funcref as a Number"),
            Value::List(_) => self.error_none("E745: Using a List as a Number"),
            Value::Dict(_) => self.error_none("E728: Using a Dictionary as a Number"),
        }
    }

    /// `tv_get_number`: 0 after an error (only `tv_get_number_chk` without an error flag gives -1).
    pub(super) fn nr(&mut self, v: &Value) -> i64 {
        self.nr_chk(v).unwrap_or(0)
    }

    /// `tv_get_string_chk`.
    pub(super) fn str_chk(&mut self, v: &Value) -> Option<String> {
        match v {
            Value::Func(_) | Value::Partial(_) => self.error_none("E729: Using a Funcref as a String"),
            Value::List(_) => self.error_none("E730: Using a List as a String"),
            Value::Dict(_) => self.error_none("E731: Using a Dictionary as a String"),
            v => Some(v.text()),
        }
    }

    /// `tv_get_string`: empty after an error.
    pub(super) fn tv_str(&mut self, v: &Value) -> String {
        self.str_chk(v).unwrap_or_default()
    }

    /// `tv_get_float_chk`.
    fn flt_chk(&mut self, v: &Value) -> Option<f64> {
        match v {
            Value::Float(f) => Some(*f),
            Value::Int(n) => Some(*n as f64),
            _ => self.error_none("E808: Number or Float required"),
        }
    }

    fn error_none<T>(&mut self, msg: &str) -> Option<T> {
        self.error(msg);
        None
    }

    /// `tv_check_for_*_arg`: the message names the argument (1-based).
    pub(super) fn check_arg(&mut self, ok: bool, what: &str, idx: usize) -> bool {
        if !ok {
            self.error(format!("{what} required for argument {}", idx + 1));
        }
        ok
    }

    pub(super) fn tv_equal(&mut self, a: &Value, b: &Value, ic: bool) -> bool {
        self.equal(a, b, ic, 0).unwrap_or(false)
    }
}

fn int(n: i64) -> Value {
    Value::Int(n)
}

/// The value a failed copy leaves: a null List or Dictionary prints as an empty one.
fn null_of(v: &Value) -> Value {
    match v {
        Value::List(_) => Value::list(Vec::new()),
        Value::Dict(_) => Value::dict(DictMap::new()),
        v => v.clone(),
    }
}

/// `tv_list_uidx` and `tv_list_find`: the index of item `n` (negative counts from the end).
fn list_find(len: usize, n: i64) -> Option<usize> {
    let n = if n < 0 { n + len as i64 } else { n };
    usize::try_from(n).ok().filter(|&k| k < len)
}

// ---- copies --------------------------------------------------------------------------------------

/// What `var_item_copy` remembers: with a copy ID a container met again is the copy made earlier.
struct Memo {
    done: HashMap<usize, Value>,
    use_id: bool,
}

impl Memo {
    fn new(use_id: bool) -> Memo {
        Memo { done: HashMap::new(), use_id }
    }
}

const DICT_MAXNEST: usize = 100;

/// `var_item_copy`: None is FAIL (nested too deep; the caller gives the error).
fn var_item_copy(v: &Value, deep: bool, memo: &mut Memo, depth: usize) -> Option<Value> {
    if depth >= DICT_MAXNEST {
        return None;
    }
    Some(match v {
        Value::List(l) => {
            let key = Gc::as_ptr(l) as usize;
            if let Some(done) = memo.done.get(&key).filter(|_| memo.use_id) {
                return Some(done.clone());
            }
            let copy = Value::list(Vec::new());
            memo.done.insert(key, copy.clone());
            let items = l.borrow().to_vec();
            let mut out = Vec::with_capacity(items.len());
            for x in &items {
                out.push(if deep { var_item_copy(x, deep, memo, depth + 1)? } else { x.clone() });
            }
            if let Value::List(c) = &copy {
                c.borrow_mut().items = out.into_iter().map(Item::new).collect();
            }
            copy
        }
        Value::Dict(d) => {
            let key = Gc::as_ptr(d) as usize;
            if let Some(done) = memo.done.get(&key).filter(|_| memo.use_id) {
                return Some(done.clone());
            }
            let copy = Value::dict(DictMap::new());
            memo.done.insert(key, copy.clone());
            let items = d.borrow().to_map();
            let mut out = DictMap::new();
            for (k, x) in &items {
                out.insert(k.clone(), if deep { var_item_copy(x, deep, memo, depth + 1)? } else { x.clone() });
            }
            if let Value::Dict(c) = &copy {
                c.borrow_mut().map = out.into_iter().map(|(k, v)| (k, DictItem::new(v))).collect();
            }
            copy
        }
        v => v.clone(),
    })
}

fn f_deepcopy(e: &mut Editor, a: &[Value]) -> Value {
    if let Some(b) = a.get(1) {
        let ok = matches!(b, Value::Bool(_) | Value::Int(0 | 1));
        if !e.check_arg(ok, "E1212: Bool", 1) {
            return int(0);
        }
    }
    let noref = a.get(1).is_some_and(|b| e.nr(b) != 0);
    match var_item_copy(&a[0], true, &mut Memo::new(!noref), 0) {
        Some(v) => v,
        None => {
            e.error("E698: Variable nested too deep for making a copy");
            null_of(&a[0])
        }
    }
}

// ---- numbers -------------------------------------------------------------------------------------

fn f_abs(e: &mut Editor, a: &[Value]) -> Value {
    if let Value::Float(f) = &a[0] {
        return Value::Float(f.abs());
    }
    match e.nr_chk(&a[0]) {
        None => int(-1),
        Some(n) if n > 0 => int(n),
        Some(n) => int(n.wrapping_neg()),
    }
}

/// `float_op_wrapper`: a Float result, 0.0 after an error.
fn float_op(e: &mut Editor, a: &[Value], f: fn(f64) -> f64) -> Value {
    Value::Float(e.flt_chk(&a[0]).map_or(0.0, f))
}

fn f_atan2(e: &mut Editor, a: &[Value]) -> Value {
    let r = e.flt_chk(&a[0]).and_then(|x| e.flt_chk(&a[1]).map(|y| x.atan2(y)));
    Value::Float(r.unwrap_or(0.0))
}

fn f_pow(e: &mut Editor, a: &[Value]) -> Value {
    let r = e.flt_chk(&a[0]).and_then(|x| e.flt_chk(&a[1]).map(|y| x.powf(y)));
    Value::Float(r.unwrap_or(0.0))
}

fn f_float2nr(e: &mut Editor, a: &[Value]) -> Value {
    let Some(f) = e.flt_chk(&a[0]) else { return int(0) };
    let max = i64::MAX as f64;
    int(if f <= -max + f64::EPSILON {
        -i64::MAX
    } else if f >= max - f64::EPSILON {
        i64::MAX
    } else {
        f as i64
    })
}

fn f_str2float(e: &mut Editor, a: &[Value]) -> Value {
    let s = e.tv_str(&a[0]);
    let mut p = skipwhite(&s, 0);
    let isneg = s.as_bytes().get(p) == Some(&b'-');
    if matches!(s.as_bytes().get(p), Some(b'+' | b'-')) {
        p = skipwhite(&s, p + 1);
    }
    let (f, _) = expr::string2float(&s[p..]);
    Value::Float(if isneg { -f } else { f })
}

/// `vim_str2nr` with an explicit base (`str2nr()`): `0x`, `0b` and `0o` are skipped when they match the base, the
/// digits are read to the end of the valid ones, a quote between digits is skipped with `quote`.
fn str2nr_base(s: &str, base: u32, quote: bool) -> u64 {
    let b = s.as_bytes();
    let mut p = 0;
    let prefix: &[u8] = match base {
        2 => b"bB",
        8 => b"oO",
        16 => b"xX",
        _ => b"",
    };
    if base != 10 && b.get(p) == Some(&b'0') && b.get(p + 1).is_some_and(|c| prefix.contains(c)) && b.get(p + 2).is_some_and(|&c| (c as char).is_digit(base)) {
        p += 2;
    }
    let mut n: u64 = 0;
    while let Some(&c) = b.get(p) {
        if quote && c == b'\'' && p > 0 && b.get(p + 1).is_some_and(|&d| (d as char).is_digit(base)) {
            p += 1;
            continue;
        }
        let Some(d) = (c as char).to_digit(base) else { break };
        n = n.saturating_mul(u64::from(base)).saturating_add(u64::from(d));
        p += 1;
    }
    n.min(i64::MAX as u64)
}

fn f_str2nr(e: &mut Editor, a: &[Value]) -> Value {
    let (mut base, mut quote) = (10, false);
    if let Some(b) = a.get(1) {
        base = e.nr(b);
        if !matches!(base, 2 | 8 | 10 | 16) {
            e.error("E474: Invalid argument");
            return int(0);
        }
        if let Some(q) = a.get(2) {
            quote = e.nr(q) != 0;
        }
    }
    let s = e.tv_str(&a[0]);
    let mut p = skipwhite(&s, 0);
    let isneg = s.as_bytes().get(p) == Some(&b'-');
    if matches!(s.as_bytes().get(p), Some(b'+' | b'-')) {
        p = skipwhite(&s, p + 1);
    }
    let n = str2nr_base(&s[p..], base as u32, quote) as i64;
    int(if isneg { -n } else { n })
}

fn f_char2nr(e: &mut Editor, a: &[Value]) -> Value {
    if let Some(b) = a.get(1)
        && e.nr_chk(b).is_none() {
            return int(0);
        }
    int(e.tv_str(&a[0]).chars().next().map_or(0, |c| c as i64))
}

fn f_nr2char(e: &mut Editor, a: &[Value]) -> Value {
    if let Some(b) = a.get(1) {
        // "utf8" is ignored
        if e.nr_chk(b).is_none() {
            return int(0);
        }
    }
    let Some(num) = e.nr_chk(&a[0]) else { return int(0) };
    if num < 0 {
        e.error("E5070: Character number must not be less than zero");
        return int(0);
    }
    if num > i64::from(i32::MAX) {
        e.error(format!("E5071: Character number must not be greater than INT_MAX ({})", i32::MAX));
        return int(0);
    }
    // A NUL ends a C string: nr2char(0) is empty. A surrogate is no UTF-8 (U+FFFD).
    Value::Str(match num {
        0 => String::new().into(),
        n => char::from_u32(n as u32).unwrap_or('\u{fffd}').to_string().into(),
    })
}

fn f_range(e: &mut Editor, a: &[Value]) -> Value {
    let mut error = false;
    let mut get = |e: &mut Editor, v: &Value| match e.nr_chk(v) {
        Some(n) => n,
        None => {
            error = true;
            0
        }
    };
    let mut start = get(e, &a[0]);
    let mut stride = 1;
    let end;
    if a.len() < 2 {
        end = start - 1;
        start = 0;
    } else {
        end = get(e, &a[1]);
        if let Some(s) = a.get(2) {
            stride = get(e, s);
        }
    }
    if error {
        return int(0);
    }
    if stride == 0 {
        e.error("E726: Stride is zero");
        return int(0);
    }
    // C's arithmetic wraps here.
    if if stride > 0 { end.wrapping_add(1) < start } else { end.wrapping_sub(1) > start } {
        e.error("E727: Start past end");
        return int(0);
    }
    let mut out = Vec::new();
    let mut i = start;
    while if stride > 0 { i <= end } else { i >= end } {
        out.push(int(i));
        // C overflows (and loops on); the list ends at the largest or smallest Number.
        let Some(n) = i.checked_add(stride) else { break };
        i = n;
    }
    Value::list(out)
}

/// `max_min`.
fn max_min(e: &mut Editor, v: &Value, domax: bool) -> Value {
    let items: Vec<Value> = match v {
        Value::List(l) => l.borrow().to_vec(),
        Value::Dict(d) => d.borrow().values().cloned().collect(),
        _ => {
            e.error(format!("E712: Argument of {} must be a List or Dictionary", if domax { "max()" } else { "min()" }));
            return int(0);
        }
    };
    if items.is_empty() {
        return int(0);
    }
    let mut n = if domax { i64::MIN } else { i64::MAX };
    for x in &items {
        let Some(i) = e.nr_chk(x) else { return int(0) };
        if if domax { i > n } else { i < n } {
            n = i;
        }
    }
    int(n)
}

// ---- types and containers ------------------------------------------------------------------------

fn f_type(_e: &mut Editor, a: &[Value]) -> Value {
    int(a[0].type_nr())
}

fn f_empty(_e: &mut Editor, a: &[Value]) -> Value {
    int(i64::from(match &a[0] {
        Value::Str(s) => s.is_empty(),
        Value::Int(n) => *n == 0,
        Value::Float(f) => *f == 0.0,
        Value::List(l) => l.borrow().is_empty(),
        Value::Dict(d) => d.borrow().is_empty(),
        Value::Bool(b) => !*b,
        Value::None => true,
        Value::Func(_) | Value::Partial(_) => false,
    }))
}

fn f_len(e: &mut Editor, a: &[Value]) -> Value {
    match &a[0] {
        Value::Str(_) | Value::Int(_) => int(e.tv_str(&a[0]).len() as i64),
        Value::List(l) => int(l.borrow().len() as i64),
        Value::Dict(d) => int(d.borrow().len() as i64),
        _ => {
            e.error("E701: Invalid type for len()");
            int(0)
        }
    }
}

fn f_add(e: &mut Editor, a: &[Value]) -> Value {
    if let Value::List(l) = &a[0] {
        l.borrow_mut().push(a[1].clone());
        return a[0].clone();
    }
    e.error("E897: List or Blob required");
    int(1)
}

#[derive(Clone, Copy)]
enum Dict2List {
    Keys,
    Values,
    Items,
}

fn f_dict2list(e: &mut Editor, a: &[Value], what: Dict2List) -> Value {
    let Value::Dict(d) = &a[0] else {
        if matches!(what, Dict2List::Items) {
            return items_of(e, &a[0]);
        }
        e.check_arg(false, "E1206: Dictionary", 0);
        return Value::list(Vec::new());
    };
    let d = d.borrow();
    Value::list(match what {
        Dict2List::Keys => d.keys().map(|k| Value::Str(k.clone())).collect(),
        Dict2List::Values => d.values().cloned().collect(),
        Dict2List::Items => d.iter().map(|(k, v)| Value::list(vec![Value::Str(k.clone()), v.clone()])).collect(),
    })
}

/// `items()` of a String or a List (a Dictionary is `f_dict2list`).
fn items_of(e: &mut Editor, v: &Value) -> Value {
    match v {
        Value::Str(s) => Value::list(graphemes::iter(s).enumerate().map(|(i, c)| Value::list(vec![int(i as i64), Value::Str(c.to_string().into())])).collect()),
        Value::List(l) => Value::list(l.borrow().iter().enumerate().map(|(i, x)| Value::list(vec![int(i as i64), x.clone()])).collect()),
        _ => {
            e.error("E1225: List, Dictionary, Blob or String required for argument 1");
            int(0)
        }
    }
}

fn f_has_key(e: &mut Editor, a: &[Value]) -> Value {
    let Value::Dict(d) = &a[0] else {
        e.check_arg(false, "E1206: Dictionary", 0);
        return int(0);
    };
    let key = e.tv_str(&a[1]);
    int(i64::from(d.borrow().contains_key(&key)))
}

fn f_get(e: &mut Editor, a: &[Value]) -> Value {
    let mut tv: Option<Value> = None;
    match &a[0] {
        Value::List(l) => {
            if let Some(i) = e.nr_chk(&a[1]) {
                tv = list_find(l.borrow().len(), i).map(|k| l.borrow()[k].clone());
            }
        }
        Value::Dict(d) => {
            let key = e.tv_str(&a[1]);
            tv = d.borrow().get(&key).cloned();
        }
        Value::Func(_) | Value::Partial(_) => {
            let what = e.tv_str(&a[1]);
            let (name, args, dict) = match &a[0] {
                Value::Partial(p) => (p.name.clone(), p.args.clone(), p.dict.clone()),
                Value::Func(n) => (n.clone(), Vec::new(), None),
                _ => unreachable!("a function"),
            };
            match what.as_str() {
                "func" => tv = Some(match &a[0] {
                    Value::Partial(p) if p.func_id.is_some() => Value::Partial(p.clone()),
                    _ => Value::Func(name),
                }),
                "name" => tv = Some(Value::Str(name)),
                "dict" => tv = dict.map(Value::Dict),
                "args" => tv = Some(Value::list(args)),
                "arity" => {
                    let (required, optional, varargs) = e.func_arity(&name).unwrap_or((0, 0, false));
                    let given = args.len();
                    let (required, optional) = if given >= required + optional {
                        (0, 0)
                    } else if given > required {
                        (0, optional - (given - required))
                    } else {
                        (required - given, optional)
                    };
                    let mut d = DictMap::new();
                    d.insert("required".into(), int(required as i64));
                    d.insert("optional".into(), int(optional as i64));
                    d.insert("varargs".into(), Value::Bool(varargs));
                    tv = Some(Value::dict(d));
                }
                _ => e.error(format!("E475: Invalid argument: {what}")),
            }
        }
        _ => e.error("E896: Argument of get() must be a List, Dictionary or Blob"),
    }
    tv.or_else(|| a.get(2).cloned()).unwrap_or(int(0))
}

fn f_index(e: &mut Editor, a: &[Value]) -> Value {
    let Value::List(l) = &a[0] else {
        e.error("E897: List or Blob required");
        return int(-1);
    };
    let items = l.borrow().clone();
    let mut start = Some(0usize);
    let mut ic = false;
    if let Some(s) = a.get(2) {
        start = e.nr_chk(s).and_then(|n| list_find(items.len(), n));
        if let Some(i) = a.get(3) {
            match e.nr_chk(i) {
                Some(n) => ic = n != 0,
                None => start = None,
            }
        }
    }
    let Some(start) = start else { return int(-1) };
    for (i, x) in items.iter().enumerate().skip(start) {
        if e.tv_equal(x, &a[1], ic) {
            return int(i as i64);
        }
    }
    int(-1)
}

fn f_insert(e: &mut Editor, a: &[Value]) -> Value {
    let Value::List(l) = &a[0] else {
        e.error("E899: Argument of insert() must be a List or Blob");
        return int(0);
    };
    let mut before = 0;
    if let Some(b) = a.get(2) {
        match e.nr_chk(b) {
            Some(n) => before = n,
            None => return int(0),
        }
    }
    let len = l.borrow().len();
    let at = if before == len as i64 {
        len
    } else {
        match list_find(len, before) {
            Some(k) => k,
            None => {
                e.error(format!("E684: List index out of range: {before}"));
                return int(0);
            }
        }
    };
    l.borrow_mut().insert(at, a[1].clone());
    e.list_changed(l, at, 1, true);
    a[0].clone()
}

fn f_remove(e: &mut Editor, a: &[Value]) -> Value {
    match &a[0] {
        Value::Dict(d) => {
            if a.len() > 2 {
                e.error("E118: Too many arguments for function: remove()");
                return int(0);
            }
            let Some(key) = e.str_chk(&a[1]) else { return int(0) };
            let removed = d.borrow_mut().remove(&key);
            match removed {
                Some(v) => v,
                None => {
                    e.error(format!("E716: Key not present in Dictionary: \"{key}\""));
                    int(0)
                }
            }
        }
        Value::List(l) => {
            let Some(idx) = e.nr_chk(&a[1]) else { return int(0) };
            let len = l.borrow().len();
            let Some(item) = list_find(len, idx) else {
                e.error(format!("E684: List index out of range: {idx}"));
                return int(0);
            };
            let Some(end) = a.get(2) else {
                let v = l.borrow_mut().remove(item);
                e.list_changed(l, item, 1, false);
                return v;
            };
            let Some(end) = e.nr_chk(end) else { return int(0) };
            let Some(item2) = list_find(len, end) else {
                e.error(format!("E684: List index out of range: {end}"));
                return int(0);
            };
            if item2 < item {
                e.error("E16: Invalid range");
                return int(0);
            }
            let removed: Vec<Value> = l.borrow_mut().drain(item..=item2);
            e.list_changed(l, item, removed.len(), false);
            Value::list(removed)
        }
        _ => {
            e.error("E896: Argument of remove() must be a List, Dictionary or Blob");
            int(0)
        }
    }
}

fn f_extend(e: &mut Editor, a: &[Value]) -> Value {
    match (&a[0], &a[1]) {
        (Value::List(l1), Value::List(l2)) => {
            let len = l1.borrow().len();
            let mut at = len;
            if let Some(b) = a.get(2) {
                let Some(n) = e.nr_chk(b) else { return int(0) };
                at = if n == len as i64 {
                    len
                } else {
                    match list_find(len, n) {
                        Some(k) => k,
                        None => {
                            e.error(format!("E684: List index out of range: {n}"));
                            return int(0);
                        }
                    }
                };
            }
            let add = l2.borrow().to_vec();
            let n = add.len();
            l1.borrow_mut().splice(at..at, add);
            e.list_changed(l1, at, n, true);
            a[0].clone()
        }
        (Value::Dict(d1), Value::Dict(d2)) => {
            let mut action = "force".to_string();
            if let Some(act) = a.get(2) {
                let Some(s) = e.str_chk(act) else { return int(0) };
                if !matches!(s.as_str(), "keep" | "force" | "error") {
                    e.error(format!("E475: Invalid argument: {s}"));
                    return int(0);
                }
                action = s;
            }
            let add: Vec<(Rc<str>, Value)> = d2.borrow().iter().map(|(k, v)| (k.clone(), v.clone())).collect();
            for (k, v) in add {
                let exists = d1.borrow().contains_key(&k);
                if !exists || action == "force" {
                    d1.borrow_mut().insert(k, v);
                } else if action == "error" {
                    e.error(format!("E737: Key already exists: {k}"));
                    break;
                }
            }
            a[0].clone()
        }
        _ => {
            e.error("E712: Argument of extend() must be a List or Dictionary");
            int(0)
        }
    }
}

fn f_flatten(e: &mut Editor, a: &[Value]) -> Value {
    let Value::List(l) = &a[0] else {
        e.error("E686: Argument of flatten() must be a List");
        return int(0);
    };
    let mut maxdepth = 999_999;
    if let Some(m) = a.get(1) {
        let Some(n) = e.nr_chk(m) else { return int(0) };
        if n < 0 {
            e.error("E900: maxdepth must be non-negative number");
            return int(0);
        }
        maxdepth = n;
    }
    let len = l.borrow().len();
    flatten(e, l, 0, len, maxdepth);
    a[0].clone()
}

/// `tv_list_flatten`: from item `first`, at most `maxitems` items, `maxdepth` levels. A List that holds itself goes
/// on until the depth is used up.
fn flatten(e: &mut Editor, l: &super::value::List, first: usize, maxitems: usize, maxdepth: i64) {
    if maxdepth == 0 {
        return;
    }
    let (mut at, mut done) = (first, 0);
    while at < l.borrow().len() && done < maxitems {
        let item = l.borrow()[at].clone();
        let mut next = at + 1;
        if let Value::List(inner) = &item {
            // The item leaves the list first, then what it held goes in its place: a List that holds
            // itself finds itself without that item.
            l.borrow_mut().remove(at);
            e.list_changed(l, at, 1, false);
            let add = inner.borrow().to_vec();
            let n = add.len();
            l.borrow_mut().splice(at..at, add);
            if n > 0 {
                e.list_changed(l, at, n, true);
            }
            if maxdepth > 0 {
                // The items taken in are the next ones to look at, for one level less.
                let before = l.borrow().len();
                flatten(e, l, at, n, maxdepth - 1);
                next = at + n + (l.borrow().len() - before);
            } else {
                next = at + n;
            }
        }
        done += 1;
        at = next;
    }
}

fn f_count(e: &mut Editor, a: &[Value]) -> Value {
    let mut ic = false;
    if let Some(i) = a.get(2) {
        match e.nr_chk(i) {
            Some(n) => ic = n != 0,
            None => return int(0),
        }
    }
    match &a[0] {
        Value::Str(h) => {
            let needle = e.str_chk(&a[1]).unwrap_or_default();
            int(count_string(h, &needle, ic))
        }
        Value::List(l) => {
            let mut idx = 0;
            if let Some(i) = a.get(3) {
                match e.nr_chk(i) {
                    Some(n) => idx = n,
                    None => return int(0),
                }
            }
            let items = l.borrow().to_vec();
            if items.is_empty() {
                return int(0);
            }
            let Some(from) = list_find(items.len(), idx) else {
                e.error(format!("E684: List index out of range: {idx}"));
                return int(0);
            };
            let mut n = 0;
            for x in &items[from..] {
                if e.tv_equal(x, &a[1], ic) {
                    n += 1;
                }
            }
            int(n)
        }
        Value::Dict(d) => {
            if a.len() > 3 {
                e.error("E474: Invalid argument");
                return int(0);
            }
            let vals: Vec<Value> = d.borrow().values().cloned().collect();
            let mut n = 0;
            for x in &vals {
                if e.tv_equal(x, &a[1], ic) {
                    n += 1;
                }
            }
            int(n)
        }
        _ => {
            e.error("E706: Argument of count() must be a List, String or Dictionary");
            int(0)
        }
    }
}

fn count_string(h: &str, needle: &str, ic: bool) -> i64 {
    if needle.is_empty() {
        return 0;
    }
    if !ic {
        return h.matches(needle).count() as i64;
    }
    let (h, n): (Vec<char>, Vec<char>) = (h.chars().flat_map(char::to_lowercase).collect(), needle.chars().flat_map(char::to_lowercase).collect());
    let (mut i, mut c) = (0, 0);
    while i < h.len() {
        if h[i..].starts_with(&n) {
            c += 1;
            i += n.len();
        } else {
            i += 1;
        }
    }
    c
}

fn f_repeat(e: &mut Editor, a: &[Value]) -> Value {
    let n = e.nr(&a[1]);
    if let Value::List(l) = &a[0] {
        let items = l.borrow().clone();
        let mut out = Vec::new();
        for _ in 0..n.max(0) {
            out.extend(items.iter().cloned());
        }
        return Value::list(out);
    }
    // `n <= 0` returns before the argument is read as a String.
    if n <= 0 {
        return Value::Str(String::new().into());
    }
    let p = e.tv_str(&a[0]);
    if p.is_empty() {
        return Value::Str(String::new().into());
    }
    // An overflow of the length gives an empty string.
    match p.len().checked_mul(n as usize) {
        Some(_) => Value::Str(p.repeat(n as usize).into()),
        None => Value::Str(String::new().into()),
    }
}

fn f_reverse(e: &mut Editor, a: &[Value]) -> Value {
    match &a[0] {
        Value::Str(s) => Value::Str(graphemes::iter(s).collect::<Vec<_>>().into_iter().rev().collect::<String>().into()),
        Value::List(l) => {
            l.borrow_mut().reverse();
            // The links of the items are swapped: the next one of a `:for` stays the same item.
            let len = l.borrow().len();
            let perm: Vec<usize> = (0..len).rev().collect();
            e.list_permuted(l, &perm);
            a[0].clone()
        }
        _ => {
            e.error("E1252: String, List or Blob required for argument 1");
            int(0)
        }
    }
}

fn f_join(e: &mut Editor, a: &[Value]) -> Value {
    let Value::List(l) = &a[0] else {
        e.error("E714: List required");
        return int(0);
    };
    let sep = match a.get(1) {
        None => Some(" ".to_string()),
        Some(s) => e.str_chk(s),
    };
    let Some(sep) = sep else { return Value::Str(String::new().into()) };
    let items = l.borrow().clone();
    // A List that holds itself is written as `[...@0]`, as `:echo` does.
    Value::Str(items.iter().map(Value::echo).collect::<Vec<_>>().join(&sep).into())
}

fn f_string(e: &mut Editor, a: &[Value]) -> Value {
    let (s, recursed) = a[0].encode(Enc::String);
    if recursed {
        e.error("E724: unable to correctly dump variable with self-referencing container");
    }
    Value::Str(s.into())
}

// ---- sort() and uniq() ---------------------------------------------------------------------------

#[derive(Default)]
struct SortInfo {
    ic: bool,
    numeric: bool,
    numbers: bool,
    float: bool,
    func: Option<String>,
    /// A Funcref or partial to compare with (`item_compare_partial`, or a Funcref's name).
    callback: Option<Value>,
    /// `self` for the function (`item_compare_selfdict`).
    selfdict: Option<super::value::Dict>,
    failed: bool,
}

fn parse_sort_uniq_args(e: &mut Editor, a: &[Value], info: &mut SortInfo) -> bool {
    let Some(arg) = a.get(1) else { return true };
    if matches!(arg, Value::Func(_) | Value::Partial(_)) {
        info.callback = Some(arg.clone());
        return parse_sort_dict(e, a, info);
    }
    let Some(nr) = e.nr_chk(arg) else { return false };
    let mut func: Option<String> = None;
    if nr == 1 {
        info.ic = true;
    } else if !matches!(arg, Value::Int(_)) {
        func = Some(e.tv_str(arg));
    } else if nr != 0 {
        e.error("E474: Invalid argument");
        return false;
    }
    if let Some(f) = &func {
        match f.as_str() {
            "" => func = None,
            "n" => (func, info.numeric) = (None, true),
            "N" => (func, info.numbers) = (None, true),
            "f" => (func, info.float) = (None, true),
            "i" => (func, info.ic) = (None, true),
            // 'l' is strcoll(): the C locale's, a byte comparison.
            "l" => func = None,
            _ => {}
        }
    }
    info.func = func;
    parse_sort_dict(e, a, info)
}

/// The Dictionary that is `self` for the compare function.
fn parse_sort_dict(e: &mut Editor, a: &[Value], info: &mut SortInfo) -> bool {
    if let Some(d) = a.get(2) {
        if !e.check_arg(matches!(d, Value::Dict(_)), "E1206: Dictionary", 2) {
            return false;
        }
        if let Value::Dict(dd) = d {
            info.selfdict = Some(dd.clone());
        }
    }
    true
}

/// `strtod` of the start of `s`.
fn strtod(s: &str) -> f64 {
    let t = s.trim_start();
    for i in (0..=t.len()).rev() {
        if t.is_char_boundary(i)
            && let Ok(f) = t[..i].parse::<f64>() {
                return f;
            }
    }
    0.0
}

fn item_compare(e: &mut Editor, info: &mut SortInfo, a: &Value, b: &Value) -> Ordering {
    if info.callback.is_some() || info.func.is_some() {
        // `item_compare2`: a function called on both; its result is the order.
        if info.failed {
            return Ordering::Equal;
        }
        let result = match (&info.callback, &info.func) {
            (Some(cb), _) => e.call_value(&cb.clone(), vec![a.clone(), b.clone()], info.selfdict.clone()),
            (None, Some(f)) => e.call_named(&f.clone(), vec![a.clone(), b.clone()], info.selfdict.clone()),
            (None, None) => unreachable!("a compare function"),
        };
        return match result {
            Ok(r) => match e.nr_chk(&r) {
                Some(n) => n.cmp(&0),
                None => {
                    info.failed = true;
                    // `ITEM_COMPARE_FAIL` is 999.
                    Ordering::Greater
                }
            },
            Err(m) => {
                e.error(m);
                info.failed = true;
                Ordering::Greater
            }
        };
    }
    if info.numbers {
        return e.nr(a).cmp(&e.nr(b));
    }
    if info.float {
        let (x, y) = (e.tv_get_float(a), e.tv_get_float(b));
        return x.partial_cmp(&y).unwrap_or(Ordering::Equal);
    }
    // A string is compared as it is, anything else as `string()` (which gives E724 for a container that holds
    // itself); against a non-string (or in numeric mode) a string is a quote.
    let mut recursed = false;
    let mut one = |v: &Value, other: &Value, numeric: bool| match v {
        Value::Str(s) => {
            if !matches!(other, Value::Str(_)) || numeric { "'".to_string() } else { s.to_string() }
        }
        v => {
            let (t, r) = v.encode(Enc::String);
            recursed |= r;
            t
        }
    };
    let (p1, p2) = (one(a, b, info.numeric), one(b, a, info.numeric));
    if recursed {
        e.error("E724: unable to correctly dump variable with self-referencing container");
    }
    if info.numeric {
        return strtod(&p1).partial_cmp(&strtod(&p2)).unwrap_or(Ordering::Equal);
    }
    if info.ic {
        let low = |s: &str| s.bytes().map(|c| c.to_ascii_lowercase()).collect::<Vec<u8>>();
        return low(&p1).cmp(&low(&p2));
    }
    p1.as_bytes().cmp(p2.as_bytes())
}

/// The `qsort` of macOS's C library (FreeBSD's, with the insertion-sort shortcut that gives up after `1 + n / 4`
/// swaps), which Neovim's `sort()` calls. Ported so that a comparison that fails reports as often as Neovim's does;
/// checked against the comparison sequences Neovim made for 230 lists of 2 to 200 items. `a` holds item indexes and
/// `cmp` gets two of them.
// shortcut: this is macOS's algorithm; glibc (Linux) sorts with a merge sort and compares in another order
fn bsd_qsort(a: &mut [usize], cmp: &mut dyn FnMut(usize, usize) -> Ordering) {
    fn insertion(a: &mut [usize], lo: usize, n: usize, cmp: &mut dyn FnMut(usize, usize) -> Ordering, limit: Option<usize>) -> bool {
        let mut swaps = 0;
        for pm in lo + 1..lo + n {
            let mut pl = pm;
            while pl > lo && cmp(a[pl - 1], a[pl]) == Ordering::Greater {
                a.swap(pl, pl - 1);
                pl -= 1;
                swaps += 1;
                if limit.is_some_and(|r| swaps > r) {
                    return false;
                }
            }
        }
        true
    }
    fn med3(a: &[usize], x: usize, y: usize, z: usize, cmp: &mut dyn FnMut(usize, usize) -> Ordering) -> usize {
        if cmp(a[x], a[y]) == Ordering::Less {
            if cmp(a[y], a[z]) == Ordering::Less { y } else if cmp(a[x], a[z]) == Ordering::Less { z } else { x }
        } else if cmp(a[y], a[z]) == Ordering::Greater {
            y
        } else if cmp(a[x], a[z]) == Ordering::Less {
            x
        } else {
            z
        }
    }
    fn vecswap(a: &mut [usize], i: usize, j: usize, n: usize) {
        for k in 0..n {
            a.swap(i + k, j + k);
        }
    }
    fn sort(a: &mut [usize], mut lo: usize, mut n: usize, cmp: &mut dyn FnMut(usize, usize) -> Ordering) {
        loop {
            if n <= 7 {
                insertion(a, lo, n, cmp, None);
                return;
            }
            let mut pm = lo + n / 2;
            if n > 7 {
                let (mut pl, mut pn) = (lo, lo + n - 1);
                if n > 40 {
                    let d = n / 8;
                    pl = med3(a, pl, pl + d, pl + 2 * d, cmp);
                    pm = med3(a, pm - d, pm, pm + d, cmp);
                    pn = med3(a, pn - 2 * d, pn - d, pn, cmp);
                }
                pm = med3(a, pl, pm, pn, cmp);
            }
            a.swap(lo, pm);
            let (mut pa, mut pb, mut pc, mut pd) = (lo + 1, lo + 1, lo + n - 1, lo + n - 1);
            let mut swapped = false;
            loop {
                while pb <= pc {
                    let r = cmp(a[pb], a[lo]);
                    if r == Ordering::Greater {
                        break;
                    }
                    if r == Ordering::Equal {
                        swapped = true;
                        a.swap(pa, pb);
                        pa += 1;
                    }
                    pb += 1;
                }
                while pb <= pc {
                    let r = cmp(a[pc], a[lo]);
                    if r == Ordering::Less {
                        break;
                    }
                    if r == Ordering::Equal {
                        swapped = true;
                        a.swap(pc, pd);
                        pd -= 1;
                    }
                    pc -= 1;
                }
                if pb > pc {
                    break;
                }
                a.swap(pb, pc);
                swapped = true;
                pb += 1;
                pc -= 1;
            }
            let pn = lo + n;
            let d1 = (pa - lo).min(pb - pa);
            vecswap(a, lo, pb - d1, d1);
            let d1 = (pd - pc).min(pn - pd - 1);
            vecswap(a, pb, pn - d1, d1);
            let (d1, d2) = (pb - pa, pd - pc);
            // Nothing moved: the list may be sorted already, try an insertion sort that gives up after a few swaps.
            if !swapped && insertion(a, lo, n, cmp, Some(1 + n / 4)) {
                return;
            }
            if d1 <= d2 {
                if d1 > 1 {
                    sort(a, lo, d1, cmp);
                }
                if d2 > 1 {
                    lo = pn - d2;
                    n = d2;
                    continue;
                }
            } else {
                if d2 > 1 {
                    sort(a, pn - d2, d2, cmp);
                }
                if d1 > 1 {
                    n = d1;
                    continue;
                }
            }
            return;
        }
    }
    let n = a.len();
    sort(a, 0, n, cmp);
}

fn do_sort_uniq(e: &mut Editor, a: &[Value], sort: bool) -> Value {
    let name = if sort { "sort()" } else { "uniq()" };
    let Value::List(l) = &a[0] else {
        e.error(format!("E686: Argument of {name} must be a List"));
        return int(0);
    };
    if l.borrow().len() <= 1 {
        return a[0].clone();
    }
    let mut info = SortInfo::default();
    if !parse_sort_uniq_args(e, a, &mut info) {
        return a[0].clone();
    }
    // The items move with their locks, as Neovim relinks the listitems.
    let all = l.borrow().items.clone();
    let items: Vec<Value> = all.iter().map(|i| i.tv.clone()).collect();
    if sort {
        let mut idx: Vec<usize> = (0..items.len()).collect();
        // Neovim sorts with the C library's `qsort`; the order of its comparisons decides how many messages a failing
        // comparison gives, so the one of macOS is ported (`bsd_qsort`).
        bsd_qsort(&mut idx, &mut |x, y| {
            let r = item_compare(e, &mut info, &items[x], &items[y]);
            // `item_compare` makes the sort stable: equal items are put in the order they had (not after a failure,
            // `item_compare2` returns 0 at once then).
            if r == Ordering::Equal && !info.failed { x.cmp(&y) } else { r }
        });
        if info.failed {
            e.error("E702: Sort compare function failed");
        } else {
            l.borrow_mut().items = idx.iter().map(|&i| all[i].clone()).collect();
            // The items are linked again in the new order: a `:for` that has one next goes on from there.
            let mut perm = vec![0; idx.len()];
            for (new, &old) in idx.iter().enumerate() {
                perm[old] = new;
            }
            e.list_permuted(l, &perm);
        }
    } else {
        // `do_uniq`: an item equal to the one before it goes, one by one; a failure ends it with the rest left as it was.
        let mut out: Vec<Item> = vec![all[0].clone()];
        let mut removed = Vec::new();
        let mut done = items.len();
        for (i, x) in items.iter().enumerate().skip(1) {
            let prev = out.last().expect("one item").tv.clone();
            // A failed call counts as different (`ITEM_COMPARE_FAIL`): the item stays.
            let same = item_compare(e, &mut info, &prev, x) == Ordering::Equal && !info.failed;
            if !same {
                out.push(all[i].clone());
            } else {
                removed.push(i);
            }
            if info.failed {
                e.error("E882: Uniq compare function failed");
                done = i + 1;
                break;
            }
        }
        out.extend(all[done..].iter().cloned());
        l.borrow_mut().items = out;
        for (n, r) in removed.into_iter().enumerate() {
            e.list_changed(l, r - n, 1, false);
        }
    }
    a[0].clone()
}

// ---- strings -------------------------------------------------------------------------------------

fn f_escape(e: &mut Editor, a: &[Value]) -> Value {
    let (s, chars) = (e.tv_str(&a[0]), e.tv_str(&a[1]));
    let mut out = String::with_capacity(s.len());
    for c in s.chars() {
        // Only a single-byte char is escaped (`vim_strsave_escaped` copies a multibyte one as it is).
        if c.len_utf8() == 1 && chars.contains(c) {
            out.push('\\');
        }
        out.push(c);
    }
    Value::Str(out.into())
}

fn strcase_save(s: &str, upper: bool) -> String {
    s.chars()
        .map(|c| {
            // One char for one char, as `mb_toupper()` does: a mapping to several is left alone.
            let mut m: Vec<char> = if upper { c.to_uppercase().collect() } else { c.to_lowercase().collect() };
            // Vim's own tables differ from Unicode's for two chars: `İ` is `i`, and `ß` has an upper case, `ẞ`.
            match (c, upper) {
                ('\u{130}', false) => 'i',
                ('\u{df}', true) => '\u{1e9e}',
                _ if m.len() == 1 => m.remove(0),
                _ => c,
            }
        })
        .collect()
}

fn strchar_common(e: &mut Editor, v: &Value, skipcc: bool) -> Value {
    let s = e.tv_str(v);
    int(if skipcc { graphemes::iter(&s).count() } else { s.chars().count() } as i64)
}

fn f_strchars(e: &mut Editor, a: &[Value]) -> Value {
    let mut skipcc = false;
    if let Some(b) = a.get(1) {
        let Some(n) = e.nr_chk(b) else { return int(0) };
        if !(0..=1).contains(&n) {
            // `semsg("%d", varnumber_T)` prints the low 32 bits.
            e.error(format!("E1023: Using a Number as a Bool: {}", n as i32));
            return int(0);
        }
        skipcc = n != 0;
    }
    strchar_common(e, &a[0], skipcc)
}

/// `strstr` on bytes: a needle that is valid UTF-8 cannot start inside a char.
fn find_bytes(h: &[u8], n: &[u8], from: usize) -> Option<usize> {
    if from > h.len() {
        return None;
    }
    if n.is_empty() {
        return Some(from);
    }
    h[from..].windows(n.len()).position(|w| w == n).map(|i| i + from)
}

fn f_stridx(e: &mut Editor, a: &[Value]) -> Value {
    let needle = e.str_chk(&a[1]);
    let hay = e.str_chk(&a[0]);
    let (Some(needle), Some(hay)) = (needle, hay) else { return int(-1) };
    let mut from = 0usize;
    if let Some(s) = a.get(2) {
        let Some(start) = e.nr_chk(s) else { return int(-1) };
        if start >= hay.len() as i64 {
            return int(-1);
        }
        if start >= 0 {
            from = start as usize;
        }
    }
    find_bytes(hay.as_bytes(), needle.as_bytes(), from).map_or(int(-1), |i| int(i as i64))
}

fn f_strridx(e: &mut Editor, a: &[Value]) -> Value {
    let needle = e.str_chk(&a[1]);
    let hay = e.str_chk(&a[0]);
    let (Some(needle), Some(hay)) = (needle, hay) else { return int(-1) };
    let end_idx = match a.get(2) {
        Some(v) => {
            // `tv_get_number_chk(.., NULL)`: -1 after an error, which can never match.
            let n = e.nr_chk(v).unwrap_or(-1);
            if n < 0 {
                return int(-1);
            }
            n as usize
        }
        None => hay.len(),
    };
    let (h, n) = (hay.as_bytes(), needle.as_bytes());
    if n.is_empty() {
        // An empty string matches past the end.
        return int(end_idx as i64);
    }
    let mut last = None;
    let mut rest = 0;
    while rest < h.len() {
        let Some(at) = find_bytes(h, n, rest) else { break };
        if at > end_idx {
            break;
        }
        last = Some(at);
        rest = at + 1;
    }
    last.map_or(int(-1), |i| int(i as i64))
}

fn f_strpart(e: &mut Editor, a: &[Value]) -> Value {
    let p = e.tv_str(&a[0]);
    let slen = p.len() as i64;
    let first = e.nr_chk(&a[1]);
    let mut n = first.unwrap_or(0);
    let mut len = if first.is_none() {
        0
    } else if let Some(l) = a.get(2) {
        e.nr(l)
    } else {
        // C's `varnumber_T` arithmetic wraps here (`n` can be the smallest number).
        slen.wrapping_sub(n)
    };
    // Only the overlap of the part asked for and the string is returned.
    if n < 0 {
        len = len.wrapping_add(n);
        n = 0;
    } else if n > slen {
        n = slen;
    }
    if len < 0 {
        len = 0;
    } else if n.wrapping_add(len) > slen {
        len = slen - n;
    }
    if a.len() > 3 {
        // The length is in characters.
        let mut off = n as usize;
        while off < p.len() && len > 0 {
            off += p.get(off..).and_then(|s| s.chars().next()).map_or(1, char::len_utf8);
            len -= 1;
        }
        len = off as i64 - n;
    }
    let (from, to) = (n as usize, (n.saturating_add(len) as usize).min(p.len()));
    Value::Str(String::from_utf8_lossy(&p.as_bytes()[from..to]).into_owned().into())
}

fn f_tr(e: &mut Editor, a: &[Value]) -> Value {
    let in_str = e.tv_str(&a[0]);
    let (from, to) = (e.str_chk(&a[1]), e.str_chk(&a[2]));
    let (Some(from), Some(to)) = (from, to) else { return Value::Str(String::new().into()) };
    let (fc, tc): (Vec<char>, Vec<char>) = (from.chars().collect(), to.chars().collect());
    // `from` and `to` must hold the same number of chars; that is checked once, at the first char that is not in
    // `from`, and a char found in a part of `from` that `to` lacks is an error at once.
    let mut out = String::new();
    let mut first = true;
    for c in in_str.chars() {
        let mut cp = c;
        if let Some(idx) = fc.iter().position(|&x| x == c) {
            match tc.get(idx) {
                Some(&t) => cp = t,
                None => {
                    e.error(format!("E475: Invalid argument: {from}"));
                    return Value::Str(String::new().into());
                }
            }
        } else if first {
            first = false;
            if fc.len() != tc.len() {
                e.error(format!("E475: Invalid argument: {from}"));
                return Value::Str(String::new().into());
            }
        }
        out.push(cp);
    }
    Value::Str(out.into())
}

fn f_trim(e: &mut Editor, a: &[Value]) -> Value {
    let Some(head) = e.str_chk(&a[0]) else { return Value::Str(String::new().into()) };
    let mut mask: Option<String> = None;
    let mut dir = 0;
    if let Some(m) = a.get(1) {
        if !e.check_arg(matches!(m, Value::Str(_)), "E1174: String", 1) {
            return Value::Str(String::new().into());
        }
        let mk = e.tv_str(m);
        mask = (!mk.is_empty()).then_some(mk);
        if let Some(d) = a.get(2) {
            let Some(n) = e.nr_chk(d) else { return Value::Str(String::new().into()) };
            if !(0..=2).contains(&n) {
                let s = e.tv_str(d);
                e.error(format!("E475: Invalid argument: {s}"));
                return Value::Str(String::new().into());
            }
            dir = n;
        }
    }
    let strip = |c: char| match &mask {
        None => c <= ' ' || c == '\u{a0}',
        Some(m) => m.contains(c),
    };
    let mut s = head.as_str();
    if dir == 0 || dir == 1 {
        s = s.trim_start_matches(strip);
    }
    if dir == 0 || dir == 2 {
        s = s.trim_end_matches(strip);
    }
    Value::Str(s.to_string().into())
}

fn f_split(e: &mut Editor, a: &[Value]) -> Value {
    let mut keepempty = false;
    let mut typeerr = false;
    let text = e.tv_str(&a[0]);
    let mut pat: Option<String> = None;
    if let Some(p) = a.get(1) {
        pat = e.str_chk(p);
        if pat.is_none() {
            typeerr = true;
        }
        if let Some(k) = a.get(2) {
            match e.nr_chk(k) {
                Some(n) => keepempty = n != 0,
                None => typeerr = true,
            }
        }
    }
    let pat = match pat {
        Some(p) if !p.is_empty() => p,
        // The default pattern is every run of chars up to a blank.
        _ => "[\\x01- ]+".to_string(),
    };
    let mut out: Vec<Value> = Vec::new();
    if typeerr {
        return Value::list(out);
    }
    let re = match Regex::new(&pat) {
        Ok(r) => r,
        Err(_) => {
            e.error(format!("E383: Invalid search string: {pat}"));
            return Value::list(out);
        }
    };
    let t = Text::from(text.as_str());
    let (mut pos, mut col) = (0usize, 0usize);
    while pos < text.len() || keepempty {
        let m = if pos >= text.len() { None } else { t.find_from(&re, pos + col) };
        let end = m.as_ref().map_or(text.len(), |m| m.start);
        if keepempty || end > pos || (!out.is_empty() && pos < text.len() && m.as_ref().is_some_and(|m| end < m.end)) {
            out.push(Value::Str(text[pos..end].to_string().into()));
        }
        let Some(m) = m else { break };
        col = if m.end > pos {
            0
        } else {
            // Don't get stuck at the same match.
            text[m.end..].chars().next().map_or(0, char::len_utf8)
        };
        pos = m.end;
    }
    Value::list(out)
}

fn f_matchstr(e: &mut Editor, a: &[Value]) -> Value {
    let (list, text): (Option<Vec<Value>>, String) = match &a[0] {
        Value::List(l) => (Some(l.borrow().to_vec()), String::new()),
        v => (None, e.tv_str(v)),
    };
    let Some(pat) = e.str_chk(&a[1]) else { return Value::Str(String::new().into()) };
    let ic = e.buf.opts.ignorecase;
    let re = match Regex::new(&if ic { format!("(?i){pat}") } else { pat.clone() }) {
        Ok(r) => r,
        Err(_) => {
            e.error(format!("E383: Invalid search string: {pat}"));
            return Value::Str(String::new().into());
        }
    };
    let mut nth = 1i64;
    let mut startcol = 0usize;
    let (mut s, mut len) = (text.clone(), text.len() as i64);
    let mut li = 0usize;
    if let Some(sa) = a.get(2) {
        let Some(mut start) = e.nr_chk(sa) else { return Value::Str(String::new().into()) };
        if let Some(l) = &list {
            match list_find(l.len(), start) {
                Some(k) => li = k,
                None => return Value::Str(String::new().into()),
            }
        } else {
            if start < 0 {
                start = 0;
            }
            if start > len {
                return Value::Str(String::new().into());
            }
            // With a count the matches before `start` are ignored, else the start of the string is skipped.
            if a.len() > 3 {
                startcol = start as usize;
            } else {
                s = text.get(start as usize..).unwrap_or_default().to_string();
                len -= start;
            }
        }
        if let Some(c) = a.get(3) {
            match e.nr_chk(c) {
                Some(n) => nth = n,
                None => return Value::Str(String::new().into()),
            }
        }
    }
    loop {
        let cur = if let Some(l) = &list {
            let Some(item) = l.get(li) else { return Value::Str(String::new().into()) };
            s = item.echo();
            len = s.len() as i64;
            item.clone()
        } else {
            Value::None
        };
        let t = Text::from(s.as_str());
        let m = t.find_from(&re, startcol);
        if let Some(m) = &m {
            nth -= 1;
            if nth <= 0 {
                return match &list {
                    Some(_) => cur,
                    None => Value::Str(s[m.clone()].to_string().into()),
                };
            }
        }
        if list.is_none() && m.is_none() {
            return Value::Str(String::new().into());
        }
        if list.is_some() {
            li += 1;
        } else if let Some(m) = &m {
            startcol = m.start + s[m.start..].chars().next().map_or(1, char::len_utf8);
            if startcol as i64 > len || startcol <= m.start {
                return Value::Str(String::new().into());
            }
        }
    }
}

fn f_substitute(e: &mut Editor, a: &[Value]) -> Value {
    let text = e.str_chk(&a[0]);
    let pat = e.str_chk(&a[1]);
    let flags = e.str_chk(&a[3]);
    let rep = e.str_chk(&a[2]);
    let (Some(text), Some(pat), Some(rep), Some(flags)) = (text, pat, rep, flags) else { return Value::Str(String::new().into()) };
    let re = match Regex::new(&pat) {
        Ok(r) => r,
        Err(_) => {
            e.error(format!("E383: Invalid search string: {pat}"));
            return Value::Str(String::new().into());
        }
    };
    let t = Text::from(text.as_str());
    Value::Str(if flags.contains('g') {
        let (new, _) = t.replace_all(&re, &rep);
        new.slice(0..new.len()).into_owned().into()
    } else {
        match t.find_from(&re, 0).and_then(|m| t.replacement_at(&re, m.start, &rep)) {
            Some((m, new)) => format!("{}{new}{}", &text[..m.start], &text[m.end..]).into(),
            None => text.into(),
        }
    })
}

// ---- filter(), map(), mapnew(), foreach() ----------------------------------------------------------

#[derive(Clone, Copy, PartialEq)]
enum FilterMap {
    Map,
    Mapnew,
    Filter,
    Foreach,
}

/// `eval_expr_typval` for an expression in a String: its value, None after an error (given).
fn eval_expr_typval(e: &mut Editor, expr: &Value) -> Option<Value> {
    let s = e.str_chk(expr)?;
    let start = skipwhite(&s, 0);
    let src = &s[start..];
    let mut p = 0;
    // `eval1_emsg`: the invalid expression is reported unless a more specific error was given.
    let (called, did) = (e.scripts.called_emsg, e.scripts.emsg_count);
    match e.eval1(src, &mut p, true) {
        Ok(v) => {
            if skipwhite(src, p) < src.len() {
                e.error(format!("E15: Invalid expression: \"{}\"", &src[p..]));
                return None;
            }
            Some(v)
        }
        Err(f) => {
            if let expr::Fail::Msg(m) = f {
                e.error(m);
            }
            if e.scripts.called_emsg == called && e.scripts.emsg_count == did {
                e.error(format!("E15: Invalid expression: \"{src}\""));
            }
            None
        }
    }
}

/// `filter_map_one`: the new value for `item` (`v:val`, with `v:key` set by the caller), and for `filter()` whether it
/// goes. None stops the loop (an error was given).
fn filter_map_one(e: &mut Editor, item: &Value, expr: &Value, kind: FilterMap) -> Option<(Value, bool)> {
    e.vim_vars.borrow_mut().insert("val".into(), item.clone());
    let r = (|| {
        if kind == FilterMap::Foreach && matches!(expr, Value::Str(_)) {
            // `foreach()` takes a command, not only an expression.
            let cmd = e.tv_str(expr);
            e.scripts.did_emsg = false;
            e.do_cmdline(Some(cmd), false, false, false);
            return (!e.scripts.did_emsg).then(|| (Value::None, false));
        }
        let new = if matches!(expr, Value::Func(_) | Value::Partial(_)) {
            // `eval_expr_func`: the Funcref gets the key (or index) and the value.
            let key = e.vim_vars.borrow().get("key").cloned().unwrap_or(Value::Int(0));
            match e.call_value(expr, vec![key, item.clone()], None) {
                Ok(v) => v,
                Err(m) => {
                    e.error(m);
                    return None;
                }
            }
        } else {
            eval_expr_typval(e, expr)?
        };
        if kind == FilterMap::Filter {
            // filter(): when expr is zero the item goes.
            let n = e.nr_chk(&new)?;
            return Some((Value::None, n == 0));
        }
        Some((new, false))
    })();
    e.vim_vars.borrow_mut().remove("val");
    r
}

fn filter_map(e: &mut Editor, a: &[Value], kind: FilterMap) -> Value {
    let func_name = match kind {
        FilterMap::Map => "map()",
        FilterMap::Mapnew => "mapnew()",
        FilterMap::Filter => "filter()",
        FilterMap::Foreach => "foreach()",
    };
    // map(), filter() and foreach() return the first argument, also on failure.
    let ret = if kind != FilterMap::Mapnew && !matches!(a[0], Value::Str(_)) { a[0].clone() } else { int(0) };
    if !matches!(a[0], Value::List(_) | Value::Dict(_) | Value::Str(_)) {
        e.error(format!("E1250: Argument of {func_name} must be a List, String, Dictionary or Blob"));
        return ret;
    }
    let save_did_emsg = e.scripts.did_emsg;
    e.scripts.did_emsg = false;
    let save_val = e.vim_vars.borrow_mut().remove("val");
    let save_key = e.vim_vars.borrow_mut().remove("key");
    let expr = &a[1];
    let result = match &a[0] {
        Value::Dict(d) => {
            let items: Vec<(Rc<str>, Value)> = d.borrow().iter().map(|(k, v)| (k.clone(), v.clone())).collect();
            let mut out = DictMap::new();
            for (k, v) in items {
                e.vim_vars.borrow_mut().insert("key".into(), Value::Str(k.clone()));
                let r = filter_map_one(e, &v, expr, kind);
                e.vim_vars.borrow_mut().remove("key");
                let Some((new, rem)) = r else { break };
                if e.scripts.did_emsg {
                    break;
                }
                match kind {
                    FilterMap::Map => {
                        d.borrow_mut().insert(k, new);
                    }
                    FilterMap::Mapnew => {
                        out.insert(k, new);
                    }
                    FilterMap::Filter if rem => {
                        d.borrow_mut().remove(&k);
                    }
                    _ => {}
                }
            }
            if kind == FilterMap::Mapnew { Value::dict(out) } else { ret }
        }
        Value::List(l) => {
            let mut out = Vec::new();
            let mut idx = 0usize;
            let mut pos = 0usize;
            while pos < l.borrow().len() {
                let item = l.borrow()[pos].clone();
                e.vim_vars.borrow_mut().insert("key".into(), int(idx as i64));
                let r = filter_map_one(e, &item, expr, kind);
                e.vim_vars.borrow_mut().remove("key");
                let Some((new, rem)) = r else { break };
                if e.scripts.did_emsg {
                    break;
                }
                match kind {
                    FilterMap::Map => l.borrow_mut()[pos] = new,
                    FilterMap::Mapnew => out.push(new),
                    _ => {}
                }
                if kind == FilterMap::Filter && rem {
                    l.borrow_mut().remove(pos);
                } else {
                    pos += 1;
                }
                idx += 1;
            }
            if kind == FilterMap::Mapnew { Value::list(out) } else { ret }
        }
        _ => {
            let s = e.tv_str(&a[0]);
            let mut out = String::new();
            for (idx, g) in graphemes::iter(&s).enumerate() {
                e.vim_vars.borrow_mut().insert("key".into(), int(idx as i64));
                let r = filter_map_one(e, &Value::Str(g.to_string().into()), expr, kind);
                e.vim_vars.borrow_mut().remove("key");
                let Some((new, rem)) = r else { break };
                if e.scripts.did_emsg {
                    break;
                }
                match kind {
                    FilterMap::Map | FilterMap::Mapnew => match new {
                        Value::Str(n) => out.push_str(&n),
                        _ => {
                            e.error("E928: String required");
                            break;
                        }
                    },
                    _ if kind == FilterMap::Foreach || !rem => out.push_str(g),
                    _ => {}
                }
            }
            Value::Str(out.into())
        }
    };
    for (k, v) in [("val", save_val), ("key", save_key)] {
        match v {
            Some(v) => {
                e.vim_vars.borrow_mut().insert(k.into(), v);
            }
            None => {
                e.vim_vars.borrow_mut().remove(k);
            }
        }
    }
    e.scripts.did_emsg |= save_did_emsg;
    result
}

// ---- eval(), exists(), has() ---------------------------------------------------------------------

fn f_eval(e: &mut Editor, a: &[Value]) -> Value {
    let Some(s) = e.str_chk(&a[0]) else { return int(0) };
    let start = skipwhite(&s, 0);
    let src = &s[start..];
    let mut p = 0;
    match e.eval1(src, &mut p, true) {
        Ok(v) => {
            let rest = &src[skipwhite(src, p)..];
            if !rest.is_empty() {
                e.error(format!("E488: Trailing characters: {rest}"));
            }
            v
        }
        Err(f) => {
            if let expr::Fail::Msg(m) = f {
                e.error(m);
            }
            e.error(format!("E15: Invalid expression: \"{src}\""));
            int(0)
        }
    }
}

fn f_garbagecollect(_e: &mut Editor, _a: &[Value]) -> Value {
    dumpster::unsync::collect();
    int(0)
}

/// `execute_common`: runs a command (or the items of a List as lines) and returns what it showed. Without the second
/// argument, or with `silent...`, nothing is shown meanwhile; `silent!` also drops the errors.
fn f_execute(e: &mut Editor, a: &[Value]) -> Value {
    let save_msg_silent = e.scripts.msg_silent;
    let save_emsg_silent = e.scripts.emsg_silent;
    let save_emsg_noredir = e.scripts.emsg_noredir;
    let (save_col, save_silent_col) = (e.msgs.start_col, e.msgs.silent_col);
    let mut echo_output = false;
    if let Some(m) = a.get(1) {
        let Some(s) = e.str_chk(m) else { return int(0) };
        echo_output = s.is_empty();
        if s.starts_with("silent") {
            e.scripts.msg_silent += 1;
        }
        if s == "silent!" {
            e.scripts.emsg_silent = 1;
            e.scripts.emsg_noredir = true;
        }
    } else {
        e.scripts.msg_silent += 1;
    }
    let saved_cap = e.msgs.cap.replace(String::new());
    if !echo_output {
        // Prevents leading spaces.
        e.msgs.start_col = 0;
        e.msgs.silent_col = 0;
    }
    match &a[0] {
        Value::List(l) => {
            let next = std::rc::Rc::new(std::cell::Cell::new(if l.borrow().is_empty() { usize::MAX } else { 0 }));
            e.scripts.for_watch.push((dumpster::unsync::Gc::as_ptr(l) as usize, std::rc::Rc::downgrade(&next)));
            e.scripts.list_cookies.push((l.clone(), next));
            e.scripts.next_base = Some(super::docmd::ReaderBase::List(e.scripts.list_cookies.len() - 1));
            e.do_cmdline(None, false, true, true);
            e.scripts.list_cookies.pop();
        }
        v => {
            let s = e.tv_str(v);
            e.do_cmdline(Some(s), false, false, false);
        }
    }
    e.scripts.msg_silent = save_msg_silent;
    e.scripts.emsg_silent = save_emsg_silent;
    e.scripts.emsg_noredir = save_emsg_noredir;
    // Silently nothing was written, so the column is as it was; else the next message starts at column 0.
    (e.msgs.start_col, e.msgs.silent_col) = if echo_output { (0, 0) } else { (save_col, save_silent_col) };
    Value::Str(std::mem::replace(&mut e.msgs.cap, saved_cap).unwrap_or_default().into())
}

fn f_exists(e: &mut Editor, a: &[Value]) -> Value {
    let s = e.tv_str(&a[0]);
    int(e.exists(&s))
}

fn f_has(e: &mut Editor, a: &[Value]) -> Value {
    let name = e.tv_str(&a[0]).to_ascii_lowercase();
    // shortcut: only what rim has is true (Neovim's list holds folding, spell, quickfix...); `vim` and `nvim` are false and `rim` true by design
    let n = (name == "vim_starting" && !e.scripts.started)
        || matches!(name.as_str(), "rim" | "eval" | "float" | "num64" | "multi_byte" | "multi_byte_encoding" | "fname_case")
        || (cfg!(unix) && name == "unix")
        || (cfg!(target_os = "macos") && matches!(name.as_str(), "mac" | "macunix" | "osx" | "osxdarwin"))
        || (cfg!(target_os = "linux") && name == "linux");
    int(i64::from(n))
}

// ---- positions: getline(), line(), col(), getreg() -----------------------------------------------

/// `var2fpos`: the position a `col()`/`line()`/`getline()` argument names, as (line, byte column), both 0-based.
/// `dollar_lnum`: `"$"` is the last line (else the last column of the cursor line).
// shortcut: `w0` and `w$` are the top line and the last line of the window rows, not of a laid-out frame (wrapped lines); a mark has no column (rim marks lines only), so it is column 0
fn var2fpos(e: &mut Editor, v: &Value, dollar_lnum: bool, winid: Option<usize>) -> Option<(usize, usize)> {
    let (cur_line, cur_col, top, rows) = match winid {
        Some(id) if id != e.win.id => e.windows.iter().find(|w| w.id == id).map(|w| (w.line, w.col, w.top, w.rows))?,
        _ => (e.win.line, e.win.col, e.win.top, e.win.rows),
    };
    let count = e.line_count();
    let byte_col = |e: &Editor, line: usize, col: usize| -> usize { e.buf.doc.text().line(line).chars().take(col).map(char::len_utf8).sum() };
    if let Value::List(l) = v {
        let l = l.borrow().clone();
        let err = std::cell::Cell::new(false);
        let nr = |e: &mut Editor, i: usize| match l.get(i) {
            Some(x) => e.nr_chk(x).unwrap_or_else(|| {
                err.set(true);
                0
            }),
            None => {
                err.set(true);
                -1
            }
        };
        let lnum = nr(e, 0);
        if err.get() || lnum <= 0 || lnum > count as i64 {
            return None;
        }
        let mut col = nr(e, 1);
        if err.get() {
            return None;
        }
        let len = e.buf.doc.text().line(lnum as usize - 1).len() as i64;
        // "$" for the column: the last one.
        if matches!(l.get(1), Some(Value::Str(s)) if &**s == "$") {
            col = len + 1;
        }
        // A position up to the NUL after the line.
        if col == 0 || col > len + 1 {
            return None;
        }
        return Some((lnum as usize - 1, (col - 1) as usize));
    }
    let name = e.str_chk(v)?;
    let b = name.as_bytes();
    if b.first() == Some(&b'.') || (b.first() == Some(&b'v') && b.len() == 1) {
        // The start of the Visual area is the cursor when Visual mode is not active (or in another window).
        if b.first() == Some(&b'v') && matches!(e.mode, crate::editor::Mode::Visual(_)) && winid.is_none_or(|id| id == e.win.id) {
            let (l, c) = e.anchor;
            return Some((l, byte_col(e, l, c)));
        }
        return Some((cur_line, byte_col(e, cur_line, cur_col)));
    }
    if b.first() == Some(&b'\'') {
        let m = name.chars().nth(1)?;
        // The mark is a byte offset: its line and the byte column in it.
        return e.mark(m).map(|off| {
            let text = e.buf.doc.text();
            let l = text.offset_to_line(off);
            (l, off - text.line_to_offset(l))
        });
    }
    if b.first() == Some(&b'w') && dollar_lnum {
        match b.get(1) {
            Some(b'0') => return Some((top, 0)),
            Some(b'$') => return Some(((top + rows).saturating_sub(1).min(count.saturating_sub(1)), 0)),
            _ => {}
        }
    } else if b.first() == Some(&b'$') {
        return Some(if dollar_lnum { (count.saturating_sub(1), 0) } else { (cur_line, e.buf.doc.text().line(cur_line).len()) });
    }
    None
}

fn tv_get_lnum(e: &mut Editor, v: &Value) -> i64 {
    let before = e.scripts.emsg_count;
    // `(linenr_T)tv_get_number_chk(tv, NULL)`: 32 bits, -1 after an error.
    let n = i64::from(e.nr_chk(v).unwrap_or(-1) as i32);
    if n <= 0 && before == e.scripts.emsg_count && !matches!(v, Value::Int(_))
        && let Some((l, _)) = var2fpos(e, v, true, None) {
            return l as i64 + 1;
        }
    n
}

fn f_getline(e: &mut Editor, a: &[Value]) -> Value {
    let start = tv_get_lnum(e, &a[0]);
    let (end, retlist) = match a.get(1) {
        None => (start, false),
        Some(b) => (tv_get_lnum(e, b), true),
    };
    let count = e.line_count() as i64;
    let line = |e: &Editor, n: i64| e.buf.doc.text().line(n as usize - 1).into_owned();
    if start < 0 || end < start {
        return if retlist { Value::list(Vec::new()) } else { Value::Str(String::new().into()) };
    }
    if retlist {
        let (s, en) = (start.max(1), end.min(count));
        return Value::list((s..=en).map(|n| Value::Str(line(e, n).into())).collect());
    }
    Value::Str(if (1..=count).contains(&start) { line(e, start) .into()} else { String::new() .into()})
}

/// The window `id` names, as `win_id2wp`: None when there is none.
fn win_id(e: &Editor, id: i64) -> Option<usize> {
    let id = usize::try_from(id).ok()?;
    (id == e.win.id || e.windows.iter().any(|w| w.id == id)).then_some(id)
}

fn f_line(e: &mut Editor, a: &[Value]) -> Value {
    let winid = match a.get(1) {
        Some(w) => {
            let id = e.nr(w);
            match win_id(e, id) {
                Some(id) => Some(id),
                None => return int(0),
            }
        }
        None => None,
    };
    int(var2fpos(e, &a[0], true, winid).map_or(0, |(l, _)| l as i64 + 1))
}

fn f_col(e: &mut Editor, a: &[Value]) -> Value {
    if !e.check_arg(matches!(a[0], Value::Str(_) | Value::List(_)), "E1222: String or List", 0) {
        return int(0);
    }
    let mut winid = None;
    if let Some(w) = a.get(1) {
        if !e.check_arg(matches!(w, Value::Int(_)), "E1210: Number", 1) {
            return int(0);
        }
        let id = e.nr(w);
        match win_id(e, id) {
            Some(id) => winid = Some(id),
            None => return int(0),
        }
    }
    int(var2fpos(e, &a[0], false, winid).map_or(0, |(_, c)| c as i64 + 1))
}

fn f_getreg(e: &mut Editor, a: &[Value]) -> Value {
    let name = match a.first() {
        Some(v) => match e.str_chk(v) {
            Some(s) => s,
            None => return int(0),
        },
        None => String::new(),
    };
    let regname = name.chars().next().unwrap_or('"');
    let mut return_list = false;
    if a.len() > 1 {
        if e.nr_chk(&a[1]).is_none() {
            return int(0);
        }
        if let Some(l) = a.get(2) {
            let Some(n) = e.nr_chk(l) else { return int(0) };
            return_list = n != 0;
        }
    }
    let reg = e.reg(regname);
    if return_list {
        let Some(r) = reg else { return Value::list(Vec::new()) };
        let mut lines: Vec<&str> = r.text.split('\n').collect();
        if matches!(r.kind, crate::editor::registers::RegKind::Line) && lines.last() == Some(&"") {
            lines.pop();
        }
        return Value::list(lines.into_iter().map(|l| Value::Str(l.to_string().into())).collect());
    }
    Value::Str(reg.map_or_else(String::new, |r| r.text).into())
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn the_table_has_no_duplicate_and_every_arity_is_sane() {
        let mut seen = std::collections::HashSet::new();
        for f in FUNCS {
            assert!(seen.insert(f.name), "{} twice", f.name);
            assert!(f.min <= f.max, "{}", f.name);
        }
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn str2nr_reads_the_base_asked_for() {
        assert_eq!(str2nr_base("0x1F", 16, false), 31);
        assert_eq!(str2nr_base("0x1F", 10, false), 0);
        assert_eq!(str2nr_base("101", 2, false), 5);
        assert_eq!(str2nr_base("1'000", 10, true), 1000);
        assert_eq!(str2nr_base("77", 8, false), 63);
    }

    /// What Neovim cannot be asked in a golden case: it ends the oracle (`:x`), exits with an error status (a length
    /// that `xmemdupz` cannot allocate), or keeps the bytes of a cut char (strings are valid UTF-8 here).
    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn what_the_oracle_cannot_record() {
        let mut e = crate::editor::tests::ed("");
        let mut eval = |s: &str| e.eval_text(s).expect("evaluates");
        // The largest length is clipped to the string (Neovim exits with status 1 here).
        assert_eq!(eval("strpart('abc', 1, 9223372036854775807)"), "bc");
        assert_eq!(eval("strpart(1, 9223372036854775807, 9223372036854775807)"), "");
        // The smallest start wraps in C's arithmetic into the whole string (Neovim agrees).
        assert_eq!(eval("strpart('abc', -9223372036854775807-1)"), "abc");
        // A cut inside a char: Neovim keeps the byte (`<a9>`), rim has U+FFFD.
        assert_eq!(eval("strpart('é😀', 1)"), "\u{fffd}😀");
        // `foreach()` takes a command: `x` is `:x` (write and quit) in Neovim; here it is run as a command too.
        assert_eq!(eval("string(foreach([7], 'let g:seen = v:val'))"), "[7]");
        assert_eq!(eval("g:seen"), "7");
        // `sort()` calls Neovim's C library `qsort`; the golden corpus `sort` checks the messages one by one. Here: a Float is
        // 0 as a number, so both come first.
        e.command("let g:r = string(sort([3, 1.5, 2, 9, 4.5, 8, 7, 6, 5], 'N'))");
        assert_eq!(e.eval_text("g:r").expect("set"), "[1.5, 4.5, 2, 3, 5, 6, 7, 8, 9]");
    }
}
