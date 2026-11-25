use std::{borrow::Cow, fmt, ops::Range};

use triomphe::Arc;

use crate::chunk::{Chunk, MAX_ADD_BYTES, count_lf};
use crate::eol::{normalize, normalize_owned};
use crate::tree::{self, Node, Piece, Tree};

/// Immutable text value. `clone` is O(1) and edits return a new `Text` that
/// shares unchanged structure with the old one.
///
/// Offsets are in bytes and must lie on UTF-8 char boundaries. Lines are
/// separated by `\n` only: inserted `\r\n` and `\r` are normalized to `\n`.
#[derive(Clone, Default)]
pub struct Text {
    root: Tree,
    /// Chunk receiving this version's inserts; shared by versions derived from it.
    add: Option<Arc<Chunk>>,
}

impl Text {
    pub fn new() -> Self {
        Self::default()
    }

    pub(crate) fn root(&self) -> &Tree {
        &self.root
    }

    pub(crate) fn add_chunk(&self) -> Option<&Arc<Chunk>> {
        self.add.as_ref()
    }

    pub(crate) fn from_parts(root: Tree, add: Option<Arc<Chunk>>) -> Self {
        Text { root, add }
    }

    pub fn len(&self) -> usize {
        tree::len(&self.root)
    }

    pub fn is_empty(&self) -> bool {
        self.root.is_none()
    }

    pub fn line_count(&self) -> usize {
        tree::lf(&self.root) + 1
    }

    /// True if both values are the same version (not just equal content).
    pub fn ptr_eq(&self, other: &Text) -> bool {
        match (&self.root, &other.root) {
            (Some(a), Some(b)) => Arc::ptr_eq(a, b),
            (None, None) => true,
            _ => false,
        }
    }

    pub fn insert(&self, off: usize, s: &str) -> Text {
        // Char boundaries are checked where an edit cuts a piece (`Piece::split`/`sub`):
        // piece edges always are boundaries, so no extra descent is needed.
        assert!(off <= self.len(), "offset {off} out of bounds");
        let s = normalize(s);
        if s.is_empty() {
            return self.clone();
        }
        if s.len() > MAX_ADD_BYTES {
            // Too big to extend a piece or share a chunk: one exact chunk, one scan.
            let piece = Piece::whole(Chunk::exact(&s));
            return Text { root: tree::insert_at(&self.root, off, piece), add: self.add.clone() };
        }
        let lf = count_lf(&s);
        if let Some(add) = &self.add
            && let Some(root) = tree::extend_at(&self.root, off, |p| p.try_extend(add, &s, lf))
        {
            return Text { root, add: self.add.clone() };
        }
        let (piece, add) = Piece::store(self.add.as_ref(), &s, lf);
        Text { root: tree::insert_at(&self.root, off, piece), add }
    }

    pub fn delete(&self, range: Range<usize>) -> Text {
        assert!(range.start <= range.end, "invalid range {range:?}");
        assert!(range.end <= self.len(), "offset {} out of bounds", range.end);
        if range.is_empty() {
            return self.clone();
        }
        if let Some(root) = tree::delete_in(&self.root, range.start, range.end) {
            return Text { root, add: self.add.clone() };
        }
        let (l, rest) = tree::split(self.root.clone(), range.start);
        let (_, r) = tree::split(rest, range.end - range.start);
        Text { root: tree::join2(l, r), add: self.add.clone() }
    }

    /// 0-based line containing byte `off`.
    pub fn offset_to_line(&self, off: usize) -> usize {
        assert!(off <= self.len(), "offset {off} out of bounds");
        let (mut t, mut off, mut acc) = (&self.root, off, 0);
        while let Some(n) = t {
            let ll = tree::len(&n.left);
            if off < ll {
                t = &n.left;
                continue;
            }
            acc += tree::lf(&n.left);
            off -= ll;
            if off <= n.piece.len() {
                return acc + n.piece.lf_before(off);
            }
            acc += n.piece.lf();
            off -= n.piece.len();
            t = &n.right;
        }
        acc
    }

    /// Number of chars (Unicode scalar values).
    pub fn char_count(&self) -> usize {
        tree::chars(&self.root)
    }

