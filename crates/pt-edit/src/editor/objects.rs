//! Text objects (`iw`, `ap`, `i(`, `at`, ...).

use std::ops::Range;

use super::{Editor, Pos, class};

/// A text object's extent.
#[derive(Debug, PartialEq, Eq)]
pub(super) enum Obj {
    /// Byte range, possibly empty (`i(` on `()`).
    Chars(Range<usize>),
    /// First and last line.
    Lines(usize, usize),
}

/// Objects a repeat in Visual mode grows outward (`vi(i(`).
pub(super) const NESTED: &str = "()b[]{}B<>t";

/// Sentence pieces inside a paragraph: char index ranges, `true` for sentences, `false` for blank gaps.
fn sentences(chars: &[char]) -> Vec<(Range<usize>, bool)> {
    let (mut spans, mut i) = (Vec::new(), 0);
    let blank = |i: usize| chars[i].is_whitespace();
    while i < chars.len() {
        let start = i;
        if blank(i) {
            while i < chars.len() && blank(i) {
                i += 1;
            }
            spans.push((start..i, false));
            continue;
        }
        // A sentence ends at `.`/`!`/`?`, closing chars `)]"'`, then a blank or the end.
        let mut end = None;
        while i < chars.len() {
            if ".!?".contains(chars[i]) {
                let mut k = i + 1;
                while k < chars.len() && ")]\"'".contains(chars[k]) {
                    k += 1;
                }
                if k == chars.len() || blank(k) {
                    end = Some(k);
                    break;
                }
                i = k;
            } else {
                i += 1;
            }
        }
        let end = end.unwrap_or_else(|| {
            // Unterminated: up to the last non-blank.
            let mut e = chars.len();
            while e > start && blank(e - 1) {
                e -= 1;
            }
            e
        });
        spans.push((start..end, true));
        i = end;
    }
    spans
}

/// Quote indexes in `chars`, skipping those escaped by an odd number of backslashes.
fn quotes(chars: &[char], q: char) -> Vec<usize> {
    let mut out = Vec::new();
    let mut backslashes = 0;
    for (i, &c) in chars.iter().enumerate() {
        if c == q && backslashes % 2 == 0 {
            out.push(i);
        }
        backslashes = if c == '\\' { backslashes + 1 } else { 0 };
    }
    out
}

/// Tag pairs `(open, close)` as byte ranges of the tags, found by one scan with a stack.
fn tag_pairs(s: &str) -> Vec<(Range<usize>, Range<usize>)> {
    let name = |t: &str| -> String { t.chars().take_while(|c| c.is_alphanumeric() || "-_:.".contains(*c)).collect() };
    let (mut stack, mut pairs): (Vec<(String, Range<usize>)>, _) = (Vec::new(), Vec::new());
    let mut i = 0;
    while let Some(k) = memchr::memchr(b'<', &s.as_bytes()[i..]) {
        let start = i + k;
        let Some(len) = memchr::memchr(b'>', &s.as_bytes()[start..]) else { break };
        let end = start + len + 1;
        let inner = &s[start + 1..end - 1];
        i = end;
        if inner.starts_with(['!', '?']) || inner.ends_with('/') {
            continue;
        }
        if let Some(close) = inner.strip_prefix('/') {
            let n = name(close);
            // Unclosed tags inside a closed one are dropped (HTML void elements like `<br>`).
            if let Some(at) = stack.iter().rposition(|(o, _)| *o == n) {
                stack.truncate(at + 1);
                let (_, open) = stack.pop().expect("rposition found it");
                pairs.push((open, start..end));
            }
        } else {
            let n = name(inner);
            if !n.is_empty() {
                stack.push((n, start..end));
            }
        }
    }
    pairs
}

