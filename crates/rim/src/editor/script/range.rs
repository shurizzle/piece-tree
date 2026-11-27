//! Line ranges before a command: Neovim's `parse_cmd_address`, `get_address`, `invalid_range` and
//! `correct_range` (`ex_docmd.c`), for the address types rim has: lines, the "other" counts of
//! `:resize`/`:split`/`:goto`…, and the window and buffer numbers.

use super::cmdline::{skip_regexp, skipwhite};
use crate::editor::{
    Editor,
    ex::{Addr, Base, LineRange},
};

/// `cmd_addr_T`: what the numbers before a command count.
#[derive(Clone, Copy, PartialEq, Debug)]
pub(in crate::editor) enum AddrType {
    Lines,
    Other,
    Windows,
    Buffers,
    None,
}

/// `MAXLNUM`.
const MAXLNUM: i64 = 0x7fff_ffff;

/// A parsed range: the two lines, how many addresses were given, and where the command starts.
#[derive(Debug)]
pub(in crate::editor) struct Range {
    pub line1: i64,
    pub line2: i64,
    pub addr_count: u32,
    /// Byte offset in the text parsed of what follows the range.
    pub end: usize,
}

impl Range {
    /// The range as the editor's commands take it: absolute lines, none when no address was given.
    pub fn to_line_range(&self, zero_ok: bool) -> Option<LineRange> {
        let line = |n: i64| Addr { base: Base::Line(if n == 0 && !zero_ok { 1 } else { n.max(0) as usize }), offset: 0 };
        match self.addr_count {
            0 => None,
            1 => Some(LineRange { first: line(self.line2), last: None, semi: false }),
            _ => Some(LineRange { first: line(self.line1), last: Some(line(self.line2)), semi: false }),
        }
    }
}

impl Editor {
    /// The number of the current window and the highest one, or of the buffer.
    fn addr_context(&self, t: AddrType) -> (i64, i64) {
        match t {
            AddrType::Windows => {
                let mut ids = Vec::new();
                self.split.leaves(&mut ids);
                (ids.iter().position(|&i| i == self.win.id).map_or(1, |p| p as i64 + 1), ids.len().max(1) as i64)
            }
            AddrType::Buffers => (self.buf.id as i64, self.next_buf as i64),
            _ => (self.win.line as i64 + 1, self.line_count() as i64),
        }
    }

