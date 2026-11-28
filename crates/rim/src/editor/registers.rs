//! Vim registers and the OSC 52 clipboard escape.

use std::collections::HashMap;

use base64::{Engine, engine::general_purpose::STANDARD};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) enum RegKind {
    Char,
    /// Text ends with `\n`.
    Line,
    /// One string per block line, joined by `\n`; the width (`y_width`) of the block, in cells less one.
    Block(usize),
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) struct Reg {
    pub text: String,
    pub kind: RegKind,
}

/// The motion type `setreg()` is given (`kMTUnknown` when it is to be found out).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) enum YType {
    Unknown,
    Char,
    Line,
    /// The width less one, or none when the block is as wide as its widest line.
    Block(Option<usize>),
}

/// What `setreg()` puts in a register: one String, or the lines of a List.
pub(super) enum RegSource {
    Str(String),
    Lines(Vec<String>),
}

/// `"` unnamed, `0` last yank, `1`–`9` delete history, `a`–`z` named (`A`–`Z` append), `+`/`*` clipboard.
#[derive(Default)]
pub(super) struct Registers {
    map: HashMap<char, Reg>,
    /// `y_previous`: the register the unnamed one stands for, the one last written (none: register 0).
    prev: Option<char>,
    /// Text to send to the system clipboard on the next draw.
    pub clipboard: Option<String>,
    /// `expr_line`: the expression `setreg('=', ..)` set; reading the register evaluates it.
    pub expr_line: Option<String>,
}

fn key(name: char) -> char {
    match name {
        '*' => '+',
        c => c.to_ascii_lowercase(),
    }
}

impl Registers {
    /// Appends `reg` to the register of the uppercase `name`; the register after it.
    fn append(&mut self, name: char, reg: Reg) -> Reg {
        let e = self.map.entry(key(name)).or_insert(Reg { text: String::new(), kind: reg.kind });
        // Appending lines to characters makes the register linewise, like vim.
        if reg.kind == RegKind::Line && e.kind != RegKind::Line && !e.text.is_empty() {
            e.text.push('\n');
        }
        e.text.push_str(&reg.text);
        if reg.kind == RegKind::Line {
            e.kind = RegKind::Line;
        }
        e.clone()
    }

    /// `write_reg_contents`: the text goes to `name` and nowhere else; the unnamed register and the history stay,
    /// as `finish_write_reg` restores `y_previous`. `"` itself is register 0 (`get_yank_register` with `YREG_YANK` takes
    /// no `y_previous`), and then it is what the unnamed register stands for.
    pub fn write(&mut self, name: char, reg: Reg) {
        match name {
            'A'..='Z' => {
                self.append(name, reg);
            }
            '"' => {
                self.map.insert('0', reg);
                self.prev = Some('0');
            }
            c => {
                if matches!(c, '+' | '*') {
                    self.clipboard = Some(reg.text.clone());
                }
                self.map.insert(key(c), reg);
            }
        }
    }

    /// The lines of register `name` as `y_array` has them, and its type.
    fn lines_of(&self, key: char) -> Option<(Vec<String>, RegKind)> {
        let r = self.map.get(&key)?;
        let body = if r.kind == RegKind::Line { r.text.strip_suffix('\n').unwrap_or(&r.text) } else { &r.text };
        Some((body.split('\n').map(str::to_string).collect(), r.kind))
    }

    /// `y_previous` is register `name`: what the unnamed register stands for (`op_reg_set_previous`).
    pub fn set_previous(&mut self, name: char) {
        self.prev = Some(if name == '"' { '0' } else { key(name) });
    }

