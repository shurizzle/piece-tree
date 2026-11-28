//! `(`, `)`, `{` and `}`: ports of `findsent`, `findpar`, `startPS` and `inmacro` (textobject.c) and of `inc`,
//! `incl`, `dec` and `decl` (memline.c). A position is a line and a byte column; the column may be the length of the
//! line (the NUL after it), as in Neovim.

use super::{Editor, graphemes};

/// The default of 'sections' and 'paragraphs' (rim has no such options).
const SECTIONS: &[u8] = b"SHNHH HUnhsh";
const PARAGRAPHS: &[u8] = b"IPLPPPQPP TPHPLIPpLpItpplpipbp";

/// A position: 0-based line and byte column.
#[derive(Clone, Copy, PartialEq, Eq, Debug)]
pub(super) struct P {
    pub l: usize,
    pub c: usize,
}

/// `inmacro`: whether the two characters at the start of `s` are a nroff macro of `opt`.
fn inmacro(opt: &[u8], s: &[u8]) -> bool {
    let g = |i: usize| s.get(i).copied().unwrap_or(0);
    let o = |i: usize| opt.get(i).copied().unwrap_or(0);
    let mut m = 0;
    while o(m) != 0 {
        // A space in the option matches a space in the line or the line having ended.
        if (o(m) == g(0) || (o(m) == b' ' && (g(0) == 0 || g(0) == b' ')))
            && (o(m + 1) == g(1) || ((o(m + 1) == 0 || o(m + 1) == b' ') && (g(0) == 0 || g(1) == 0 || g(1) == b' ')))
        {
            break;
        }
        m += 1;
        if o(m) == 0 {
            break;
        }
        m += 1;
    }
    o(m) != 0
}

