//! Persistent join-based AVL tree of pieces.
//!
//! All operations take subtrees by value: nodes uniquely owned by the caller are
//! reused in place, shared ones are copied (path copying).

use triomphe::Arc;

use crate::chunk::{CHAR_BLOCK, Chunk, Fill, MAX_ADD_BYTES, count_chars, is_char_start};

/// A published range of a [`Chunk`], with its line feeds located in the chunk cache.
///
/// Soundness invariant: `[start, start + len)` and newline slots
/// `[nl_first, nl_first + lf)` are published in `chunk`, and `start`/`start + len`
/// are char boundaries. Constructors and `split` uphold it.
#[derive(Clone)]
pub(crate) struct Piece {
    chunk: Arc<Chunk>,
    start: u32,
    len: u32,
    lf: u32,
    /// Index in the chunk's newline cache of the piece's first `\n`.
    nl_first: u32,
    /// Chars in the piece.
    chars: u32,
}

impl Piece {
    /// Piece covering everything published in `chunk` (must not be empty).
    pub(crate) fn whole(chunk: Arc<Chunk>) -> Self {
        let fill = chunk.fill();
        debug_assert!(fill.len > 0);
        let mut p = Self { chunk, start: 0, len: fill.len, lf: fill.nl, nl_first: 0, chars: 0 };
        p.chars = p.chars_before(p.len()) as u32;
        p
    }

    /// Stores non-empty `s` (at most `MAX_ADD_BYTES`, with `lf` newlines, no `\r`)
    /// in the add chunk and returns its piece, plus the add chunk to use next.
    pub(crate) fn store(add: Option<&Arc<Chunk>>, s: &str, lf: usize) -> (Piece, Option<Arc<Chunk>>) {
        debug_assert!(s.len() <= MAX_ADD_BYTES);
        if let Some(add) = add
            && let Some(at) = add.try_append(s, lf, None)
        {
            return (Piece::at(add.clone(), at, s.len(), lf), Some(add.clone()));
        }
        let chunk = Chunk::for_add(add.map(|c| &**c), s.len(), lf);
        let at = chunk.try_append(s, lf, None).expect("fresh add chunk fits");
        (Piece::at(chunk.clone(), at, s.len(), lf), Some(chunk))
    }

    fn at(chunk: Arc<Chunk>, at: Fill, len: usize, lf: usize) -> Self {
        let mut p = Self { chunk, start: at.len, len: len as u32, lf: lf as u32, nl_first: at.nl, chars: 0 };
        p.chars = count_chars(p.text().as_bytes()) as u32;
        p
    }

    /// This piece extended by `s` when it ends exactly at the published end of
    /// `add`: typing then grows one piece instead of creating one per keystroke.
    pub(crate) fn try_extend(&self, add: &Arc<Chunk>, s: &str, lf: usize) -> Option<Piece> {
        if !Arc::ptr_eq(&self.chunk, add) {
            return None;
        }
        add.try_append(s, lf, Some(self.start + self.len))?;
        let chars = self.chars + count_chars(s.as_bytes()) as u32;
        Some(Piece { len: self.len + s.len() as u32, lf: self.lf + lf as u32, chars, ..self.clone() })
    }

    pub(crate) fn chars(&self) -> usize {
        self.chars as usize
    }

    /// Chars in the first `off` bytes. Sealed chunks: index lookups at both ends and scans of at
    /// most one block each; add-chunk pieces (at most `MAX_ADD_BYTES`) are scanned.
    pub(crate) fn chars_before(&self, off: usize) -> usize {
        match self.chunk.char_index() {
            Some((bytes, index)) if off > 2 * CHAR_BLOCK => {
                let at = |p: usize| index[p / CHAR_BLOCK] as usize + count_chars(&bytes[p / CHAR_BLOCK * CHAR_BLOCK..p]);
                let s = self.start as usize;
                at(s + off) - at(s)
            }
            _ => count_chars(&self.text().as_bytes()[..off]),
        }
    }

    /// Byte offset in the piece where its `k`-th char starts. Requires `k < chars`.
    pub(crate) fn byte_of_char(&self, k: usize) -> usize {
        let starts = |bytes: &[u8], from: usize, to: usize, nth: usize| {
            (from..to).filter(|&p| is_char_start(bytes[p])).nth(nth).expect("k < chars")
        };
        match self.chunk.char_index() {
            Some((bytes, index)) if self.len() > 2 * CHAR_BLOCK => {
                let s = self.start as usize;
                let base = index[s / CHAR_BLOCK] as usize + count_chars(&bytes[s / CHAR_BLOCK * CHAR_BLOCK..s]);
                let target = base + k;
                // Scan from the last block start (inside the piece) with at most `target` chars before it.
                let block = index.partition_point(|&c| c as usize <= target).saturating_sub(1);
                let (pos, seen) = if block * CHAR_BLOCK > s { (block * CHAR_BLOCK, index[block] as usize) } else { (s, base) };
                starts(bytes, pos, s + self.len(), target - seen) - s
            }
            _ => starts(self.text().as_bytes(), 0, self.len(), k),
        }
    }