    /// `get_address`: one address at the start of `text`, the number it stands for (`None`: none
    /// was there) and where it ends. `cur` is the line `.` means (the cursor, moved by `;`).
    /// `Err("")` is an error already reported or one that has no message.
    pub(in crate::editor) fn get_address(&mut self, text: &str, t: AddrType, skip: bool, cur: i64) -> Result<(Option<i64>, usize), String> {
        let invrange = || "E16: Invalid range".to_string();
        let addr_error = |t: AddrType| if t == AddrType::None { "E481: No range allowed".to_string() } else { invrange() };
        let b = text.as_bytes();
        let mut pos = text.len() - skipwhite(text).len();
        let mut lnum: Option<i64> = None;
        loop {
            match b.get(pos) {
                Some(b'.') => {
                    pos += 1;
                    if matches!(t, AddrType::None) {
                        return Err(addr_error(t));
                    }
                    lnum = Some(if matches!(t, AddrType::Lines | AddrType::Other) { cur } else { self.addr_context(t).0 });
                }
                Some(b'$') => {
                    pos += 1;
                    if matches!(t, AddrType::None) {
                        return Err(addr_error(t));
                    }
                    lnum = Some(self.addr_context(t).1);
                }
                Some(b'\'') => {
                    pos += 1;
                    let Some(&m) = b.get(pos) else { return Err(String::new()) };
                    if t != AddrType::Lines {
                        return Err(addr_error(t));
                    }
                    let m = text[pos..].chars().next().unwrap_or(m as char);
                    pos += m.len_utf8();
                    if !skip {
                        match self.mark(m) {
                            Some(off) => lnum = Some(self.pos_of(off).0 as i64 + 1),
                            None => return Err("E20: Mark not set".into()),
                        }
                    }
                }
                Some(&d @ (b'/' | b'?')) => {
                    pos += 1;
                    if t != AddrType::Lines {
                        return Err(addr_error(t));
                    }
                    let end = skip_regexp(text, pos, d);
                    let pat = text[pos..end].replace(&format!("\\{}", d as char), &(d as char).to_string());
                    pos = if b.get(end) == Some(&d) { end + 1 } else { end };
                    // `do_search` takes a line offset right after the pattern (`/pat/+2`, `/pat/-`,
                    // `/pat/3`); the match line moved by it stays inside the text.
                    let mut line_off: Option<i64> = None;
                    if matches!(b.get(pos), Some(b'+' | b'-')) || b.get(pos).is_some_and(u8::is_ascii_digit) {
                        let sign_digits = matches!(b.get(pos), Some(b'+' | b'-')) as usize;
                        let ds = pos + sign_digits;
                        let dend = text[ds..].find(|ch: char| !ch.is_ascii_digit()).map_or(text.len(), |e| ds + e);
                        line_off = Some(if dend > ds { text[pos..dend].trim_start_matches('+').parse::<i64>().unwrap_or(0) } else if b[pos] == b'-' { -1 } else { 1 });
                        pos = dend.max(pos + 1);
                    }
                    if !skip {
                        // From the end of line `lnum` (or of the cursor line) forward, from its start backward.
                        let from = match lnum {
                            Some(l) if l > 0 => l.min(self.line_count() as i64),
                            _ => cur,
                        };
                        match self.address_search(&pat, d == b'?', from.max(0) as usize) {
                            Ok(l) => lnum = Some(line_off.map_or(l as i64, |o| (l as i64 + o).clamp(1, self.line_count() as i64))),
                            Err(e) => {
                                self.error(e);
                                return Err(String::new());
                            }
                        }
                    }
                }
                Some(b'\\') => {
                    pos += 1;
                    if t != AddrType::Lines {
                        return Err(addr_error(t));
                    }
                    let c = b.get(pos).copied();
                    if !matches!(c, Some(b'&' | b'?' | b'/')) {
                        return Err("E10: \\ should be followed by /, ? or &".into());
                    }
                    if !skip {
                        let from = lnum.unwrap_or(cur).max(0) as usize;
                        match self.address_again(c == Some(b'?'), c == Some(b'&'), from) {
                            Ok(l) => lnum = Some(l as i64),
                            Err(e) => {
                                self.error(e);
                                return Err(String::new());
                            }
                        }
                    }
                    pos += 1;
                }
                Some(c) if c.is_ascii_digit() => {
                    let end = text[pos..].find(|ch: char| !ch.is_ascii_digit()).map_or(text.len(), |e| pos + e);
                    lnum = Some(text[pos..end].parse::<i64>().unwrap_or(i64::MAX));
                    pos = end;
                }
                _ => {}
            }
            // Offsets: `+N`, `-N` and a bare number (`+N`).
            loop {
                pos += text[pos..].len() - skipwhite(&text[pos..]).len();
                let c = b.get(pos).copied();
                if !matches!(c, Some(b'-' | b'+')) && !c.is_some_and(|c| c.is_ascii_digit()) {
                    break;
                }
                let base = match lnum {
                    Some(l) => l,
                    None => match t {
                        AddrType::Lines | AddrType::Other => cur,
                        AddrType::Windows | AddrType::Buffers => self.addr_context(t).0,
                        AddrType::None => 0,
                    },
                };
                let sign = if c.is_some_and(|c| c.is_ascii_digit()) {
                    b'+'
                } else {
                    pos += 1;
                    c.unwrap_or(b'+')
                };
                let n = if b.get(pos).is_some_and(u8::is_ascii_digit) {
                    let end = text[pos..].find(|ch: char| !ch.is_ascii_digit()).map_or(text.len(), |e| pos + e);
                    let n = text[pos..end].parse::<i64>().unwrap_or(MAXLNUM);
                    pos = end;
                    if n >= MAXLNUM {
                        return Err("E1247: Line number out of range".into());
                    }
                    n
                } else {
                    1
                };
                lnum = Some(if sign == b'-' {
                    base - n
                } else {
                    if base >= 0 && n >= i64::from(i32::MAX) - base {
                        return Err("E1247: Line number out of range".into());
                    }
                    base + n
                });
            }
            if !matches!(b.get(pos), Some(b'/' | b'?')) {
                break;
            }
        }
        Ok((lnum, pos))
    }

