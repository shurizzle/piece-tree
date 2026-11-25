# Algorithms

Source: `crates/piece-tree/src/tree.rs` (tree), `crates/piece-tree/src/text.rs` (descents).

## Ownership model: `expose` and path copying

Two styles coexist (`Arc` is `triomphe::Arc`):

- **Borrowing path copies** (`extend_at`, `insert_at`, `delete_in`, the hot path): they take `&Tree`, build new nodes along one path, and share every untouched subtree by cloning its `Arc`. There is no `expose`.
- **By-value split/join** (`join`, `split`, `join2`, used by `join`'s rotations and by range deletes) take subtrees **by value**. `expose(Arc<Node>)` returns `(left, piece, right)`:

- `Arc::try_unwrap` succeeds (node uniquely owned): fields are moved out, no allocation, no refcount churn.
- Otherwise (node shared with another version): children and piece are cloned (`Arc` increments).

In the by-value style, the range-delete path starts from `self.root.clone()`, so everything reachable is shared with `self`: the touched path gets copied, the rest is shared. Nodes created during one operation are unique, so later steps (such as rotations inside `join`) reuse them in place.

## `join(l, k, r)`

Precondition: every piece of `l` precedes `k`, which precedes every piece of `r`. Returns a balanced tree.

```
join(l, k, r):
  if h(l) > h(r) + 1: join_right(l, k, r)
  elif h(r) > h(l) + 1: join_left(l, k, r)
  else: node(l, k, r)

join_right(l, k, r):            # l is taller: descend l's right spine
  (ll, lk, lr) = expose(l)
  if h(lr) <= h(r) + 1:
     t = node(lr, k, r)
     if h(t) <= h(ll) + 1: node(ll, lk, t)
     else: rotate_left(node(ll, lk, rotate_right(t)))   # double rotation
  else:
     t = join_right(lr, k, r)
     t' = node(ll, lk, t)
     if h(t) > h(ll) + 1: rotate_left(t') else t'
```

`join_left` mirrors it on the left spine of `r`. Cost: O(|h(l) − h(r)| + 1). Tested over all height combinations up to 41 × 41 pieces with differently shaped inputs (`tree::tests::join_every_height_combination`).

## `split(t, off) -> (l, r)`

`l` contains exactly the first `off` bytes, `r` the rest.

```
split(None, _) = (None, None)
split(node(l, p, r), off):
  if off < len(l):            (a, b) = split(l, off);  (a, join(b, p, r))
  elif off > len(l) + |p|:    (a, b) = split(r, off − len(l) − |p|);  (join(l, p, a), b)
  else: x = off − len(l)
    x == 0:     (l, join(None, p, r))
    x == |p|:   (join(l, p, None), r)
    otherwise:  (p1, p2) = p.split(x);  (join(l, p1, None), join(None, p2, r))
```

O(log n): the joins along the path telescope (standard join-based argument).

## `join2(l, r)` and `split_last`

`join2` concatenates without a middle piece: take the last piece of `l` with `split_last` (descend the right spine, re-`join` on the way back), then `join(l', last, r)`. O(log n).

## Edits (`text.rs`)

```
insert(off, s):
  assert off <= len; s = normalize(s); if s empty → self
  if |s| > MAX_ADD_BYTES:                               # file loads, big pastes
     return insert_at(root, off, Piece::whole(Chunk::exact(s))), add unchanged
  lf = count_lf(s)
  if add and extend_at(root, off, |p| p.try_extend(add, s, lf)) = Some(root'):   # typing
     return root', add unchanged
  (p, add') = Piece::store(add, s, lf)                  # append to add, or to a new bigger chunk
  return insert_at(root, off, p), add'

delete(a..b):
  assert a <= b <= len; if empty → self
  if delete_in(root, a, b) = Some(root'): return root'    # range inside one piece
  (l, rest) = split(root, a); (_, r) = split(rest, b − a); join2(l, r)
```

Returning `self.clone()` for no-ops keeps `ptr_eq` true, which `Document` uses to skip undo entries. There is no separate boundary descent: `Piece::split`/`sub` assert char boundaries where a piece is cut, and piece edges are always boundaries.

### `extend_at(t, off, f)`

Descends to the piece ending exactly at `off`:
- `off <= len(left)` → go left;
- `off` strictly inside the piece → `None`;
- `off == len(left) + |piece|` → `f(piece)`;
- otherwise → go right.

Each level on the way back builds `node(left', piece, right')` with recomputed totals. The shape is unchanged, so there is no rebalancing: about one new node per level, and siblings are shared.

### `insert_at(t, off, p)` (persistent AVL insert)

```
insert_at(None, _, p) = leaf(p)
insert_at(node(l, q, r), off, p):
  off <= |l|           → join(insert_at(l, off, p), q, r)
  off >= |l| + |q|     → join(l, q, insert_at(r, off − |l| − |q|, p))
  inside q             → (q1, q2) = q.split(off − |l|)
                         join(l, q1, insert_at(insert_at(r, 0, q2), 0, p))
```

`join` is the rebalancer: with heights within 1 it is just `node`, and otherwise it rotates (it handles any height difference, so two inserts into `r` are fine). Untouched subtrees are borrowed (`&Tree`) and shared by clone, so no `expose` and no `try_unwrap` happens on the hot path.

### `delete_in(t, a, b)`

Descends to the piece containing `[a, b)`. It returns `None` if the range spans pieces, and the caller falls back to split + join2. At the piece, with `a`, `b` relative to it:

| Case | Result |
|---|---|
| whole piece | `join2(left, right)` |
| prefix (`a == 0`) | `join(left, piece.sub(b, len), right)` |
| suffix (`b == len`) | `join(left, piece.sub(0, a), right)` |
| middle | `join(left, piece.sub(0, a), insert_at(right, 0, piece.sub(b, len)))` |

The `join`s on the way back rebalance, because a removed piece or an added half changes heights by at most one or two.

### `apply_edits` (batches, `text.rs`)

`Text::apply_edits(&[(range, replacement)])` takes sorted, non-overlapping edits in offsets of the source text. It validates them first (`invalid range` for reversed, unsorted or overlapping ranges, `out of bounds`), normalizes every replacement, and stores all of them **once**, concatenated, through `store_replacements` (the add chunk, or an exact chunk past `MAX_ADD_BYTES`), so every replacement is a `Piece::sub` of one stored piece. Edits that change nothing (empty range, empty text) are dropped; with none left the same version is returned. Then one of two strategies, chosen by `Text::rebuild_wins(edits)`: rebuild when `edits >= REBUILD_MIN_EDITS (3)` and `pieces <= edits * REBUILD_PIECES_PER_EDIT (10)`. The piece count is not stored: the tree height bounds it in O(1) (`min_pieces`, a Fibonacci minimum, and `max_pieces`, a full tree), which decides most batches; only when the budget falls between the bounds does `has_at_most(root, budget)` walk the tree, stopping as soon as the count exceeds the budget, so it visits at most `edits * 10` pieces (~7 ns each, against ~500 ns per edit of the path copies it may save). When the batch is sparse and has at least `CLUSTER_MIN_EDITS` (6) edits, `rebuilt_cluster` tries the span between the first and the last edit: if it holds at most `edits * 10` pieces (rejected in O(1) if the span is over half of the text or by an estimated density, then checked by `tree::has_at_most_in`, which counts without cloning), `rebuilt` builds only that span (`[lo, hi)`), and the result is `join2(join2(split(root, lo).0, span), split(root, hi).1)`, sharing both untouched sides.

- **Dense: `Text::rebuilt`.** `pieces_in` collects the untouched pieces of each gap, the replacement pieces go between them, and `from_pieces` builds a perfectly balanced tree in O(pieces + edits). The same code as `replace_matching`, so both share it. Nothing of the old tree is shared except the chunks.
- **Sparse: one path copy per edit**, from the last edit to the first so earlier offsets stay valid (`delete_range` then `insert_at` of the stored piece).

Measured costs (benchmarks.md): a rebuild is ~30 ns per piece plus ~100 ns per edit, a path copy ~500 ns per edit on a fragmented tree, so they break even near one edit per 12 pieces; on a single piece the rebuild wins from 3-4 edits. A divide and conquer version (split around the middle edit, recurse, join) was built and rejected: it only won on a single piece and lost up to 2x on fragmented trees, where each edit pays two splits and two joins (D17).

### Piece extension

`try_extend` succeeds when the piece belongs to `add` **and** `add.try_append(s, lf, Some(piece.end))` succeeds. The second condition means that no one appended since the piece's text was written, and that `s` fits; it is checked atomically with the reservation. The extended piece keeps `start` and `nl_first`, and `len`/`lf` grow.

- Typing at a cursor: each keystroke lands right after the piece extended by the previous one, so a whole session is one piece per chunk.
- Diverging versions: if version A extended the piece first, version B fails the `Some(end)` check and appends a new piece in a fresh region.
- Typing after a delete still extends, as long as the remaining piece ends at the reserved end.

## Query descents (`text.rs`)

All are iterative root-to-leaf walks using subtree totals.

- **`offset_to_line(off)`**: at each node, if `off < len(left)` go left; else add `lf(left)`, subtract `len(left)`; if `off <= |piece|` return `acc + piece.lf_before(off)`; else add `piece.lf`, subtract `|piece|`, go right. An offset pointing at a `\n` belongs to the line that `\n` ends.
- **`find_newline(k)`**: descends on `lf` counts to the piece holding the `k`-th `\n` (0-based); returns the piece, its start offset and the `\n` index within the piece.
- **`line_to_offset(line)`**: line 0 → 0, else `find_newline(line − 1)` → `base + nth_newline(k) + 1`.
- **`line(i)`** (the render hot path) works in one descent when possible:
  1. Locate where the line starts: the leftmost piece for line 0, otherwise the piece of the `(i − 1)`-th `\n`, with `start` = just past it and `next = k + 1`.
  2. If that piece also holds the `\n` ending the line (`next < piece.lf`), return `Cow::Borrowed(&text[start..nth_newline(next)])`.
  3. If it is the last piece of the text, the line runs to the end: `Cow::Borrowed(&text[start..])`. This includes an empty last line after a trailing `\n`.
  4. Otherwise the line spans pieces: compute the end with `line_to_offset(i + 1) − 1` (or `len()`) and `slice`.
- **`slice(a..b)`**: `collect` visits only subtrees overlapping the range, pushing `&str` sub-slices of pieces. One part → `Cow::Borrowed`, several → `Cow::Owned(concat)`.
- **`chunks()`**: explicit-stack in-order iterator (push left spine, pop, push left spine of right child).

## Regex search (`search.rs`)

- **`TextCursor`** keeps the path of nodes from the root to the current piece:
  - `advance`: if the current node has a right child, push it and its left spine; otherwise pop until arriving from a left child;
  - `backtrack`: the mirror image;
  - both check first whether a neighbour exists (`offset + chunk.len() < len`, `offset > 0`), so a failed move changes nothing;
  - `cursor_at(off)` descends like `offset_to_line`, stopping at the piece containing `off`, or the last piece when `off == len`.
- **`rfind_before(off)`**: windows `[off - w, off)` with `w` doubling from 4 KiB; in each, repeated `find_from` jumps enumerate the match starts and the last one wins. It stops at the first window with a hit.
- **`find_iter_in(range)`**: the regex runs over `cursor_at(range.start)` with the input range bounded, so look-around still sees the text before it.
- **`replacement_at`**: one `search_captures` at `off`, expanded with `interpolate::string`.
- **`replace_all`** (= `replace_matching` keeping every match):
  1. matches are collected as (match range, range in the replacement buffer), skipping those the `keep` filter rejects (rejected matches are not expanded);
  2. the buffer is stored once;
  3. pieces are emitted in order: `pieces_in(pos, match.start)` (whole pieces cloned, edge pieces cut with `sub`), then the replacement sub-piece;
  4. `from_pieces` builds a perfectly balanced tree (middle element as root, recursively), which satisfies the AVL invariant.

## Undo tree navigation (`document.rs`)

`goto(target)` climbs from the current version and from the target to their closest common ancestor: since a child always has a larger index than its parent, the walk repeatedly steps up from whichever of the two is larger until they meet. Steps up append the inverse of each version's edits in reverse order to `last_edits`; steps down (replayed root-first) append the edits as recorded. Every parent on the path gets its `redo` pointer set to the child the path went through, so a later `redo` follows the last visit (vim). `undo` is `goto(parent)`, `redo` is `goto(redo child)`, `earlier(n)`/`later(n)` are `goto(seq ∓ n)` (creation order, across branches), the time variants scan timestamps for the target first.

Groups write into the version they created: it is the newest one (moving in the history closes every group), so its edit range is the tail of the flat log and grows in place.

`Edit::map(off)` keeps an offset before the edit, shifts one at or after the replaced range (an insertion at `off` pushes it), and moves one inside the replaced range to its start. `map_offset` folds a list in order.