    /// The piece's own entries of the chunk's newline cache.
    fn newlines(&self) -> &[u32] {
        // SAFETY: struct invariant, the slots are published.
        unsafe { self.chunk.newlines(self.nl_first, self.lf) }
    }

    pub(crate) fn text(&self) -> &str {
        // SAFETY: struct invariant, the range is published and on char boundaries.
        unsafe { self.chunk.str(self.start, self.len) }
    }

    pub(crate) fn len(&self) -> usize {
        self.len as usize
    }

    pub(crate) fn lf(&self) -> usize {
        self.lf as usize
    }

    /// Number of `\n` in the first `off` bytes of the piece.
    pub(crate) fn lf_before(&self, off: usize) -> usize {
        let pos = self.start + off as u32;
        self.newlines().partition_point(|&p| p < pos)
    }

    /// Offset within the piece of its `k`-th `\n` (0-based). Requires `k < self.lf()`.
    pub(crate) fn nth_newline(&self, k: usize) -> usize {
        (self.newlines()[k] - self.start) as usize
    }

    /// The sub-piece `[from, to)`, with `from < to <= len` on char boundaries.
    pub(crate) fn sub(&self, from: usize, to: usize) -> Piece {
        let text = self.text();
        // A real assert: the result feeds `from_utf8_unchecked`.
        assert!(from < to && to <= self.len(), "invalid sub-piece {from}..{to}");
        assert!(text.is_char_boundary(from) && text.is_char_boundary(to), "offset not on a char boundary");
        let (lf_from, lf_to) = (self.lf_before(from) as u32, self.lf_before(to) as u32);
        let chars = (self.chars_before(to) - self.chars_before(from)) as u32;
        Piece {
            chunk: self.chunk.clone(),
            start: self.start + from as u32,
            len: (to - from) as u32,
            lf: lf_to - lf_from,
            nl_first: self.nl_first + lf_from,
            chars,
        }
    }

    /// Splits at `at`, with `0 < at < len` on a char boundary.
    fn split(&self, at: usize) -> (Piece, Piece) {
        // A real assert: the halves feed `from_utf8_unchecked`.
        assert!(at > 0 && at < self.len(), "invalid piece split at {at}");
        assert!(self.text().is_char_boundary(at), "offset not on a char boundary");
        let lf = self.lf_before(at) as u32;
        let chars = self.chars_before(at) as u32;
        let at = at as u32;
        let left = Piece { len: at, lf, chars, ..self.clone() };
        let right = Piece {
            chunk: self.chunk.clone(),
            start: self.start + at,
            len: self.len - at,
            lf: self.lf - lf,
            nl_first: self.nl_first + lf,
            chars: self.chars - chars,
        };
        (left, right)
    }
}

pub(crate) type Tree = Option<Arc<Node>>;

pub(crate) struct Node {
    pub(crate) left: Tree,
    pub(crate) right: Tree,
    pub(crate) piece: Piece,
    height: u8,
    /// Total bytes in this subtree.
    len: usize,
    /// Total `\n` in this subtree.
    lf: usize,
    /// Total chars in this subtree.
    chars: usize,
}

pub(crate) fn height(t: &Tree) -> u8 {
    t.as_ref().map_or(0, |n| n.height)
}

pub(crate) fn len(t: &Tree) -> usize {
    t.as_ref().map_or(0, |n| n.len)
}

pub(crate) fn lf(t: &Tree) -> usize {
    t.as_ref().map_or(0, |n| n.lf)
}

pub(crate) fn chars(t: &Tree) -> usize {
    t.as_ref().map_or(0, |n| n.chars)
}

/// Builds a node without rebalancing.
fn node(left: Tree, piece: Piece, right: Tree) -> Tree {
    Some(Arc::new(Node {
        height: 1 + height(&left).max(height(&right)),
        len: len(&left) + piece.len() + len(&right),
        lf: lf(&left) + piece.lf() + lf(&right),
        chars: chars(&left) + piece.chars() + chars(&right),
        left,
        right,
        piece,
    }))
}