impl Editor {
    fn text_line(&self, l: usize) -> std::borrow::Cow<'_, str> {
        self.buf.doc.text().line(l)
    }

    /// `gchar_pos`: the character at `p`, 0 at the NUL (or past it).
    fn gchar(&self, p: P) -> u32 {
        self.text_line(p.l).get(p.c..).and_then(|s| s.chars().next()).map_or(0, |c| c as u32)
    }

    fn is_char_in(c: u32, set: &str) -> bool {
        // `vim_strchr` finds nothing for NUL.
        c != 0 && char::from_u32(c).is_some_and(|c| set.contains(c))
    }

    /// `inc`: the next character (may be the NUL); 0 within the line, 2 when it is the NUL, 1 on a next line, -1 at the end.
    fn sent_inc(&self, p: &mut P) -> i32 {
        let line = self.text_line(p.l);
        if p.c < line.len() {
            let l = graphemes::next(&line, p.c) - p.c;
            p.c += l;
            return if p.c < line.len() { 0 } else { 2 };
        }
        if p.l + 1 < self.line_count() {
            *p = P { l: p.l + 1, c: 0 };
            return 1;
        }
        -1
    }

    fn sent_incl(&self, p: &mut P) -> i32 {
        let mut r = self.sent_inc(p);
        if r >= 1 && p.c != 0 {
            r = self.sent_inc(p);
        }
        r
    }

    /// `dec`: the previous character; 0 within the line, 1 on a previous line, -1 at the start.
    fn sent_dec(&self, p: &mut P) -> i32 {
        if p.c > 0 {
            let line = self.text_line(p.l);
            p.c = line.floor_char_boundary(p.c - 1);
            return 0;
        }
        if p.l > 0 {
            p.l -= 1;
            let line = self.text_line(p.l);
            p.c = line.len();
            // `utf_head_off` of the NUL is 0: the column stays on the NUL.
            return 1;
        }
        -1
    }

    fn sent_decl(&self, p: &mut P) -> i32 {
        let mut r = self.sent_dec(p);
        if r == 1 && p.c != 0 {
            r = self.sent_dec(p);
        }
        r
    }

    /// `startPS`: line `l` starts a section or paragraph. `para` is 0 for a paragraph, else `{` or `}`.
    pub(super) fn start_ps(&self, l: usize, para: u8, both: bool) -> bool {
        let line = self.text_line(l);
        let s = line.as_bytes();
        let first = s.first().copied().unwrap_or(0);
        if first == para || first == 0x0c || (both && first == b'}') {
            return true;
        }
        first == b'.' && (inmacro(SECTIONS, &s[1..]) || (para == 0 && inmacro(PARAGRAPHS, &s[1..])))
    }

    /// `findsent`: the start of the `count`-th next (`forward`) or previous sentence from `from`.
    pub(super) fn findsent(&self, forward: bool, count: usize, from: P) -> Option<P> {
        let mut count = count;
        let mut pos = from;
        let mut noskip = false;
        let step = |e: &Self, p: &mut P| if forward { e.sent_incl(p) } else { e.sent_decl(p) };
        while count > 0 {
            count -= 1;
            let prev_pos = pos;
            let mut found = false;
            // On an empty line, skip up to a non-empty line.
            if self.gchar(pos) == 0 {
                loop {
                    if step(self, &mut pos) == -1 {
                        break;
                    }
                    if self.gchar(pos) != 0 {
                        break;
                    }
                }
                if forward {
                    found = true;
                }
            } else if forward && pos.c == 0 && self.start_ps(pos.l, 0, false) {
                // On the start of a paragraph or a section, going forward: the next line.
                if pos.l + 1 == self.line_count() {
                    return None;
                }
                pos = P { l: pos.l + 1, c: pos.c };
                found = true;
            } else if !forward {
                self.sent_decl(&mut pos);
            }
            if !found {
                // Go back to the previous non-white non-punctuation character.
                let mut found_dot = false;
                loop {
                    let c = self.gchar(pos);
                    if !(c == u32::from(b' ') || c == u32::from(b'\t') || Self::is_char_in(c, ".!?)]\"'")) {
                        break;
                    }
                    let mut tpos = pos;
                    if self.sent_decl(&mut tpos) == -1 || (self.text_line(tpos.l).is_empty() && forward) {
                        break;
                    }
                    if found_dot {
                        break;
                    }
                    if Self::is_char_in(c, ".!?") {
                        found_dot = true;
                    }
                    if Self::is_char_in(c, ")]\"'") && !Self::is_char_in(self.gchar(tpos), ".!?)]\"'") {
                        break;
                    }
                    self.sent_decl(&mut pos);
                }
                // Remember the line where the search started, then find the end of the sentence.
                let startlnum = pos.l;
                loop {
                    let c = self.gchar(pos);
                    if c == 0 || (pos.c == 0 && self.start_ps(pos.l, 0, false)) {
                        if !forward && pos.l != startlnum {
                            pos.l += 1;
                        }
                        break;
                    }
                    if c == u32::from(b'.') || c == u32::from(b'!') || c == u32::from(b'?') {
                        let mut tpos = pos;
                        let mut c;
                        loop {
                            c = self.sent_inc(&mut tpos);
                            if c == -1 {
                                break;
                            }
                            c = self.gchar(tpos) as i32;
                            if !Self::is_char_in(c as u32, ")]\"'") {
                                break;
                            }
                        }
                        if c == -1 || c == i32::from(b' ') || c == i32::from(b'\t') || c == 0 {
                            pos = tpos;
                            if self.gchar(pos) == 0 {
                                // Skip the NUL at the end of the line.
                                self.sent_inc(&mut pos);
                            }
                            break;
                        }
                    }
                    if step(self, &mut pos) == -1 {
                        if count > 0 {
                            return None;
                        }
                        noskip = true;
                        break;
                    }
                }
            }
            // Skip white space.
            if !noskip {
                loop {
                    let c = self.gchar(pos);
                    if c != u32::from(b' ') && c != u32::from(b'\t') {
                        break;
                    }
                    if self.sent_incl(&mut pos) == -1 {
                        break;
                    }
                }
            }
            if pos == prev_pos {
                // Did not move: advance one character and try again.
                if step(self, &mut pos) == -1 {
                    if count > 0 {
                        return None;
                    }
                    break;
                }
                count += 1;
            }
        }
        Some(pos)
    }

    /// `findpar`: the line of the `count`-th next or previous paragraph (`what` 0) or section (`{` or `}`) from line
    /// `from`, with the position and whether the last char is included.
    pub(super) fn findpar(&self, forward: bool, count: usize, from: usize, what: u8, both: bool) -> Option<(P, bool)> {
        let last = self.line_count() as i64 - 1;
        let dir: i64 = if forward { 1 } else { -1 };
        let mut curr = from as i64;
        let mut count = count;
        while count > 0 {
            count -= 1;
            let mut did_skip = false;
            let mut first = true;
            loop {
                if !self.text_line(curr as usize).is_empty() {
                    did_skip = true;
                }
                if !first && did_skip && self.start_ps(curr as usize, what, both) {
                    break;
                }
                curr += dir;
                if curr < 0 || curr > last {
                    if count > 0 {
                        return None;
                    }
                    curr -= dir;
                    break;
                }
                first = false;
            }
        }
        if both && self.text_line(curr as usize).starts_with('}') {
            // Include the line with the `}`.
            curr += 1;
        }
        let l = curr as usize;
        if curr == last && what != b'}' && forward {
            // The last char of the last line, the motion inclusive.
            let line = self.text_line(l);
            if line.is_empty() {
                return Some((P { l, c: 0 }, false));
            }
            return Some((P { l, c: line.floor_char_boundary(line.len() - 1) }, true));
        }
        Some((P { l, c: 0 }, false))
    }

    /// The `(`, `)`, `{` and `}` motions: the target (char column) and the kind of motion.
    pub(super) fn sentence_motion(&mut self, key: char, n: usize) -> Option<(super::Pos, super::Kind)> {
        let from = P { l: self.win.line, c: self.offset_of((self.win.line, self.win.col)) - self.buf.doc.text().line_to_offset(self.win.line) };
        let (p, incl) = match key {
            '(' | ')' => {
                let p = self.findsent(key == ')', n, from)?;
                // `adjust_cursor`: not on the NUL past the end of a line, and then the motion includes the last char.
                if p.c > 0 && self.gchar(p) == 0 {
                    let line = self.text_line(p.l);
                    (P { l: p.l, c: line.floor_char_boundary(p.c - 1) }, true)
                } else {
                    (p, false)
                }
            }
            _ => self.findpar(key == '}', n, from.l, 0, false)?,
        };
        let pos = self.pos_of(self.buf.doc.text().line_to_offset(p.l) + p.c);
        Some((pos, if incl { super::Kind::Inclusive } else { super::Kind::Exclusive }))
    }
}
