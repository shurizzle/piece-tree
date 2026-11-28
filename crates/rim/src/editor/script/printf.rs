//! `printf()`: a port of `vim_vsnprintf_typval` and `parse_fmt_types` (`strings.c`), `f_printf` (`eval/funcs.c`).
//!
//! The C code writes bytes and stops where its buffer ends; here the output is a `String` (always UTF-8, see
//! Differences in docs/reference/vimscript.md): a cut inside a multibyte char (`%.1s` of "é") gives U+FFFD where Neovim
//! gives the bare byte, and `%c` of a number above 127 is U+FFFD (Neovim writes one byte).

use super::Value;
use crate::{editor::Editor, string_builder::StringBuilder};

const MAX_ALLOWED_STRING_WIDTH: u32 = 1_048_576;

/// What the argument of a conversion has to be (`format_typeof`), to tell two uses of one positional argument apart.
#[derive(Clone, Copy, PartialEq)]
enum Ty {
    Unknown,
    Int,
    LongInt,
    LongLongInt,
    UnsignedInt,
    SignedSizeT,
    UnsignedLongInt,
    UnsignedLongLongInt,
    SizeT,
    Pointer,
    Percent,
    Char,
    Str,
    Float,
}

impl Ty {
    fn name(self) -> &'static str {
        match self {
            Ty::Unknown => "unknown",
            Ty::Int => "int",
            Ty::LongInt => "long int",
            Ty::LongLongInt => "long long int",
            Ty::UnsignedInt => "unsigned int",
            Ty::SignedSizeT => "signed size_t",
            Ty::UnsignedLongInt => "unsigned long int",
            Ty::UnsignedLongLongInt => "unsigned long long int",
            Ty::SizeT => "size_t",
            Ty::Pointer => "pointer",
            Ty::Percent => "percent",
            Ty::Char => "char",
            Ty::Str => "string",
            Ty::Float => "float",
        }
    }
}

/// `format_typeof`: `spec` starts at the length modifier of a conversion (or at the `*` of a field width).
fn format_typeof(spec: &str) -> Ty {
    let b = spec.as_bytes();
    let g = |i: usize| b.get(i).copied().unwrap_or(0);
    let mut i = 0;
    let mut length_modifier = 0u8;
    if matches!(g(0), b'h' | b'l' | b'z') {
        length_modifier = g(0);
        i += 1;
        if length_modifier == b'l' && g(i) == b'l' {
            length_modifier = b'L';
            i += 1;
        }
    }
    let mut fmt_spec = g(i);
    match fmt_spec {
        b'i' => fmt_spec = b'd',
        b'*' => {
            fmt_spec = b'd';
            length_modifier = b'h';
        }
        b'D' => {
            fmt_spec = b'd';
            length_modifier = b'l';
        }
        b'U' => {
            fmt_spec = b'u';
            length_modifier = b'l';
        }
        b'O' => {
            fmt_spec = b'o';
            length_modifier = b'l';
        }
        _ => {}
    }
    match fmt_spec {
        b'%' => Ty::Percent,
        b'c' => Ty::Char,
        b's' | b'S' => Ty::Str,
        b'd' | b'u' | b'b' | b'B' | b'o' | b'x' | b'X' | b'p' => {
            if fmt_spec == b'p' {
                Ty::Pointer
            } else if fmt_spec == b'b' || fmt_spec == b'B' {
                Ty::UnsignedLongLongInt
            } else if fmt_spec == b'd' {
                match length_modifier {
                    0 | b'h' => Ty::Int,
                    b'l' => Ty::LongInt,
                    b'L' => Ty::LongLongInt,
                    _ => Ty::SignedSizeT,
                }
            } else {
                match length_modifier {
                    0 | b'h' => Ty::UnsignedInt,
                    b'l' => Ty::UnsignedLongInt,
                    b'L' => Ty::UnsignedLongLongInt,
                    _ => Ty::SizeT,
                }
            }
        }
        b'f' | b'F' | b'e' | b'E' | b'g' | b'G' => Ty::Float,
        _ => Ty::Unknown,
    }
}

