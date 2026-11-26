//! Vim registers and the OSC 52 clipboard escape.

use std::collections::HashMap;

use base64::{Engine, engine::general_purpose::STANDARD};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) enum RegKind {
    Char,
    /// Text ends with `\n`.
    Line,
    /// One string per block line, joined by `\n`.
    Block,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) struct Reg {
    pub text: String,
    pub kind: RegKind,
}

/// `"` unnamed, `0` last yank, `1`–`9` delete history, `a`–`z` named (`A`–`Z` append), `+`/`*` clipboard.
#[derive(Default)]
pub(super) struct Registers {
    map: HashMap<char, Reg>,
    /// Text to send to the system clipboard on the next draw.
    pub clipboard: Option<String>,
}

fn key(name: char) -> char {
    match name {
        '*' => '+',
        c => c.to_ascii_lowercase(),
    }
}

impl Registers {
    pub fn get(&self, name: char) -> Option<&Reg> {
        self.map.get(&key(name))
    }

    /// Stores a yank or delete in `name` (or the numbered history when none) and in `"`.
    pub fn store(&mut self, name: Option<char>, reg: Reg, yank: bool) {
        match name {
            Some(c @ 'A'..='Z') => {
                let e = self.map.entry(key(c)).or_insert(Reg { text: String::new(), kind: reg.kind });
                // Appending lines to characters makes the register linewise, like vim.
                if reg.kind == RegKind::Line && e.kind != RegKind::Line && !e.text.is_empty() {
                    e.text.push('\n');
                }
                e.text.push_str(&reg.text);
                if reg.kind == RegKind::Line {
                    e.kind = RegKind::Line;
                }
                let appended = e.clone();
                self.map.insert('"', appended);
                return;
            }
            Some('+' | '*') => {
                // Read back through an OSC 52 query (`Editor::reg`), never from here.
                self.clipboard = Some(reg.text.clone());
            }
            Some('"') | None if yank => {
                self.map.insert('0', reg.clone());
            }
            Some('"') | None => {
                for i in (1..9).rev() {
                    let from = char::from(b'0' + i);
                    if let Some(r) = self.map.remove(&from) {
                        self.map.insert(char::from(b'1' + i), r);
                    }
                }
                self.map.insert('1', reg.clone());
            }
            Some(c) => {
                self.map.insert(key(c), reg.clone());
            }
        }
        self.map.insert('"', reg);
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

    #[test]
    fn yanks_deletes_and_named_registers() {
        let mut r = Registers::default();
        r.store(None, chars("y1"), true);
        assert_eq!((text(&r, '"'), text(&r, '0'), text(&r, '1')), (Some("y1"), Some("y1"), None));
        for i in 1..=10 {
            r.store(None, chars(&format!("d{i}")), false);
        }
        assert_eq!((text(&r, '1'), text(&r, '9'), text(&r, '0')), (Some("d10"), Some("d2"), Some("y1")));
        r.store(Some('a'), chars("n"), true);
        assert_eq!((text(&r, 'a'), text(&r, '"'), text(&r, '0')), (Some("n"), Some("n"), Some("y1")));
        r.store(Some('A'), chars("m"), false);
        assert_eq!((text(&r, 'a'), text(&r, '"'), text(&r, '1')), (Some("nm"), Some("nm"), Some("d10")));
        r.store(Some('A'), Reg { text: "l\n".into(), kind: RegKind::Line }, true);
        assert_eq!(r.get('a'), Some(&Reg { text: "nm\nl\n".into(), kind: RegKind::Line }));
        r.store(Some('B'), chars("b"), true);
        assert_eq!(text(&r, 'b'), Some("b"));
        r.store(Some('"'), chars("q"), true);
        assert_eq!(text(&r, '0'), Some("q"));
    }

    #[test]
    fn clipboard_register() {
        let mut r = Registers::default();
        r.store(Some('*'), chars("hi"), true);
        assert_eq!((r.clipboard.as_deref(), text(&r, '"')), (Some("hi"), Some("hi")));
        assert_eq!(osc52("hi"), "\x1b]52;c;aGk=\x07");
        // Writing does not make `"+` readable: reads go to the terminal.
        assert_eq!(r.get('+'), None);
    }

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
