//! The marks Neovim sets for what a command changed: `'[` and `']` (`b_op_start`, `b_op_end`) and `'.`
//! (`b_last_change`). Each command that changes text says where, as its C code does.

use std::ops::Range;

use piece_tree::{Edit, Text};

use super::buffers::Mark;
use super::{Editor, Kind};

/// Which of Neovim's `ONE_ADJUST` macros a position gets.
#[derive(Clone, Copy, PartialEq, Eq)]
pub(super) enum Adj {
    /// `ONE_ADJUST`: a position in a line that goes is deleted.
    Del,
    /// `ONE_ADJUST_NODEL`: it goes to the first line that went.
    NoDel,
    /// `ONE_ADJUST_CURSOR`: it goes to the start of the line before.
    Cursor,
}

/// One position through `mark_adjust(first, end, amount, after)`; false when it is deleted.
pub(super) fn adjust_pos(p: &mut Mark, first: usize, end: usize, amount: Option<isize>, after: isize, kind: Adj) -> bool {
    if p.line >= first && p.line < end {
        match (amount, kind) {
            (Some(a), _) => p.line = p.line.saturating_add_signed(a),
            (None, Adj::Del) => return false,
            (None, Adj::NoDel) => p.line = first,
            (None, Adj::Cursor) => (p.line, p.col) = (first.saturating_sub(1), 0),
        }
    } else if after != 0 && p.line >= end {
        p.line = p.line.saturating_add_signed(after);
    }
    true
}

/// One position through `mark_col_adjust`.
fn col_adjust_pos(mk: &mut Mark, lnum: usize, mincol: usize, lnum_amount: isize, col_amount: isize, spaces_removed: usize) {
    if mk.line == lnum && mk.col >= mincol {
        mk.line = mk.line.saturating_add_signed(lnum_amount);
        mk.col = if col_amount < 0 && mk.col <= col_amount.unsigned_abs() {
            0
        } else if mk.col < spaces_removed {
            (col_amount + spaces_removed as isize).max(0) as usize
        } else {
            mk.col.saturating_add_signed(col_amount)
        };
    }
}

impl Editor {
    /// Offset of line `line`, char column `col`, kept inside the text (a mark may sit on the NUL after a line).
    pub(super) fn mark_off(&self, line: usize, col: usize) -> usize {
        let line = line.min(self.line_count() - 1);
        let col = col.min(self.line_chars(line));
        self.offset_of((line, col))
    }

    /// The mark an offset of the text now is.
    pub(super) fn mark_at(&self, off: usize) -> Mark {
        let text = self.buf.doc.text();
        let off = off.min(text.len());
        let line = text.offset_to_line(off);
        Mark { line, col: off - text.line_to_offset(line) }
    }

    /// A mark as `getmark_buf` gives it: `'<` is the first of the two ends of the Visual area, `'>` the last, whatever the edits
    /// did to each (a deleted line moves one to the top).
    pub(super) fn mark_get(&self, m: char) -> Option<Mark> {
        if !matches!(m, '<' | '>') {
            // A window starts with its context mark on the first line (`w_pcmark.lnum = 1`).
            return self.buf.marks.get(&m).copied().or((m == '\'').then_some(Mark { line: 0, col: 0 }));
        }
        let (lo, hi) = (self.buf.marks.get(&'<').copied(), self.buf.marks.get(&'>').copied());
        match (lo, hi) {
            (Some(a), Some(b)) => {
                let (first, last) = if (a.line, a.col) <= (b.line, b.col) { (a, b) } else { (b, a) };
                Some(if m == '<' { first } else { last })
            }
            // Only one end is set: it is both (`getmark_buf`).
            _ => lo.or(hi),
        }
    }

    /// The offset a mark stands for, kept inside the text and on a char start (a mark may lie past the end of its line).
    pub(super) fn mark_offset(&self, m: Mark) -> usize {
        let text = self.buf.doc.text();
        let line = m.line.min(text.line_count() - 1);
        let l = text.line(line);
        text.line_to_offset(line) + l.floor_char_boundary(m.col.min(l.len()))
    }

    /// Sets mark `m` at an offset of the text now.
    pub(super) fn put_off(&mut self, m: char, off: usize) {
        let mk = self.mark_at(off);
        self.buf.marks.insert(m, mk);
    }

