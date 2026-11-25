//! Regex search over a [`Text`] without copying it, through `regex-cursor`.

use std::{ops::Range, ptr};

use regex_cursor::{Cursor, Input, engines::meta, regex_automata::util::interpolate};
use triomphe::Arc;

use crate::chunk::{Chunk, MAX_ADD_BYTES, count_lf};
use crate::eol::normalize;
use crate::document::Edit;
use crate::text::Text;
use crate::tree::{self, Node, Piece};

/// A pattern that failed to compile, with `regex`'s error message.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct RegexError(String);

impl std::fmt::Display for RegexError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(&self.0)
    }
}

impl std::error::Error for RegexError {}

/// A compiled regex for searching a [`Text`] (`regex-cursor`'s meta regex,
/// with the vendored prefilter fix; see `vendor/regex-cursor/PATCHES.md`).
pub struct Regex(meta::Regex);

impl Regex {
    pub fn new(pattern: &str) -> Result<Regex, RegexError> {
        meta::Regex::builder()
            .build(pattern)
            .map(Regex)
            // regex-cursor's error type is not nameable (private module), so keep its
            // message, including the causes where the details (e.g. the parse error) live.
            .map_err(|e| {
                let mut msg = e.to_string();
                let mut cause = std::error::Error::source(&e);
                while let Some(c) = cause {
                    msg.push_str(": ");
                    msg.push_str(&c.to_string());
                    cause = c.source();
                }
                RegexError(msg)
            })
    }
}

/// Walks a [`Text`]'s pieces in both directions, for `regex-cursor`.
///
/// Pieces never split a code point, so the cursor is UTF-8 aware and every
/// regex feature (Unicode word boundaries, empty matches) is supported.
#[derive(Clone)]
pub struct TextCursor<'a> {
    /// Nodes from the root down to the current piece.
    path: Vec<&'a Node>,
    chunk: &'a [u8],
    /// Offset of `chunk` in the text.
    offset: usize,
    len: usize,
}

impl<'a> TextCursor<'a> {
    /// Cursor on the piece containing byte `off`; the last piece for `off == len`.
    fn at(text: &'a Text, off: usize) -> Self {
        let mut c = TextCursor { path: Vec::new(), chunk: &[], offset: 0, len: text.len() };
        let (mut t, mut off) = (text.root(), off);
        while let Some(n) = t.as_deref() {
            c.path.push(n);
            let ll = tree::len(&n.left);
            if off < ll {
                t = &n.left;
                continue;
            }
            off -= ll;
            c.offset += ll;
            if off < n.piece.len() || n.right.is_none() {
                c.chunk = n.piece.text().as_bytes();
                break;
            }
            off -= n.piece.len();
            c.offset += n.piece.len();
            t = &n.right;
        }
        c
    }

    fn current(&self) -> &'a Node {
        self.path.last().expect("a non-empty text has a current piece")
    }

    /// Pushes `n` and then its spine towards `left` (true) or right.
    fn descend(&mut self, mut n: &'a Node, left: bool) {
        loop {
            self.path.push(n);
            match if left { n.left.as_deref() } else { n.right.as_deref() } {
                Some(next) => n = next,
                None => break,
            }
        }
    }

    /// Climbs until arriving from a left child (`from_left`) or a right child.
    fn climb(&mut self, from_left: bool) {
        loop {
            let child = self.path.pop().expect("climbing from a piece");
            let parent = self.current();
            let is_left = parent.left.as_deref().is_some_and(|l| ptr::eq(l, child));
            if is_left == from_left {
                break;
            }
        }
    }
}

impl Cursor for TextCursor<'_> {
    fn chunk(&self) -> &[u8] {
        self.chunk
    }

    fn advance(&mut self) -> bool {
        if self.offset + self.chunk.len() >= self.len {
            return false;
        }
        match self.current().right.as_deref() {
            Some(right) => self.descend(right, true),
            None => self.climb(true),
        }
        self.offset += self.chunk.len();
        self.chunk = self.current().piece.text().as_bytes();
        true
    }

    fn backtrack(&mut self) -> bool {
        if self.offset == 0 {
            return false;
        }
        match self.current().left.as_deref() {
            Some(left) => self.descend(left, false),
            None => self.climb(false),
        }
        self.chunk = self.current().piece.text().as_bytes();
        self.offset -= self.chunk.len();
        true
    }

    fn total_bytes(&self) -> Option<usize> {
        Some(self.len)
    }

    fn offset(&self) -> usize {
        self.offset
    }

    fn utf8_aware(&self) -> bool {
        true
    }
}

