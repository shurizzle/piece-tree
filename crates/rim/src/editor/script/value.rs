//! Vimscript values: the types, their text and `string()` form, number parsing and formatting.

use std::{cell::RefCell, collections::HashMap, rc::Rc};

pub(in crate::editor) use dumpster::unsync::Gc;
use dumpster::Trace;


/// Lists and Dictionaries are shared by reference, like vim's: `let b = a` makes two names of one
/// list. The cycle-collecting `Gc` frees the ones that point to themselves.
pub(in crate::editor) type List = Gc<RefCell<ListData>>;
pub(in crate::editor) type Dict = Gc<RefCell<DictData>>;
/// Values by key, as a Dictionary is built from and copied to.
pub(in crate::editor) type DictMap = HashMap<Rc<str>, Value>;

/// `VarLockStatus`: `:lockvar` sets `Locked`, `Fixed` is what a built-in variable or a `v:` Dictionary has.
#[derive(Clone, Copy, PartialEq, Eq, Debug, Default, Trace)]
pub(in crate::editor) enum Lock {
    #[default]
    Unlocked,
    Locked,
    Fixed,
}

/// `listitem_T`: the value and its own lock (`v_lock`).
#[derive(Clone, Trace)]
pub(in crate::editor) struct Item {
    pub tv: Value,
    pub lock: Lock,
}

impl Item {
    pub fn new(tv: Value) -> Item {
        Item { tv, lock: Lock::Unlocked }
    }
}

/// `list_T`: the lock of the List itself (`lv_lock`) and its items.
#[derive(Clone, Default, Trace)]
pub(in crate::editor) struct ListData {
    pub lock: Lock,
    pub items: Vec<Item>,
}

impl ListData {
    pub fn new(items: Vec<Value>) -> ListData {
        ListData { lock: Lock::Unlocked, items: items.into_iter().map(Item::new).collect() }
    }

    pub fn len(&self) -> usize {
        self.items.len()
    }

    pub fn is_empty(&self) -> bool {
        self.items.is_empty()
    }

    /// The values, without their locks.
    pub fn iter(&self) -> impl DoubleEndedIterator<Item = &Value> + ExactSizeIterator {
        self.items.iter().map(|i| &i.tv)
    }

    /// A copy of the values, unlocked (`tv_copy` resets `v_lock`).
    pub fn to_vec(&self) -> Vec<Value> {
        self.iter().cloned().collect()
    }

    pub fn push(&mut self, v: Value) {
        self.items.push(Item::new(v));
    }

    pub fn get(&self, i: usize) -> Option<&Value> {
        self.items.get(i).map(|i| &i.tv)
    }

    pub fn get_mut(&mut self, i: usize) -> Option<&mut Value> {
        self.items.get_mut(i).map(|i| &mut i.tv)
    }

    pub fn insert(&mut self, i: usize, v: Value) {
        self.items.insert(i, Item::new(v));
    }

    pub fn remove(&mut self, i: usize) -> Value {
        self.items.remove(i).tv
    }

    /// Removes the range and gives back its values.
    pub fn drain(&mut self, r: impl std::ops::RangeBounds<usize>) -> Vec<Value> {
        self.items.drain(r).map(|i| i.tv).collect()
    }

    /// Replaces the range by new unlocked items.
    pub fn splice(&mut self, r: impl std::ops::RangeBounds<usize>, with: impl IntoIterator<Item = Value>) {
        self.items.splice(r, with.into_iter().map(Item::new));
    }

    pub fn extend(&mut self, with: impl IntoIterator<Item = Value>) {
        self.items.extend(with.into_iter().map(Item::new));
    }

    /// `reverse()`: the items move with their locks.
    pub fn reverse(&mut self) {
        self.items.reverse();
    }
}

impl std::ops::Index<usize> for ListData {
    type Output = Value;
    fn index(&self, i: usize) -> &Value {
        &self.items[i].tv
    }
}

impl std::ops::IndexMut<usize> for ListData {
    fn index_mut(&mut self, i: usize) -> &mut Value {
        &mut self.items[i].tv
    }
}