/// Where the digits of a number end: `get_unsigned_int` (`None` is its FAIL, the error given).
fn get_unsigned_int(e: &mut Editor, s: &str, from: usize, p: &mut usize, overflow_err: bool) -> Option<u32> {
    let b = s.as_bytes();
    let g = |i: usize| b.get(i).copied().unwrap_or(0);
    let mut uj = u32::from(g(*p) - b'0');
    *p += 1;
    while g(*p).is_ascii_digit() && uj < MAX_ALLOWED_STRING_WIDTH {
        uj = 10 * uj + u32::from(g(*p) - b'0');
        *p += 1;
    }
    if uj > MAX_ALLOWED_STRING_WIDTH {
        if overflow_err {
            format_overflow_error(e, s, from);
            return None;
        }
        uj = MAX_ALLOWED_STRING_WIDTH;
    }
    Some(uj)
}

fn format_overflow_error(e: &mut Editor, s: &str, from: usize) {
    let len = s.as_bytes()[from..].iter().take_while(|c| c.is_ascii_digit()).count();
    e.error(format!("E1510: Value too large: {}", &s[from..from + len]));
}

/// `adjust_types`: remembers the type of positional argument `arg` (1-based); `types[arg - 1]` is where in the
/// format its conversion starts. False is FAIL (the error given).
fn adjust_types(e: &mut Editor, types: &mut Vec<Option<usize>>, fmt: &str, arg: i64, at: usize) -> bool {
    if arg <= 0 {
        e.error(format!("E1505: Invalid format specifier: {}", &fmt[at..]));
        return false;
    }
    let arg = arg as usize;
    if types.len() < arg {
        types.resize(arg, None);
    }
    if let Some(old) = types[arg - 1] {
        let (old_s, new_s) = (&fmt[old..], &fmt[at..]);
        if old_s.starts_with('*') || new_s.starts_with('*') {
            let pt = if new_s.starts_with('*') { old_s } else { new_s };
            if !pt.starts_with('*') && !matches!(pt.as_bytes().first(), Some(b'd' | b'i')) {
                e.error(format!(
                    "E1502: Positional argument {arg} used as field width reused as different type: {}/{}",
                    format_typeof(old_s).name(),
                    format_typeof(new_s).name()
                ));
                return false;
            }
        } else if format_typeof(new_s) != format_typeof(old_s) {
            e.error(format!(
                "E1504: Positional argument {arg} type used inconsistently: {}/{}",
                format_typeof(new_s).name(),
                format_typeof(old_s).name()
            ));
            return false;
        }
    }
    types[arg - 1] = Some(at);
    true
}