/// Takes a node apart, reusing it if uniquely owned.
fn expose(n: Arc<Node>) -> (Tree, Piece, Tree) {
    match Arc::try_unwrap(n) {
        Ok(n) => (n.left, n.piece, n.right),
        Err(n) => (n.left.clone(), n.piece.clone(), n.right.clone()),
    }
}

fn rotate_left(t: Tree) -> Tree {
    let (a, x, r) = expose(t.expect("rotate_left on empty tree"));
    let (b, y, c) = expose(r.expect("rotate_left without right child"));
    node(node(a, x, b), y, c)
}

fn rotate_right(t: Tree) -> Tree {
    let (l, y, c) = expose(t.expect("rotate_right on empty tree"));
    let (a, x, b) = expose(l.expect("rotate_right without left child"));
    node(a, x, node(b, y, c))
}

/// `join` when `l` is taller than `r` by more than one.
fn join_right(l: Tree, k: Piece, r: Tree) -> Tree {
    let (ll, lk, lr) = expose(l.expect("join_right with empty left tree"));
    if height(&lr) <= height(&r) + 1 {
        let t = node(lr, k, r);
        if height(&t) <= height(&ll) + 1 {
            node(ll, lk, t)
        } else {
            rotate_left(node(ll, lk, rotate_right(t)))
        }
    } else {
        let t = join_right(lr, k, r);
        let unbalanced = height(&t) > height(&ll) + 1;
        let t = node(ll, lk, t);
        if unbalanced { rotate_left(t) } else { t }
    }
}

/// `join` when `r` is taller than `l` by more than one.
fn join_left(l: Tree, k: Piece, r: Tree) -> Tree {
    let (rl, rk, rr) = expose(r.expect("join_left with empty right tree"));
    if height(&rl) <= height(&l) + 1 {
        let t = node(l, k, rl);
        if height(&t) <= height(&rr) + 1 {
            node(t, rk, rr)
        } else {
            rotate_right(node(rotate_left(t), rk, rr))
        }
    } else {
        let t = join_left(l, k, rl);
        let unbalanced = height(&t) > height(&rr) + 1;
        let t = node(t, rk, rr);
        if unbalanced { rotate_right(t) } else { t }
    }
}

/// Concatenates `l`, `k`, `r` into a balanced tree.
pub(crate) fn join(l: Tree, k: Piece, r: Tree) -> Tree {
    let (hl, hr) = (height(&l), height(&r));
    if hl > hr + 1 {
        join_right(l, k, r)
    } else if hr > hl + 1 {
        join_left(l, k, r)
    } else {
        node(l, k, r)
    }
}

/// Concatenates two trees.
pub(crate) fn join2(l: Tree, r: Tree) -> Tree {
    match l {
        None => r,
        Some(l) => {
            let (l, last) = split_last(l);
            join(l, last, r)
        }
    }
}

fn split_last(n: Arc<Node>) -> (Tree, Piece) {
    let (l, p, r) = expose(n);
    match r {
        None => (l, p),
        Some(r) => {
            let (r, last) = split_last(r);
            (join(l, p, r), last)
        }
    }
}

/// Splits into the first `off` bytes and the rest.
pub(crate) fn split(t: Tree, off: usize) -> (Tree, Tree) {
    let Some(n) = t else { return (None, None) };
    let (l, p, r) = expose(n);
    let (ll, pl) = (len(&l), p.len());
    if off < ll {
        let (a, b) = split(l, off);
        (a, join(b, p, r))
    } else if off > ll + pl {
        let (a, b) = split(r, off - ll - pl);
        (join(l, p, a), b)
    } else {
        match off - ll {
            0 => (l, join(None, p, r)),
            x if x == pl => (join(l, p, None), r),
            x => {
                let (p1, p2) = p.split(x);
                (join(l, p1, None), join(None, p2, r))
            }
        }
    }
}

/// Appends to `out` the pieces covering bytes `[s, e)` of `t`, cut at the ends.
pub(crate) fn pieces_in(t: &Tree, s: usize, e: usize, out: &mut Vec<Piece>) {
    let Some(n) = t else { return };
    if s >= e {
        return;
    }
    let (ll, pl) = (len(&n.left), n.piece.len());
    if s < ll {
        pieces_in(&n.left, s, e.min(ll), out);
    }
    let (ps, pe) = (s.max(ll), e.min(ll + pl));
    if ps < pe {
        out.push(if (ps, pe) == (ll, ll + pl) { n.piece.clone() } else { n.piece.sub(ps - ll, pe - ll) });
    }
    if e > ll + pl {
        pieces_in(&n.right, s.saturating_sub(ll + pl), e - ll - pl, out);
    }
}

