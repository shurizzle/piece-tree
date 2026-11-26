//! Expressions of the expression register (`Ctrl+R =`, `"=`): a calculator over numbers, floats,
//! strings and lists with vim's operators, coercions and error messages, and its functions.

use std::cmp::Ordering;

use piece_tree::{Regex, Text};

use super::{Editor, graphemes};

#[derive(Clone, Debug, PartialEq)]
pub(super) enum Value {
    Int(i64),
    Float(f64),
    Str(String),
    List(Vec<Value>),
}

type Res<T> = Result<T, String>;

// ---- text of numbers --------------------------------------------------------------------------

/// `%g` with `prec` significant digits: the shorter of the plain and the exponent forms, no
/// trailing zeros.
fn fmt_g(f: f64, prec: usize) -> String {
    if !f.is_finite() {
        return if f.is_nan() { "nan".into() } else if f < 0.0 { "-inf".into() } else { "inf".into() };
    }
    let prec = prec.max(1);
    let sci = format!("{:.*e}", prec - 1, f);
    let (mantissa, exp) = sci.split_once('e').expect("an exponent");
    let exp: i32 = exp.parse().expect("a number");
    let trim = |s: &str| if s.contains('.') { s.trim_end_matches('0').trim_end_matches('.').to_string() } else { s.to_string() };
    if exp < -4 || exp >= prec as i32 {
        format!("{}e{}{:02}", trim(mantissa), if exp < 0 { '-' } else { '+' }, exp.abs())
    } else {
        trim(&format!("{:.*}", (prec as i32 - 1 - exp).max(0) as usize, f))
    }
}

/// A float as vim shows it: `%g` and a `.0` when it would look like a number.
fn fmt_float(f: f64) -> String {
    let s = fmt_g(f, 6);
    if s.contains(['.', 'e', 'n', 'i']) { s } else { format!("{s}.0") }
}

/// C-style `%e`: `1.500000e+03`.
fn fmt_e(f: f64, prec: usize, upper: bool) -> String {
    let sci = format!("{:.*e}", prec, f);
    let (m, e) = sci.split_once('e').expect("an exponent");
    let e: i32 = e.parse().expect("a number");
    let s = format!("{m}e{}{:02}", if e < 0 { '-' } else { '+' }, e.abs());
    if upper { s.to_uppercase() } else { s }
}

impl Value {
    /// `string()`: a literal that reads back as the value.
    fn literal(&self) -> String {
        match self {
            Value::Int(n) => n.to_string(),
            Value::Float(f) => fmt_float(*f),
            Value::Str(s) => format!("'{}'", s.replace('\'', "''")),
            Value::List(v) => format!("[{}]", v.iter().map(Value::literal).collect::<Vec<_>>().join(", ")),
        }
    }

    /// What the value is when inserted as text: a list one item per line.
    pub fn text(&self) -> String {
        match self {
            Value::Str(s) => s.clone(),
            Value::List(v) => v.iter().map(Value::text).collect::<Vec<_>>().join("\n"),
            v => v.literal(),
        }
    }
}

/// The number a string starts with (decimal, `0x`, `0b`, `0o`), 0 without one.
fn str_to_int(s: &str) -> i64 {
    let (neg, rest) = match s.strip_prefix('-') {
        Some(r) => (true, r),
        None => (false, s),
    };
    let (radix, digits) = match rest.get(..2) {
        Some("0x" | "0X") => (16, &rest[2..]),
        Some("0b" | "0B") => (2, &rest[2..]),
        Some("0o" | "0O") => (8, &rest[2..]),
        _ => (10, rest),
    };
    let end = digits.find(|c: char| !c.is_digit(radix)).unwrap_or(digits.len());
    let n = i64::from_str_radix(&digits[..end], radix).unwrap_or(if end == 0 { 0 } else { i64::MAX });
    if neg { -n } else { n }
}

