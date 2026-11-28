//! Persistent join-based AVL tree of pieces.
//!
//! All operations take subtrees by value: nodes uniquely owned by the caller are
//! reused in place, shared ones are copied (path copying).

use triomphe::Arc;

use crate::chunk::{Chunk, Fill, MAX_ADD_BYTES};

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
    /// Index in the chunk's newline cache of the piece's first `\n`; fills padding, so `Piece` stays 24 bytes.
    nl_first: u32,
}

impl Piece {
    /// Piece covering everything published in `chunk` (must not be empty).
    pub(crate) fn whole(chunk: Arc<Chunk>) -> Self {
        let fill = chunk.fill();
        debug_assert!(fill.len > 0);
        Self { chunk, start: 0, len: fill.len, lf: fill.nl, nl_first: 0 }
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
        Self { chunk, start: at.len, len: len as u32, lf: lf as u32, nl_first: at.nl }
    }

    /// This piece extended by `s` when it ends exactly at the published end of
    /// `add`: typing then grows one piece instead of creating one per keystroke.
    pub(crate) fn try_extend(&self, add: &Arc<Chunk>, s: &str, lf: usize) -> Option<Piece> {
        self.append(add, s, lf)?;
        Some(Piece { len: self.len + s.len() as u32, lf: self.lf + lf as u32, ..self.clone() })
    }

    /// [`Piece::try_extend`] on a piece nobody else holds: grows it in place (no `Arc` traffic).
    /// `false`, with nothing appended, when it cannot be extended.
    fn extend_in_place(&mut self, add: &Arc<Chunk>, s: &str, lf: usize) -> bool {
        if self.append(add, s, lf).is_none() {
            return false;
        }
        self.len += s.len() as u32;
        self.lf += lf as u32;
        true
    }

    /// Appends `s` to `add` when this piece ends at its published end (the chunk side of an extension).
    fn append(&self, add: &Arc<Chunk>, s: &str, lf: usize) -> Option<Fill> {
        if !Arc::ptr_eq(&self.chunk, add) {
            return None;
        }
        add.try_append(s, lf, Some(self.start + self.len))
    }

    /// The piece's own entries of the chunk's newline cache.
    fn newlines(&self) -> &[u32] {
        // SAFETY: struct invariant, the slots are published.
        unsafe { self.chunk.newlines(self.nl_first, self.lf) }
    }

    /// Offsets in the piece of its `\n` bytes, ascending.
    pub(crate) fn newline_offsets(&self) -> impl Iterator<Item = u32> + '_ {
        self.newlines().iter().map(|&p| p - self.start)
    }

    pub(crate) fn chunk(&self) -> &Arc<Chunk> {
        &self.chunk
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
        Piece {
            chunk: self.chunk.clone(),
            start: self.start + from as u32,
            len: (to - from) as u32,
            lf: lf_to - lf_from,
            nl_first: self.nl_first + lf_from,
        }
    }

    /// Splits at `at`, with `0 < at < len` on a char boundary.
    fn split(&self, at: usize) -> (Piece, Piece) {
        // A real assert: the halves feed `from_utf8_unchecked`.
        assert!(at > 0 && at < self.len(), "invalid piece split at {at}");
        assert!(self.text().is_char_boundary(at), "offset not on a char boundary");
        let lf = self.lf_before(at) as u32;
        let at = at as u32;
        let left = Piece { len: at, lf, ..self.clone() };
        let right = Piece {
            chunk: self.chunk.clone(),
            start: self.start + at,
            len: self.len - at,
            lf: self.lf - lf,
            nl_first: self.nl_first + lf,
        };
        (left, right)
    }
}

pub(crate) type Tree = Option<Arc<Node>>;

#[derive(Clone)]
pub(crate) struct Node {
    pub(crate) left: Tree,
    pub(crate) right: Tree,
    pub(crate) piece: Piece,
    height: u8,
    /// Total bytes in this subtree.
    len: usize,
    /// Total `\n` in this subtree.
    lf: usize,
}

/// Bound on the height of any tree: a strict AVL tree of height h has at least Fib(h + 2) - 1 nodes, so 64
/// levels need ~2.7e13 nodes (petabytes). Iterators keep their path in an inline array of this size.
pub(crate) const MAX_HEIGHT: usize = 64;

pub(crate) fn height(t: &Tree) -> u8 {
    t.as_ref().map_or(0, |n| n.height)
}

/// Fewest pieces an AVL tree of `t`'s height can have (the Fibonacci-like minimum), in O(1).
pub(crate) fn min_pieces(t: &Tree) -> usize {
    let (mut fewer, mut min) = (0usize, usize::from(height(t) > 0));
    for _ in 1..height(t) {
        (fewer, min) = (min, fewer + min + 1);
    }
    min
}