    /// A mark at a line and char column. Neovim keeps it where it was set, also past the end of its line or of the text
    /// (`dd` on the last line).
    pub(super) fn put_mark(&mut self, m: char, line: usize, col: usize) {
        let col = if line < self.line_count() {
            let n = self.line_chars(line);
            if col <= n { self.offset_of((line, col)) - self.buf.doc.text().line_to_offset(line) } else { self.buf.doc.text().line(line).len() + (col - n) }
        } else {
            col
        };
        self.buf.marks.insert(m, Mark { line, col });
    }

    /// `setmark_pos`: sets mark `c` at offset `off`; false for a name that is none. `'` and `` ` `` are the previous
    /// context mark, `A`-`Z` and `0`-`9` belong to the session (to one buffer at a time).
    pub(super) fn set_mark(&mut self, c: char, off: usize) -> bool {
        let mk = self.mark_at(off);
        match c {
            'a'..='z' | '[' | ']' | '<' | '>' | '"' | '\'' => {
                self.buf.marks.insert(c, mk);
            }
            '`' => {
                self.buf.marks.insert('\'', mk);
            }
            'A'..='Z' | '0'..='9' => {
                if let Some(prev) = self.file_mark_owner.insert(c, self.buf.id)
                    && prev != self.buf.id
                    && let Some(b) = self.buffer_mut(prev)
                {
                    b.marks.remove(&c);
                }
                self.buf.marks.insert(c, mk);
            }
            _ => return false,
        }
        true
    }

    /// `setmark_pos` for a position that is not in the text now (`setpos()`): false for a name that is none. A line 0 unsets it.
    pub(super) fn set_mark_pos(&mut self, c: char, mk: Mark, unset: bool) -> bool {
        match c {
            '`' | '\'' | 'a'..='z' | '[' | ']' | '"' | 'A'..='Z' | '0'..='9' => {}
            '<' | '>' => {
                if let Some((k, a, b)) = self.buf.last_visual {
                    self.buf.last_visual = Some(if c == '<' { (k, mk, b) } else { (k, a, mk) });
                }
            }
            _ => return false,
        }
        if matches!(c, 'A'..='Z' | '0'..='9') && let Some(prev) = self.file_mark_owner.insert(c, self.buf.id) && prev != self.buf.id && let Some(b) = self.buffer_mut(prev) {
            b.marks.remove(&c);
        }
        let key = if c == '`' { '\'' } else { c };
        if unset {
            self.buf.marks.remove(&key);
        } else {
            self.buf.marks.insert(key, mk);
        }
        true
    }

    /// The buffer a file mark is in, when it is not this one.
    pub(super) fn file_mark_elsewhere(&self, c: char) -> Option<usize> {
        self.file_mark_owner.get(&c).copied().filter(|&id| id != self.buf.id && self.buffer(id).is_some())
    }

    /// The (0-based) line of a file mark that is in another buffer.
    pub(super) fn file_mark_line_elsewhere(&self, c: char) -> Option<usize> {
        let id = self.file_mark_elsewhere(c)?;
        let b = self.buffer(id)?;
        Some(b.marks.get(&c)?.line.min(b.doc.text().line_count() - 1))
    }

    /// `'[` and `']`.
    pub(super) fn set_op_marks(&mut self, start: usize, end: usize) {
        self.put_off('[', start);
        self.put_off(']', end);
    }

    /// `set_op_marks` for byte columns, `(line, byte)`: Neovim keeps a column inside a multibyte char or past the end of the line.
    pub(super) fn set_op_marks_bytes(&mut self, start: (usize, usize), end: (usize, usize)) {
        self.buf.marks.insert('[', Mark { line: start.0, col: start.1 });
        self.buf.marks.insert(']', Mark { line: end.0, col: end.1 });
    }

    /// `'.`; a command that sets it itself keeps what `end_command` would put there.
    pub(super) fn set_dot(&mut self, off: usize) {
        self.put_off('.', off);
        self.dot_set = true;
        // `changed_common` runs at every `changed_lines`, so each call has its own turn at the change list.
        self.add_change();
    }