/// `parse_fmt_types`: checks the positional arguments of `fmt`. Returns the types, `None` after an error was given.
fn parse_fmt_types(e: &mut Editor, fmt: &str, nargs: usize) -> Option<Vec<Option<usize>>> {
    let b = fmt.as_bytes();
    let g = |i: usize| b.get(i).copied().unwrap_or(0);
    let mut types: Vec<Option<usize>> = Vec::new();
    let (mut any_pos, mut any_arg) = (false, false);
    let mixed = |e: &mut Editor| e.error(format!("E1500: Cannot mix positional and non-positional arguments: {fmt}"));
    let invalid = |e: &mut Editor| e.error(format!("E1505: Invalid format specifier: {fmt}"));
    let mut p = 0;
    while p < b.len() {
        if g(p) != b'%' {
            p += b[p + 1..].iter().position(|&c| c == b'%').map_or(b.len() - p, |n| n + 1);
            continue;
        }
        let mut pos_arg: i64 = -1;
        let pstart = p + 1;
        p += 1;
        let mut ptype = p;
        while g(ptype).is_ascii_digit() {
            ptype += 1;
        }
        if g(ptype) == b'$' {
            if g(p) == b'0' {
                invalid(e);
                return None;
            }
            let uj = get_unsigned_int(e, fmt, pstart, &mut p, true)?;
            pos_arg = i64::from(uj);
            any_pos = true;
            if any_pos && any_arg {
                mixed(e);
                return None;
            }
            p += 1;
        }
        while matches!(g(p), b'0' | b'-' | b'+' | b' ' | b'#' | b'\'') {
            p += 1;
        }
        // field width
        let arg = p;
        if g(p) == b'*' {
            p += 1;
            if g(p).is_ascii_digit() {
                let uj = get_unsigned_int(e, fmt, arg + 1, &mut p, true)?;
                if g(p) != b'$' {
                    invalid(e);
                    return None;
                }
                p += 1;
                any_pos = true;
                if any_pos && any_arg {
                    mixed(e);
                    return None;
                }
                if !adjust_types(e, &mut types, fmt, i64::from(uj), arg) {
                    return None;
                }
            } else {
                any_arg = true;
                if any_pos && any_arg {
                    mixed(e);
                    return None;
                }
            }
        } else if g(p).is_ascii_digit() {
            let digstart = p;
            get_unsigned_int(e, fmt, digstart, &mut p, true)?;
            if g(p) == b'$' {
                invalid(e);
                return None;
            }
        }
        // precision
        if g(p) == b'.' {
            p += 1;
            let arg = p;
            if g(p) == b'*' {
                p += 1;
                if g(p).is_ascii_digit() {
                    let uj = get_unsigned_int(e, fmt, arg + 1, &mut p, true)?;
                    if g(p) == b'$' {
                        any_pos = true;
                        if any_pos && any_arg {
                            mixed(e);
                            return None;
                        }
                        p += 1;
                        if !adjust_types(e, &mut types, fmt, i64::from(uj), arg) {
                            return None;
                        }
                    } else {
                        invalid(e);
                        return None;
                    }
                } else {
                    any_arg = true;
                    if any_pos && any_arg {
                        mixed(e);
                        return None;
                    }
                }
            } else if g(p).is_ascii_digit() {
                let digstart = p;
                get_unsigned_int(e, fmt, digstart, &mut p, true)?;
                if g(p) == b'$' {
                    invalid(e);
                    return None;
                }
            }
        }
        if pos_arg != -1 {
            any_pos = true;
            if any_pos && any_arg {
                mixed(e);
                return None;
            }
            ptype = p;
        }
        if matches!(g(p), b'h' | b'l' | b'z') {
            let lm = g(p);
            p += 1;
            if lm == b'l' && g(p) == b'l' {
                p += 1;
            }
        }
        match g(p) {
            b'i' | b'*' | b'd' | b'u' | b'o' | b'D' | b'U' | b'O' | b'x' | b'X' | b'b' | b'B' | b'c' | b's' | b'S' | b'p' | b'f' | b'F' | b'e' | b'E' | b'g' | b'G' => {
                if pos_arg != -1 {
                    if !adjust_types(e, &mut types, fmt, pos_arg, ptype) {
                        return None;
                    }
                } else {
                    any_arg = true;
                    if any_pos && any_arg {
                        mixed(e);
                        return None;
                    }
                }
            }
            _ => {
                if pos_arg != -1 {
                    mixed(e);
                    return None;
                }
            }
        }
        if g(p) != 0 {
            p += 1;
        }
    }
    for (i, t) in types.iter().enumerate() {
        if t.is_none() {
            e.error(format!("E1501: format argument {} unused in $-style format: {fmt}", i + 1));
            return None;
        }
        if i >= nargs {
            e.error(format!("E1503: Positional argument {} out of bounds: {fmt}", i + 1));
            return None;
        }
    }
    Some(types)
}