    /// `str_to_reg` with `write_reg_contents_ex`/`write_reg_contents_lst` around it: `src` goes into register `name`, appended
    /// when `append` or when the name is uppercase; `yt` is the motion type.
    pub fn str_to_reg(&mut self, name: char, src: RegSource, yt: YType, append: bool) {
        let must_append = append || name.is_ascii_uppercase();
        let target = if name == '"' { '0' } else { key(name) };
        // `init_write_reg`: a register that is not appended to is freed first.
        let old = if must_append { self.lines_of(target) } else { None };
        let (mut lines, old_kind) = old.unwrap_or((Vec::new(), RegKind::Char));
        let old_size = lines.len();
        let str_list = matches!(src, RegSource::Lines(_));
        let ends_nl = match &src {
            RegSource::Str(t) => t.ends_with(['\n', '\r']),
            RegSource::Lines(_) => false,
        };
        let yt = if yt == YType::Unknown { if str_list || ends_nl { YType::Line } else { YType::Char } } else { yt };
        let mut maxlen = 0usize;
        match &src {
            RegSource::Lines(l) => {
                for x in l {
                    if matches!(yt, YType::Block(_)) {
                        maxlen = maxlen.max(super::graphemes::count_cells(x));
                    }
                    lines.push(x.clone());
                }
            }
            RegSource::Str(t) => {
                let mut newlines = t.matches('\n').count();
                let extraline = matches!(yt, YType::Char) || t.is_empty() || !t.ends_with('\n');
                if extraline {
                    newlines += 1;
                }
                let append_first = old_size > 0 && old_kind == RegKind::Char;
                if append_first {
                    newlines -= 1;
                }
                if old_size + newlines == 0 {
                    self.map.remove(&target);
                    self.finish(name, target);
                    return;
                }
                let mut start = 0usize;
                let end = t.len();
                let mut first = append_first;
                while start < end + usize::from(extraline) {
                    let line_end = t[start.min(end)..].find('\n').map_or(end, |i| start.min(end) + i);
                    let line = &t[start.min(end)..line_end];
                    if matches!(yt, YType::Block(_)) {
                        maxlen = maxlen.max(super::graphemes::count_cells(line));
                    }
                    if first {
                        if let Some(last) = lines.last_mut() {
                            last.push_str(line);
                        }
                        first = false;
                    } else {
                        lines.push(line.to_string());
                    }
                    start = line_end + 1;
                }
            }
        }
        if lines.is_empty() {
            self.map.remove(&target);
            self.finish(name, target);
            return;
        }
        let reg = match yt {
            YType::Char | YType::Unknown => Reg { text: lines.join("\n"), kind: RegKind::Char },
            YType::Line => Reg { text: lines.iter().map(|l| format!("{l}\n")).collect(), kind: RegKind::Line },
            YType::Block(w) => Reg { text: lines.join("\n"), kind: RegKind::Block(w.unwrap_or(maxlen.wrapping_sub(1))) },
        };
        if matches!(name, '+' | '*') {
            self.clipboard = Some(reg.text.clone());
        }
        self.map.insert(target, reg);
        self.finish(name, target);
    }

    /// `finish_write_reg`: `:let @" = ...` changes what `""` means, any other register leaves it alone.
    fn finish(&mut self, name: char, target: char) {
        if name == '"' {
            self.prev = Some(target);
        }
    }

    /// The value of the last expression (register `=`), apart from the unnamed register.
    pub fn set_expr(&mut self, text: String) {
        self.expr_line = None;
        self.map.insert('=', Reg { text, kind: RegKind::Char });
    }

    /// `get_yank_register` for reading: the unnamed register is `y_previous`, or register 0 before anything was written.
    pub fn get(&self, name: char) -> Option<&Reg> {
        match name {
            '"' => self.map.get(&self.prev.unwrap_or('0')),
            // Read back through an OSC 52 query (`Editor::reg`), never from here.
            '+' | '*' => None,
            _ => self.map.get(&key(name)),
        }
    }