    /// `parse_cmd_address`: `a,b`, `a;b`, `%`, `*` and chains of them; `text` starts at the range.
    pub(super) fn parse_cmd_address(&mut self, text: &str, t: AddrType, skip: bool) -> Result<Range, String> {
        let default = |s: &Self| -> i64 { if t == AddrType::None { 0 } else { s.addr_context(t).0.min(s.line_count() as i64).max(if matches!(t, AddrType::Lines | AddrType::Other) { s.win.line as i64 + 1 } else { 0 }) } };
        // The loop runs at least once, so `line1` is always set from `line2` before it is read.
        #[allow(unused_assignments)]
        let mut line1 = 0i64;
        let (mut line2, mut count) = (1i64, 0u32);
        let mut cur = self.win.line as i64 + 1;
        let mut pos = 0;
        let mut moved = false;
        let mut lnum;
        loop {
            line1 = line2;
            line2 = match t {
                AddrType::Lines | AddrType::Other => cur.min(self.line_count() as i64),
                AddrType::None => 0,
                _ => default(self),
            };
            pos += text[pos..].len() - skipwhite(&text[pos..]).len();
            let (l, end) = self.get_address(&text[pos..], t, skip, cur)?;
            lnum = l;
            pos += end;
            if lnum.is_none() {
                if text[pos..].starts_with('%') {
                    pos += 1;
                    match t {
                        AddrType::Lines | AddrType::Other => {
                            line1 = 1;
                            line2 = self.line_count() as i64;
                        }
                        AddrType::Buffers => {
                            line1 = 1;
                            line2 = self.next_buf as i64;
                        }
                        _ => return Err("E16: Invalid range".into()),
                    }
                    count += 1;
                } else if text[pos..].starts_with('*') {
                    if t != AddrType::Lines {
                        return Err("E16: Invalid range".into());
                    }
                    pos += 1;
                    if !skip {
                        let line_of = |s: &Self, m: char| s.mark(m).map(|o| s.pos_of(o).0 as i64 + 1);
                        line1 = line_of(self, '<').ok_or("E20: Mark not set")?;
                        line2 = line_of(self, '>').ok_or("E20: Mark not set")?;
                        count += 1;
                    }
                }
            } else {
                line2 = lnum.unwrap_or(line2);
            }
            count += 1;
            if text[pos..].starts_with(';') {
                if !skip {
                    cur = line2;
                    moved = true;
                }
            } else if !text[pos..].starts_with(',') {
                break;
            }
            pos += 1;
        }
        if count == 1 {
            line1 = line2;
            if lnum.is_none() {
                count = 0;
            }
        }
        if moved {
            // The cursor went along with `;`.
            self.win.line = (cur.max(1).min(self.line_count() as i64) - 1) as usize;
        }
        Ok(Range { line1, line2, addr_count: count, end: pos })
    }

    /// `invalid_range` for the address type of the command, with the number of lines of the text.
    pub(super) fn invalid_range(&self, r: &Range, t: AddrType, has_range_flag: bool) -> Option<&'static str> {
        if r.line1 < 0 || r.line2 < 0 || r.line1 > r.line2 {
            return Some("E16: Invalid range");
        }
        if has_range_flag {
            let (_, last) = self.addr_context(t);
            let bad = match t {
                AddrType::Lines => r.line2 > self.line_count() as i64,
                AddrType::Buffers => r.line1 < 1 || r.line2 > last,
                AddrType::Windows => r.line2 > last,
                _ => false,
            };
            if bad {
                return Some("E16: Invalid range");
            }
        }
        None
    }
}
