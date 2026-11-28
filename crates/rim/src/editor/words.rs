//! The word motions of Neovim: `fwd_word`, `bck_word`, `end_word` and `bckend_word` of `textobject.c`, with `inc_cursor` and
//! `dec_cursor` (`inc`, `dec` of `misc.c`). A cursor is `(line, cluster column)`; a column equal to the length of the line is
//! its NUL (what Neovim steps on at the end of a line), which is blank. Each function returns the position it reached and
//! whether it succeeded: a failing motion leaves the cursor where it got to (an operator then works up to there).

use super::{Editor, Pos, wordclass};

/// What `inc` and `dec` return: 0 moved inside a line, 1 moved to another line, 2 moved onto the NUL (`inc` only), -1 no move.
type Step = i8;

impl Editor {
    /// `cls()`: the class of the char at `p`, 0 for a blank or the NUL; with `big` every other char is 1.
    fn cls(&self, p: Pos, big: bool) -> u32 {
        if p.1 >= self.line_chars(p.0) {
            return 0;
        }
        match self.char_at(p) {
            ' ' | '\t' => 0,
            ch => {
                let c = wordclass::class(ch);
                if big && c != 0 { 1 } else { c }
            }
        }
    }

    /// `inc`: one char forward, onto the NUL of the line (2), then to the start of the next line (1).
    fn inc_cur(&self, p: &mut Pos) -> Step {
        let len = self.line_chars(p.0);
        if p.1 < len {
            p.1 += 1;
            return if p.1 < len { 0 } else { 2 };
        }
        if p.0 + 1 < self.line_count() {
            *p = (p.0 + 1, 0);
            return 1;
        }
        -1
    }

    /// `dec`: one char back, or to the NUL of the line before (1).
    fn dec_cur(&self, p: &mut Pos) -> Step {
        if p.1 > 0 {
            p.1 -= 1;
            return 0;
        }
        if p.0 > 0 {
            p.0 -= 1;
            p.1 = self.line_chars(p.0);
            return 1;
        }
        -1
    }

    fn empty_line(&self, p: Pos) -> bool {
        p.1 == 0 && self.line_chars(p.0) == 0
    }

    /// `skip_chars`: true when the end of the text was reached.
    fn skip_chars(&self, p: &mut Pos, class: u32, forward: bool, big: bool) -> bool {
        while self.cls(*p, big) == class {
            if (if forward { self.inc_cur(p) } else { self.dec_cur(p) }) == -1 {
                return true;
            }
        }
        false
    }

    /// `fwd_word(count, bigword, eol)`: `w` and `W`; `eol` (an operator) stops at the first end of line of the last word.
    pub(super) fn fwd_word(&self, from: Pos, count: usize, big: bool, eol: bool) -> (Pos, bool) {
        let mut p = from;
        for k in (0..count).rev() {
            let last = k == 0;
            let sclass = self.cls(p, big);
            // Always one char on, unless on the last char of the text.
            let last_line = p.0 + 1 == self.line_count();
            let i = self.inc_cur(&mut p);
            if i == -1 || (i >= 1 && last_line) {
                return (p, false);
            }
            if i >= 1 && eol && last {
                return (p, true);
            }
            // One char past the end of the word.
            if sclass != 0 {
                while self.cls(p, big) == sclass {
                    let i = self.inc_cur(&mut p);
                    if i == -1 || (i >= 1 && eol && last) {
                        return (p, true);
                    }
                }
            }
            // To the next non-blank; an empty line stops.
            while self.cls(p, big) == 0 {
                if self.empty_line(p) {
                    break;
                }
                let i = self.inc_cur(&mut p);
                if i == -1 || (i >= 1 && eol && last) {
                    return (p, true);
                }
            }
        }
        (p, true)
    }

    /// `bck_word(count, bigword, stop)`: `b` and `B`.
    pub(super) fn bck_word(&self, from: Pos, count: usize, big: bool, mut stop: bool) -> (Pos, bool) {
        let mut p = from;
        for _ in 0..count {
            let sclass = self.cls(p, big);
            if self.dec_cur(&mut p) == -1 {
                return (p, false);
            }
            let mut finished = false;
            if !stop || sclass == self.cls(p, big) || sclass == 0 {
                // Over the blanks before the word; an empty line stops.
                while self.cls(p, big) == 0 {
                    if self.empty_line(p) {
                        finished = true;
                        break;
                    }
                    if self.dec_cur(&mut p) == -1 {
                        return (p, true);
                    }
                }
                if !finished {
                    // Back to the start of the word.
                    let c = self.cls(p, big);
                    if self.skip_chars(&mut p, c, false, big) {
                        return (p, true);
                    }
                }
            }
            if !finished {
                // Overshot by one.
                self.inc_cur(&mut p);
            }
            stop = false;
        }
        (p, true)
    }

    /// `end_word(count, bigword, stop, empty)`: `e`, `E`, and the end of a `cw`; `stop` makes the first count one less when on
    /// the end of a word, `empty` stops on an empty line.
    pub(super) fn end_word(&self, from: Pos, count: usize, big: bool, mut stop: bool, empty: bool) -> (Pos, bool) {
        let mut p = from;
        for _ in 0..count {
            let sclass = self.cls(p, big);
            if self.inc_cur(&mut p) == -1 {
                return (p, false);
            }
            let mut finished = false;
            if self.cls(p, big) == sclass && sclass != 0 {
                // In the middle of a word: to its end.
                if self.skip_chars(&mut p, sclass, true, big) {
                    return (p, false);
                }
            } else if !stop || sclass == 0 {
                // At the end of a word: the end of the next one, over the blanks first.
                while self.cls(p, big) == 0 {
                    if empty && self.empty_line(p) {
                        finished = true;
                        break;
                    }
                    if self.inc_cur(&mut p) == -1 {
                        return (p, false);
                    }
                }
                if !finished {
                    let c = self.cls(p, big);
                    if self.skip_chars(&mut p, c, true, big) {
                        return (p, false);
                    }
                }
            }
            if !finished {
                // Overshot by one.
                self.dec_cur(&mut p);
            }
            stop = false;
        }
        (p, true)
    }

    /// `bckend_word(count, bigword, eol)`: `ge` and `gE`.
    pub(super) fn bckend_word(&self, from: Pos, count: usize, big: bool, eol: bool) -> (Pos, bool) {
        let mut p = from;
        for _ in 0..count {
            let sclass = self.cls(p, big);
            let i = self.dec_cur(&mut p);
            if i == -1 {
                return (p, false);
            }
            if eol && i == 1 {
                return (p, true);
            }
            // Before the start of the word.
            if sclass != 0 {
                while self.cls(p, big) == sclass {
                    let i = self.dec_cur(&mut p);
                    if i == -1 || (eol && i == 1) {
                        return (p, true);
                    }
                }
            }
            // To the end of the word before; an empty line stops.
            while self.cls(p, big) == 0 {
                if self.empty_line(p) {
                    break;
                }
                let i = self.dec_cur(&mut p);
                if i == -1 || (eol && i == 1) {
                    return (p, true);
                }
            }
        }
        (p, true)
    }
}