impl<'a> IntoIterator for &'a ListData {
    type Item = &'a Value;
    type IntoIter = std::iter::Map<std::slice::Iter<'a, Item>, fn(&'a Item) -> &'a Value>;
    fn into_iter(self) -> Self::IntoIter {
        self.items.iter().map(|i| &i.tv)
    }
}

impl std::fmt::Debug for ListData {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_list().entries(self.iter()).finish()
    }
}

impl std::fmt::Debug for DictData {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_map().entries(self.iter()).finish()
    }
}

impl std::ops::Index<&str> for DictData {
    type Output = Value;
    fn index(&self, k: &str) -> &Value {
        &self.map[k].tv
    }
}

impl<'a> IntoIterator for &'a DictData {
    type Item = (&'a Rc<str>, &'a Value);
    type IntoIter = std::iter::Map<std::collections::hash_map::Iter<'a, Rc<str>, DictItem>, fn((&'a Rc<str>, &'a DictItem)) -> (&'a Rc<str>, &'a Value)>;
    fn into_iter(self) -> Self::IntoIter {
        self.map.iter().map(|(k, i)| (k, &i.tv))
    }
}

/// `dictitem_T`: the value, its own lock (`v_lock`) and `di_flags`.
#[derive(Clone, Trace)]
pub(in crate::editor) struct DictItem {
    pub tv: Value,
    pub lock: Lock,
    pub flags: u8,
}

impl DictItem {
    pub fn new(tv: Value) -> DictItem {
        DictItem { tv, lock: Lock::Unlocked, flags: 0 }
    }
}

/// `dict_T`: the lock of the Dictionary itself (`dv_lock`) and its items.
#[derive(Clone, Default, Trace)]
pub(in crate::editor) struct DictData {
    pub lock: Lock,
    pub map: HashMap<Rc<str>, DictItem>,
}

impl DictData {
    pub fn new(items: DictMap) -> DictData {
        DictData { lock: Lock::Unlocked, map: items.into_iter().map(|(k, v)| (k, DictItem::new(v))).collect() }
    }

    pub fn len(&self) -> usize {
        self.map.len()
    }

    pub fn is_empty(&self) -> bool {
        self.map.is_empty()
    }

    pub fn get(&self, k: &str) -> Option<&Value> {
        self.map.get(k).map(|i| &i.tv)
    }

    pub fn contains_key(&self, k: &str) -> bool {
        self.map.contains_key(k)
    }

    /// Sets the value of an item, keeping its lock and flags, or adds an unlocked one.
    pub fn insert(&mut self, k: Rc<str>, v: Value) -> Option<Value> {
        match self.map.get_mut(&k) {
            Some(i) => Some(std::mem::replace(&mut i.tv, v)),
            None => {
                self.map.insert(k, DictItem::new(v));
                None
            }
        }
    }

    pub fn remove(&mut self, k: &str) -> Option<Value> {
        self.map.remove(k).map(|i| i.tv)
    }

    pub fn keys(&self) -> impl Iterator<Item = &Rc<str>> {
        self.map.keys()
    }

    pub fn iter(&self) -> impl Iterator<Item = (&Rc<str>, &Value)> {
        self.map.iter().map(|(k, i)| (k, &i.tv))
    }

    pub fn values(&self) -> impl Iterator<Item = &Value> {
        self.map.values().map(|i| &i.tv)
    }

    /// `DI_FLAGS_RO | DI_FLAGS_FIX` item with the lock `lock`: what `a:` variables, `l:self` and `v:` ones are.
    pub fn insert_fixed(&mut self, k: Rc<str>, v: Value, lock: Lock) {
        self.map.insert(k, DictItem { tv: v, lock, flags: DI_RO | DI_FIX });
    }

    /// The values by key, unlocked.
    pub fn to_map(&self) -> DictMap {
        self.iter().map(|(k, v)| (k.clone(), v.clone())).collect()
    }
}

#[derive(Clone, Copy, PartialEq)]
pub(in crate::editor) enum Enc {
    String,
    Echo,
}