    /// `op_yank` into `name` (none or `"`: register 0). Uppercase appends; `_` is the black hole. The register
    /// becomes the unnamed one.
    fn yank_into(&mut self, name: Option<char>, reg: Reg) {
        let target = match name {
            Some('_') => return,
            Some(c @ 'A'..='Z') => {
                self.append(c, reg);
                key(c)
            }
            Some(c @ ('+' | '*')) => {
                // Read back through an OSC 52 query (`Editor::reg`), never from here.
                self.clipboard = Some(reg.text.clone());
                self.map.insert(key(c), reg);
                key(c)
            }
            Some(c) if c.is_ascii_alphanumeric() || c == '-' => {
                self.map.insert(key(c), reg);
                key(c)
            }
            // `op_reg_index` is -1 for any other register (`"`, `#`): register 0.
            _ => {
                self.map.insert('0', reg);
                '0'
            }
        };
        self.prev = Some(target);
    }

    /// `op_yank` and `op_delete`'s registers: a yank, or a delete (`yank` false) that goes to `name` and, over a line
    /// break, to the numbered history; a delete inside a line with no register goes to `-`.
    /// `reg_one` is `oap->use_reg_one`: the motion was `n`, `N`, `%`, `(`, `)`, `{` or `}`.
    pub fn store(&mut self, name: Option<char>, reg: Reg, yank: bool, reg_one: bool) {
        if yank {
            self.yank_into(name, reg);
            return;
        }
        if name == Some('_') {
            return;
        }
        let multi = reg_one || reg.kind == RegKind::Line || reg.text.contains('\n');
        if name.is_some() {
            self.yank_into(name, reg.clone());
        }
        if multi {
            // `shift_delete_registers`: "1 to "2 ... "8 to "9; the unnamed register follows "1 unless the named one appended.
            for i in (1..9).rev() {
                let from = char::from(b'0' + i);
                match self.map.remove(&from) {
                    Some(r) => self.map.insert(char::from(b'1' + i), r),
                    None => self.map.remove(&char::from(b'1' + i)),
                };
            }
            if !matches!(name, Some('A'..='Z')) {
                self.prev = Some('1');
            }
            self.map.insert('1', reg.clone());
        }
        // The small delete register takes a delete inside a line even when the motion sent it to `"1`.
        if name.is_none() && reg.kind != RegKind::Line && !reg.text.contains('\n') {
            self.map.insert('-', reg);
            self.prev = Some('-');
        }
    }
}

impl Registers {
    /// `q`: a recorded macro into `name` as text, appended for `A`–`Z`; `"` and the numbered
    /// registers stay as they are.
    pub fn set_macro(&mut self, name: char, text: String) {
        let e = self.map.entry(key(name)).or_insert(Reg { text: String::new(), kind: RegKind::Char });
        if name.is_ascii_lowercase() {
            *e = Reg { text, kind: RegKind::Char };
        } else {
            e.text.push_str(&text);
        }
    }
}

/// The text of an OSC 52 clipboard reply (`ESC ] 52 ; c ; <base64>` ended by BEL or ST) at the end
/// of `bytes`; None while it is incomplete or when it is not one.
pub fn parse_osc52_reply(bytes: &[u8]) -> Option<String> {
    let start = bytes.windows(5).rposition(|w| w == b"\x1b]52;")?;
    let body = &bytes[start + 5..];
    let end = body.iter().position(|&b| b == 0x07).or_else(|| body.windows(2).position(|w| w == b"\x1b\\"))?;
    // `c;` or another selection before the data.
    let data = &body[body[..end].iter().position(|&b| b == b';')? + 1..end];
    String::from_utf8(STANDARD.decode(data).ok()?).ok()
}

/// OSC 52 sequence setting the system clipboard to `text`.
pub(super) fn osc52(text: &str) -> String {
    format!("\x1b]52;c;{}\x07", STANDARD.encode(text))
}

#[cfg(test)]
mod tests {
    use super::*;

    fn chars(text: &str) -> Reg {
        Reg { text: text.into(), kind: RegKind::Char }
    }