/// The text of the number conversions of C's `snprintf("%e")`: `1.500000e+03`.
fn c_exp_in<B: StringBuilder>(s: &mut B, f: f64, prec: usize, upper: bool) {
    let start = s.len();
    s.reserve(prec + 8);

    if upper {
        let _ = write!(s, "{f:.prec$E}");
    } else {
        let _ = write!(s, "{f:.prec$e}");
    }

    let Some(rel_e) = s[start..].rfind(['e', 'E']) else {
        return; // NaN o inf
    };

    let e_pos = start + rel_e;
    let exp: i32 = s[e_pos + 1..].parse().expect("a number");

    s.truncate(e_pos + 1);
    let _ = write!(s, "{exp:+03}");
}

/// The floating point branch of `vim_vsnprintf_typval`: `%f %F %e %E %g %G`. Returns the text and whether the `0`
/// flag still applies (not to inf and nan). `%g` is never C's: the plain form between 0.001 and 1e7, else the
/// exponent form, with the zeros trimmed.
pub(super) fn format_float_in<B: StringBuilder>(
    t: &mut B,
    f: f64,
    spec: char,
    precision: Option<usize>,
    force_sign: bool,
    space_for_positive: bool,
) -> bool {
    let abs_f = f.abs();
    let remove_trailing_zeroes = matches!(spec, 'g' | 'G');
    let spec = if remove_trailing_zeroes {
        if (0.001..10_000_000.0).contains(&abs_f) || abs_f == 0.0 {
            if spec.is_ascii_uppercase() { 'F' } else { 'f' }
        } else if spec == 'g' {
            'e'
        } else {
            'E'
        }
    } else {
        spec
    };

    if f.is_infinite() || (matches!(spec, 'f' | 'F') && abs_f > 1.0e307) {
        let idx = usize::from(f > 0.0)
            * (1 + usize::from(force_sign) + usize::from(force_sign && space_for_positive))
            + if spec.is_ascii_uppercase() { 4 } else { 0 };
        const TABLE: [&str; 8] = ["-inf", "inf", "+inf", " inf", "-INF", "INF", "+INF", " INF"];
        t.push_str(TABLE[idx]);
        return false;
    }

    if f.is_nan() {
        t.push_str(if spec.is_ascii_uppercase() { "NAN" } else { "nan" });
        return false;
    }

    let prec = match precision {
        Some(p) => {
            let mut max_prec = 340;
            if matches!(spec, 'f' | 'F') && abs_f > 1.0 {
                max_prec -= abs_f.log10() as usize;
            }
            p.min(max_prec)
        }
        None => 6,
    };

    let int_digits = if matches!(spec, 'f' | 'F') && abs_f >= 1.0 {
        abs_f.log10() as usize + 1
    } else {
        1
    };
    let start = t.len();
    t.reserve(int_digits + prec + 8);

    if force_sign && !f.is_sign_negative() {
        t.push(if space_for_positive { ' ' } else { '+' });
    }

    match (spec, remove_trailing_zeroes) {
        ('f' | 'F', _) => {
            let _ = write!(t, "{f:.prec$}");
        }
        ('e', true) => {
            let _ = write!(t, "{f:.prec$e}");
        }
        ('E', true) => {
            let _ = write!(t, "{f:.prec$E}");
        }
        ('e', false) => c_exp_in(t, f, prec, false),
        ('E', false) => c_exp_in(t, f, prec, true),
        _ => unreachable!("g was turned into f or e"),
    }

    if remove_trailing_zeroes && precision.is_none() {
        let mantissa_end = if matches!(spec, 'f' | 'F') {
            t.len()
        } else {
            t[start..].rfind(['e', 'E']).map_or(t.len(), |i| start + i)
        };

        let bytes = t.as_bytes();
        let mut end = mantissa_end;
        while end > start + 3 && bytes[end - 1] == b'0' && bytes[end - 2] != b'.' {
            end -= 1;
        }

        if end < mantissa_end {
            if mantissa_end == t.len() {
                t.truncate(end);
            } else {
                t.drain(end..mantissa_end);
            }
        }
    }

    true
}