/// Perfectly balanced tree of `pieces` in order, built in O(k).
pub(crate) fn from_pieces(pieces: Vec<Piece>) -> Tree {
    fn build(it: &mut impl Iterator<Item = Piece>, n: usize) -> Tree {
        if n == 0 {
            return None;
        }
        let left = build(it, n / 2);
        let piece = it.next().expect("exactly n pieces");
        node(left, piece, build(it, n - n / 2 - 1))
    }
    let n = pieces.len();
    build(&mut pieces.into_iter(), n)
}

/// Replaces the piece ending exactly at `off` with `f(piece)`, copying only
/// the path: the shape is unchanged, so no rebalancing. `None` when no piece
/// ends at `off` or `f` declines; `f` runs at most once.
pub(crate) fn extend_at(t: &Tree, off: usize, f: impl FnOnce(&Piece) -> Option<Piece>) -> Option<Tree> {
    let n = t.as_ref()?;
    let (ll, pl) = (len(&n.left), n.piece.len());
    if off <= ll {
        let left = extend_at(&n.left, off, f)?;
        Some(node(left, n.piece.clone(), n.right.clone()))
    } else if off < ll + pl {
        None
    } else if off == ll + pl {
        Some(node(n.left.clone(), f(&n.piece)?, n.right.clone()))
    } else {
        let right = extend_at(&n.right, off - ll - pl, f)?;
        Some(node(n.left.clone(), n.piece.clone(), right))
    }
}

/// Persistent AVL insert of `p` at byte `off`, splitting the piece there if
/// needed. Copies one path; `join` rebalances on the way up.
pub(crate) fn insert_at(t: &Tree, off: usize, p: Piece) -> Tree {
    let Some(n) = t else { return node(None, p, None) };
    let (ll, pl) = (len(&n.left), n.piece.len());
    if off <= ll {
        join(insert_at(&n.left, off, p), n.piece.clone(), n.right.clone())
    } else if off >= ll + pl {
        join(n.left.clone(), n.piece.clone(), insert_at(&n.right, off - ll - pl, p))
    } else {
        let (p1, p2) = n.piece.split(off - ll);
        let right = insert_at(&insert_at(&n.right, 0, p2), 0, p);
        join(n.left.clone(), p1, right)
    }
}

/// Deletes `[a, b)` (non-empty) when it lies inside one piece, copying one
/// path. `None` when the range spans pieces.
pub(crate) fn delete_in(t: &Tree, a: usize, b: usize) -> Option<Tree> {
    let n = t.as_ref().expect("a non-empty range lies in a non-empty subtree");
    let (ll, pl) = (len(&n.left), n.piece.len());
    if b <= ll {
        Some(join(delete_in(&n.left, a, b)?, n.piece.clone(), n.right.clone()))
    } else if a >= ll + pl {
        Some(join(n.left.clone(), n.piece.clone(), delete_in(&n.right, a - ll - pl, b - ll - pl)?))
    } else if a < ll || b > ll + pl {
        None
    } else {
        let (a, b) = (a - ll, b - ll);
        let (l, r) = (n.left.clone(), n.right.clone());
        Some(match (a == 0, b == pl) {
            (true, true) => join2(l, r),
            (true, false) => join(l, n.piece.sub(b, pl), r),
            (false, true) => join(l, n.piece.sub(0, a), r),
            (false, false) => join(l, n.piece.sub(0, a), insert_at(&r, 0, n.piece.sub(b, pl))),
        })
    }
}

#[cfg(test)]
mod tests;

/// Verifies AVL balance and cached aggregates. Returns `(height, len, lf)`.
#[cfg(test)]
pub(crate) fn check(t: &Tree) -> (u8, usize, usize) {
    let Some(n) = t else { return (0, 0, 0) };
    let (hl, ll, fl) = check(&n.left);
    let (hr, lr, fr) = check(&n.right);
    assert!(hl.abs_diff(hr) <= 1, "unbalanced: {hl} vs {hr}");
    assert!(n.piece.len() > 0, "empty piece");
    assert_eq!(n.piece.lf(), n.piece.text().matches('\n').count());
    assert_eq!(n.piece.chars(), n.piece.text().chars().count());
    assert_eq!(n.chars, chars(&n.left) + n.piece.chars() + chars(&n.right));
    let (h, l, f) = (1 + hl.max(hr), ll + n.piece.len() + lr, fl + n.piece.lf() + fr);
    assert_eq!((n.height, n.len, n.lf), (h, l, f));
    (h, l, f)
}