impl Editor {
    pub(super) fn text_object(&self, around: bool, obj: char, n: usize) -> Option<Obj> {
        let (open, close) = match obj {
            'w' | 'W' => return self.word_object(around, obj == 'W', n),
            'p' => return Some(self.paragraph_object(around, n)),
            's' => return self.sentence_object(around, n),
            't' => return self.tag_object(around, n),
            '"' | '\'' | '`' => return self.quote_object(around, obj),
            '(' | ')' | 'b' => ('(', ')'),
            '[' | ']' => ('[', ']'),
            '{' | '}' | 'B' => ('{', '}'),
            '<' | '>' => ('<', '>'),
            _ => return None,
        };
        self.bracket_object(around, open, close, n)
    }

    /// Byte range of chars `cols` in `line`.
    pub(super) fn cols_range(&self, line: usize, cols: Range<usize>) -> Range<usize> {
        let text = self.doc.text();
        let (start, s) = (text.line_to_offset(line), text.line(line));
        start + super::byte_of_col(&s, cols.start)..start + super::byte_of_col(&s, cols.end)
    }

    /// `iw`: `n` runs of one word class (blanks are a run too); `aw`: words with their trailing
    /// blanks, or the leading ones when there are none. Stays in the cursor line.
    fn word_object(&self, around: bool, big: bool, n: usize) -> Option<Obj> {
        let chars: Vec<char> = self.doc.text().line(self.line).chars().collect();
        let cls = |c: char| if big { u8::from(!c.is_whitespace()) } else { class(c) };
        let col = self.col.min(chars.len().checked_sub(1)?);
        // End (exclusive) of the run starting at `i`.
        let run = |i: usize| {
            let c = cls(chars[i]);
            (i..chars.len()).find(|&j| cls(chars[j]) != c).unwrap_or(chars.len())
        };
        let mut start = col;
        while start > 0 && cls(chars[start - 1]) == cls(chars[col]) {
            start -= 1;
        }
        let mut end = col;
        let blank = |i: usize| cls(chars[i]) == 0;
        for _ in 0..n {
            if end >= chars.len() {
                break;
            }
            let on_blank = blank(end);
            end = run(end);
            if around && end < chars.len() && blank(end) != on_blank {
                end = run(end);
            } else if around && !on_blank {
                while start > 0 && blank(start - 1) {
                    start -= 1;
                }
            }
        }
        Some(Obj::Chars(self.cols_range(self.line, start..end)))
    }

    /// `i"`: between the first pair of unescaped quotes in the line that ends at or after the
    /// cursor; `a"` adds the quotes and trailing blanks.
    fn quote_object(&self, around: bool, q: char) -> Option<Obj> {
        let chars: Vec<char> = self.doc.text().line(self.line).chars().collect();
        let quotes = quotes(&chars, q);
        let pair = quotes.as_chunks::<2>().0.iter().find(|p| p[1] >= self.col)?;
        if !around {
            return Some(Obj::Chars(self.cols_range(self.line, pair[0] + 1..pair[1])));
        }
        let end = (pair[1] + 1..chars.len()).find(|&i| !chars[i].is_whitespace()).unwrap_or(chars.len());
        Some(Obj::Chars(self.cols_range(self.line, pair[0]..end)))
    }

    /// `i(`: inside the `n`-th enclosing pair, linewise when the brackets sit alone at the edges of
    /// a multi-line block; `a(` includes the brackets.
    fn bracket_object(&self, around: bool, open: char, close: char, n: usize) -> Option<Obj> {
        let p = (self.line, self.col);
        let (mut left, mut depth, mut o) = (n, 0, None);
        for (q, ch) in self.bwd(p) {
            if ch == close && q != p {
                depth += 1;
            } else if ch == open {
                if depth > 0 {
                    depth -= 1;
                } else {
                    left -= 1;
                    if left == 0 {
                        o = Some(q);
                        break;
                    }
                }
            }
        }
        let o = o?;
        let c = self.matching(o, open, close, true)?;
        // Brackets are ASCII: one byte each.
        let (so, co) = (self.offset_of(o), self.offset_of(c));
        if around {
            return Some(Obj::Chars(so..co + 1));
        }
        if c.0 > o.0 + 1 && o.1 + 1 == self.line_chars(o.0) && c.1 == self.first_non_blank(c.0) {
            return Some(Obj::Lines(o.0 + 1, c.0 - 1));
        }
        Some(Obj::Chars(so + 1..co))
    }