/// The float a string starts with, 0 without one.
fn str_to_float(s: &str) -> f64 {
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

// ---- lexer ------------------------------------------------------------------------------------

#[derive(Clone, Debug, PartialEq)]
enum Tok {
    Int(i64),
    Float(f64),
    Str(String),
    Name(String),
    Reg(char),
    Opt(String),
    Op(&'static str),
}

const OPS: &[&str] = &[
    "==?", "==#", "!=?", "!=#", "=~?", "=~#", "!~?", "!~#", ">=?", ">=#", "<=?", "<=#", ">?", ">#", "<?", "<#", "==", "!=", "=~", "!~", ">=", "<=", "&&", "||", "..",
    "+", "-", "*", "/", "%", ".", "!", "<", ">", "?", ":", "(", ")", "[", "]", ",",
];

// shortcut: a calculator, no variables, `:let`, dictionaries or lambdas, when someone needs a language
fn lex(src: &str) -> Option<Vec<Tok>> {
    let cs: Vec<char> = src.chars().collect();
    let (mut i, mut out) = (0, Vec::new());
    while i < cs.len() {
        let c = cs[i];
        if c.is_whitespace() {
            i += 1;
        } else if c.is_ascii_digit() {
            let start = i;
            let radix_len = if c == '0' && matches!(cs.get(i + 1), Some('x' | 'X' | 'b' | 'B' | 'o' | 'O')) { 2 } else { 0 };
            if radix_len == 2 {
                let radix = match cs[i + 1] {
                    'x' | 'X' => 16,
                    'b' | 'B' => 2,
                    _ => 8,
                };
                i += 2;
                let from = i;
                while i < cs.len() && cs[i].is_digit(radix) {
                    i += 1;
                }
                let s: String = cs[from..i].iter().collect();
                out.push(Tok::Int(i64::from_str_radix(&s, radix).ok()?));
                continue;
            }
            while i < cs.len() && cs[i].is_ascii_digit() {
                i += 1;
            }
            let mut float = false;
            if cs.get(i) == Some(&'.') && cs.get(i + 1).is_some_and(char::is_ascii_digit) {
                float = true;
                i += 1;
                while i < cs.len() && cs[i].is_ascii_digit() {
                    i += 1;
                }
            }
            if float && matches!(cs.get(i), Some('e' | 'E')) {
                let mut j = i + 1;
                if matches!(cs.get(j), Some('+' | '-')) {
                    j += 1;
                }
                if cs.get(j).is_some_and(char::is_ascii_digit) {
                    while j < cs.len() && cs[j].is_ascii_digit() {
                        j += 1;
                    }
                    i = j;
                }
            }
            let s: String = cs[start..i].iter().collect();
            if float {
                out.push(Tok::Float(s.parse().ok()?));
            } else if s.len() > 1 && s.starts_with('0') && s.chars().all(|c| c.is_digit(8)) {
                out.push(Tok::Int(i64::from_str_radix(&s, 8).ok()?));
            } else {
                out.push(Tok::Int(s.parse().ok()?));
            }
        } else if c == '\'' {
            let mut s = String::new();
            i += 1;
            loop {
                match cs.get(i)? {
                    '\'' if cs.get(i + 1) == Some(&'\'') => {
                        s.push('\'');
                        i += 2;
                    }
                    '\'' => break,
                    &c => {
                        s.push(c);
                        i += 1;
                    }
                }
            }
            i += 1;
            out.push(Tok::Str(s));
        } else if c == '"' {
            let mut s = String::new();
            i += 1;
            loop {
                match *cs.get(i)? {
                    '"' => break,
                    '\\' => {
                        i += 1;
                        let e = *cs.get(i)?;
                        i += 1;
                        let hex = |i: &mut usize, max: usize| {
                            let from = *i;
                            while *i < cs.len() && *i - from < max && cs[*i].is_ascii_hexdigit() {
                                *i += 1;
                            }
                            u32::from_str_radix(&cs[from..*i].iter().collect::<String>(), 16).ok().and_then(char::from_u32)
                        };
                        match e {
                            'n' => s.push('\n'),
                            'r' => s.push('\r'),
                            't' => s.push('\t'),
                            'e' => s.push('\x1b'),
                            'b' => s.push('\x08'),
                            'f' => s.push('\x0c'),
                            'x' | 'X' => s.push(hex(&mut i, 2).unwrap_or(e)),
                            'u' => s.push(hex(&mut i, 4).unwrap_or(e)),
                            'U' => s.push(hex(&mut i, 8).unwrap_or(e)),
                            '0'..='7' => {
                                let mut n = e.to_digit(8)?;
                                let mut k = 1;
                                while k < 3 && cs.get(i).is_some_and(|c| c.is_digit(8)) {
                                    n = n * 8 + cs[i].to_digit(8)?;
                                    i += 1;
                                    k += 1;
                                }
                                s.push(char::from_u32(n)?);
                            }
                            c => s.push(c),
                        }
                    }
                    c => {
                        s.push(c);
                        i += 1;
                    }
                }
            }
            i += 1;
            out.push(Tok::Str(s));
        } else if c == '@' {
            out.push(Tok::Reg(*cs.get(i + 1)?));
            i += 2;
        } else if c == '&' && cs.get(i + 1).is_some_and(|c| c.is_ascii_alphabetic()) {
            let from = i + 1;
            i = from;
            while i < cs.len() && cs[i].is_ascii_alphanumeric() {
                i += 1;
            }
            out.push(Tok::Opt(cs[from..i].iter().collect()));
        } else if c.is_ascii_alphabetic() || c == '_' {
            let from = i;
            while i < cs.len() && (cs[i].is_ascii_alphanumeric() || cs[i] == '_') {
                i += 1;
            }
            // `v:true`, `v:false`, `v:null`.
            if cs[from..i] == ['v'] && cs.get(i) == Some(&':') {
                i += 1;
                while i < cs.len() && cs[i].is_ascii_alphabetic() {
                    i += 1;
                }
            }
            out.push(Tok::Name(cs[from..i].iter().collect()));
        } else {
            let rest: String = cs[i..cs.len().min(i + 3)].iter().collect();
            let op = OPS.iter().find(|op| rest.starts_with(**op))?;
            out.push(Tok::Op(op));
            i += op.len();
        }
    }
    Some(out)
}

// ---- parser -----------------------------------------------------------------------------------

#[derive(Debug)]
enum Ast {
    Lit(Value),
    Reg(char),
    Opt(String),
    List(Vec<Ast>),
    Unary(&'static str, Box<Ast>),
    Bin(&'static str, Box<Ast>, Box<Ast>),
    Ternary(Box<Ast>, Box<Ast>, Box<Ast>),
    Index(Box<Ast>, Box<Ast>),
    Slice(Box<Ast>, Option<Box<Ast>>, Option<Box<Ast>>),
    Call(String, Vec<Ast>),
}

struct Parser {
    toks: Vec<Tok>,
    at: usize,
}

impl Parser {
    fn peek_op(&self) -> Option<&'static str> {
        match self.toks.get(self.at) {
            Some(Tok::Op(o)) => Some(o),
            _ => None,
        }
    }

    fn eat(&mut self, op: &str) -> bool {
        let hit = self.peek_op() == Some(op);
        self.at += usize::from(hit);
        hit
    }

    fn expect(&mut self, op: &str) -> Option<()> {
        self.eat(op).then_some(())
    }

    fn ternary(&mut self) -> Option<Ast> {
        let cond = self.binary(0)?;
        if !self.eat("?") {
            return Some(cond);
        }
        let a = self.ternary()?;
        self.expect(":")?;
        let b = self.ternary()?;
        Some(Ast::Ternary(Box::new(cond), Box::new(a), Box::new(b)))
    }

    /// Binary operators by level: `||`, `&&`, comparisons, `+ - . ..`, `* / %`.
    fn binary(&mut self, level: usize) -> Option<Ast> {
        const LEVELS: &[&[&str]] = &[&["||"], &["&&"], &[], &["+", "-", ".", ".."], &["*", "/", "%"]];
        if level == LEVELS.len() {
            return self.unary();
        }
        let mut left = self.binary(level + 1)?;
        while let Some(op) = self.peek_op() {
            let hit = if level == 2 { is_comparison(op) } else { LEVELS[level].contains(&op) };
            if !hit {
                break;
            }
            self.at += 1;
            let right = self.binary(level + 1)?;
            left = Ast::Bin(op, Box::new(left), Box::new(right));
            if level == 2 {
                // Comparisons do not chain.
                break;
            }
        }
        Some(left)
    }

    fn unary(&mut self) -> Option<Ast> {
        for op in ["!", "-", "+"] {
            if self.eat(op) {
                return Some(Ast::Unary(op, Box::new(self.unary()?)));
            }
        }
        self.postfix()
    }

    fn postfix(&mut self) -> Option<Ast> {
        let mut e = self.atom()?;
        while self.eat("[") {
            if self.eat(":") {
                let to = if self.peek_op() == Some("]") { None } else { Some(Box::new(self.ternary()?)) };
                self.expect("]")?;
                e = Ast::Slice(Box::new(e), None, to);
                continue;
            }
            let i = self.ternary()?;
            if self.eat(":") {
                let to = if self.peek_op() == Some("]") { None } else { Some(Box::new(self.ternary()?)) };
                self.expect("]")?;
                e = Ast::Slice(Box::new(e), Some(Box::new(i)), to);
            } else {
                self.expect("]")?;
                e = Ast::Index(Box::new(e), Box::new(i));
            }
        }
        Some(e)
    }

    fn atom(&mut self) -> Option<Ast> {
        let t = self.toks.get(self.at)?.clone();
        self.at += 1;
        Some(match t {
            Tok::Int(n) => Ast::Lit(Value::Int(n)),
            Tok::Float(f) => Ast::Lit(Value::Float(f)),
            Tok::Str(s) => Ast::Lit(Value::Str(s)),
            Tok::Reg(r) => Ast::Reg(r),
            Tok::Opt(o) => Ast::Opt(o),
            Tok::Name(n) if n == "v:true" => Ast::Lit(Value::Int(1)),
            Tok::Name(n) if n == "v:false" || n == "v:null" => Ast::Lit(Value::Int(0)),
            Tok::Name(n) => {
                self.expect("(")?;
                let mut args = Vec::new();
                if !self.eat(")") {
                    loop {
                        args.push(self.ternary()?);
                        if self.eat(")") {
                            break;
                        }
                        self.expect(",")?;
                    }
                }
                Ast::Call(n, args)
            }
            Tok::Op("(") => {
                let e = self.ternary()?;
                self.expect(")")?;
                e
            }
            Tok::Op("[") => {
                let mut items = Vec::new();
                if !self.eat("]") {
                    loop {
                        items.push(self.ternary()?);
                        if self.eat("]") {
                            break;
                        }
                        self.expect(",")?;
                    }
                }
                Ast::List(items)
            }
            Tok::Op(_) => return None,
        })
    }
}

fn is_comparison(op: &str) -> bool {
    op.starts_with(['=', '!', '<', '>']) && op != "!"
}

// ---- evaluation -------------------------------------------------------------------------------

fn compare_text(a: &str, b: &str, ic: bool) -> Ordering {
    if ic { a.to_lowercase().cmp(&b.to_lowercase()) } else { a.cmp(b) }
}

impl Editor {
    fn to_int(&self, v: &Value) -> Res<i64> {
        match v {
            Value::Int(n) => Ok(*n),
            Value::Float(_) => Err("E805: Using a Float as a Number".into()),
            Value::Str(s) => Ok(str_to_int(s)),
            Value::List(_) => Err("E745: Using a List as a Number".into()),
        }
    }

    fn to_float(&self, v: &Value) -> Res<f64> {
        match v {
            Value::Float(f) => Ok(*f),
            v => Ok(self.to_int(v)? as f64),
        }
    }

    fn to_string(&self, v: &Value) -> Res<String> {
        match v {
            Value::List(_) => Err("E730: Using a List as a String".into()),
            v => Ok(v.text()),
        }
    }

    /// Evaluates `src`; the error is the message to show.
    pub(super) fn eval(&mut self, src: &str) -> Res<Value> {
        let invalid = || format!("E15: Invalid expression: \"{src}\"");
        let toks = lex(src).ok_or_else(invalid)?;
        let mut p = Parser { toks, at: 0 };
        let ast = p.ternary().ok_or_else(invalid)?;
        if p.at != p.toks.len() {
            return Err(invalid());
        }
        self.run(&ast)
    }

    /// The text of the value of `src`, as inserted.
    pub(super) fn eval_text(&mut self, src: &str) -> Res<String> {
        Ok(self.eval(src)?.text())
    }

    fn truthy(&self, v: &Value) -> Res<bool> {
        Ok(self.to_int(v)? != 0)
    }

    fn run(&mut self, ast: &Ast) -> Res<Value> {
        Ok(match ast {
            Ast::Lit(v) => v.clone(),
            Ast::Reg(r) => Value::Str(self.reg(*r).map_or_else(String::new, |r| r.text)),
            Ast::Opt(name) => self.buf.opts.lookup(name).ok_or_else(|| format!("E113: Unknown option: {name}"))?,
            Ast::List(items) => Value::List(items.iter().map(|a| self.run(a)).collect::<Res<_>>()?),
            Ast::Unary(op, a) => {
                let v = self.run(a)?;
                match (*op, v) {
                    ("!", v) => Value::Int(i64::from(!self.truthy(&v)?)),
                    ("-", Value::Float(f)) => Value::Float(-f),
                    ("-", v) => Value::Int(self.to_int(&v)?.wrapping_neg()),
                    (_, Value::Float(f)) => Value::Float(f),
                    (_, v) => Value::Int(self.to_int(&v)?),
                }
            }
            Ast::Ternary(c, a, b) => {
                let c = self.run(c)?;
                if self.truthy(&c)? { self.run(a)? } else { self.run(b)? }
            }
            Ast::Bin("||", a, b) => {
                let a = self.run(a)?;
                if self.truthy(&a)? {
                    Value::Int(1)
                } else {
                    let b = self.run(b)?;
                    Value::Int(i64::from(self.truthy(&b)?))
                }
            }
            Ast::Bin("&&", a, b) => {
                let a = self.run(a)?;
                if !self.truthy(&a)? {
                    Value::Int(0)
                } else {
                    let b = self.run(b)?;
                    Value::Int(i64::from(self.truthy(&b)?))
                }
            }
            Ast::Bin(op, a, b) => {
                let (a, b) = (self.run(a)?, self.run(b)?);
                self.binary_op(op, a, b)?
            }
            Ast::Index(a, i) => {
                let (a, i) = (self.run(a)?, self.run(i)?);
                let i = self.to_int(&i)?;
                match a {
                    Value::List(v) => {
                        let at = if i < 0 { i + v.len() as i64 } else { i };
                        usize::try_from(at).ok().and_then(|k| v.get(k)).cloned().ok_or_else(|| format!("E684: List index out of range: {i}"))?
                    }
                    a => {
                        let s = self.to_string(&a)?;
                        let at = if i < 0 { usize::MAX } else { i as usize };
                        Value::Str(s.get(at..).and_then(|r| r.chars().next()).map(String::from).unwrap_or_default())
                    }
                }
            }
            Ast::Slice(a, from, to) => {
                let a = self.run(a)?;
                let bound = |this: &mut Self, b: &Option<Box<Ast>>, default: i64| -> Res<i64> {
                    match b {
                        Some(b) => {
                            let v = this.run(b)?;
                            this.to_int(&v)
                        }
                        None => Ok(default),
                    }
                };
                let (from, to) = (bound(self, from, 0)?, bound(self, to, -1)?);
                match a {
                    Value::List(v) => {
                        let len = v.len() as i64;
                        let (f, t) = (if from < 0 { from + len } else { from }.max(0), if to < 0 { to + len } else { to }.min(len - 1));
                        Value::List(if f > t { Vec::new() } else { v[f as usize..=t as usize].to_vec() })
                    }
                    a => {
                        let s = self.to_string(&a)?;
                        let len = s.len() as i64;
                        let (f, t) = (if from < 0 { from + len } else { from }.max(0), if to < 0 { to + len } else { to }.min(len - 1));
                        let slice = if f > t { None } else { s.get(f as usize..=t as usize) };
                        Value::Str(slice.unwrap_or_default().to_string())
                    }
                }
            }
            Ast::Call(name, args) => {
                let args = args.iter().map(|a| self.run(a)).collect::<Res<Vec<_>>>()?;
                self.call(name, args)?
            }
        })
    }

    fn binary_op(&mut self, op: &str, a: Value, b: Value) -> Res<Value> {
        if is_comparison(op) {
            return Ok(Value::Int(i64::from(self.compare(op, &a, &b)?)));
        }
        if let (Value::List(x), Value::List(y), "+") = (&a, &b, op) {
            return Ok(Value::List(x.iter().chain(y).cloned().collect()));
        }
        if matches!(op, "." | "..") {
            return Ok(Value::Str(self.to_string(&a)? + &self.to_string(&b)?));
        }
        if matches!(a, Value::Float(_)) || matches!(b, Value::Float(_)) {
            let (x, y) = (self.to_float(&a)?, self.to_float(&b)?);
            return Ok(Value::Float(match op {
                "+" => x + y,
                "-" => x - y,
                "*" => x * y,
                "/" => x / y,
                _ => return Err("E804: Cannot use '%' with Float".into()),
            }));
        }
        let (x, y) = (self.to_int(&a)?, self.to_int(&b)?);
        Ok(Value::Int(match op {
            "+" => x.wrapping_add(y),
            "-" => x.wrapping_sub(y),
            "*" => x.wrapping_mul(y),
            // Like vim: a division by zero is the largest number, 0 % 0 is 0.
            "/" if y == 0 => match x.cmp(&0) {
                Ordering::Greater => i64::MAX,
                Ordering::Less => -i64::MAX,
                Ordering::Equal => i64::MIN,
            },
            "/" => x.wrapping_div(y),
            _ if y == 0 => 0,
            _ => x.wrapping_rem(y),
        }))
    }

    /// `==`, `!=`, `<`, `>`, `<=`, `>=`, `=~`, `!~`, each with `#` (case matters) or `?` (it does not).
    fn compare(&mut self, op: &str, a: &Value, b: &Value) -> Res<bool> {
        let (base, case) = match op.strip_suffix(['#', '?']) {
            Some(b) => (b, Some(op.ends_with('?'))),
            None => (op, None),
        };
        let ic = case.unwrap_or(self.buf.opts.ignorecase);
        if matches!(base, "=~" | "!~") {
            let (s, pat) = (self.to_string(a)?, self.to_string(b)?);
            let hit = self.regex_find(&s, &pat, ic)?.is_some();
            return Ok(hit == (base == "=~"));
        }
        let ord = match (a, b) {
            (Value::List(x), Value::List(y)) => {
                let same = x.len() == y.len() && x.iter().zip(y).try_fold(true, |acc, (p, q)| Ok::<_, String>(acc && self.compare("==", p, q)?))?;
                return match base {
                    "==" => Ok(same),
                    "!=" => Ok(!same),
                    _ => Err("E692: Invalid operation for List".into()),
                };
            }
            (Value::List(_), _) | (_, Value::List(_)) => return Err("E691: Can only compare List with List".into()),
            (Value::Str(x), Value::Str(y)) => compare_text(x, y, ic),
            (Value::Float(_), _) | (_, Value::Float(_)) => self.to_float(a)?.partial_cmp(&self.to_float(b)?).unwrap_or(Ordering::Less),
            _ => self.to_int(a)?.cmp(&self.to_int(b)?),
        };
        Ok(match base {
            "==" => ord == Ordering::Equal,
            "!=" => ord != Ordering::Equal,
            "<" => ord == Ordering::Less,
            "<=" => ord != Ordering::Greater,
            ">" => ord == Ordering::Greater,
            _ => ord != Ordering::Less,
        })
    }

    /// The first match of `pat` in `s` as a byte range, and the text with its replacement made.
    fn regex_find(&self, s: &str, pat: &str, ic: bool) -> Res<Option<std::ops::Range<usize>>> {
        let re = Regex::new(&if ic { format!("(?i){pat}") } else { pat.to_string() }).map_err(|_| format!("E383: Invalid search string: {pat}"))?;
        Ok(Text::from(s).find_from(&re, 0))
    }

    fn call(&mut self, name: &str, args: Vec<Value>) -> Res<Value> {
        let (min, max): (usize, usize) = match name {
            "abs" | "round" | "floor" | "ceil" | "sqrt" | "exp" | "log" | "log10" | "sin" | "cos" | "tan" | "atan" | "float2nr" | "str2float" | "string" | "len" | "strlen"
            | "strchars" | "strcharlen" | "toupper" | "tolower" | "reverse" | "char2nr" | "nr2char" | "getreg" | "getline" | "line" | "col" | "empty" | "min" | "max" | "copy" | "sort" => (1, 1),
            "pow" | "atan2" | "repeat" | "stridx" | "strridx" | "add" | "index" | "escape" | "matchstr" => (2, 3),
            "str2nr" | "join" | "trim" | "split" | "range" | "strpart" | "get" => (1, 4),
            "substitute" => (4, 4),
            "tr" => (3, 3),
            "printf" => (1, usize::MAX),
            _ => return Err(format!("E117: Unknown function: {name}")),
        };
        if args.len() < min {
            return Err(format!("E119: Not enough arguments for function: {name}"));
        }
        if args.len() > max {
            return Err(format!("E118: Too many arguments for function: {name}"));
        }
        let a = &args;
        let s = |i: usize| -> Res<String> { self.to_string(&a[i]) };
        let n = |i: usize| -> Res<i64> { self.to_int(&a[i]) };
        let f = |i: usize| -> Res<f64> { self.to_float(&a[i]) };
        let float = |x: f64| Ok(Value::Float(x));
        let invalid = || Err::<Value, String>("E474: Invalid argument".into());
        match name {
            "abs" => match &a[0] {
                Value::Float(x) => float(x.abs()),
                v => Ok(Value::Int(self.to_int(v)?.wrapping_abs())),
            },
            "round" => float(f(0)?.round()),
            "floor" => float(f(0)?.floor()),
            "ceil" => float(f(0)?.ceil()),
            "sqrt" => float(f(0)?.sqrt()),
            "exp" => float(f(0)?.exp()),
            "log" => float(f(0)?.ln()),
            "log10" => float(f(0)?.log10()),
            "sin" => float(f(0)?.sin()),
            "cos" => float(f(0)?.cos()),
            "tan" => float(f(0)?.tan()),
            "atan" => float(f(0)?.atan()),
            "atan2" => float(f(0)?.atan2(f(1)?)),
            "pow" => float(f(0)?.powf(f(1)?)),
            "float2nr" => Ok(Value::Int(f(0)? as i64)),
            "str2float" => float(str_to_float(&s(0)?)),
            "str2nr" => {
                let base = if a.len() > 1 { n(1)? } else { 10 };
                let text = s(0)?;
                if base == 10 {
                    return Ok(Value::Int(str_to_int(&text)));
                }
                let (neg, body) = text.strip_prefix('-').map_or((false, text.as_str()), |r| (true, r));
                let digits = body.trim_start_matches(match base {
                    16 => "0x",
                    8 => "0o",
                    2 => "0b",
                    _ => return invalid(),
                });
                let end = digits.find(|c: char| !c.is_digit(base as u32)).unwrap_or(digits.len());
                let v = i64::from_str_radix(&digits[..end], base as u32).unwrap_or(0);
                Ok(Value::Int(if neg { -v } else { v }))
            }
            "string" => Ok(Value::Str(a[0].literal())),
            "len" => match &a[0] {
                Value::List(v) => Ok(Value::Int(v.len() as i64)),
                v => Ok(Value::Int(self.to_string(v)?.len() as i64)),
            },
            "strlen" => Ok(Value::Int(s(0)?.len() as i64)),
            "strchars" => Ok(Value::Int(s(0)?.chars().count() as i64)),
            "strcharlen" => Ok(Value::Int(graphemes::count(&s(0)?) as i64)),
            "toupper" => Ok(Value::Str(s(0)?.to_uppercase())),
            "tolower" => Ok(Value::Str(s(0)?.to_lowercase())),
            "repeat" => {
                let times = usize::try_from(n(1)?).unwrap_or(0);
                match &a[0] {
                    Value::List(v) => Ok(Value::List(v.iter().cycle().take(v.len() * times).cloned().collect())),
                    v => Ok(Value::Str(self.to_string(v)?.repeat(times))),
                }
            }
            "printf" => Ok(Value::Str(self.printf(&s(0)?, &args[1..])?)),
            "substitute" => {
                let (text, pat, rep, flags) = (s(0)?, s(1)?, s(2)?, s(3)?);
                let re = Regex::new(&pat).map_err(|_| format!("E383: Invalid search string: {pat}"))?;
                let t = Text::from(text.as_str());
                let out = if flags.contains('g') {
                    let (new, _) = t.replace_all(&re, &rep);
                    new.slice(0..new.len()).into_owned()
                } else {
                    match t.find_from(&re, 0).and_then(|m| t.replacement_at(&re, m.start, &rep)) {
                        Some((m, new)) => format!("{}{new}{}", &text[..m.start], &text[m.end..]),
                        None => text,
                    }
                };
                Ok(Value::Str(out))
            }
            "matchstr" => {
                let (text, pat) = (s(0)?, s(1)?);
                let ic = self.buf.opts.ignorecase;
                Ok(Value::Str(self.regex_find(&text, &pat, ic)?.map_or_else(String::new, |m| text[m].to_string())))
            }
            "trim" => {
                let text = s(0)?;
                let mask = if a.len() > 1 { s(1)? } else { String::new() };
                Ok(Value::Str(if mask.is_empty() { text.trim().to_string() } else { text.trim_matches(|c| mask.contains(c)).to_string() }))
            }
            "join" => {
                let Value::List(v) = &a[0] else { return Err("E714: List required".into()) };
                let sep = if a.len() > 1 { s(1)? } else { " ".into() };
                Ok(Value::Str(v.iter().map(|x| self.to_string(x)).collect::<Res<Vec<_>>>()?.join(&sep)))
            }
            "split" => {
                let text = s(0)?;
                let keep = a.len() > 2 && n(2)? != 0;
                let parts: Vec<String> = if a.len() > 1 && !s(1)?.is_empty() {
                    let pat = s(1)?;
                    let re = Regex::new(&pat).map_err(|_| format!("E383: Invalid search string: {pat}"))?;
                    let t = Text::from(text.as_str());
                    let (mut out, mut last) = (Vec::new(), 0);
                    for m in t.find_iter(&re).filter(|m| !m.is_empty()) {
                        out.push(text[last..m.start].to_string());
                        last = m.end;
                    }
                    out.push(text[last..].to_string());
                    out
                } else {
                    text.split_whitespace().map(String::from).collect()
                };
                Ok(Value::List(parts.into_iter().filter(|p| keep || !p.is_empty()).map(Value::Str).collect()))
            }
            "range" => {
                let (from, to, step) = match args.len() {
                    1 => (0, n(0)? - 1, 1),
                    2 => (n(0)?, n(1)?, 1),
                    _ => (n(0)?, n(1)?, n(2)?),
                };
                if step == 0 {
                    return Err("E726: Stride is zero".into());
                }
                let mut out = Vec::new();
                let mut x = from;
                while (step > 0 && x <= to) || (step < 0 && x >= to) {
                    out.push(Value::Int(x));
                    x += step;
                }
                Ok(Value::List(out))
            }
            "reverse" => match &a[0] {
                Value::List(v) => Ok(Value::List(v.iter().rev().cloned().collect())),
                v => Ok(Value::Str(self.to_string(v)?.chars().rev().collect())),
            },
            "sort" => {
                let Value::List(v) = &a[0] else { return Err("E686: Argument of sort() must be a List".into()) };
                let mut v = v.clone();
                v.sort_by_key(Value::text);
                Ok(Value::List(v))
            }
            "add" => {
                let Value::List(v) = &a[0] else { return Err("E714: List required".into()) };
                Ok(Value::List(v.iter().cloned().chain([a[1].clone()]).collect()))
            }
            "index" => {
                let Value::List(v) = &a[0] else { return Err("E714: List required".into()) };
                let mut at = -1;
                for (i, x) in v.iter().enumerate() {
                    if self.compare("==#", x, &a[1])? {
                        at = i as i64;
                        break;
                    }
                }
                Ok(Value::Int(at))
            }
            "get" => {
                let Value::List(v) = &a[0] else { return Err("E714: List required".into()) };
                let i = n(1)?;
                let at = if i < 0 { i + v.len() as i64 } else { i };
                Ok(usize::try_from(at).ok().and_then(|k| v.get(k)).cloned().unwrap_or_else(|| a.get(2).cloned().unwrap_or(Value::Int(0))))
            }
            "copy" => Ok(a[0].clone()),
            "empty" => Ok(Value::Int(i64::from(match &a[0] {
                Value::Int(x) => *x == 0,
                Value::Float(x) => *x == 0.0,
                Value::Str(x) => x.is_empty(),
                Value::List(x) => x.is_empty(),
            }))),
            "min" | "max" => {
                let Value::List(v) = &a[0] else { return Err("E712: Argument of min() must be a List or Dictionary".into()) };
                let mut best: Option<i64> = None;
                for x in v {
                    let x = self.to_int(x)?;
                    best = Some(best.map_or(x, |b| if name == "min" { b.min(x) } else { b.max(x) }));
                }
                Ok(Value::Int(best.unwrap_or(0)))
            }
            "strpart" => {
                let text = s(0)?;
                let from = usize::try_from(n(1)?).unwrap_or(0).min(text.len());
                let len = if a.len() > 2 { usize::try_from(n(2)?).unwrap_or(0) } else { usize::MAX };
                let to = from.saturating_add(len).min(text.len());
                Ok(Value::Str(text.get(from..to).unwrap_or_default().to_string()))
            }
            "stridx" => {
                let (hay, needle) = (s(0)?, s(1)?);
                let from = if a.len() > 2 { usize::try_from(n(2)?).unwrap_or(0) } else { 0 };
                Ok(Value::Int(hay.get(from..).and_then(|h| h.find(&needle)).map_or(-1, |i| (i + from) as i64)))
            }
            "strridx" => Ok(Value::Int(s(0)?.rfind(&s(1)?).map_or(-1, |i| i as i64))),
            "char2nr" => Ok(Value::Int(s(0)?.chars().next().map_or(0, |c| c as i64))),
            "nr2char" => Ok(Value::Str(u32::try_from(n(0)?).ok().and_then(char::from_u32).map(String::from).unwrap_or_default())),
            "escape" => {
                let chars = s(1)?;
                Ok(Value::Str(s(0)?.chars().flat_map(|c| if chars.contains(c) { vec!['\\', c] } else { vec![c] }).collect()))
            }
            "tr" => {
                let (from, to): (Vec<char>, Vec<char>) = (s(1)?.chars().collect(), s(2)?.chars().collect());
                if from.len() != to.len() {
                    return Err("E475: Invalid argument: tr()".into());
                }
                Ok(Value::Str(s(0)?.chars().map(|c| from.iter().position(|&x| x == c).map_or(c, |i| to[i])).collect()))
            }
            "getreg" => {
                let r = s(0)?.chars().next().unwrap_or('"');
                Ok(Value::Str(self.reg(r).map_or_else(String::new, |r| r.text)))
            }
            "line" | "col" | "getline" => {
                let text = s(0)?;
                let cursor = (self.win.line, self.win.col);
                match (name, text.as_str()) {
                    ("line", ".") => Ok(Value::Int(cursor.0 as i64 + 1)),
                    ("line", "$") => Ok(Value::Int(self.line_count() as i64)),
                    ("col", ".") => Ok(Value::Int(self.line_byte(cursor.0, cursor.1) as i64 + 1)),
                    ("col", "$") => Ok(Value::Int(self.buf.doc.text().line(cursor.0).len() as i64 + 1)),
                    ("getline", l) => {
                        let at = match l {
                            "." => cursor.0 as i64 + 1,
                            "$" => self.line_count() as i64,
                            _ => str_to_int(l),
                        };
                        Ok(Value::Str(usize::try_from(at - 1).ok().filter(|&k| k < self.line_count()).map_or_else(String::new, |k| self.buf.doc.text().line(k).into_owned())))
                    }
                    _ => invalid(),
                }
            }
            _ => unreachable!("every known function has an arm"),
        }
    }

    /// `printf()`: `%d %i %u %x %X %o %b %B %c %s %S %f %F %e %E %g %G %%` with flags, width and precision.
    fn printf(&self, fmt: &str, args: &[Value]) -> Res<String> {
        let mut out = String::new();
        let mut args = args.iter();
        let cs: Vec<char> = fmt.chars().collect();
        let mut i = 0;
        while i < cs.len() {
            if cs[i] != '%' {
                out.push(cs[i]);
                i += 1;
                continue;
            }
            i += 1;
            let (mut left, mut plus, mut space, mut alt, mut zero) = (false, false, false, false, false);
            while let Some(&c) = cs.get(i) {
                match c {
                    '-' => left = true,
                    '+' => plus = true,
                    ' ' => space = true,
                    '#' => alt = true,
                    '0' => zero = true,
                    _ => break,
                }
                i += 1;
            }
            let number = |i: &mut usize| {
                let from = *i;
                while cs.get(*i).is_some_and(char::is_ascii_digit) {
                    *i += 1;
                }
                cs[from..*i].iter().collect::<String>().parse::<usize>().ok()
            };
            let width = number(&mut i).unwrap_or(0);
            let prec = if cs.get(i) == Some(&'.') {
                i += 1;
                Some(number(&mut i).unwrap_or(0))
            } else {
                None
            };
            while matches!(cs.get(i), Some('l' | 'h' | 'L')) {
                i += 1;
            }
            let conv = *cs.get(i).ok_or("E766: Insufficient arguments for printf()")?;
            i += 1;
            if conv == '%' {
                out.push('%');
                continue;
            }
            let arg = args.next().ok_or("E766: Insufficient arguments for printf()")?;
            let mut numeric = true;
            let body = match conv {
                'd' | 'i' => {
                    let n = self.to_int(arg)?;
                    let digits = n.unsigned_abs().to_string();
                    let sign = if n < 0 { "-" } else if plus { "+" } else if space { " " } else { "" };
                    format!("{sign}{digits}")
                }
                'u' => (self.to_int(arg)? as u64).to_string(),
                'x' | 'X' | 'o' | 'b' | 'B' => {
                    let n = self.to_int(arg)? as u64;
                    let (digits, prefix) = match conv {
                        'x' => (format!("{n:x}"), "0x"),
                        'X' => (format!("{n:X}"), "0X"),
                        'o' => (format!("{n:o}"), "0"),
                        'b' => (format!("{n:b}"), "0b"),
                        _ => (format!("{n:b}"), "0B"),
                    };
                    if alt && n != 0 { format!("{prefix}{digits}") } else { digits }
                }
                'c' => {
                    numeric = false;
                    u32::try_from(self.to_int(arg)?).ok().and_then(char::from_u32).map(String::from).unwrap_or_default()
                }
                's' | 'S' => {
                    numeric = false;
                    let t = match arg {
                        Value::List(_) => arg.literal(),
                        v => v.text(),
                    };
                    match prec {
                        Some(p) => t.chars().take(p).collect(),
                        None => t,
                    }
                }
                'f' | 'F' | 'e' | 'E' | 'g' | 'G' => {
                    let x = self.to_float(arg)?;
                    let p = prec.unwrap_or(6);
                    let t = match conv {
                        'f' | 'F' => format!("{x:.p$}"),
                        'e' | 'E' => fmt_e(x, p, conv == 'E'),
                        _ => {
                            let g = fmt_g(x, p);
                            if conv == 'G' { g.to_uppercase() } else { g }
                        }
                    };
                    if x >= 0.0 && plus { format!("+{t}") } else if x >= 0.0 && space { format!(" {t}") } else { t }
                }
                _ => return Err(format!("E767: Invalid format specifier: %{conv}")),
            };
            // Minimum digits of an integer conversion.
            let body = match (prec, matches!(conv, 'd' | 'i' | 'u' | 'x' | 'X' | 'o' | 'b' | 'B')) {
                (Some(p), true) => {
                    let (sign, digits) = body.split_at(body.find(|c: char| c.is_ascii_alphanumeric()).unwrap_or(0));
                    format!("{sign}{}{digits}", "0".repeat(p.saturating_sub(digits.len())))
                }
                _ => body,
            };
            let len = body.chars().count();
            if len >= width {
                out.push_str(&body);
            } else if left {
                out.push_str(&body);
                out.push_str(&" ".repeat(width - len));
            } else if zero && numeric && prec.is_none_or(|_| !matches!(conv, 'd' | 'i' | 'u' | 'x' | 'X' | 'o' | 'b' | 'B')) {
                let at = body.find(|c: char| c.is_ascii_digit() || c == '.').unwrap_or(0);
                let at = if body[at..].starts_with("0x") || body[at..].starts_with("0X") || body[at..].starts_with("0b") || body[at..].starts_with("0B") { at + 2 } else { at };
                out.push_str(&body[..at]);
                out.push_str(&"0".repeat(width - len));
                out.push_str(&body[at..]);
            } else {
                out.push_str(&" ".repeat(width - len));
                out.push_str(&body);
            }
        }
        if args.next().is_some() {
            return Err("E767: Too many arguments for printf()".into());
        }
        Ok(out)
    }
}