pub(super) fn format_float(
    f: f64,
    spec: char,
    precision: Option<usize>,
    force_sign: bool,
    space_for_positive: bool,
) -> (String, bool) {
    let mut t = String::new();
    let finite = format_float_in(&mut t, f, spec, precision, force_sign, space_for_positive);
    (t, finite)
}

/// The arguments of the call, read the way `tv_nr`, `tv_str` and `tv_float` do (`arg_idx` counts from 1).
struct Args<'a> {
    vals: &'a [Value],
    idx: usize,
}

impl Editor {
    fn tv_nr(&mut self, a: &mut Args) -> i64 {
        let Some(v) = a.vals.get(a.idx - 1) else {
            self.error("E766: Insufficient arguments for printf()");
            return 0;
        };
        a.idx += 1;
        match self.to_int(v) {
            Ok(n) => n,
            Err(m) => {
                self.error(m);
                0
            }
        }
    }

    fn tv_float(&mut self, a: &mut Args) -> f64 {
        let Some(v) = a.vals.get(a.idx - 1) else {
            self.error("E766: Insufficient arguments for printf()");
            return 0.0;
        };
        a.idx += 1;
        match v {
            Value::Float(f) => *f,
            Value::Int(n) => *n as f64,
            _ => {
                self.error("E807: Expected Float argument for printf()");
                0.0
            }
        }
    }

    /// `None` is NULL: an argument is missing.
    fn tv_str_arg(&mut self, a: &mut Args) -> Option<String> {
        let Some(v) = a.vals.get(a.idx - 1) else {
            self.error("E766: Insufficient arguments for printf()");
            return None;
        };
        a.idx += 1;
        Some(match v {
            Value::Str(_) | Value::Int(_) => v.text(),
            v => v.echo(),
        })
    }

    /// `f_printf`: the format and the arguments to a string; an error leaves it empty (after being given).
    pub(super) fn f_printf_impl(&mut self, fmt: &Value, args: &[Value]) -> String {
        let saved_did_emsg = self.scripts.did_emsg;
        self.scripts.did_emsg = false;
        let fmt = match self.to_string(fmt) {
            Ok(s) => s,
            Err(m) => {
                self.error(m);
                String::new()
            }
        };
        // C formats twice: once for the length, and for real when that gave no error. Under `:silent!` an error does
        // not set `did_emsg`, so it is given twice.
        let mut out = self.vim_vsnprintf_typval(&fmt, args);
        if !self.scripts.did_emsg {
            out = self.vim_vsnprintf_typval(&fmt, args);
        }
        let failed = self.scripts.did_emsg;
        self.scripts.did_emsg |= saved_did_emsg;
        if failed {
            return String::new();
        }
        // A C string ends at a NUL (`%c` of 0).
        match out.find('\0') {
            Some(i) => out[..i].to_string(),
            None => out,
        }
    }

