//! Motions: char iterators, words, finds, brackets, screen lines, marks and searches.

use super::{Cmd, Editor, Kind, Pos, class, search};

/// Motions that set the `''` mark when they move the cursor (vim "jumps").
pub(super) const JUMPS: &str = "Gg%nN*#HML`'";

impl Editor {
    /// Chars from `p` forward; each line but the last ends with `\n`.
    pub(super) fn fwd(&self, p: Pos) -> impl Iterator<Item = (Pos, char)> + '_ {
        let text = self.doc.text();
        let lines = text.line_count();
        (p.0..lines)
            .flat_map(move |l| {
                let chars: Vec<char> = text.line(l).chars().chain((l + 1 < lines).then_some('\n')).collect();
                chars.into_iter().enumerate().map(move |(c, ch)| ((l, c), ch))
            })
            .skip(p.1)
    }

    /// Chars from `p` backward, `p` included.
    pub(super) fn bwd(&self, p: Pos) -> impl Iterator<Item = (Pos, char)> + '_ {
        let text = self.doc.text();
        let lines = text.line_count();
        (0..=p.0)
            .rev()
            .flat_map(move |l| {
                let chars: Vec<char> = text.line(l).chars().chain((l + 1 < lines).then_some('\n')).collect();
                chars.into_iter().enumerate().rev().map(move |(c, ch)| ((l, c), ch))
            })
            .skip_while(move |&((l, c), _)| l == p.0 && c > p.1)
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
        let chars: Vec<char> = self.doc.text().line(self.line).chars().collect();
        let skip = usize::from(repeat && matches!(kind, 't' | 'T'));
        let hit = if matches!(kind, 'f' | 't') {
            (self.col + 1 + skip..chars.len()).filter(|&i| chars[i] == ch).nth(n - 1)?
        } else {
            (0..self.col.checked_sub(skip)?).rev().filter(|&i| chars[i] == ch).nth(n - 1)?
        };
        Some(match kind {
            'f' => ((self.line, hit), Kind::Inclusive),
            't' => ((self.line, hit - 1), Kind::Inclusive),
            'F' => ((self.line, hit), Kind::Exclusive),
            _ => ((self.line, hit + 1), Kind::Exclusive),
        })
    }

    /// `%`: the bracket matching the first `()[]{}` at or after the cursor in its line.
    fn match_bracket(&self) -> Option<Pos> {
        let line = self.doc.text().line(self.line);
        let (i, ch) = line.chars().enumerate().skip(self.col).find(|(_, c)| "()[]{}".contains(*c))?;
        let (open, close) = match ch {
            '(' | ')' => ('(', ')'),
            '[' | ']' => ('[', ']'),
            _ => ('{', '}'),
        };
        self.matching((self.line, i), open, close, ch == open)
    }

    /// `*`/`#`: the word under the cursor (or the next one in the line) and its start column.
    fn word_under_cursor(&self) -> Option<(String, usize)> {
        let chars: Vec<char> = self.doc.text().line(self.line).chars().collect();
        let mut start = (self.col..chars.len()).find(|&i| class(chars[i]) == 1)?;
        while start > 0 && class(chars[start - 1]) == 1 {
            start -= 1;
        }
        let end = (start..chars.len()).find(|&i| class(chars[i]) != 1).unwrap_or(chars.len());
        Some((chars[start..end].iter().collect(), start))
    }

    /// Byte offset of mark `m`, kept inside the text and on a char boundary (undo does not move marks).
    pub(super) fn mark(&self, m: char) -> Option<usize> {
        let off = (*self.marks.get(&m)?).min(self.doc.text().len());
        let text = self.doc.text();
        let line = text.offset_to_line(off);
        let start = text.line_to_offset(line);
        Some(start + text.line(line).floor_char_boundary(off - start))
    }

    pub(super) fn motion(&mut self, cmd: &Cmd) -> Option<(Pos, Kind)> {
        let Cmd { key, count, op, arg, .. } = *cmd;
        let n = count.unwrap_or(1);
        let (line, col) = (self.line, self.col);
        let last = self.line_count() - 1;
        let vertical = |e: &Self, l: usize| ((l, e.want_col.min(e.line_chars(l))), Kind::Linewise);
        let first = |e: &Self, l: usize| ((l, e.first_non_blank(l)), Kind::Linewise);
        let half = (self.rows / 2).max(1);
        let bottom = (self.top + self.rows - 1).min(last);
        Some(match key {
            'h' => ((line, col.saturating_sub(n)), Kind::Exclusive),
            'l' => ((line, (col + n).min(self.line_chars(line))), Kind::Exclusive),
            'j' => vertical(self, (line + n).min(last)),
            'k' => vertical(self, line.saturating_sub(n)),
            '\x04' => vertical(self, (line + half).min(last)),
            '\x15' => vertical(self, line.saturating_sub(half)),
            '0' => ((line, 0), Kind::Exclusive),
            '^' => ((line, self.first_non_blank(line)), Kind::Exclusive),
            '$' => {
                let l = (line + n - 1).min(last);
                ((l, self.line_chars(l).saturating_sub(1)), Kind::Inclusive)
            }
            'g' | 'G' => first(self, count.map_or(if key == 'g' { 0 } else { last }, |c| (c - 1).min(last))),
            'H' => first(self, (self.top + n - 1).min(bottom)),
            'L' => first(self, bottom.saturating_sub(n - 1).max(self.top.min(bottom))),
            'M' => first(self, self.top.min(bottom) + (bottom - self.top.min(bottom)) / 2),
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
                self.hl = true;
                let mut p = None;
                for _ in 0..n {
                    let from = p.map_or_else(|| self.offset(), |q| self.offset_of(q));
                    p = Some(self.search_from(key == 'n', from)?);
                }
                (p?, Kind::Exclusive)
            }
            '*' | '#' => {
                let Some((word, start)) = self.word_under_cursor() else {
                    self.msg = "No identifier under cursor".into();
                    return None;
                };
                self.last_search = Some(super::Search { pat: word, word: true });
                self.hl = true;
                let mut from = self.offset_of((line, start));
                for _ in 0..n {
                    let p = self.search_from(key == '*', from)?;
                    from = self.offset_of(p);
                }
                (self.pos_of(from), Kind::Exclusive)
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

    /// Moves the cursor to a motion's target in Normal or Visual mode; jumps set the `''` mark.
    pub(super) fn move_to(&mut self, key: char, to: Pos) {
        if JUMPS.contains(key) && to != (self.line, self.col) {
            self.set_jump();
        }
        self.line = to.0;
        let col = to.1.min(self.line_chars(to.0).saturating_sub(1));
        match key {
            'j' | 'k' | '\x04' | '\x15' => self.col = col,
            '$' => {
                self.col = col;
                self.want_col = usize::MAX;
            }
            _ => self.set_col(col),
        }
    }

    /// Records the cursor as the `''` mark before a jump.
    pub(super) fn set_jump(&mut self) {
        self.marks.insert('\'', self.offset());
    }

    /// Next (or previous) match of `last_search` from byte `cur`, wrapping around; sets the message.
    pub(super) fn search_from(&mut self, forward: bool, cur: usize) -> Option<Pos> {
        let Some(s) = self.last_search.clone() else {
            self.msg = "No previous search pattern".into();
            return None;
        };
        let Some((off, wrapped)) = self.find_text(&s.pat, s.word, forward, cur) else {
            self.msg = format!("Pattern not found: {}", s.pat);
            return None;
        };
        if wrapped {
            self.msg = if forward { "search hit BOTTOM, continuing at TOP" } else { "search hit TOP, continuing at BOTTOM" }.into();
        }
        Some(self.pos_of(off))
    }

    /// Offset of the first match after `cur` (or the last before it), and whether it wrapped.
    pub(super) fn find_text(&self, pat: &str, word: bool, forward: bool, cur: usize) -> Option<(usize, bool)> {
        let text = self.doc.text();
        let accept = |off: usize| {
            !word || {
                // Whole word: look at the chars around the match in its line.
                let line = text.offset_to_line(off);
                let start = text.line_to_offset(line);
                let s = text.line(line);
                s.len() >= off - start + pat.len() && search::is_whole_word(&s, off - start..off - start + pat.len())
            }
        };
        let mut hits = search::match_starts(text, pat).filter(|&o| accept(o));
        if forward {
            let first = hits.next()?;
            if first > cur {
                return Some((first, false));
            }
            Some(hits.find(|&o| o > cur).map_or((first, true), |o| (o, false)))
        } else {
            let (mut before, mut last) = (None, None);
            for o in hits {
                if o < cur {
                    before = Some(o);
                }
                last = Some(o);
            }
            before.map(|o| (o, false)).or(last.map(|o| (o, true)))
        }
    }
}