#[derive(Clone, Trace)]
pub(in crate::editor) enum Value {
    Int(i64),
    Float(f64),
    Str(Rc<str>),
    /// `v:true` and `v:false`.
    Bool(bool),
    /// `v:null` and `v:none`.
    None,
    List(List),
    Dict(Dict),
    /// A Funcref by name (`VAR_FUNC`): a builtin, a user function by its (translated) name, or a lambda.
    Func(Rc<str>),
    /// A function with arguments and/or a Dictionary bound, or a `funcref()` (`VAR_PARTIAL`).
    Partial(Gc<Partial>),
}

/// `partial_T`: a function with some arguments and a Dictionary (`self`) bound to it.
#[derive(Trace)]
pub(in crate::editor) struct Partial {
    /// The name of the function (`pt_name`); for a `funcref()` the name it had when it was made.
    pub name: Rc<str>,
    /// `funcref()`: the function itself, by its number in `State::func_ids`, so that a redefinition does not change it.
    pub func_id: Option<usize>,
    /// The arguments given first to every call (`pt_argv`).
    pub args: Vec<Value>,
    /// `self` (`pt_dict`).
    pub dict: Option<Dict>,
    /// The Dictionary was bound by `dict.func` and not by `function(.., dict)` (`pt_auto`).
    pub auto: bool,
}

impl std::fmt::Debug for Value {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(&self.literal())
    }
}

// ---- text of numbers --------------------------------------------------------------------------

/// `%g` of `vim_vsnprintf` (see `printf::format_float`), as `string()` and string concatenation use it.
pub(super) fn fmt_g(f: f64, prec: Option<usize>, upper: bool) -> String {
    super::printf::format_float(f, if upper { 'G' } else { 'g' }, prec, false, true).0
}

/// A float as `echo` and `string()` show it (`encode.c`): `%g`, and `str2float()` for inf and nan.
pub(super) fn fmt_float(f: f64) -> String {
    if f.is_nan() {
        "str2float('nan')".into()
    } else if f.is_infinite() {
        format!("{}str2float('inf')", if f < 0.0 { "-" } else { "" })
    } else {
        fmt_g(f, None, false)
    }
}

impl Value {
    pub fn list(items: Vec<Value>) -> Value {
        Value::List(Gc::new(RefCell::new(ListData::new(items))))
    }

    pub fn dict(items: DictMap) -> Value {
        Value::Dict(Gc::new(RefCell::new(DictData::new(items))))
    }

    /// `type()`.
    pub fn type_nr(&self) -> i64 {
        match self {
            Value::Int(_) => 0,
            Value::Str(_) => 1,
            Value::List(_) => 3,
            Value::Dict(_) => 4,
            Value::Func(_) | Value::Partial(_) => 2,
            Value::Float(_) => 5,
            Value::Bool(_) => 6,
            Value::None => 7,
        }
    }

    /// `string()`: a literal that reads back as the value (`encode_tv2string`).
    pub fn literal(&self) -> String {
        self.encode(Enc::String).0
    }

    /// `encode_tv2string` or `encode_tv2echo` of the value, and whether a container held itself
    /// (`string()` then gives E724).
    pub fn encode(&self, enc: Enc) -> (String, bool) {
        let (mut out, mut recursed) = (String::new(), false);
        self.encode_in(enc, &mut Vec::new(), &mut recursed, &mut out);
        (out, recursed)
    }

