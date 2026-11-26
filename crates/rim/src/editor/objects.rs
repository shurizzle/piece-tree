//! Text objects (`iw`, `ap`, `i(`, `at`, ...).

use std::ops::Range;

use super::{Editor, Pos, class, graphemes};

/// A text object's extent.
#[derive(Debug, PartialEq, Eq)]
pub(super) enum Obj {
    /// Byte range, possibly empty (`i(` on `()`).
    Chars(Range<usize>),
    /// First and last line.
    Lines(usize, usize),
}

/// Objects a repeat in Visual mode grows outward (`vi(i(`).
pub(super) const NESTED: &str = "()b[]{}B<>tfca";

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

/// Byte offsets of the quotes `q` in `line`, skipping those escaped by an odd number of backslashes.
fn quotes(line: &str, q: char) -> Vec<usize> {
    let bytes = line.as_bytes();
    let mut buf = [0; 4];
    memchr::memmem::find_iter(bytes, q.encode_utf8(&mut buf).as_bytes())
        .filter(|&i| bytes[..i].iter().rev().take_while(|&&b| b == b'\\').count() % 2 == 0)
        .collect()
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
            'f' | 'c' | 'a' => return self.syntax_object(around, obj, n).map(Obj::Chars),
            '"' | '\'' | '`' => return self.quote_object(around, obj),
            '(' | ')' | 'b' => ('(', ')'),
            '[' | ']' => ('[', ']'),
            '{' | '}' | 'B' => ('{', '}'),
            '<' | '>' => ('<', '>'),
            _ => return None,
        };
        self.bracket_object(around, open, close, n)
    }

    /// Byte range of clusters `cols` in `line`.
    pub(super) fn cols_range(&self, line: usize, cols: Range<usize>) -> Range<usize> {
        self.offset_of((line, cols.start))..self.offset_of((line, cols.end))
    }

    /// `iw`: `n` runs of one word class (blanks are a run too); `aw`: words with their trailing
    /// blanks, or the leading ones when there are none. Stays in the cursor line.
    fn word_object(&self, around: bool, big: bool, n: usize) -> Option<Obj> {
        let line = self.buf.doc.text().line(self.win.line);
        let cls = |c: char| if big { u8::from(!c.is_whitespace()) } else { class(c) };
        // Everything works on byte positions in the line, moving only as far as the object extends.
        // Clusters are classed by their first char.
        let col = self.win.col.min(self.line_chars(self.win.line).checked_sub(1)?);
        let at = |b: usize| line[b..].chars().next();
        // Start of the cluster before `b` if it is of class `c`.
        let before = |b: usize, c: u8| (b > 0).then(|| graphemes::prev(&line, b)).filter(|&p| at(p).is_some_and(|ch| cls(ch) == c));
        let blank = |b: usize| at(b).is_some_and(|c| cls(c) == 0);
        // End (exclusive) of the run starting at `b`.
        let run = |b: usize| {
            let c = cls(at(b).expect("a run starts on a char"));
            let mut e = b;
            while at(e).is_some_and(|ch| cls(ch) == c) {
                e = graphemes::next(&line, e);
            }
            e
        };
        let bcol = self.line_byte(self.win.line, col);
        let mut start = bcol;
        while let Some(p) = before(start, cls(at(bcol).expect("col is a char"))) {
            start = p;
        }
        let mut end = bcol;
        for _ in 0..n {
            if end >= line.len() {
                break;
            }
            let on_blank = blank(end);
            end = run(end);
            if around && end < line.len() && blank(end) != on_blank {
                end = run(end);
            } else if around && !on_blank {
                while let Some(p) = before(start, 0) {
                    start = p;
                }
            }
        }
        let off = self.buf.doc.text().line_to_offset(self.win.line);
        Some(Obj::Chars(off + start..off + end))
    }

    /// `i"`: between the first pair of unescaped quotes in the line that ends at or after the
    /// cursor; `a"` adds the quotes and trailing blanks.
    fn quote_object(&self, around: bool, q: char) -> Option<Obj> {
        let line = self.buf.doc.text().line(self.win.line);
        let quotes = quotes(&line, q);
        // Quotes as byte offsets; the pair is the first one ending at or after the cursor's byte.
        let cursor = self.line_byte(self.win.line, self.win.col);
        let pair = quotes.as_chunks::<2>().0.iter().find(|p| p[1] >= cursor)?;
        let off = self.buf.doc.text().line_to_offset(self.win.line);
        if !around {
            return Some(Obj::Chars(off + pair[0] + q.len_utf8()..off + pair[1]));
        }
        let after = pair[1] + q.len_utf8();
        let end = after + line[after..].find(|c: char| !c.is_whitespace()).unwrap_or(line.len() - after);
        Some(Obj::Chars(off + pair[0]..off + end))
    }

    /// `i(`: inside the `n`-th enclosing pair, linewise when the brackets sit alone at the edges of
    /// a multi-line block; `a(` includes the brackets.
    fn bracket_object(&self, around: bool, open: char, close: char, n: usize) -> Option<Obj> {
        let p = (self.win.line, self.win.col);
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
        let text = self.buf.doc.text();
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
        let text = self.buf.doc.text();
        let last = text.line_count() - 1;
        let blank = |l: usize| text.line(l).trim().is_empty();
        let (mut start, mut end) = self.paragraph_bounds(self.win.line);
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
        let (first, last) = self.paragraph_bounds(self.win.line);
        if self.buf.doc.text().line(self.win.line).trim().is_empty() {
            return None;
        }
        // The paragraph as clusters (their first chars), line breaks included, with each one's position.
        let (mut chars, mut pos) = (Vec::new(), Vec::new());
        for l in first..=last {
            let line = self.buf.doc.text().line(l);
            for (c, ch) in graphemes::iter(&line).filter_map(|g| g.chars().next()).chain((l < last).then_some('\n')).enumerate() {
                chars.push(ch);
                pos.push((l, c));
            }
        }
        let cur = pos.iter().position(|&p| p == (self.win.line, self.win.col)).unwrap_or(chars.len() - 1);
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
        let text = self.buf.doc.text();
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
                self.win.line = b;
                self.set_col(self.win.col.min(self.line_chars(b)));
                self.mode = super::Mode::Visual(super::VKind::Line);
            }
            Obj::Chars(r) if !r.is_empty() => {
                self.anchor = self.pos_of(r.start);
                (self.win.line, self.win.col) = self.pos_of(r.end - 1);
                self.win.want_col = self.win.col;
                self.mode = super::Mode::Visual(super::VKind::Char);
            }
            Obj::Chars(_) => {}
        }
    }

    /// Visual `i<obj>`/`a<obj>`: a nested object (brackets, tags) that would not grow the current
    /// selection is retried one level further out.
    pub(super) fn visual_object(&mut self, around: bool, obj: char, n: usize) {
        let (a, b) = super::sorted(self.anchor, (self.win.line, self.win.col));
        let sel = self.range(a, b, super::Kind::Inclusive);
        let grows = NESTED.contains(obj) && a != b;
        let mut n = n;
        self.sync_syntax();
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

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn splits_sentences() {
        let chars: Vec<char> = "Hi there.  (Yes!) ok\nend".chars().collect();
        let got: Vec<_> = sentences(&chars).into_iter().map(|(r, s)| (chars[r].iter().collect::<String>(), s)).collect();
        let want = [("Hi there.", true), ("  ", false), ("(Yes!)", true), (" ", false), ("ok\nend", true)];
        assert_eq!(got, want.map(|(s, b)| (s.to_string(), b)));
        let chars: Vec<char> = " a.b. ".chars().collect();
        assert_eq!(sentences(&chars), [(0..1, false), (1..5, true), (5..6, false)]);
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn finds_unescaped_quotes() {
        assert_eq!(quotes(r#""a\"b\\"c"#, '"'), [0, 7]);
        // Byte offsets, also past multi-byte chars and for a multi-byte quote.
        assert_eq!(quotes("日\"é\"", '"'), [3, 6]);
        assert_eq!(quotes("«a»«b»", '«'), [0, 5]);
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
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