impl Text {
    /// Cursor on the first piece.
    pub fn cursor(&self) -> TextCursor<'_> {
        TextCursor::at(self, 0)
    }

    /// Cursor on the piece containing byte `off`.
    pub fn cursor_at(&self, off: usize) -> TextCursor<'_> {
        assert!(off <= self.len(), "offset {off} out of bounds");
        TextCursor::at(self, off)
    }

    /// Byte ranges of all non-overlapping leftmost matches.
    pub fn find_iter<'a>(&'a self, re: &'a Regex) -> impl Iterator<Item = Range<usize>> + 'a {
        re.0.find_iter(Input::new(self.cursor())).map(|m| m.range())
    }

    /// First match starting at or after `off` ("find next"), with the text
    /// before `off` still visible to look-behind assertions such as `\b`.
    pub fn find_from(&self, re: &Regex, off: usize) -> Option<Range<usize>> {
        re.0.find(Input::new(self.cursor_at(off)).range(off..)).map(|m| m.range())
    }

    /// Matches starting in `range`: leftmost, non-overlapping, searched from `range.start` with
    /// the text around still visible to look-around (`\b`, `^`). A match may end past
    /// `range.end`. For highlighting the visible part of a text.
    pub fn find_iter_in<'a>(&'a self, re: &'a Regex, range: Range<usize>) -> impl Iterator<Item = Range<usize>> + 'a {
        assert!(range.start <= range.end && range.end <= self.len(), "invalid range {range:?}");
        let end = range.end;
        re.0.find_iter(Input::new(self.cursor_at(range.start)).range(range.start..))
            .map(|m| m.range())
            .take_while(move |m| m.start < end)
    }

    /// The match starting at the largest position before `off` where [`Text::find_from`] finds
    /// one starting right there ("find previous"; overlapping starts count, as in vim's `?`).
    ///
    /// Scans backward in windows that double from 4 KiB, enumerating the match starts inside
    /// each, so a match near `off` costs about its window. Worst case (few matches, none after
    /// `off`) is O(n log n).
    pub fn rfind_before(&self, re: &Regex, off: usize) -> Option<Range<usize>> {
        assert!(off <= self.len(), "offset {off} out of bounds");
        let (mut hi, mut w) = (off, 4096);
        while hi > 0 {
            let lo = self.floor_char_boundary(hi.saturating_sub(w));
            let (mut best, mut p) = (None, lo);
            while let Some(m) = self.find_from(re, p).filter(|m| m.start < hi) {
                // `m.start < hi <= len`, so a boundary follows it.
                p = (m.start + 1..=self.len()).find(|&o| self.is_char_boundary(o)).expect("the end is a boundary");
                best = Some(m);
            }
            if best.is_some() {
                return best;
            }
            (hi, w) = (lo, w * 2);
        }
        None
    }

    /// The first match at or after `off` and its replacement `rep` expanded as in
    /// [`Text::replace_all`] (normalized to `\n`). For confirming substitutions one by one.
    pub fn replacement_at(&self, re: &Regex, off: usize, rep: &str) -> Option<(Range<usize>, String)> {
        assert!(off <= self.len(), "offset {off} out of bounds");
        let mut caps = re.0.create_captures();
        re.0.search_captures(Input::new(self.cursor_at(off)).range(off..), &mut caps);
        let m = caps.get_match()?.range();
        let mut out = String::new();
        self.expand(&caps, &normalize(rep), &mut out);
        Some((m, out))
    }

    /// Appends `rep` with `$n`/`${name}`/`$$` expanded from `caps` to `out`.
    fn expand(&self, caps: &regex_cursor::regex_automata::util::captures::Captures, rep: &str, out: &mut String) {
        interpolate::string(
            rep,
            |i, dst| {
                if let Some(span) = caps.get_group(i) {
                    dst.push_str(&self.slice(span.range()));
                }
            },
            |name| caps.pattern().and_then(|pid| caps.group_info().to_index(pid, name)),
            out,
        );
    }

    /// Replaces every match with `rep`, expanding `$n`, `${name}` and `$$` like
    /// `regex::Regex::replace_all`. Returns the new text and the match count;
    /// with no match, the same version.
    ///
    /// The new tree is built in one go from the untouched pieces and the
    /// replacement pieces, rather than by one edit per match.
    pub fn replace_all(&self, re: &Regex, rep: &str) -> (Text, usize) {
        self.replace_matching(re, rep, |_| true)
    }

    /// Like [`Text::replace_all`], but only for the matches `keep` accepts. `keep` sees
    /// every match in order, by byte range; rejected matches stay as they are and
    /// do not count. This is what an editor's ranged or first-per-line substitute needs.
    pub fn replace_matching(&self, re: &Regex, rep: &str, keep: impl FnMut(Range<usize>) -> bool) -> (Text, usize) {
        let (text, edits) = self.replace_matching_edits(re, rep, keep);
        (text, edits.len())
    }

    /// [`Text::replace_matching`] with one [`Edit`] per replaced match, in order (each start is
    /// in the text left by the previous replacements).
    pub(crate) fn replace_matching_edits(
        &self,
        re: &Regex,
        rep: &str,
        mut keep: impl FnMut(Range<usize>) -> bool,
    ) -> (Text, Vec<Edit>) {
        let rep = normalize(rep);
        // All replacement texts, concatenated; each match maps to a range of it.
        let mut out = String::new();
        let mut edits: Vec<(Range<usize>, Range<usize>)> = Vec::new();
        if memchr::memchr(b'$', rep.as_bytes()).is_none() {
            out.push_str(&rep);
            edits.extend(self.find_iter(re).filter(|m| keep(m.clone())).map(|m| (m, 0..rep.len())));
        } else {
            for caps in re.0.captures_iter(Input::new(self.cursor())) {
                let m = caps.get_match().expect("yielded captures always match").range();
                if !keep(m.clone()) {
                    continue;
                }
                let start = out.len();
                self.expand(&caps, &rep, &mut out);
                edits.push((m, start..out.len()));
            }
        }
        if edits.is_empty() {
            return (self.clone(), Vec::new());
        }
        let (buf, add) = self.store_replacements(out);
        let root = self.rebuilt(buf.as_ref(), &edits);
        let changes = Text::edits_of(&edits);
        (Text::from_parts(root, add), changes)
    }

    /// Stores the concatenated replacements once; returns their piece (if any)
    /// and the add chunk the new text should use.
    pub(crate) fn store_replacements(&self, out: String) -> (Option<Piece>, Option<Arc<Chunk>>) {
        if out.is_empty() {
            (None, self.add_chunk().cloned())
        } else if out.len() > MAX_ADD_BYTES {
            (Some(Piece::whole(Chunk::from_string(out))), self.add_chunk().cloned())
        } else {
            let lf = count_lf(&out);
            let (piece, add) = Piece::store(self.add_chunk(), &out, lf);
            (Some(piece), add)
        }
    }
}

#[cfg(test)]
mod tests;