    /// The bracket matching the one at `p`, scanning forward from an `open` or backward from a `close`.
    pub(super) fn matching(&self, p: Pos, open: char, close: char, forward: bool) -> Option<Pos> {
        let (inc, dec) = if forward { (open, close) } else { (close, open) };
        let mut depth = 0;
        let scan = |(q, ch): (Pos, char)| {
            if ch == inc {
                depth += 1;
            } else if ch == dec {
                if depth == 0 {
                    return Some(q);
                }
                depth -= 1;
            }
            None
        };
        if forward { self.fwd(p).skip(1).find_map(scan) } else { self.bwd(p).skip(1).find_map(scan) }
    }

    /// Lines `start..=end` around `line` that are all blank or all non-blank.
    fn paragraph_bounds(&self, line: usize) -> (usize, usize) {
        let text = self.doc.text();
        let last = text.line_count() - 1;
        let blank = |l: usize| text.line(l).trim().is_empty();
        let b = blank(line);
        let (mut start, mut end) = (line, line);
        while start > 0 && blank(start - 1) == b {
            start -= 1;
        }
        while end < last && blank(end + 1) == b {
            end += 1;
        }
        (start, end)
    }

    /// `ip`: `n` runs of lines that are all blank or all non-blank; `ap` adds the following blank
    /// run, or the preceding one at the end of the text.
    fn paragraph_object(&self, around: bool, n: usize) -> Obj {
        let text = self.doc.text();
        let last = text.line_count() - 1;
        let blank = |l: usize| text.line(l).trim().is_empty();
        let (mut start, mut end) = self.paragraph_bounds(self.line);
        for _ in 1..if around { 2 * n } else { n } {
            if end == last {
                break;
            }
            end = self.paragraph_bounds(end + 1).1;
        }
        if around && !blank(end) {
            while start > 0 && blank(start - 1) {
                start -= 1;
            }
        }
        Obj::Lines(start, end)
    }

    /// `is`: `n` sentences or blank gaps in the cursor's paragraph; `as` adds each sentence's
    /// trailing blanks, or the leading ones when there are none.
    fn sentence_object(&self, around: bool, n: usize) -> Option<Obj> {
        let (first, last) = self.paragraph_bounds(self.line);
        if self.doc.text().line(self.line).trim().is_empty() {
            return None;
        }
        // The paragraph as chars, line breaks included, with each char's position.
        let (mut chars, mut pos) = (Vec::new(), Vec::new());
        for l in first..=last {
            for (c, ch) in self.doc.text().line(l).chars().chain((l < last).then_some('\n')).enumerate() {
                chars.push(ch);
                pos.push((l, c));
            }
        }
        let cur = pos.iter().position(|&p| p == (self.line, self.col)).unwrap_or(chars.len() - 1);
        let spans = sentences(&chars);
        let k = spans.iter().position(|(r, _)| r.contains(&cur))?;
        let mut start = spans[k].0.start;
        let end = if !around {
            spans[(k + n - 1).min(spans.len() - 1)].0.end
        } else if !spans[k].1 {
            // On blanks: the gap and the `n` sentences after it.
            spans[(k + 2 * n - 1).min(spans.len() - 1)].0.end
        } else {
            // `n` sentences with the gaps between and after them.
            let last = (k + 2 * n - 1).min(spans.len() - 1);
            if spans[last].1 && k > 0 {
                // No trailing blanks: take the leading ones.
                start = spans[k - 1].0.start;
            }
            spans[last].0.end
        };
        let off = |i: usize| self.offset_of(pos[i]);
        let end_off = if end == chars.len() { self.line_end_offset(last) } else { off(end) };
        Some(Obj::Chars(off(start)..end_off))
    }