    /// `typval_encode.c.h`: `stack` holds the containers being written (`mpstack`), a container met again is
    /// written as its place in it: `{E724@0}` for `string()`, `[...@0]` and `{...@0}` for `:echo`.
    fn encode_in(&self, enc: Enc, stack: &mut Vec<Value>, recursed: &mut bool, out: &mut String) {
        match self {
            Value::Int(n) => out.push_str(&n.to_string()),
            Value::Float(f) => out.push_str(&fmt_float(*f)),
            Value::Str(s) => {
                out.push('\'');
                out.push_str(&s.replace('\'', "''"));
                out.push('\'');
            }
            Value::Bool(b) => out.push_str(if *b { "v:true" } else { "v:false" }),
            Value::None => out.push_str("v:null"),
            Value::Func(name) => {
                out.push_str("function('");
                out.push_str(&name.replace('\'', "''"));
                out.push_str("')");
            }
            Value::Partial(p) => {
                // A `funcref()` shows a global function as `g:Name`.
                let prefix = if p.func_id.is_some() && p.name.as_bytes().first().is_some_and(u8::is_ascii_uppercase) { "g:" } else { "" };
                out.push_str("function('");
                out.push_str(prefix);
                out.push_str(&p.name.replace('\'', "''"));
                out.push('\'');
                // The partial takes a place in the stack of the containers being written.
                stack.push(self.clone());
                if !p.args.is_empty() {
                    out.push_str(", ");
                    Value::list(p.args.clone()).encode_in(enc, stack, recursed, out);
                }
                if let Some(d) = &p.dict {
                    out.push_str(", ");
                    Value::Dict(d.clone()).encode_in(enc, stack, recursed, out);
                }
                stack.pop();
                out.push(')');
            }
            Value::List(l) if l.borrow().is_empty() => out.push_str("[]"),
            Value::Dict(d) if d.borrow().is_empty() => out.push_str("{}"),
            Value::List(_) | Value::Dict(_) => {
                if let Some(at) = stack.iter().position(|s| s.same_container(self)) {
                    match enc {
                        Enc::String => {
                            *recursed = true;
                            out.push_str(&format!("{{E724@{at}}}"));
                        }
                        Enc::Echo if matches!(self, Value::Dict(_)) => out.push_str(&format!("{{...@{at}}}")),
                        Enc::Echo => out.push_str(&format!("[...@{at}]")),
                    }
                    return;
                }
                stack.push(self.clone());
                match self {
                    Value::List(l) => {
                        out.push('[');
                        for (i, x) in l.borrow().iter().enumerate() {
                            if i > 0 {
                                out.push_str(", ");
                            }
                            x.encode_in(enc, stack, recursed, out);
                        }
                        out.push(']');
                    }
                    Value::Dict(d) => {
                        out.push('{');
                        let d = d.borrow();
                        let mut keys: Vec<&Rc<str>> = d.keys().collect();
                        keys.sort();
                        for (i, k) in keys.into_iter().enumerate() {
                            let x = d.get(k).expect("a key");
                            if i > 0 {
                                out.push_str(", ");
                            }
                            out.push('\'');
                            out.push_str(&k.replace('\'', "''"));
                            out.push_str("\': ");
                            x.encode_in(enc, stack, recursed, out);
                        }
                        out.push('}');
                    }
                    _ => unreachable!("a container"),
                }
                stack.pop();
            }
        }
    }

    /// What the value is when inserted as text: a list one item per line.
    pub fn text(&self) -> String {
        self.text_in(&mut Vec::new())
    }

    /// `seen` holds the Lists being joined: one met again is `[...]`.
    fn text_in(&self, seen: &mut Vec<Value>) -> String {
        match self {
            Value::Str(s) => s.to_string(),
            Value::List(_) if seen.iter().any(|s| s.same_container(self)) => "[...]".into(),
            Value::List(v) => {
                seen.push(self.clone());
                let text = v.borrow().iter().map(|x| x.text_in(seen)).collect::<Vec<_>>().join("\n");
                seen.pop();
                text
            }
            Value::Float(f) => fmt_g(*f, None, false),
            v => v.literal(),
        }
    }

    /// Both are the same List, or the same Dictionary (`is`).
    pub fn same_container(&self, other: &Value) -> bool {
        match (self, other) {
            (Value::List(x), Value::List(y)) => Gc::ptr_eq(x, y),
            (Value::Dict(x), Value::Dict(y)) => Gc::ptr_eq(x, y),
            _ => false,
        }
    }

    /// What `:echo` shows (`encode_tv2echo`): a string as it is, anything else as `string()` but for the marks of a
    /// container that holds itself.
    pub fn echo(&self) -> String {
        match self {
            Value::Str(s) => s.to_string(),
            Value::Func(s) => s.to_string(),
            v => v.encode(Enc::Echo).0,
        }
    }
}

/// The number a string starts with (`tv_get_number`: decimal, `0x`, `0b`, `0o`, old octal), 0
/// without one.
pub(in crate::editor) fn str_to_int(s: &str) -> i64 {
    super::expr::vim_str2nr(s, false).0
}

