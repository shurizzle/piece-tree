//! Motions: char iterators, words, finds, brackets, screen lines, marks and searches.

use super::{Cmd, Editor, G_DOWN, G_UP, Kind, Pos, class, search};

/// Chars of a line, then its `\n` if it has one, from byte `b` on.
struct FwdChars<'a> {
    s: std::borrow::Cow<'a, str>,
    b: usize,
    nl: bool,
}

impl Iterator for FwdChars<'_> {
    type Item = char;

    fn next(&mut self) -> Option<char> {
        match self.s[self.b..].chars().next() {
            Some(c) => {
                self.b += c.len_utf8();
                Some(c)
            }
            None => std::mem::take(&mut self.nl).then_some('\n'),
        }
    }
}

/// Chars of a line backward from byte `b_end` (after the `\n` when `nl`), with the column of each.
struct BwdChars<'a> {
    s: std::borrow::Cow<'a, str>,
    b_end: usize,
    nl: bool,
    idx: usize,
}

impl Iterator for BwdChars<'_> {
    type Item = (usize, char);

    fn next(&mut self) -> Option<(usize, char)> {
        let c = if std::mem::take(&mut self.nl) {
            '\n'
        } else {
            let c = self.s[..self.b_end].chars().next_back()?;
            self.b_end -= c.len_utf8();
            c
        };
        let idx = self.idx;
        self.idx = idx.wrapping_sub(1);
        Some((idx, c))
    }
}

/// Motions that set the `''` mark when they move the cursor (vim "jumps").
pub(super) const JUMPS: &str = "Gg%nN*#HML`'\u{E16F}";