    fn text(r: &Registers, name: char) -> Option<&str> {
        r.get(name).map(|r| r.text.as_str())
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn yanks_deletes_and_named_registers() {
        let mut r = Registers::default();
        r.store(None, chars("y1"), true, false);
        assert_eq!((text(&r, '"'), text(&r, '0'), text(&r, '1')), (Some("y1"), Some("y1"), None));
        for i in 1..=10 {
            r.store(None, Reg { text: format!("d{i}\n"), kind: RegKind::Line }, false, false);
        }
        assert_eq!((text(&r, '1'), text(&r, '9'), text(&r, '0')), (Some("d10\n"), Some("d2\n"), Some("y1")));
        // A delete inside a line is the small delete register, no history.
        r.store(None, chars("s"), false, false);
        assert_eq!((text(&r, '-'), text(&r, '"'), text(&r, '1')), (Some("s"), Some("s"), Some("d10\n")));
        // The black hole changes nothing, a named register takes a delete and the history too over a line break.
        r.store(Some('_'), chars("x"), false, false);
        assert_eq!(text(&r, '"'), Some("s"));
        r.store(Some('a'), chars("n"), true, false);
        assert_eq!((text(&r, 'a'), text(&r, '"'), text(&r, '0')), (Some("n"), Some("n"), Some("y1")));
        r.store(Some('A'), chars("m"), false, false);
        assert_eq!((text(&r, 'a'), text(&r, '"'), text(&r, '1')), (Some("nm"), Some("nm"), Some("d10\n")));
        // A named register is the unnamed one until the history takes the delete (not when it appended).
        r.store(Some('c'), Reg { text: "l1\n".into(), kind: RegKind::Line }, false, false);
        assert_eq!((text(&r, 'c'), text(&r, '1'), text(&r, '"')), (Some("l1\n"), Some("l1\n"), Some("l1\n")));
        r.store(Some('A'), Reg { text: "l2\n".into(), kind: RegKind::Line }, false, false);
        assert_eq!((text(&r, '1'), text(&r, '"')), (Some("l2\n"), text(&r, 'a')));
        r.store(Some('a'), chars("n"), true, false);
        r.store(Some('A'), chars("m"), true, false);
        r.store(Some('A'), Reg { text: "l\n".into(), kind: RegKind::Line }, true, false);
        assert_eq!(r.get('a'), Some(&Reg { text: "nm\nl\n".into(), kind: RegKind::Line }));
        r.store(Some('B'), chars("b"), true, false);
        assert_eq!(text(&r, 'b'), Some("b"));
        r.store(Some('"'), chars("q"), true, false);
        assert_eq!(text(&r, '0'), Some("q"));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn clipboard_register() {
        let mut r = Registers::default();
        r.store(Some('*'), chars("hi"), true, false);
        assert_eq!((r.clipboard.as_deref(), text(&r, '"')), (Some("hi"), Some("hi")));
        assert_eq!(osc52("hi"), "\x1b]52;c;aGk=\x07");
        // Writing does not make `"+` readable: reads go to the terminal.
        assert_eq!(r.get('+'), None);
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn osc52_replies() {
        assert_eq!(parse_osc52_reply(b"\x1b]52;c;aGk=\x07").as_deref(), Some("hi"));
        assert_eq!(parse_osc52_reply(b"junk\x1b]52;p;aGk=\x1b\\").as_deref(), Some("hi"));
        assert_eq!(parse_osc52_reply(b"\x1b]52;c;aGk=").as_deref(), None);
        assert_eq!(parse_osc52_reply(b"\x1b]52;c;!!\x07").as_deref(), None);
        assert_eq!(parse_osc52_reply(b"\x1b]52;c;/w==\x07").as_deref(), None);
        assert_eq!(parse_osc52_reply(b"\x1b]11;rgb:0/0/0\x07").as_deref(), None);
        assert_eq!(parse_osc52_reply(b"\x1b]52;c;\x07").as_deref(), Some(""));
    }
}