    /// Chars before byte `off` (a char boundary). O(log n) plus a short scan.
    pub fn offset_to_char(&self, off: usize) -> usize {
        assert!(off <= self.len(), "offset {off} out of bounds");
        let (mut t, mut off, mut acc) = (&self.root, off, 0);
        while let Some(n) = t {
            let ll = tree::len(&n.left);
            if off < ll {
                t = &n.left;
                continue;
            }
            acc += tree::chars(&n.left);
            off -= ll;
            if off <= n.piece.len() {
                assert!(off == n.piece.len() || n.piece.text().is_char_boundary(off), "offset not on a char boundary");
                return acc + n.piece.chars_before(off);
            }
            acc += n.piece.chars();
            off -= n.piece.len();
            t = &n.right;
        }
        acc
    }

    /// Byte offset where char `ch` starts (`len()` for `ch == char_count()`).
    pub fn char_to_offset(&self, ch: usize) -> usize {
        assert!(ch <= self.char_count(), "char {ch} out of bounds");
        let (mut t, mut ch, mut base) = (&self.root, ch, 0);
        while let Some(n) = t {
            let lc = tree::chars(&n.left);
            if ch < lc {
                t = &n.left;
                continue;
            }
            ch -= lc;
            base += tree::len(&n.left);
            if ch < n.piece.chars() {
                return base + n.piece.byte_of_char(ch);
            }
            ch -= n.piece.chars();
            base += n.piece.len();
            t = &n.right;
        }
        base
    }

    /// Whether byte `off` is a char boundary (false past the end).
    pub fn is_char_boundary(&self, off: usize) -> bool {
        if off >= self.len() {
            return off == self.len();
        }
        let (mut t, mut off) = (&self.root, off);
        loop {
            let n = t.as_ref().expect("off < len is inside a piece");
            let ll = tree::len(&n.left);
            if off < ll {
                t = &n.left;
            } else if off - ll < n.piece.len() {
                return n.piece.text().is_char_boundary(off - ll);
            } else {
                off -= ll + n.piece.len();
                t = &n.right;
            }
        }
    }

    /// The largest char boundary at or before `off`, clamped to the text length.
    pub fn floor_char_boundary(&self, off: usize) -> usize {
        // A char is at most 4 bytes, and the text end is a boundary.
        let off = off.min(self.len());
        (off.saturating_sub(3)..=off).rev().find(|&o| self.is_char_boundary(o)).expect("0 is a boundary")
    }

    /// Byte offset where 0-based `line` ends (its `\n`, or the text end on the last line).
    pub fn line_end(&self, line: usize) -> usize {
        assert!(line < self.line_count(), "line {line} out of bounds");
        if line + 1 < self.line_count() { self.line_to_offset(line + 1) - 1 } else { self.len() }
    }

    /// Chars in 0-based `line`, without its `\n`.
    pub fn line_char_len(&self, line: usize) -> usize {
        self.offset_to_char(self.line_end(line)) - self.offset_to_char(self.line_to_offset(line))
    }

    /// Byte offset of char column `col` of `line`; `col` may be the line's length (its end).
    pub fn line_col_to_offset(&self, line: usize, col: usize) -> usize {
        let start = self.line_to_offset(line);
        let first = self.offset_to_char(start);
        assert!(col <= self.offset_to_char(self.line_end(line)) - first, "column {col} out of bounds");
        self.char_to_offset(first + col)
    }

    /// 0-based line and char column of byte `off` (a char boundary).
    pub fn offset_to_line_col(&self, off: usize) -> (usize, usize) {
        let line = self.offset_to_line(off);
        (line, self.offset_to_char(off) - self.offset_to_char(self.line_to_offset(line)))
    }

    /// Byte offset where 0-based `line` starts.
    pub fn line_to_offset(&self, line: usize) -> usize {
        assert!(line < self.line_count(), "line {line} out of bounds");
        if line == 0 {
            return 0;
        }
        let (piece, base, k) = self.find_newline(line - 1);
        base + piece.nth_newline(k) + 1
    }

    /// Piece holding the `k`-th `\n` (0-based), its start offset, and the
    /// index of that `\n` within the piece. Requires `k < lf(root)`.
    fn find_newline(&self, mut k: usize) -> (&Piece, usize, usize) {
        let (mut t, mut base) = (&self.root, 0);
        loop {
            let n = t.as_ref().expect("line count is consistent with the tree");
            let lfl = tree::lf(&n.left);
            if k < lfl {
                t = &n.left;
                continue;
            }
            k -= lfl;
            base += tree::len(&n.left);
            if k < n.piece.lf() {
                return (&n.piece, base, k);
            }
            k -= n.piece.lf();
            base += n.piece.len();
            t = &n.right;
        }
    }