impl Editor {
    /// Chars from `p` forward; each line but the last ends with `\n`. Lazy: a line is read in place and
    /// only as far as the caller consumes it, so a word motion in a huge line costs the word.
    pub(super) fn fwd(&self, p: Pos) -> impl Iterator<Item = (Pos, char)> + '_ {
        let text = self.buf.doc.text();
        let lines = text.line_count();
        (p.0..lines).flat_map(move |l| {
            let s = text.line(l);
            let (b, c0) = if l == p.0 { (super::byte_of_col(&s, p.1), p.1) } else { (0, 0) };
            let chars = FwdChars { s, b, nl: l + 1 < lines };
            chars.enumerate().map(move |(i, ch)| ((l, c0 + i), ch))
        })
    }

    /// Chars from `p` backward, `p` included.
    pub(super) fn bwd(&self, p: Pos) -> impl Iterator<Item = (Pos, char)> + '_ {
        let text = self.buf.doc.text();
        let lines = text.line_count();
        (0..=p.0).rev().flat_map(move |l| {
            let s = text.line(l);
            let nl = l + 1 < lines;
            // `b_end`: end of the chars still to give; `idx`: column of the next one (counted down).
            let (b_end, nl, idx) = if l == p.0 && super::byte_of_col(&s, p.1) < s.len() {
                // The cursor is on a char of the line: start at it, the line break is after it.
                (super::byte_of_col(&s, p.1 + 1), false, p.1)
            } else {
                // A line before the cursor's, or the cursor on the line break (or past it): all chars.
                let n = str_indices::chars::count(&s);
                let nl = nl && (l < p.0 || p.1 >= n);
                (s.len(), nl, (if nl { n } else { n.wrapping_sub(1) }).min(if l == p.0 { p.1 } else { usize::MAX }))
            };
            BwdChars { s, b_end, nl, idx }.map(move |(c, ch)| ((l, c), ch))
        })
    }

    /// `w`: start of the next word; an empty line counts as a word.
    fn word_start(&self, p: Pos) -> Pos {
        let mut it = self.fwd(p).peekable();
        let Some((_, first)) = it.next() else { return p };
        let cls = class(first);
        if cls != 0 {
            while it.next_if(|&(_, ch)| class(ch) == cls).is_some() {}
        }
        for (q, ch) in it {
            if class(ch) != 0 || (q.1 == 0 && ch == '\n') {
                return q;
            }
        }
        self.end_pos()
    }

    /// `e`: last char of the next word; without `skip_first`, of the word under `p` (for `cw`).
    fn word_end(&self, p: Pos, skip_first: bool) -> Pos {
        let mut it = self.fwd(p).skip(usize::from(skip_first)).peekable();
        while it.next_if(|&(_, ch)| class(ch) == 0).is_some() {}
        let Some((mut q, ch)) = it.next() else { return p };
        let cls = class(ch);
        while let Some((r, _)) = it.next_if(|&(_, c)| class(c) == cls) {
            q = r;
        }
        q
    }

    /// `b`: start of the previous word; an empty line counts as a word.
    fn word_back(&self, p: Pos) -> Pos {
        let mut it = self.bwd(p).skip(1).peekable();
        while let Some(&(q, ch)) = it.peek() {
            if class(ch) != 0 {
                break;
            }
            if q.1 == 0 && ch == '\n' {
                return q;
            }
            it.next();
        }
        let Some((mut q, ch)) = it.next() else { return (0, 0) };
        let cls = class(ch);
        while let Some((r, _)) = it.next_if(|&(_, c)| class(c) == cls) {
            q = r;
        }
        q
    }

    /// `f`/`F`/`t`/`T` in the cursor line. Repeated `t`/`T` skip an adjacent match (vim default `cpo`).
    fn find(&self, kind: char, ch: char, n: usize, repeat: bool) -> Option<(Pos, Kind)> {
        let line = self.buf.doc.text().line(self.win.line);
        let skip = usize::from(repeat && matches!(kind, 't' | 'T'));
        let mut buf = [0; 4];
        let needle = ch.encode_utf8(&mut buf).as_bytes();
        // Byte searches (UTF-8 is self-synchronizing, so a hit is a char); columns are counted per hit.
        let hit = if matches!(kind, 'f' | 't') {
            let from = self.win.col + 1 + skip;
            let b = super::byte_of_col(&line, from);
            let k = memchr::memmem::find_iter(&line.as_bytes()[b..], needle).nth(n - 1)?;
            from + str_indices::chars::count(&line[b..b + k])
        } else {
            let to = self.win.col.checked_sub(skip)?;
            let k = memchr::memmem::rfind_iter(&line.as_bytes()[..super::byte_of_col(&line, to)], needle).nth(n - 1)?;
            str_indices::chars::count(&line[..k])
        };
        Some(match kind {
            'f' => ((self.win.line, hit), Kind::Inclusive),
            't' => ((self.win.line, hit - 1), Kind::Inclusive),
            'F' => ((self.win.line, hit), Kind::Exclusive),
            _ => ((self.win.line, hit + 1), Kind::Exclusive),
        })
    }

    /// `%`: the bracket matching the first `()[]{}` at or after the cursor in its line.
    fn match_bracket(&self) -> Option<Pos> {
        let line = self.buf.doc.text().line(self.win.line);
        let b = super::byte_of_col(&line, self.win.col);
        let hay = &line.as_bytes()[b..];
        let k = [memchr::memchr3(b'(', b')', b'[', hay), memchr::memchr3(b']', b'{', b'}', hay)].into_iter().flatten().min()?;
        let (i, ch) = (self.win.col + str_indices::chars::count(&line[b..b + k]), hay[k] as char);
        let (open, close) = match ch {
            '(' | ')' => ('(', ')'),
            '[' | ']' => ('[', ']'),
            _ => ('{', '}'),
        };
        self.matching((self.win.line, i), open, close, ch == open)
    }

    /// `*`/`#`: the word under the cursor (or the next one in the line) and its start column.
    fn word_under_cursor(&self) -> Option<(String, usize)> {
        let line = self.buf.doc.text().line(self.win.line);
        let b = super::byte_of_col(&line, self.win.col);
        let (skipped, _) = line[b..].char_indices().find(|&(_, c)| class(c) == 1)?;
        let mut start = b + skipped;
        let mut col = self.win.col + line[b..start].chars().count();
        // Back to the word start, then on to its end.
        while let Some(p) = line[..start].chars().next_back().filter(|&p| class(p) == 1) {
            (start, col) = (start - p.len_utf8(), col - 1);
        }
        let end = start + line[start..].find(|c| class(c) != 1).unwrap_or(line.len() - start);
        Some((line[start..end].to_string(), col))
    }

    /// Byte offset of mark `m`, kept inside the text and on a char boundary (undo does not move marks).
    pub(super) fn mark(&self, m: char) -> Option<usize> {
        let off = (*self.buf.marks.get(&m)?).min(self.buf.doc.text().len());
        let text = self.buf.doc.text();
        let line = text.offset_to_line(off);
        let start = text.line_to_offset(line);
        Some(start + text.line(line).floor_char_boundary(off - start))
    }

    pub(super) fn motion(&mut self, cmd: &Cmd) -> Option<(Pos, Kind)> {
        let Cmd { key, count, op, arg, .. } = *cmd;
        let n = count.unwrap_or(1);
        let (line, col) = (self.win.line, self.win.col);
        let last = self.line_count() - 1;
        let vertical = |e: &Self, l: usize| ((l, e.win.want_col.min(e.line_chars(l))), Kind::Linewise);
        let first = |e: &Self, l: usize| ((l, e.first_non_blank(l)), Kind::Linewise);
        let half = (self.win.rows / 2).max(1);
        Some(match key {
            'h' => ((line, col.saturating_sub(n)), Kind::Exclusive),
            'l' => ((line, (col + n).min(self.line_chars(line))), Kind::Exclusive),
            'j' => vertical(self, (line + n).min(last)),
            'k' => vertical(self, line.saturating_sub(n)),
            // Half a screen of rows, not lines, so wrapped lines count for what they show.
            '\x04' | '\x15' => {
                let (k, _) = self.cursor_row();
                let (l, _) = self.step_rows(line, k, key == '\x04', half);
                vertical(self, l)
            }
            G_DOWN | G_UP => {
                let (k, x) = self.cursor_row();
                let x = self.win.want_x.filter(|&(_, p)| p == (line, col)).map_or(x, |(x, _)| x);
                let (l, k) = self.step_rows(line, k, key == G_DOWN, n);
                let pos = (l, self.col_at(l, k, x));
                // Stored as Normal mode will clamp it, so the next `gj` recognizes the cursor.
                self.win.want_x = Some((x, (l, pos.1.min(self.line_chars(l).saturating_sub(1)))));
                (pos, Kind::Exclusive)
            }
            '0' => ((line, 0), Kind::Exclusive),
            '^' => ((line, self.first_non_blank(line)), Kind::Exclusive),
            '$' => {
                let l = (line + n - 1).min(last);
                ((l, self.line_chars(l).saturating_sub(1)), Kind::Inclusive)
            }
            'g' | 'G' => first(self, count.map_or(if key == 'g' { 0 } else { last }, |c| (c - 1).min(last))),
            'H' => first(self, (self.win.top + n - 1).min(self.bottom_line())),
            'L' => {
                let bottom = self.bottom_line();
                first(self, bottom.saturating_sub(n - 1).max(self.win.top.min(bottom)))
            }
            'M' => {
                // The line on the middle screen row of what is shown.
                let (top, bottom) = (self.win.top.min(last), self.bottom_line());
                let shown: usize = (top..=bottom).map(|l| self.height_to(l, self.win.rows + 1)).sum::<usize>().saturating_sub(self.win.top_sub);
                let (mut row, mut l) = ((shown.max(1) - 1) / 2 + self.win.top_sub, top);
                while l < bottom && row >= self.height_to(l, self.win.rows + 1) {
                    row -= self.height_to(l, self.win.rows + 1);
                    l += 1;
                }
                first(self, l)
            }
            // `N%` goes to N percent of the lines, rounded up (vim).
            '%' if count.is_some() => first(self, ((n.min(100) * (last + 1)).div_ceil(100)).saturating_sub(1)),
            '%' => (self.match_bracket()?, Kind::Inclusive),
            'w' if op == Some('c') && !self.char_at((line, col)).is_whitespace() => {
                // Vim: `cw` on a word changes only up to its end, like `ce`.
                let mut p = self.word_end((line, col), false);
                for _ in 1..n {
                    p = self.word_end(p, true);
                }
                (p, Kind::Inclusive)
            }
            'w' => {
                let mut p = (line, col);
                for _ in 0..n {
                    p = self.word_start(p);
                }
                // Vim: an operator stops at the end of the line of the last word moved over.
                if op.is_some() && p.0 > line && p.1 <= self.first_non_blank(p.0) {
                    p = (p.0 - 1, self.line_chars(p.0 - 1));
                }
                (p, Kind::Exclusive)
            }
            'e' => {
                let mut p = (line, col);
                for _ in 0..n {
                    p = self.word_end(p, true);
                }
                (p, Kind::Inclusive)
            }
            'b' => {
                let mut p = (line, col);
                for _ in 0..n {
                    p = self.word_back(p);
                }
                (p, Kind::Exclusive)
            }
            'n' | 'N' => {
                let back = self.last_search.as_ref().is_some_and(|s| s.back);
                self.search_motion(back == (key == 'N'), n, None)?
            }
            '*' | '#' => {
                let Some((word, start)) = self.word_under_cursor() else {
                    self.msg = "No identifier under cursor".into();
                    return None;
                };
                let mut s = search::Search::word(&word);
                s.back = key == '#';
                self.last_search = Some(s);
                let from = self.offset_of((line, start));
                self.search_motion(key == '*', n, Some(from))?
            }
            'f' | 'F' | 't' | 'T' => {
                let ch = arg.expect("parse requires an argument");
                self.last_find = Some((key, ch));
                self.find(key, ch, n, false)?
            }
            ';' | ',' => {
                let (k, ch) = self.last_find?;
                let k = if key == ';' {
                    k
                } else {
                    match k {
                        'f' => 'F',
                        'F' => 'f',
                        't' => 'T',
                        _ => 't',
                    }
                };
                self.find(k, ch, n, true)?
            }
            '|' => ((line, (n - 1).min(self.line_chars(line))), Kind::Exclusive),
            super::G_BYTE => (self.pos_of(self.byte_pos(n - 1)), Kind::Exclusive),
            '`' | '\'' => {
                let m = match arg.expect("parse requires an argument") {
                    '`' => '\'',
                    m => m,
                };
                let Some(off) = self.mark(m) else {
                    self.msg = "Mark not set".into();
                    return None;
                };
                let p = self.pos_of(off);
                if key == '`' { (p, Kind::Exclusive) } else { first(self, p.0) }
            }
            _ => unreachable!("not a motion: {key:?}"),
        })
    }

    /// Char boundary at or before byte `b`, clamped to the text (`go`, `:goto`).
    pub(super) fn byte_pos(&self, b: usize) -> usize {
        self.buf.doc.text().floor_char_boundary(b)
    }

    /// Moves the cursor to a motion's target in Normal or Visual mode; jumps set the `''` mark.
    pub(super) fn move_to(&mut self, key: char, to: Pos) {
        if JUMPS.contains(key) && to != (self.win.line, self.win.col) {
            self.set_jump();
        }
        self.win.line = to.0;
        let col = to.1.min(self.line_chars(to.0).saturating_sub(1));
        match key {
            'j' | 'k' | '\x04' | '\x15' | G_DOWN | G_UP => self.win.col = col,
            '$' => {
                self.win.col = col;
                self.win.want_col = usize::MAX;
            }
            _ => self.set_col(col),
        }
    }

    /// Records the cursor as the `''` mark before a jump.
    pub(super) fn set_jump(&mut self) {
        self.buf.marks.insert('\'', self.offset());
    }

    /// The `n`-th match of `last_search` forward or backward from byte `from` (the cursor by
    /// default), wrapping, with the search offset applied. Sets the wrap or not-found message.
    pub(super) fn search_motion(&mut self, forward: bool, n: usize, from: Option<usize>) -> Option<(Pos, Kind)> {
        let Some(s) = self.last_search.clone() else {
            self.msg = "No previous search pattern".into();
            return None;
        };
        self.hl = true;
        // Repeating after an offset moved the cursor off the match: continue from the match.
        let mut cur = match (from, self.search_landing) {
            (Some(f), _) => f,
            (None, Some((p, start))) if p == (self.win.line, self.win.col) => start,
            _ => self.offset(),
        };
        let mut found = None;
        for _ in 0..n {
            let Some((m, wrapped)) = self.find_match(&s.re, forward, cur) else {
                self.msg = format!("Pattern not found: {}", s.pat);
                return None;
            };
            if wrapped {
                self.msg = if forward { "search hit BOTTOM, continuing at TOP" } else { "search hit TOP, continuing at BOTTOM" }.into();
            }
            cur = m.start;
            found = Some(m);
        }
        let m = found?;
        let text = self.buf.doc.text();
        let at_char = |c: isize| self.pos_of(text.char_to_offset(c.clamp(0, text.char_count() as isize) as usize));
        let target = match s.offset {
            search::Offset::None => (self.pos_of(m.start), Kind::Exclusive),
            search::Offset::Start(k) => (at_char(text.offset_to_char(m.start) as isize + k), Kind::Exclusive),
            search::Offset::End(k) => {
                let last = text.offset_to_char(m.end).saturating_sub(usize::from(!m.is_empty()));
                (at_char(last as isize + k), Kind::Inclusive)
            }
            search::Offset::Lines(k) => {
                let l = self.pos_of(m.start).0.saturating_add_signed(k).min(self.line_count() - 1);
                ((l, self.first_non_blank(l)), Kind::Linewise)
            }
        };
        let landing = (target.0.0, target.0.1.min(self.line_chars(target.0.0).saturating_sub(1)));
        self.search_landing = Some((landing, m.start));
        Some(target)
    }

    /// The match of `re` after byte `cur` (or the last before it), and whether it wrapped.
    pub(super) fn find_match(&self, re: &piece_tree::Regex, forward: bool, cur: usize) -> Option<(std::ops::Range<usize>, bool)> {
        let text = self.buf.doc.text();
        if !forward {
            return search::find_backward(text, re, cur);
        }
        // Past the char at `cur`; on a line end that is the next line's start.
        let (line, col) = self.pos_of(cur);
        let next = if col < self.line_chars(line) {
            self.offset_of((line, col + 1))
        } else {
            (cur + 1).min(text.len())
        };
        search::find_forward(text, re, cur, next)
    }
}