    /// `mark_adjust`: the marks in the `count` lines from `first` (0-based) move `amount` lines, or go when `amount` is none
    /// (`MAXLNUM`); the marks below those lines move `after` lines. `a`-`z`, `'.`, `'^`, `'"` and `''` are deleted with their
    /// line, the others (`ONE_ADJUST_NODEL`: file marks, `'<`, `'>`, the jump and change lists) go to `first`; the cursor of
    /// another window shows on the line before (`ONE_ADJUST_CURSOR`). `'[` and `']` are not adjusted.
    pub(super) fn mark_adjust(&mut self, first: usize, count: usize, amount: Option<isize>, after: isize) {
        if count == 0 && after == 0 {
            return;
        }
        let end = first.saturating_add(count);
        self.buf.marks.retain(|&m, mk| match m {
            'a'..='z' | '.' | '^' | '"' | '\'' => adjust_pos(mk, first, end, amount, after, Adj::Del),
            'A'..='Z' | '0'..='9' | '<' | '>' => adjust_pos(mk, first, end, amount, after, Adj::NoDel),
            _ => true,
        });
        let id = self.buf.id;
        for w in self.windows.iter_mut().chain([&mut self.win]) {
            for j in w.jumps.iter_mut().filter(|j| j.0 == id) {
                adjust_pos(&mut j.1, first, end, amount, after, Adj::NoDel);
            }
        }
        for c in &mut self.buf.changes {
            adjust_pos(c, first, end, amount, after, Adj::NoDel);
        }
        if let Some((_, a, b)) = &mut self.buf.last_visual {
            adjust_pos(a, first, end, amount, after, Adj::NoDel);
            adjust_pos(b, first, end, amount, after, Adj::NoDel);
        }
        for w in self.windows.iter_mut().filter(|w| w.buf == id) {
            adjust_pos(&mut w.off, first, end, amount, after, Adj::Cursor);
        }
    }

    /// `mark_col_adjust`: the marks in line `lnum` from column `mincol` on move `lnum_amount` lines and `col_amount` columns.
    pub(super) fn mark_col_adjust(&mut self, lnum: usize, mincol: usize, lnum_amount: isize, col_amount: isize, spaces_removed: usize) {
        if col_amount == 0 && lnum_amount == 0 {
            return;
        }
        let one = |mk: &mut Mark| col_adjust_pos(mk, lnum, mincol, lnum_amount, col_amount, spaces_removed);
        for (&m, mk) in self.buf.marks.iter_mut() {
            if matches!(m, 'a'..='z' | 'A'..='Z' | '0'..='9' | '.' | '^' | '<' | '>' | '\'') {
                one(mk);
            }
        }
        let id = self.buf.id;
        for w in self.windows.iter_mut().chain([&mut self.win]) {
            for j in w.jumps.iter_mut().filter(|j| j.0 == id) {
                one(&mut j.1);
            }
        }
        for c in &mut self.buf.changes {
            one(c);
        }
        if let Some((_, a, b)) = &mut self.buf.last_visual {
            one(a);
            one(b);
        }
        for w in self.windows.iter_mut().filter(|w| w.buf == id) {
            one(&mut w.off);
        }
    }