    /// `it`: between the tags of the `n`-th element enclosing the cursor; `at` includes the tags.
    fn tag_object(&self, around: bool, n: usize) -> Option<Obj> {
        let text = self.doc.text();
        // shortcut: scans the whole text (O(n)) for tags on every use; scan only around the cursor if large files need it.
        let all = text.slice(0..text.len());
        let cur = self.offset();
        let mut enclosing: Vec<_> = tag_pairs(&all).into_iter().filter(|(o, c)| o.start <= cur && cur < c.end).collect();
        enclosing.sort_by_key(|(o, _)| std::cmp::Reverse(o.start));
        let (open, close) = enclosing.into_iter().nth(n - 1)?;
        Some(Obj::Chars(if around { open.start..close.end } else { open.end..close.start }))
    }

    /// Makes a text object the Visual selection; a line object switches to linewise.
    pub(super) fn select_object(&mut self, obj: Obj) {
        match obj {
            Obj::Lines(a, b) => {
                self.anchor = (a, 0);
                self.line = b;
                self.set_col(self.col.min(self.line_chars(b)));
                self.mode = super::Mode::Visual(super::VKind::Line);
            }
            Obj::Chars(r) if !r.is_empty() => {
                let last = self.doc.text().slice(r.clone()).chars().next_back().map_or(0, char::len_utf8);
                self.anchor = self.pos_of(r.start);
                (self.line, self.col) = self.pos_of(r.end - last);
                self.want_col = self.col;
                self.mode = super::Mode::Visual(super::VKind::Char);
            }
            Obj::Chars(_) => {}
        }
    }

    /// Visual `i<obj>`/`a<obj>`: a nested object (brackets, tags) that would not grow the current
    /// selection is retried one level further out.
    pub(super) fn visual_object(&mut self, around: bool, obj: char, n: usize) {
        let (a, b) = super::sorted(self.anchor, (self.line, self.col));
        let sel = self.range(a, b, super::Kind::Inclusive);
        let grows = NESTED.contains(obj) && a != b;
        let mut n = n;
        loop {
            let Some(o) = self.text_object(around, obj, n) else { return };
            if let Obj::Chars(r) = &o
                && grows
                && sel.start <= r.start
                && r.end <= sel.end
                && n < super::MAX_COUNT
            {
                n += 1;
                continue;
            }
            return self.select_object(o);
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn splits_sentences() {
        let chars: Vec<char> = "Hi there.  (Yes!) ok\nend".chars().collect();
        let got: Vec<_> = sentences(&chars).into_iter().map(|(r, s)| (chars[r].iter().collect::<String>(), s)).collect();
        let want = [("Hi there.", true), ("  ", false), ("(Yes!)", true), (" ", false), ("ok\nend", true)];
        assert_eq!(got, want.map(|(s, b)| (s.to_string(), b)));
        let chars: Vec<char> = " a.b. ".chars().collect();
        assert_eq!(sentences(&chars), [(0..1, false), (1..5, true), (5..6, false)]);
    }

    #[test]
    fn finds_unescaped_quotes() {
        let chars: Vec<char> = r#""a\"b\\"c"#.chars().collect();
        assert_eq!(quotes(&chars, '"'), [0, 7]);
    }

    #[test]
    fn pairs_tags() {
        let s = "<a><b x=\"1\">t<br></b><!-- c --><img/></a></z>";
        let pairs = tag_pairs(s);
        let text = |r: &Range<usize>| &s[r.clone()];
        let got: Vec<_> = pairs.iter().map(|(o, c)| (text(o), text(c))).collect();
        assert_eq!(got, [("<b x=\"1\">", "</b>"), ("<a>", "</a>")]);
        assert_eq!(tag_pairs("a < b > c"), []);
        assert_eq!(tag_pairs("<a"), []);
    }
}