/// The float a string starts with, 0 without one.
pub(super) fn str_to_float(s: &str) -> f64 {
    let b = s.as_bytes();
    let mut end = usize::from(matches!(b.first(), Some(b'-' | b'+')));
    while end < b.len() && b[end].is_ascii_digit() {
        end += 1;
    }
    if b.get(end) == Some(&b'.') && b.get(end + 1).is_some_and(u8::is_ascii_digit) {
        end += 1;
        while end < b.len() && b[end].is_ascii_digit() {
            end += 1;
        }
    }
    if matches!(b.get(end), Some(b'e' | b'E')) {
        let mut e = end + 1;
        if matches!(b.get(e), Some(b'-' | b'+')) {
            e += 1;
        }
        if b.get(e).is_some_and(u8::is_ascii_digit) {
            while e < b.len() && b[e].is_ascii_digit() {
                e += 1;
            }
            end = e;
        }
    }
    s[..end].parse().unwrap_or(0.0)
}

// ---- locks and `di_flags` (`typval.c`, `vars.c`) ------------------------------------------------

/// `DI_FLAGS_RO`: `E46` on a change. `DI_FLAGS_RO_SBX` only matters in the sandbox, which rim has not.
pub(in crate::editor) const DI_RO: u8 = 1;
pub(in crate::editor) const DI_RO_SBX: u8 = 2;
/// `DI_FLAGS_FIX`: the variable cannot be deleted (`E795`).
pub(in crate::editor) const DI_FIX: u8 = 4;
/// `DI_FLAGS_LOCK`: `:lockvar` on the variable itself (`E1122`).
pub(in crate::editor) const DI_LOCK: u8 = 8;
/// `DICT_MAXNEST`.
pub(in crate::editor) const MAX_NEST: usize = 100;

/// `value_check_lock`: the message of a locked value, none when it is not locked. `name` is none for the bare form.
pub(in crate::editor) fn value_check_lock(lock: Lock, name: Option<&str>) -> Option<String> {
    match (lock, name) {
        (Lock::Unlocked, _) => None,
        (Lock::Locked, None) => Some("E741: Value is locked".into()),
        (Lock::Locked, Some(n)) => Some(format!("E741: Value is locked: {n}")),
        (Lock::Fixed, None) => Some("E742: Cannot change value".into()),
        (Lock::Fixed, Some(n)) => Some(format!("E742: Cannot change value of {n}")),
    }
}

/// `var_check_ro`.
pub(in crate::editor) fn var_check_ro(flags: u8, name: &str) -> Option<String> {
    (flags & DI_RO != 0).then(|| format!("E46: Cannot change read-only variable \"{name}\""))
}

/// `var_check_lock`.
pub(in crate::editor) fn var_check_lock(flags: u8, name: &str) -> Option<String> {
    (flags & DI_LOCK != 0).then(|| format!("E1122: Variable is locked: {name}"))
}

/// `var_check_fixed`.
pub(in crate::editor) fn var_check_fixed(flags: u8, name: &str) -> Option<String> {
    (flags & DI_FIX != 0).then(|| format!("E795: Cannot delete variable {name}"))
}

impl Lock {
    /// `CHANGE_LOCK`: a fixed one stays fixed.
    pub fn change(&mut self, lock: bool) {
        if *self != Lock::Fixed {
            *self = if lock { Lock::Locked } else { Lock::Unlocked };
        }
    }
}

impl Value {
    /// C's `refcount > 1` of a List or Dictionary: something else holds it. Ask it of the value where it is kept, before
    /// any clone is made.
    pub fn is_shared(&self) -> bool {
        match self {
            Value::List(l) => dumpster::unsync::Gc::ref_count(l).get() > 1,
            Value::Dict(d) => dumpster::unsync::Gc::ref_count(d).get() > 1,
            _ => false,
        }
    }

    /// `tv_islocked` for a value in a slot with the lock `slot`: the slot or the container is locked (a fixed one is not).
    pub fn is_locked(&self, slot: Lock) -> bool {
        slot == Lock::Locked
            || match self {
                Value::List(l) => l.borrow().lock == Lock::Locked,
                Value::Dict(d) => d.borrow().lock == Lock::Locked,
                _ => false,
            }
    }
}