    fn vim_vsnprintf_typval(&mut self, fmt: &str, vals: &[Value]) -> String {
        let types = match parse_fmt_types(self, fmt, vals.len()) {
            Some(t) => t,
            None => return String::new(),
        };
        let num_posarg = types.len();
        let mut a = Args { vals, idx: 1 };
        let mut out = String::new();
        let b = fmt.as_bytes();
        let g = |i: usize| b.get(i).copied().unwrap_or(0);
        let mut p = 0;
        while p < b.len() {
            if b[p] != b'%' {
                let n = b[p + 1..].iter().position(|&c| c == b'%').map_or(b.len() - p, |n| n + 1);
                out.push_str(&fmt[p..p + n]);
                p += n;
                continue;
            }
            let mut min_field_width: usize = 0;
            let mut precision: usize = 0;
            let mut zero_padding = false;
            let mut precision_specified = false;
            let mut justify_left = false;
            let mut alternate_form = false;
            let mut force_sign = false;
            let mut space_for_positive = true;
            let mut length_modifier = 0u8;
            let mut number_of_zeros_to_pad: usize = 0;
            let mut zero_padding_insertion_ind: usize = 0;
            let mut pos_arg: i64 = -1;
            p += 1;
            let mut ptype = p;
            while g(ptype).is_ascii_digit() {
                ptype += 1;
            }
            let _ = ptype;
            if g(ptype) == b'$' {
                let digstart = p;
                let Some(uj) = get_unsigned_int(self, fmt, digstart, &mut p, true) else { return out };
                pos_arg = i64::from(uj);
                p += 1;
            }
            loop {
                match g(p) {
                    b'0' => zero_padding = true,
                    b'-' => justify_left = true,
                    b'+' => {
                        force_sign = true;
                        space_for_positive = false;
                    }
                    b' ' => force_sign = true,
                    b'#' => alternate_form = true,
                    b'\'' => {}
                    _ => break,
                }
                p += 1;
            }
            // field width
            if g(p) == b'*' {
                let digstart = p + 1;
                p += 1;
                if g(p).is_ascii_digit() {
                    let Some(uj) = get_unsigned_int(self, fmt, digstart, &mut p, true) else { return out };
                    a.idx = uj as usize;
                    p += 1;
                }
                let j = self.tv_nr(&mut a);
                if j > i64::from(MAX_ALLOWED_STRING_WIDTH) {
                    format_overflow_error(self, fmt, digstart);
                    return out;
                }
                if j >= 0 {
                    min_field_width = j as usize;
                } else {
                    min_field_width = (-j) as usize;
                    justify_left = true;
                }
            } else if g(p).is_ascii_digit() {
                let digstart = p;
                let Some(uj) = get_unsigned_int(self, fmt, digstart, &mut p, true) else { return out };
                min_field_width = uj as usize;
            }
            // precision
            if g(p) == b'.' {
                p += 1;
                precision_specified = true;
                if g(p).is_ascii_digit() {
                    let digstart = p;
                    let Some(uj) = get_unsigned_int(self, fmt, digstart, &mut p, true) else { return out };
                    precision = uj as usize;
                } else if g(p) == b'*' {
                    let digstart = p;
                    p += 1;
                    if g(p).is_ascii_digit() {
                        let Some(uj) = get_unsigned_int(self, fmt, digstart, &mut p, true) else { return out };
                        a.idx = uj as usize;
                        p += 1;
                    }
                    let j = self.tv_nr(&mut a);
                    if j > i64::from(MAX_ALLOWED_STRING_WIDTH) {
                        format_overflow_error(self, fmt, digstart);
                        return out;
                    }
                    if j >= 0 {
                        precision = j as usize;
                    } else {
                        precision_specified = false;
                        precision = 0;
                    }
                }
            }
            if matches!(g(p), b'h' | b'l' | b'z') {
                length_modifier = g(p);
                p += 1;
                if length_modifier == b'l' && g(p) == b'l' {
                    length_modifier = b'L';
                    p += 1;
                }
            }
            let mut fmt_spec = g(p);
            match fmt_spec {
                b'i' => fmt_spec = b'd',
                b'D' => {
                    fmt_spec = b'd';
                    length_modifier = b'l';
                }
                b'U' => {
                    fmt_spec = b'u';
                    length_modifier = b'l';
                }
                b'O' => {
                    fmt_spec = b'o';
                    length_modifier = b'l';
                }
                _ => {}
            }
            if matches!(fmt_spec, b'd' | b'u' | b'o' | b'x' | b'X') && length_modifier == 0 {
                length_modifier = b'L';
            }
            if pos_arg != -1 {
                a.idx = pos_arg as usize;
            }
            // The text of the conversion, and how much of it is meant (`str_arg`, `str_arg_l`).
            let mut str_arg: Vec<u8> = Vec::new();
            let mut str_arg_l: usize;
            match fmt_spec {
                b'%' | b'c' | b's' | b'S' => {
                    str_arg_l = 1;
                    match fmt_spec {
                        b'%' => str_arg = vec![b'%'],
                        b'c' => {
                            let j = self.tv_nr(&mut a);
                            // A byte (`unsigned char`); one above 127 is no UTF-8.
                            str_arg = vec![j as u8];
                        }
                        _ => {
                            match self.tv_str_arg(&mut a) {
                                None => {
                                    str_arg = b"[NULL]".to_vec();
                                    str_arg_l = 6;
                                }
                                Some(s) => {
                                    str_arg = s.into_bytes();
                                    if !precision_specified {
                                        str_arg_l = str_arg.len();
                                    } else if precision == 0 {
                                        str_arg_l = 0;
                                    } else {
                                        let cap = precision.min(0x7fff_ffff).min(str_arg.len());
                                        str_arg_l = str_arg[..cap].iter().position(|&c| c == 0).unwrap_or(cap);
                                    }
                                }
                            }
                            if fmt_spec == b'S' {
                                let s = String::from_utf8_lossy(&str_arg).into_owned();
                                let (mut i, mut len) = (0usize, 0usize);
                                for ch in s.chars() {
                                    let cell = crate::editor::graphemes::width(ch.encode_utf8(&mut [0; 4]), 1);
                                    if precision_specified && i + cell > precision {
                                        break;
                                    }
                                    i += cell;
                                    len += ch.len_utf8();
                                }
                                // utfc_ptr2len keeps a base char with its composing chars; this goes by code point.
                                str_arg_l = len;
                                if min_field_width != 0 {
                                    min_field_width += str_arg_l - i;
                                }
                            }
                        }
                    }
                }
                b'd' | b'u' | b'b' | b'B' | b'o' | b'x' | b'X' | b'p' => {
                    let mut arg: i64 = 0;
                    let mut uarg: u64 = 0;
                    if fmt_spec == b'p' {
                        // shortcut: a pointer is the address of the container in Neovim, which no output of rim can equal; it is read as the number
                        uarg = self.tv_nr(&mut a) as u64;
                    } else if fmt_spec == b'b' || fmt_spec == b'B' {
                        uarg = self.tv_nr(&mut a) as u64;
                    } else if fmt_spec == b'd' {
                        arg = match length_modifier {
                            0 => i64::from(self.tv_nr(&mut a) as i32),
                            b'h' => i64::from(self.tv_nr(&mut a) as i32 as i16),
                            _ => self.tv_nr(&mut a),
                        };
                    } else {
                        let n = self.tv_nr(&mut a);
                        uarg = match length_modifier {
                            0 => u64::from(n as u32),
                            b'h' => u64::from(n as u32 as u16),
                            _ => n as u64,
                        };
                    }
                    let arg_sign: i32 = if fmt_spec == b'd' { arg.signum() as i32 } else { i32::from(uarg != 0) };
                    str_arg_l = 0;
                    if precision_specified {
                        zero_padding = false;
                    }
                    if fmt_spec == b'd' {
                        if force_sign && arg_sign >= 0 {
                            str_arg.push(if space_for_positive { b' ' } else { b'+' });
                            str_arg_l += 1;
                        }
                    } else if alternate_form && arg_sign != 0 && matches!(fmt_spec, b'x' | b'X' | b'b' | b'B') {
                        str_arg.push(b'0');
                        str_arg.push(fmt_spec);
                        str_arg_l += 2;
                    }
                    zero_padding_insertion_ind = str_arg_l;
                    if !precision_specified {
                        precision = 1;
                    }
                    if precision == 0 && arg_sign == 0 {
                        // an explicit precision 0 and a zero value: nothing
                    } else {
                        let digits = match fmt_spec {
                            b'p' => format!("{uarg:#x}"),
                            b'd' => arg.to_string(),
                            b'b' | b'B' => {
                                if uarg == 0 { String::new() } else { format!("{uarg:b}") }
                            }
                            b'u' => uarg.to_string(),
                            b'o' => format!("{uarg:o}"),
                            b'x' => format!("{uarg:x}"),
                            _ => format!("{uarg:X}"),
                        };
                        str_arg.extend_from_slice(digits.as_bytes());
                        str_arg_l += digits.len();
                        if zero_padding_insertion_ind < str_arg_l && str_arg[zero_padding_insertion_ind] == b'-' {
                            zero_padding_insertion_ind += 1;
                        }
                        if zero_padding_insertion_ind + 1 < str_arg_l
                            && str_arg[zero_padding_insertion_ind] == b'0'
                            && matches!(str_arg[zero_padding_insertion_ind + 1], b'x' | b'X' | b'b' | b'B')
                        {
                            zero_padding_insertion_ind += 2;
                        }
                    }
                    let num_of_digits = str_arg_l - zero_padding_insertion_ind;
                    if alternate_form && fmt_spec == b'o' && !(zero_padding_insertion_ind < str_arg_l && str_arg[zero_padding_insertion_ind] == b'0') && (!precision_specified || precision < num_of_digits + 1) {
                        // a leading zero for octal in the alternate form
                        precision = num_of_digits + 1;
                    }
                    if num_of_digits < precision {
                        number_of_zeros_to_pad = precision - num_of_digits;
                    }
                    if !justify_left && zero_padding {
                        let n = min_field_width as i64 - (str_arg_l + number_of_zeros_to_pad) as i64;
                        if n > 0 {
                            number_of_zeros_to_pad += n as usize;
                        }
                    }
                }
                b'f' | b'F' | b'e' | b'E' | b'g' | b'G' => {
                    let f = self.tv_float(&mut a);
                    let (t, keep_zero) = format_float(f, fmt_spec as char, precision_specified.then_some(precision), force_sign, space_for_positive);
                    if !keep_zero {
                        zero_padding = false;
                    }
                    str_arg_l = t.len();
                    if zero_padding && min_field_width > str_arg_l && (t.starts_with('-') || force_sign) {
                        // Zeros go after the sign.
                        number_of_zeros_to_pad = min_field_width - str_arg_l;
                        zero_padding_insertion_ind = 1;
                    }
                    str_arg = t.into_bytes();
                }
                _ => {
                    // An unknown conversion is kept as it is.
                    zero_padding = false;
                    justify_left = true;
                    min_field_width = 0;
                    str_arg = if p < b.len() { vec![b[p]] } else { Vec::new() };
                    str_arg_l = str_arg.len();
                }
            }
            if g(p) != 0 {
                p += 1;
            }
            // Padding to the left, then the zeros of the precision, the text, the padding to the right.
            let mut bytes: Vec<u8> = Vec::new();
            if !justify_left && min_field_width > str_arg_l + number_of_zeros_to_pad {
                let pn = min_field_width - (str_arg_l + number_of_zeros_to_pad);
                bytes.extend(std::iter::repeat_n(if zero_padding { b'0' } else { b' ' }, pn));
            }
            if number_of_zeros_to_pad == 0 {
                zero_padding_insertion_ind = 0;
            } else {
                bytes.extend_from_slice(&str_arg[..zero_padding_insertion_ind.min(str_arg.len())]);
                bytes.extend(std::iter::repeat_n(b'0', number_of_zeros_to_pad));
            }
            if str_arg_l > zero_padding_insertion_ind {
                bytes.extend_from_slice(&str_arg[zero_padding_insertion_ind..str_arg_l.min(str_arg.len())]);
            }
            if justify_left && min_field_width > str_arg_l + number_of_zeros_to_pad {
                bytes.extend(std::iter::repeat_n(b' ', min_field_width - (str_arg_l + number_of_zeros_to_pad)));
            }
            out.push_str(&String::from_utf8_lossy(&bytes));
        }
        let at = if num_posarg != 0 { num_posarg } else { a.idx - 1 };
        if at < vals.len() {
            self.error("E767: Too many arguments to printf()");
        }
        out
    }
}
