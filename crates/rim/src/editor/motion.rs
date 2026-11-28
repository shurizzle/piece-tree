//! Motions: char iterators, words, finds, brackets, screen lines, marks and searches.

use super::{Cmd, Editor, G_DOWN, G_END_BACK, G_END_BACK_BIG, G_UP, Kind, Pos, graphemes, search};

/// First char of each cluster of a line, then its `\n` if it has one, from byte `b` on.
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
                self.b = graphemes::next(&self.s, self.b);
                Some(c)
            }
            None => std::mem::take(&mut self.nl).then_some('\n'),
        }
    }
}

/// Clusters of a line backward from byte `b_end` (after the `\n` when `nl`), as their first char,
/// with the column of each.
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
            if self.b_end == 0 {
                return None;
            }
            self.b_end = graphemes::prev(&self.s, self.b_end);
            self.s[self.b_end..].chars().next().expect("a cluster")
        };
        let idx = self.idx;
        self.idx = idx.wrapping_sub(1);
        Some((idx, c))
    }
}

/// Motions that set the `''` mark when they move the cursor (vim "jumps").
pub(super) const JUMPS: &str = "Gg%nN*#HML`'(){}\u{E16F}";

impl Editor {
    /// Clusters from `p` forward, as their first chars; each line but the last ends with `\n`. Lazy: a
    /// line is read in place and only as far as the caller consumes it, and the start is found
    /// through the line's index, so a word motion in a huge line costs the word.
    pub(super) fn fwd(&self, p: Pos) -> impl Iterator<Item = (Pos, char)> + '_ {
        let text = self.buf.doc.text();
        let lines = text.line_count();
        let b0 = self.offset_of(p) - text.line_to_offset(p.0);
        (p.0..lines).flat_map(move |l| {
            let s = text.line(l);
            let (b, c0) = if l == p.0 { (b0, p.1) } else { (0, 0) };
            let chars = FwdChars { s, b, nl: l + 1 < lines };
            chars.enumerate().map(move |(i, ch)| ((l, c0 + i), ch))
        })
    }

    /// Clusters from `p` backward, `p` included.
    pub(super) fn bwd(&self, p: Pos) -> impl Iterator<Item = (Pos, char)> + '_ {
        let text = self.buf.doc.text();
        let lines = text.line_count();
        let b0 = self.offset_of(p) - text.line_to_offset(p.0);
        (0..=p.0).rev().flat_map(move |l| {
            let s = text.line(l);
            let nl = l + 1 < lines;
            // `b_end`: end of the clusters still to give; `idx`: column of the next one (counted down).
            let (b_end, nl, idx) = if l == p.0 && b0 < s.len() {
                // The cursor is on a cluster of the line: start at it, the line break is after it.
                (graphemes::next(&s, b0), false, p.1)
            } else {
                // A line before the cursor's, or the cursor on the line break (or past it): all clusters.
                let n = self.line_chars(l);
                let nl = nl && (l < p.0 || p.1 >= n);
                (s.len(), nl, (if nl { n } else { n.wrapping_sub(1) }).min(if l == p.0 { p.1 } else { usize::MAX }))
            };
            BwdChars { s, b_end, nl, idx }.map(move |(c, ch)| ((l, c), ch))
        })
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
            let b = self.line_byte(self.win.line, from);
            let k = memchr::memmem::find_iter(&line.as_bytes()[b..], needle).nth(n - 1)?;
            from + graphemes::col_of(&line[b..], k)
        } else {
            let to = self.win.col.checked_sub(skip)?;
            let k = memchr::memmem::rfind_iter(&line.as_bytes()[..self.line_byte(self.win.line, to)], needle).nth(n - 1)?;
            self.line_col(self.win.line, k)
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
        let b = self.line_byte(self.win.line, self.win.col);
        let hay = &line.as_bytes()[b..];
        let k = [memchr::memchr3(b'(', b')', b'[', hay), memchr::memchr3(b']', b'{', b'}', hay)].into_iter().flatten().min()?;
        let (i, ch) = (self.win.col + graphemes::col_of(&line[b..], k), hay[k] as char);
        let (open, close) = match ch {
            '(' | ')' => ('(', ')'),
            '[' | ']' => ('[', ']'),
            _ => ('{', '}'),
        };
        self.matching((self.win.line, i), open, close, ch == open)
    }

    /// `find_ident_at_pos` with `FIND_IDENT | FIND_STRING` (`*`, `#`, `Ctrl+R Ctrl+W`): the identifier under the cursor or the next
    /// one in the line, else the non-blank text; its start column, and whether it is an identifier (a word of class 2: `*` then
    /// matches it as a whole word). A word ends where the class of its chars changes (`日本語abc` is two).
    pub(super) fn word_under_cursor(&self) -> Option<(String, usize, bool)> {
        use super::wordclass::class;
        let line = self.buf.doc.text().line(self.win.line);
        let cls = |b: usize| line[b..].chars().next().map_or(0, class);
        let startb = self.line_byte(self.win.line, self.win.col);
        let (mut b, mut this_class) = (startb, 0);
        let mut pass = 0;
        while pass < 2 {
            // 1. Skip to the start of the identifier (pass 0) or of any non-blank text (pass 1).
            b = startb;
            while b < line.len() {
                this_class = cls(b);
                if this_class != 0 && (pass == 1 || this_class != 1) {
                    break;
                }
                b = graphemes::next(&line, b);
            }
            // 2. Back up to the start: while the class stays the same (pass 0), or up to a blank (pass 1, as `FIND_IDENT` is set: the
            // class must stay the same too).
            this_class = if b < line.len() { cls(b) } else { 0 };
            while b > 0 && this_class != 0 {
                let prev = graphemes::prev(&line, b);
                if this_class != cls(prev) {
                    break;
                }
                b = prev;
            }
            // An identifier found, or any text wanted and it is not one: stop at the first pass that found a word.
            this_class = this_class.min(2);
            if this_class == 2 {
                break;
            }
            pass += 1;
        }
        let pass = pass.min(1);
        if b >= line.len() || (pass == 0 && this_class != 2) {
            return None;
        }
        // 3. The end: where the class changes (pass 0) or at a blank (pass 1).
        let first = cls(b);
        let mut end = b;
        while end < line.len() && (if pass == 0 { cls(end) == first } else { cls(end) != 0 }) {
            end = graphemes::next(&line, end);
        }
        let col = graphemes::col_of(&line, b);
        // `vim_iswordp`: a word char starts it.
        Some((line[b..end].to_string(), col, first >= 2))
    }

    /// Byte offset of mark `m`, kept inside the text and on a char boundary (undo does not move marks).
    pub(super) fn mark(&self, m: char) -> Option<usize> {
        // `mark_get_motion`: `(`, `)`, `{` and `}` are where those motions would go from the cursor.
        if matches!(m, '(' | ')' | '{' | '}') {
            let text = self.buf.doc.text();
            let here = super::sentence::P { l: self.win.line, c: self.offset() - text.line_to_offset(self.win.line) };
            let p = if matches!(m, '(' | ')') { self.findsent(m == ')', 1, here)? } else { self.findpar(m == '}', 1, here.l, 0, false)?.0 };
            return Some(text.line_to_offset(p.l) + p.c);
        }
        let mk = self.mark_get(m)?;
        Some(self.mark_offset(mk))
    }

    /// `linetabsize`: cells of the line, its end excluded.
    fn linetabsize(&self, line: usize) -> usize {
        let s = self.buf.doc.text().line(line);
        graphemes::cells(&s, 0, 0, self.buf.opts.tabs(), self.wrap_w(), usize::MAX).last().map_or(0, |c| c.end())
    }

    /// `nv_screengo`: `dist` screen rows down or up from the cursor. The column wanted keeps the rows (it is a virtual
    /// column of the whole line, so `gj` then `gk` come back), and `$` sticks to the last column of a row. Returns
    /// the position reached and whether the cursor could move that far; the column wanted is left as Neovim does.
    fn screengo(&mut self, down: bool, dist: usize) -> ((usize, usize), bool) {
        // Both widths are the text width: 'cpoptions' has no `n`.
        let w = self.wrap_w().max(1);
        let last = self.line_count() - 1;
        let mut line = self.win.line;
        let mut linelen = self.linetabsize(line);
        let mut cs = self.win.want_col;
        let atend = cs == usize::MAX;
        let rows_to = |linelen: usize| if linelen > w { ((linelen - w - 1) / w + 1) * w + w } else { w };
        if atend {
            let vcol = self.cursor_vcols().2;
            cs = w - 1;
            if vcol > cs {
                cs += ((vcol - cs - 1) / w + 1) * w;
            }
        } else {
            cs = cs.min(rows_to(linelen) - 1);
        }
        let mut ok = true;
        for _ in 0..dist {
            if !down {
                if cs >= w {
                    cs -= w;
                } else {
                    if line == 0 {
                        ok = false;
                        break;
                    }
                    line -= 1;
                    linelen = self.linetabsize(line);
                    if linelen > w {
                        cs += ((linelen - w - 1) / w + 1) * w;
                    }
                }
            } else if cs.saturating_add(w) < rows_to(linelen) {
                cs += w;
            } else {
                if line >= last {
                    ok = false;
                    break;
                }
                line += 1;
                cs %= w;
                linelen = self.linetabsize(line);
            }
        }
        let mut col = self.coladvance(line, cs);
        if col > 0 && self.win.opts.wrap {
            // A char split at the end of the last row: advance a row, do not stay in it or move two.
            let virtcol = self.vcols_at((line, col)).2;
            let text = self.buf.doc.text().line(line);
            let c = text[graphemes::byte_of(&text, col)..].chars().next().map_or(0, |c| c as u32);
            if down && virtcol < cs && cs <= w && !super::messages::utf_printable(c) && c > 255 && col < graphemes::count(&text).saturating_sub(1) {
                col += 1;
            }
            if virtcol > cs && (if cs < w { cs > w / 2 } else { (cs - w) % w > w / 2 }) {
                col -= 1;
            }
        }
        // Stick in the last column.
        self.win.want_col = if atend { usize::MAX } else { cs };
        ((line, col), ok)
    }

    pub(super) fn motion(&mut self, cmd: &Cmd) -> Option<(Pos, Kind)> {
        let Cmd { key, count, op, arg, .. } = *cmd;
        let n = count.unwrap_or(1);
        let (line, col) = (self.win.line, self.win.col);
        let last = self.line_count() - 1;
        let vertical = |e: &Self, l: usize| ((l, e.col_wanted(l)), Kind::Linewise);
        let first = |e: &Self, l: usize| ((l, e.first_non_blank(l)), Kind::Linewise);
        let half = (self.win.rows / 2).max(1);
        Some(match key {
            'h' => ((line, col.saturating_sub(n)), Kind::Exclusive),
            'l' => ((line, (col + n).min(self.line_chars(line))), Kind::Exclusive),
            // `cursor_down` and `cursor_up` fail on the last and the first line, so `dj` there changes nothing.
            'j' if line >= last => return None,
            'k' if line == 0 => return None,
            'j' => vertical(self, (line + n).min(last)),
            'k' => vertical(self, line.saturating_sub(n)),
            // Half a screen of rows, not lines, so wrapped lines count for what they show.
            '\x04' | '\x15' => {
                let (k, _) = self.cursor_row();
                let (l, _) = self.step_rows(line, k, key == '\x04', half);
                vertical(self, l)
            }
            // With 'nowrap' `gj` and `gk` work just like `j` and `k`.
            G_DOWN | G_UP if !self.win.opts.wrap => {
                if (key == G_DOWN && line >= last) || (key == G_UP && line == 0) {
                    return None;
                }
                vertical(self, if key == G_DOWN { (line + n).min(last) } else { line.saturating_sub(n) })
            }
            G_DOWN | G_UP => {
                let inclusive = self.win.want_col == usize::MAX;
                let (pos, ok) = self.screengo(key == G_DOWN, n);
                if !ok {
                    // The cursor has moved to the column wanted before the move failed.
                    (self.win.line, self.win.col) = pos;
                    return None;
                }
                (pos, if inclusive { Kind::Inclusive } else { Kind::Exclusive })
            }
            '0' => ((line, 0), Kind::Exclusive),
            '^' => ((line, self.first_non_blank(line)), Kind::Exclusive),
            '$' => {
                let l = (line + n - 1).min(last);
                ((l, self.line_chars(l).saturating_sub(1)), Kind::Inclusive)
            }
            // 'startofline' is off in Neovim: `G`, `gg`, `H`, `M`, `L` and `N%` keep the column the cursor wanted (`beginline(BL_SOL | BL_FIX)`).
            'g' | 'G' => vertical(self, count.map_or(if key == 'g' { 0 } else { last }, |c| (c - 1).min(last))),
            // `scrolloff` lines stay between them and the screen edge, but at the text's ends.
            'H' => {
                let so = if self.win.top > 0 { self.scrolloff() } else { 0 };
                vertical(self, (self.win.top + (n - 1).max(so)).min(self.bottom_line()))
            }
            'L' => {
                let bottom = self.bottom_line();
                let so = if bottom < last { self.scrolloff() } else { 0 };
                vertical(self, bottom.saturating_sub((n - 1).max(so)).max(self.win.top.min(bottom)))
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
                vertical(self, l)
            }
            // `N%` goes to N percent of the lines, rounded up (vim).
            '(' | ')' | '{' | '}' => self.sentence_motion(key, n)?,
            // A search is typed on the command line (`search_op` for an operator): not a motion computed here.
            '/' | '?' => return None,
            '%' if count.is_some() => vertical(self, ((n.min(100) * (last + 1)).div_ceil(100)).saturating_sub(1)),
            '%' => (self.match_bracket()?, Kind::Inclusive),
            // `nv_wordcmd`: `cw` is `ce` only with a char under the cursor (an empty line is the NUL, which is `dw`'s way) that is
            // no blank; a count of words of the same kind (`cpoptions` has `_`: `end_word(count, bigword, stop = true)`).
            'w' | 'W' if op == Some('c') && col < self.line_chars(line) && !matches!(self.char_at((line, col)), ' ' | '\t') => {
                let (p, _) = self.end_word((line, col), n, key == 'W', true, false);
                (self.adjust_word_end((line, col), p), Kind::Inclusive)
            }
            'w' | 'W' => {
                let (p, ok) = self.fwd_word((line, col), n, key == 'W', op.is_some());
                if !ok && op.is_none() {
                    self.beep_flush();
                }
                (p, Kind::Exclusive)
            }
            'e' | 'E' => {
                let (p, ok) = self.end_word((line, col), n, key == 'E', false, false);
                if !ok && op.is_none() {
                    self.beep_flush();
                }
                (self.adjust_word_end((line, col), p), Kind::Inclusive)
            }
            // `nv_bck_word` and `nv_g_cmd`: a failing `b` or `ge` is `clearopbeep`, with an operator too.
            'b' | 'B' => {
                let (p, ok) = self.bck_word((line, col), n, key == 'B', false);
                if !ok {
                    self.beep_flush();
                    // The cursor stays where the counts that worked took it; an operator is dropped.
                    if op.is_some() {
                        return None;
                    }
                }
                (p, Kind::Exclusive)
            }
            G_END_BACK | G_END_BACK_BIG => {
                let (p, ok) = self.bckend_word((line, col), n, key == G_END_BACK_BIG, false);
                if !ok {
                    self.beep_flush();
                    if op.is_some() {
                        return None;
                    }
                }
                (p, Kind::Inclusive)
            }
            'n' | 'N' => {
                let back = self.last_search.as_ref().is_some_and(|s| s.back);
                self.search_motion(back == (key == 'N'), n, None)?
            }
            '*' | '#' => {
                let Some((word, start, ident)) = self.word_under_cursor() else {
                    self.error("E348: No string under cursor");
                    return None;
                };
                let mut s = search::Search::word(&word, ident, self.buf.opts.ignorecase);
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
            '|' => {
                // `nv_pipe`: the column wanted is the one asked for, also when the line is shorter.
                (self.win.want_col, self.win.want_set) = (n - 1, false);
                ((line, self.coladvance(line, n - 1)), Kind::Exclusive)
            }
            super::G_BYTE => (self.pos_of(self.byte_pos(n - 1)), Kind::Exclusive),
            '`' | '\'' => {
                let m = match arg.expect("parse requires an argument") {
                    '`' => '\'',
                    m => m,
                };
                // A file mark of another buffer takes the window there.
                if let Some(id) = self.file_mark_elsewhere(m) {
                    if op.is_some() {
                        return None;
                    }
                    self.set_jump();
                    self.switch_buffer(id);
                    // `buflist_getfile` leaves an empty message line behind (the file info is off in 'shortmess').
                    self.capture_msg("", false);
                }
                let Some(off) = self.mark(m) else {
                    self.error("E20: Mark not set");
                    return None;
                };
                let p = self.pos_of(off);
                if key == '`' { (p, Kind::Exclusive) } else { first(self, p.0) }
            }
            _ => unreachable!("not a motion: {key:?}"),
        })
    }

    /// `scrolloff` as it applies to the window: at most half the screen.
    pub(super) fn scrolloff(&self) -> usize {
        self.win.opts.scrolloff.unwrap_or(self.global_opts.scrolloff).min(self.win.rows.saturating_sub(1) / 2)
    }

    /// Char boundary at or before byte `b`, clamped to the text (`go`, `:goto`).
    pub(super) fn byte_pos(&self, b: usize) -> usize {
        self.buf.doc.text().floor_char_boundary(b)
    }

    /// `adjust_cursor` of `nv_wordcmd`: a word end that landed on the NUL of its line (and moved) is the last char of it.
    fn adjust_word_end(&self, start: Pos, p: Pos) -> Pos {
        if p > start && p.1 > 0 && p.1 >= self.line_chars(p.0) && !matches!(self.mode, super::Mode::Visual(_)) { (p.0, p.1 - 1) } else { p }
    }

    /// Moves the cursor to a motion's target in Normal or Visual mode; jumps set the `''` mark.
    pub(super) fn move_to(&mut self, key: char, to: Pos) {
        // `nv_goto` sets the mark whether the cursor moves or not.
        if JUMPS.contains(key) && (to != (self.win.line, self.win.col) || matches!(key, 'G' | 'g')) {
            self.set_jump();
        }
        self.win.line = to.0;
        let col = to.1.min(self.line_chars(to.0).saturating_sub(1));
        match key {
            // `coladvance` already allows the position past the end where the mode does (Visual).
            'j' | 'k' | '\x04' | '\x15' | G_DOWN | G_UP | '|' | 'g' | 'G' | 'H' | 'M' | 'L' => self.win.col = to.1.min(self.line_chars(to.0)),
            '$' => {
                // `coladvance(MAXCOL)`: in Visual mode the cursor goes on the position past the last char.
                self.win.col = if matches!(self.mode, super::Mode::Visual(_)) { self.line_chars(to.0) } else { col };
                (self.win.want_col, self.win.want_set) = (usize::MAX, false);
            }
            // `oneright`/`oneleft` set `w_set_curswant` only when they moved.
            'h' | 'l' => {
                // `nv_right`: in Visual mode `l` goes on to the position past the last char (`past_line`).
                let col = if key == 'l' && matches!(self.mode, super::Mode::Visual(_)) { to.1.min(self.line_chars(to.0)) } else { col };
                let moved = (self.win.line, self.win.col) != (to.0, col);
                self.win.col = col;
                self.win.want_set |= moved;
                // `nv_left`, `nv_right`: nothing moved at all.
                if !moved {
                    self.beep_flush();
                }
            }
            _ => self.set_col(col),
        }
    }

    /// Records the cursor as the `''` mark and in the jump list before a jump.
    pub(super) fn set_jump(&mut self) {
        // `setpcmark`: for `:global` the mark is set only once, by `:global` itself.
        if self.scripts.global_busy {
            return;
        }
        self.put_off('\'', self.offset());
        self.push_jump();
    }

    /// The `n`-th match of `last_search` forward or backward from byte `from` (the cursor by
    /// default), wrapping, with the search offset applied. Sets the wrap or not-found message.
    pub(super) fn search_motion(&mut self, forward: bool, n: usize, from: Option<usize>) -> Option<(Pos, Kind)> {
        let Some(s) = self.last_search.clone() else {
            self.error("E35: No previous regular expression");
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
                self.error(format!("E486: Pattern not found: {}", s.pat));
                return None;
            };
            if wrapped {
                self.warn(if forward { "search hit BOTTOM, continuing at TOP" } else { "search hit TOP, continuing at BOTTOM" });
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