    /// What Neovim's calls of `mark_adjust`/`mark_col_adjust` do for the edits a command made to `before`: whole lines that go
    /// (`deleted_lines_mark`), whole lines that come (`appended_lines_mark`), two lines joined (`do_join`), a multi-line
    /// charwise delete (`op_delete`), a line split. A change inside a line moves nothing: a mark keeps its column.
    pub(super) fn adjust_marks(&mut self, before: &Text) {
        if self.marks_manual {
            return;
        }
        let after = self.buf.doc.text().clone();
        let edits: Vec<Edit> = self.buf.doc.last_edits().to_vec();
        let (mut cum, mut prev_end) = (0isize, 0usize);
        for ed in &edits {
            let bs = (ed.start as isize - cum) as usize;
            cum += ed.new_len as isize - ed.old_len as isize;
            if ed.start < prev_end || bs + ed.old_len > before.len() || ed.start + ed.new_len > after.len() {
                // Not in order (undo and redo have their own marks code).
                prev_end = prev_end.max(ed.start + ed.new_len);
                continue;
            }
            prev_end = ed.start + ed.new_len;
            let (r, i) = (super::newlines_in(before, bs..bs + ed.old_len), super::newlines_in(&after, ed.start..ed.start + ed.new_len));
            if r == 0 && i == 0 {
                continue;
            }
            let removed = before.slice(bs..bs + ed.old_len);
            let inserted = after.slice(ed.start..ed.start + ed.new_len);
            let sl = after.offset_to_line(ed.start);
            let sc = ed.start - after.line_to_offset(sl);
            let ri = r as isize;
            let ii = i as isize;
            if self.marks_split && ed.old_len == 0 {
                // `open_line` moves only the lines below: what is on the line being split stays on it.
                self.mark_adjust(sl + 1, usize::MAX, Some(ii), 0);
                continue;
            }
            let join = r == 1 && i == 0 && removed.starts_with('\n') && removed[1..].chars().all(|c| c == ' ' || c == '\t') && matches!(inserted.as_ref(), "" | " ");
            if join {
                // `do_join` of two lines: the marks of the second line move onto the first, by where its text now is.
                let (ws, sp) = (removed.len() - 1, inserted.len());
                let spaces_removed = ws - sp.min(ws);
                let col_amount = sc as isize - ws as isize + sp as isize;
                self.mark_col_adjust(sl + 1, 0, -1, col_amount, spaces_removed);
                self.mark_adjust(sl + 2, usize::MAX, Some(-1), 0);
            } else if ed.new_len == 0 {
                let to_end = bs + ed.old_len == before.len();
                if removed.starts_with('\n') && to_end {
                    // The last lines: the line break before them went with them.
                    self.mark_adjust(sl + 1, r, None, -ri);
                } else if !self.marks_chardel && sc == 0 && (removed.ends_with('\n') || (to_end && sl == 0)) {
                    // `deleted_lines_mark`: whole lines (all of them, with no line break at the end). Text from column 0 of a later
                    // line to the end of the buffer is a charwise delete (`vjd` on the last lines), as `dd` there takes the break before.
                    let n = r + usize::from(!removed.ends_with('\n'));
                    self.mark_adjust(sl, n, None, -(n as isize));
                } else {
                    // `op_delete` of text over several lines: `del_lines` takes the lines between, then `do_join` puts the end of
                    // the last line on the first: its marks move there, `sc` columns right.
                    if r > 1 {
                        self.mark_adjust(sl + 1, r - 1, None, 1 - ri);
                    }
                    self.mark_col_adjust(sl + 1, 0, -1, sc as isize, 0);
                    self.mark_adjust(sl + 2, usize::MAX, Some(-1), 0);
                }
            } else if ed.old_len == 0 && inserted.ends_with('\n') && sc == 0 && !(self.marks_below && inserted.starts_with('\n')) {
                // `appended_lines_mark(sl - 1, i)`.
                self.mark_adjust(sl, usize::MAX, Some(ii), 0);
            } else if ed.old_len == 0 && inserted.starts_with('\n') && (before.slice(bs..(bs + 1).min(before.len())) == "\n" || bs == before.len()) {
                // `appended_lines_mark(sl, i)`: lines opened below the one the cursor is on.
                self.mark_adjust(sl + 1, usize::MAX, Some(ii), 0);
            } else if r != i {
                self.mark_adjust(sl + r + 1, usize::MAX, Some(ii - ri), 0);
            }
        }
    }

    /// Offset of the last char of line `line` (its start on an empty line).
    pub(super) fn last_char_off(&self, line: usize) -> usize {
        let line = line.min(self.line_count() - 1);
        let text = self.buf.doc.text();
        let start = text.line_to_offset(line);
        let l = text.line(line);
        start + l.floor_char_boundary(l.len().saturating_sub(1))
    }

    /// The last char `range` covers, as `decl` finds it from the end of an exclusive range.
    pub(super) fn range_last_char(&self, range: &Range<usize>, kind: Kind, end_pos_off: usize) -> usize {
        match kind {
            Kind::Inclusive => end_pos_off,
            _ => {
                let text = self.buf.doc.text();
                let mut p = text.floor_char_boundary(range.end.saturating_sub(1));
                // `decl` goes back over a line break to the last char of the line before it (an empty line has none: it stays).
                if p > range.start && text.floor_char_boundary(p + 1) == p + 1 && text.slice(p..p + 1) == "\n" && text.slice(p - 1..p) != "\n" {
                    p = text.floor_char_boundary(p - 1);
                }
                p.max(range.start)
            }
        }
    }
}