/// Most pieces a tree of `t`'s height can have (a full tree), in O(1).
pub(crate) fn max_pieces(t: &Tree) -> usize {
    (1usize << height(t)) - 1
}

pub(crate) fn len(t: &Tree) -> usize {
    t.as_ref().map_or(0, |n| n.len)
}

pub(crate) fn lf(t: &Tree) -> usize {
    t.as_ref().map_or(0, |n| n.lf)
}

/// Builds a node without rebalancing.
fn node(left: Tree, piece: Piece, right: Tree) -> Tree {
    Some(Arc::new(Node {
        height: 1 + height(&left).max(height(&right)),
        len: len(&left) + piece.len() + len(&right),
        lf: lf(&left) + piece.lf() + lf(&right),
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

/// Whether at most `limit` pieces overlap bytes `[s, e)` of `t`, by a walk that stops as soon as
/// the count exceeds it and clones nothing: O(min(pieces in range, limit)). Over the whole text it
/// bounds the piece count; caching the count per node instead cost ~4% on paste (benchmarks.md).
pub(crate) fn has_at_most_in(t: &Tree, s: usize, e: usize, limit: usize) -> bool {
    fn walk(t: &Tree, s: usize, e: usize, n: &mut usize, limit: usize) -> bool {
        let Some(node) = t else { return true };
        if s >= e {
            return true;
        }
        let (ll, pl) = (len(&node.left), node.piece.len());
        if s < ll && !walk(&node.left, s, e.min(ll), n, limit) {
            return false;
        }
        if s.max(ll) < e.min(ll + pl) {
            *n += 1;
            if *n > limit {
                return false;
            }
        }
        e <= ll + pl || walk(&node.right, s.saturating_sub(ll + pl), e - ll - pl, n, limit)
    }
    walk(t, s, e, &mut 0, limit)
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

/// What [`extend_in_place`] did.
#[derive(Debug, PartialEq, Eq)]
pub(crate) enum InPlace {
    /// The piece ending at `off` grew inside the existing nodes.
    Done,
    /// A node on the path has other owners (an older version): nothing changed, copy the path.
    Shared,
    /// No piece ends at `off`, or the chunk cannot take `s`: nothing changed.
    Declined,
}

/// [`extend_at`] without the copy: grows the piece ending exactly at `off` with `s` (already in
/// `add`'s terms, see [`Piece::try_extend`]) when every node on the path is uniquely owned, and
/// fixes the totals on the way back. Persistence holds because a node with another owner is never
/// touched (`Arc::get_mut` refuses it): the caller then takes the copying path. Nothing is appended
/// to the chunk before the whole path is known to be unique.
pub(crate) fn extend_in_place(t: &mut Tree, off: usize, add: &Arc<Chunk>, s: &str, lf: usize) -> InPlace {
    let Some(arc) = t.as_mut() else { return InPlace::Declined };
    let Some(n) = Arc::get_mut(arc) else { return InPlace::Shared };
    let (ll, pl) = (len(&n.left), n.piece.len());
    let done = if off <= ll {
        extend_in_place(&mut n.left, off, add, s, lf)
    } else if off < ll + pl {
        InPlace::Declined
    } else if off == ll + pl {
        if n.piece.extend_in_place(add, s, lf) { InPlace::Done } else { InPlace::Declined }
    } else {
        extend_in_place(&mut n.right, off - ll - pl, add, s, lf)
    };
    if done == InPlace::Done {
        n.len += s.len();
        n.lf += lf;
    }
    done
}

/// Recomputes the cached height and totals of a node whose children or piece changed.
fn update(n: &mut Node) {
    n.height = 1 + height(&n.left).max(height(&n.right));
    n.len = len(&n.left) + n.piece.len() + len(&n.right);
    n.lf = lf(&n.left) + n.piece.lf() + lf(&n.right);
}

/// [`rotate_right`] on the node itself: nodes with one owner are rewired in place, shared ones are
/// cloned first (`Arc::make_mut`), so no version that holds them can see the change.
fn rotate_right_mut(t: &mut Tree) {
    let mut x = t.take().expect("rotate_right_mut on empty tree");
    let xn = Arc::make_mut(&mut x);
    let mut y = xn.left.take().expect("rotate_right_mut without left child");
    let yn = Arc::make_mut(&mut y);
    xn.left = yn.right.take();
    update(xn);
    yn.right = Some(x);
    update(yn);
    *t = Some(y);
}

fn rotate_left_mut(t: &mut Tree) {
    let mut x = t.take().expect("rotate_left_mut on empty tree");
    let xn = Arc::make_mut(&mut x);
    let mut y = xn.right.take().expect("rotate_left_mut without right child");
    let yn = Arc::make_mut(&mut y);
    xn.right = yn.left.take();
    update(xn);
    yn.left = Some(x);
    update(yn);
    *t = Some(y);
}

/// Restores the AVL balance of a node after one insertion below it (heights differ by at most 2).
fn rebalance_mut(t: &mut Tree) {
    let n = t.as_ref().expect("rebalance of an empty tree");
    let (hl, hr) = (height(&n.left), height(&n.right));
    if hl > hr + 1 {
        let l = n.left.as_ref().expect("a taller side is not empty");
        if height(&l.left) < height(&l.right) {
            rotate_left_mut(&mut Arc::make_mut(t.as_mut().expect("checked above")).left);
        }
        rotate_right_mut(t);
    } else if hr > hl + 1 {
        let r = n.right.as_ref().expect("a taller side is not empty");
        if height(&r.right) < height(&r.left) {
            rotate_right_mut(&mut Arc::make_mut(t.as_mut().expect("checked above")).right);
        }
        rotate_left_mut(t);
    }
}

/// [`insert_at`] in place: AVL insert of `p` at byte `off` into `t`. Every node on the path that
/// has one owner is edited where it is and every shared one is cloned (only that node), so versions
/// that share nodes with `t` are never changed and an unshared tree allocates only the new nodes.
pub(crate) fn insert_mut(t: &mut Tree, off: usize, p: Piece) {
    let Some(arc) = t else {
        *t = node(None, p, None);
        return;
    };
    let n = Arc::make_mut(arc);
    let (ll, pl) = (len(&n.left), n.piece.len());
    if off <= ll {
        insert_mut(&mut n.left, off, p);
    } else if off >= ll + pl {
        insert_mut(&mut n.right, off - ll - pl, p);
    } else {
        // Inside a piece: shrink it to the left part, then insert the new piece and the right part
        // right after it (two ordinary insertions, each followed by its own rebalancing).
        let (p1, p2) = n.piece.split(off - ll);
        let at = ll + p1.len();
        n.piece = p1;
        update(n);
        insert_mut(t, at, p2);
        insert_mut(t, at, p);
        return;
    }
    update(n);
    rebalance_mut(t);
}

/// [`delete_in`] in place: removes `[a, b)` (non-empty) when it lies inside one piece and is not
/// all of it. `false`, with the text unchanged, for a range that spans pieces or equals one (the
/// caller then uses the persistent code, which joins subtrees).
pub(crate) fn delete_mut(t: &mut Tree, a: usize, b: usize) -> bool {
    let arc = t.as_mut().expect("a non-empty range lies in a non-empty subtree");
    let (ll, pl) = (len(&arc.left), arc.piece.len());
    if b <= ll || a >= ll + pl {
        let n = Arc::make_mut(arc);
        let ok = if b <= ll {
            delete_mut(&mut n.left, a, b)
        } else {
            delete_mut(&mut n.right, a - ll - pl, b - ll - pl)
        };
        if ok {
            update(n);
            // A middle cut below inserted a node: the heights may have changed.
            rebalance_mut(t);
        }
        return ok;
    }
    if a < ll || b > ll + pl {
        return false;
    }
    let (a, b) = (a - ll, b - ll);
    if a == 0 && b == pl {
        return false;
    }
    let n = Arc::make_mut(arc);
    if a == 0 {
        n.piece = n.piece.sub(b, pl);
    } else if b == pl {
        n.piece = n.piece.sub(0, a);
    } else {
        let p2 = n.piece.sub(b, pl);
        n.piece = n.piece.sub(0, a);
        update(n);
        insert_mut(t, ll + a, p2);
        return true;
    }
    update(n);
    true
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

/// Removes bytes `[a, b)` of `t`: one path copy when they lie inside one piece, otherwise a
/// split and a join.
#[inline(never)] // inlined into its callers it moved paste and random edits by +4-7% (benchmarks.md)
pub(crate) fn delete_range(t: &Tree, a: usize, b: usize) -> Tree {
    if a == b {
        return t.clone();
    }
    if let Some(root) = delete_in(t, a, b) {
        return root;
    }
    let (l, rest) = split(t.clone(), a);
    let (_, r) = split(rest, b - a);
    join2(l, r)
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
    let (h, l, f) = (1 + hl.max(hr), ll + n.piece.len() + lr, fl + n.piece.lf() + fr);
    assert_eq!((n.height, n.len, n.lf), (h, l, f));
    (h, l, f)
}
