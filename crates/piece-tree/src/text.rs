use std::{borrow::Cow, fmt, ops::Range};

use triomphe::Arc;

use crate::chunk::{Chunk, MAX_ADD_BYTES, count_lf};
use crate::document::Edit;
use crate::eol::{normalize, normalize_owned};
use crate::tree::{self, Node, Piece, Tree};

/// An effective edit of a batch: the replaced range of the old text, and the range of the stored
/// replacement text (empty for a deletion).
pub(crate) type Span = (Range<usize>, Range<usize>);

/// A batch is applied by one linear rebuild instead of one path copy per edit when it has at least
/// `REBUILD_MIN_EDITS` edits and `edits * REBUILD_PIECES_PER_EDIT >= pieces`. Measured (benchmarks.md):
/// a rebuild costs ~30 ns per piece plus ~100 ns per edit, a path copy ~500 ns per edit on a fragmented
/// tree, so they break even near one edit per 12 pieces; on a single piece the rebuild wins from 3-4
/// edits (below that its fixed cost loses).
const REBUILD_MIN_EDITS: usize = 3;
const REBUILD_PIECES_PER_EDIT: usize = 10;

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
        Text { root: tree::delete_range(&self.root, range.start, range.end), add: self.add.clone() }
    }

    /// Applies many edits in one pass: each `(range, replacement)` replaces `range` of *this*
    /// text with `replacement` (an empty range inserts, an empty replacement deletes).
    ///
    /// The edits must be sorted by start and must not overlap (an edit may start where the previous
    /// one ends, and several inserts may share an offset: they apply in order). Panics otherwise
    /// (`invalid range`), when a range is out of bounds, or when a range cuts a char.
    ///
    /// Cheaper than one [`Text::insert`]/[`Text::delete`] per edit once the edits are many: the
    /// replacements are stored together and the tree is rebuilt around them in one pass, sharing
    /// every untouched subtree. With nothing to change, returns the same version.
    pub fn apply_edits(&self, edits: &[(Range<usize>, &str)]) -> Text {
        self.apply_edits_spans(edits).0
    }

    /// [`Text::apply_edits`] plus the effective edits as `(replaced range, range of the stored
    /// replacement text)`; [`Text::edits_of`] turns them into [`Edit`]s.
    #[inline(never)] // see `tree::delete_range`
    pub(crate) fn apply_edits_spans(&self, edits: &[(Range<usize>, &str)]) -> (Text, Vec<Span>) {
        let mut prev_end = 0;
        for (r, _) in edits {
            assert!(r.start <= r.end, "invalid range {r:?}");
            assert!(r.start >= prev_end, "invalid range {r:?}: edits must be sorted and must not overlap");
            assert!(r.end <= self.len(), "offset {} out of bounds", r.end);
            prev_end = r.end;
        }
        // All replacement texts, concatenated; each effective edit maps to a range of it.
        let mut out = String::new();
        let mut spans: Vec<Span> = Vec::new();
        for (r, s) in edits {
            let s = normalize(s);
            if r.is_empty() && s.is_empty() {
                continue;
            }
            let start = out.len();
            out.push_str(&s);
            spans.push((r.clone(), start..out.len()));
        }
        if spans.is_empty() {
            return (self.clone(), spans);
        }
        let (buf, add) = self.store_replacements(out);
        let piece = |o: &Range<usize>| buf.as_ref().expect("non-empty replacements were stored").sub(o.start, o.end);
        let root = if self.rebuild_wins(spans.len()) {
            // Dense: one linear rebuild beats a path copy per edit.
            self.rebuilt(buf.as_ref(), &spans, 0, self.len())
        } else if let Some(root) = self.rebuilt_cluster(buf.as_ref(), &spans) {
            // Clustered: only the span between the first and the last edit is rebuilt.
            root
        } else {
            // Sparse: one path copy per edit, from the end so that earlier offsets stay valid.
            let mut root = self.root.clone();
            for (r, o) in spans.iter().rev() {
                root = tree::delete_range(&root, r.start, r.end);
                if !o.is_empty() {
                    root = tree::insert_at(&root, r.start, piece(o));
                }
            }
            root
        };
        (Text { root, add }, spans)
    }

    /// Whether a batch of `edits` edits is cheaper as one rebuild than as path copies (see
    /// `REBUILD_MIN_EDITS`). The tree height bounds the piece count in O(1); only when the bounds
    /// do not decide, a walk checks the count against the budget and stops once it is exceeded, so
    /// it visits at most `edits * REBUILD_PIECES_PER_EDIT` pieces (~7 ns each, against ~500 ns per
    /// edit of the path copies it may save).
    pub(crate) fn rebuild_wins(&self, edits: usize) -> bool {
        if edits < REBUILD_MIN_EDITS {
            return false;
        }
        let budget = edits.saturating_mul(REBUILD_PIECES_PER_EDIT);
        if budget >= tree::max_pieces(&self.root) {
            true
        } else if budget < tree::min_pieces(&self.root) {
            false
        } else {
            tree::has_at_most(&self.root, budget)
        }
    }

    /// One [`Edit`] per `(replaced range, replacement range)` span, in order: each `start` is in the
    /// text left by the previous replacements.
    pub(crate) fn edits_of(spans: &[Span]) -> Vec<Edit> {
        let mut shift = 0isize;
        spans
            .iter()
            .map(|(m, r)| {
                let e = Edit { start: m.start.strict_add_signed(shift), old_len: m.len(), new_len: r.len() };
                shift += r.len() as isize - m.len() as isize;
                e
            })
            .collect()
    }

    /// The tree of bytes `[lo, hi)` of this text with each `(range, stored range)` of `edits`
    /// (sorted, not overlapping, inside `[lo, hi)`) replaced by the matching part of `buf`: the
    /// untouched pieces and the replacement pieces in order, built into a balanced tree in one go.
    #[inline(never)] // see `tree::delete_range`: batch code stays out of the edit paths' inlining
    pub(crate) fn rebuilt(&self, buf: Option<&Piece>, edits: &[Span], lo: usize, hi: usize) -> Tree {
        let mut pieces = Vec::new();
        let mut pos = lo;
        for (m, r) in edits {
            tree::pieces_in(&self.root, pos, m.start, &mut pieces);
            if !r.is_empty() {
                pieces.push(buf.expect("non-empty replacements were stored").sub(r.start, r.end));
            }
            pos = m.end;
        }
        tree::pieces_in(&self.root, pos, hi, &mut pieces);
        tree::from_pieces(pieces)
    }

    /// Clustered batch: rebuilds only the span from the first edit to the last when it is small
    /// (same budget as `rebuild_wins`), and joins it with the untouched text on both sides, so a
    /// batch inside one region of a big fragmented text costs the span, not one path per edit.
    /// `None` when the span has too many pieces.
    #[inline(never)] // see `tree::delete_range`
    fn rebuilt_cluster(&self, buf: Option<&Piece>, edits: &[Span]) -> Option<Tree> {
        if edits.len() < REBUILD_MIN_EDITS {
            return None;
        }
        let (lo, hi) = (edits[0].0.start, edits[edits.len() - 1].0.end);
        let budget = edits.len().saturating_mul(REBUILD_PIECES_PER_EDIT);
        // O(1) rejection by estimated density (the fewest pieces a tree of this height can have,
        // spread evenly), then a walk that clones nothing: a rebuild attempt that fails clones up
        // to `budget` pieces for nothing, which cost scattered batches on a fragmented text
        // +27-60% (benchmarks.md). The estimate is a heuristic: an uneven text just takes the
        // other strategy.
        if (hi - lo) as u128 * tree::min_pieces(&self.root) as u128 > budget as u128 * self.len() as u128
            || !tree::has_at_most_in(&self.root, lo, hi, budget)
        {
            return None;
        }
        let mid = self.rebuilt(buf, edits, lo, hi);
        let left = tree::split(self.root.clone(), lo).0;
        let right = tree::split(self.root.clone(), hi).1;
        Some(tree::join2(tree::join2(left, mid), right))
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

    /// Number of chars (Unicode scalar values). O(n): a pass over the pieces.
    pub fn char_count(&self) -> usize {
        self.chunks().map(|c| c.chars().count()).sum()
    }

    /// Chars before byte `off` (a char boundary). O(`off`): a pass over the pieces.
    pub fn offset_to_char(&self, off: usize) -> usize {
        assert!(off <= self.len(), "offset {off} out of bounds");
        assert!(self.is_char_boundary(off), "offset not on a char boundary");
        let mut left = off;
        let mut chars = 0;
        for c in self.chunks() {
            if left < c.len() {
                return chars + c[..left].chars().count();
            }
            chars += c.chars().count();
            left -= c.len();
        }
        chars
    }

    /// Byte offset where char `ch` starts (`len()` for `ch == char_count()`). O(offset).
    pub fn char_to_offset(&self, ch: usize) -> usize {
        let (mut left, mut base) = (ch, 0);
        for c in self.chunks() {
            let n = c.chars().count();
            if left < n {
                return base + c.char_indices().nth(left).expect("left < n").0;
            }
            left -= n;
            base += c.len();
        }
        assert!(left == 0, "char {ch} out of bounds");
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

    /// Chars in 0-based `line`, without its `\n`. O(line length).
    pub fn line_char_len(&self, line: usize) -> usize {
        self.line(line).chars().count()
    }

    /// Byte offset of char column `col` of `line`; `col` may be the line's length (its end).
    /// O(line length).
    pub fn line_col_to_offset(&self, line: usize, col: usize) -> usize {
        let text = self.line(line);
        let in_line = match text.char_indices().nth(col) {
            Some((i, _)) => i,
            None => {
                assert!(col == text.chars().count(), "column {col} out of bounds");
                text.len()
            }
        };
        self.line_to_offset(line) + in_line
    }

    /// 0-based line and char column of byte `off` (a char boundary). O(line length).
    pub fn offset_to_line_col(&self, off: usize) -> (usize, usize) {
        let line = self.offset_to_line(off);
        let start = self.line_to_offset(line);
        (line, self.slice(start..off).chars().count())
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