    /// Content of 0-based `line`, without its `\n`.
    ///
    /// One descent when the line lies inside a single piece (the common case),
    /// with a borrowed result; otherwise falls back to a range slice.
    pub fn line(&self, line: usize) -> Cow<'_, str> {
        assert!(line < self.line_count(), "line {line} out of bounds");
        let Some(root) = &self.root else { return Cow::Borrowed("") };
        // `start`: line start within `piece`; `next`: index in `piece` of the `\n` ending the line.
        let (piece, base, start, next) = if line == 0 {
            let mut n = root;
            while let Some(left) = &n.left {
                n = left;
            }
            (&n.piece, 0, 0, 0)
        } else {
            let (piece, base, k) = self.find_newline(line - 1);
            (piece, base, piece.nth_newline(k) + 1, k + 1)
        };
        if next < piece.lf() {
            return Cow::Borrowed(&piece.text()[start..piece.nth_newline(next)]);
        }
        if base + piece.len() == self.len() {
            // Last piece and no `\n` after `start`: this is the last line.
            return Cow::Borrowed(&piece.text()[start..]);
        }
        let end = if line + 1 < self.line_count() {
            self.line_to_offset(line + 1) - 1
        } else {
            self.len()
        };
        self.slice(base + start..end)
    }

    /// Borrowed when the range lies inside a single piece.
    pub fn slice(&self, range: Range<usize>) -> Cow<'_, str> {
        assert!(range.start <= range.end && range.end <= self.len(), "invalid range {range:?}");
        let mut parts = Vec::new();
        collect(&self.root, range.start, range.end, &mut parts);
        match parts.as_slice() {
            [] => Cow::Borrowed(""),
            [one] => Cow::Borrowed(one),
            _ => Cow::Owned(parts.concat()),
        }
    }

    pub fn chunks(&self) -> Chunks<'_> {
        let mut c = Chunks { stack: Vec::new() };
        c.push_left(&self.root);
        c
    }
}

impl From<&str> for Text {
    fn from(s: &str) -> Self {
        Text::new().insert(0, s)
    }
}

impl From<String> for Text {
    /// Like `From<&str>`, but a large text without `\r` is taken over without copying.
    fn from(s: String) -> Self {
        let s = normalize_owned(s);
        if s.len() <= MAX_ADD_BYTES {
            return Text::from(s.as_str());
        }
        Text { root: tree::insert_at(&None, 0, Piece::whole(Chunk::from_string(s))), add: None }
    }
}

impl fmt::Display for Text {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        self.chunks().try_for_each(|c| f.write_str(c))
    }
}

/// Pushes the parts of pieces overlapping `[s, e)`, relative to the subtree.
fn collect<'a>(t: &'a Tree, s: usize, e: usize, out: &mut Vec<&'a str>) {
    let Some(n) = t else { return };
    if s >= e {
        return;
    }
    let (ll, pl) = (tree::len(&n.left), n.piece.len());
    if s < ll {
        collect(&n.left, s, e.min(ll), out);
    }
    let (ps, pe) = (s.max(ll), e.min(ll + pl));
    if ps < pe {
        out.push(&n.piece.text()[ps - ll..pe - ll]);
    }
    if e > ll + pl {
        collect(&n.right, s.saturating_sub(ll + pl), e - ll - pl, out);
    }
}

/// In-order iterator over the text's pieces.
pub struct Chunks<'a> {
    stack: Vec<&'a Node>,
}

impl<'a> Chunks<'a> {
    fn push_left(&mut self, mut t: &'a Tree) {
        while let Some(n) = t {
            self.stack.push(n);
            t = &n.left;
        }
    }
}

impl<'a> Iterator for Chunks<'a> {
    type Item = &'a str;

    fn next(&mut self) -> Option<&'a str> {
        let n = self.stack.pop()?;
        self.push_left(&n.right);
        Some(n.piece.text())
    }
}

#[cfg(test)]
mod tests;
