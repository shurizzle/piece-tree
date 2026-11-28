//! `setreg()`: port of `f_setreg` (eval/funcs.c) and `write_reg_contents_ex`/`_lst` (register.c).

use super::{
    Value,
    funcs::int,
};
use crate::editor::{
    Editor,
    registers::{RegSource, YType},
};

/// `get_yank_type`: the motion type at the start of `s` (`v c V l b ^V`, a block with the width `b7`); the length it takes.
fn get_yank_type(s: &str) -> Option<(YType, usize)> {
    let mut chars = s.chars();
    let first = chars.next()?;
    match first {
        'v' | 'c' => Some((YType::Char, 1)),
        'V' | 'l' => Some((YType::Line, 1)),
        'b' | '\x16' => {
            let digits: String = s[1..].chars().take_while(char::is_ascii_digit).collect();
            if digits.is_empty() {
                Some((YType::Block(None), 1))
            } else {
                let n: i64 = digits.parse().unwrap_or(i64::MAX);
                // `getdigits_int(.., 0) - 1`: a width of 0 gives -1, which is "not given".
                Some((YType::Block(usize::try_from(n - 1).ok()), 1 + digits.len()))
            }
        }
        _ => None,
    }
}

pub(super) fn f_setreg(e: &mut Editor, a: &[Value]) -> Value {
    let Some(strreg) = e.str_chk(&a[0]) else { return int(1) };
    let mut regname = strreg.chars().next().unwrap_or('"');
    if regname == '@' {
        regname = '"';
    }
    let mut yank = YType::Unknown;
    let mut point: Option<char> = None;
    let contents: Option<Value>;
    if let Value::Dict(d) = &a[1] {
        let d = d.borrow();
        if d.is_empty() {
            // An empty Dictionary clears the register, as `setreg(0, [])`.
            drop(d);
            write_lines(e, regname, Vec::new(), false, YType::Unknown);
            return int(1);
        }
        contents = d.get("regcontents").cloned();
        if let Some(Value::Str(t)) = d.get("regtype").cloned() {
            match get_yank_type(&t) {
                Some((y, len)) if len == t.len() => yank = y,
                _ => {
                    drop(d);
                    e.error("E475: Invalid value for argument value");
                    return int(1);
                }
            }
        }
        if regname == '"' {
            if let Some(Value::Str(t)) = d.get("points_to").cloned() {
                point = t.chars().next();
                if let Some(c) = point {
                    regname = c;
                }
            }
        } else if d.get("isunnamed").is_some_and(|v| matches!(v, Value::Int(n) if *n != 0)) {
            point = Some(regname);
        }
    } else {
        contents = Some(a[1].clone());
    }
    let (mut append, mut set_unnamed) = (false, false);
    if let Some(opt) = a.get(2) {
        if yank != YType::Unknown {
            e.error("E118: Too many arguments for function: setreg");
            return int(1);
        }
        let Some(opt) = e.str_chk(opt) else { return int(1) };
        let mut i = 0;
        while i < opt.len() {
            match opt.as_bytes()[i] {
                b'a' | b'A' => append = true,
                b'u' | b'"' => set_unnamed = true,
                _ => {
                    if let Some((y, len)) = get_yank_type(&opt[i..]) {
                        yank = y;
                        i += len - 1;
                    }
                }
            }
            i += 1;
        }
    }
    match &contents {
        Some(Value::List(l)) => {
            let mut lines = Vec::new();
            let mut failed = false;
            for item in l.borrow().iter() {
                // An item that is not a String stops the write, but `setreg()` still ends as done (`goto free_lstval`).
                match e.str_chk(item) {
                    Some(s) => lines.push(s),
                    None => {
                        failed = true;
                        break;
                    }
                }
            }
            if !failed {
                write_lines(e, regname, lines, append, yank);
            }
        }
        Some(v) => {
            let Some(s) = e.str_chk(v) else { return int(1) };
            write_str(e, regname, s, append, yank);
        }
        None => {}
    }
    if let Some(p) = point {
        e.regs.set_previous(p);
    }
    if set_unnamed {
        e.regs.set_previous(regname);
    }
    int(0)
}

/// `valid_yank_reg(name, true)`.
fn valid_for_writing(c: char) -> bool {
    c.is_ascii_alphanumeric() || matches!(c, '#' | '"' | '-' | '_' | '*' | '+')
}

/// `write_reg_contents_lst`.
fn write_lines(e: &mut Editor, name: char, lines: Vec<String>, append: bool, yank: YType) {
    if matches!(name, '/' | '=') {
        match lines.as_slice() {
            [] => write_str(e, name, String::new(), append, yank),
            [one] => write_str(e, name, one.clone(), append, yank),
            _ => e.error("E883: Search pattern and expression register may not contain two or more lines"),
        }
        return;
    }
    if name == '_' {
        return;
    }
    if !valid_for_writing(name) {
        return e.error(format!("E354: Invalid register name: '{}'", crate::editor::messages::trans(&name.to_string(), false)));
    }
    e.regs.str_to_reg(name, RegSource::Lines(lines), yank, append);
}

/// `write_reg_contents_ex`.
fn write_str(e: &mut Editor, name: char, text: String, append: bool, yank: YType) {
    match name {
        '/' => e.write_reg_contents('/', text),
        '#' => {
            // The alternate file: a buffer number, or a name.
            let found = match text.chars().next() {
                Some(c) if c.is_ascii_digit() => {
                    let n: i64 = text.chars().take_while(char::is_ascii_digit).collect::<String>().parse().unwrap_or(0);
                    let b = e.buflist_findnr(n);
                    if b.is_none() {
                        e.error(format!("E86: Buffer {n} does not exist"));
                    }
                    b
                }
                _ => {
                    let id = e.buflist_findpat_emsg(&text, true);
                    e.buflist_findnr(id)
                }
            };
            if let Some(id) = found {
                e.win.alt = Some(id);
            }
        }
        '=' => {
            // `expr_line` is the text of the expression; `a` appends to what is there.
            let t = if append { format!("{}{text}", e.regs.expr_line.clone().unwrap_or_default()) } else { text };
            e.regs.expr_line = Some(t);
        }
        '_' => {}
        c if valid_for_writing(c) => e.regs.str_to_reg(c, RegSource::Str(text), yank, append),
        c => e.error(format!("E354: Invalid register name: '{}'", crate::editor::messages::trans(&c.to_string(), false))),
    }
}
