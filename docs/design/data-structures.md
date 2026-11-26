# Data structures

Sources: `crates/piece-tree/src/chunk.rs`, `tree.rs`, `text.rs`, `document.rs`.

## `Chunk` (`chunk.rs`)

```rust
struct Chunk {
    bytes: NonNull<u8>,      // text bytes, capacity `cap`
    newlines: NonNull<u32>,  // sorted byte offsets of `\n`, capacity `nl_cap`
    cap: u32,
    nl_cap: u32,
    fill: AtomicU64,         // reserved prefix, packed Fill { len, nl }
    storage: Storage,        // Words(NonNull<[MaybeUninit<u32>]>) | Owned { text_cap, nl_cap }
}
```

- Text bytes plus the VS Code-style newline cache.
- **Append-only**. `try_append(s, lf, at)` reserves `[len, len + |s|)` and `[nl, nl + lf)` with one atomic `try_update`, which also checks capacity and, with `at = Some(end)`, that the reserved length is exactly `end`. It then copies `s` and its newline offsets into the reserved range, and returns the `Fill` where `s` starts. It refuses (`None`) without reserving anything when the text does not fit.
- Reads are `unsafe fn str(start, len)` and `unsafe fn newlines(first, count)`, lock-free, valid for ranges of completed appends only.
- Storage and constructors:
  - `for_add(prev, len, lf)`: `Words` storage, one allocation (bytes, then newline slots). Capacity `max(len.next_power_of_two(), min(2 * prev.cap, 64 KiB))`, starting at `MIN_ADD_BYTES` = 256, with `max(cap / 4, lf)` newline slots.
  - `from_parts(s, newlines)` (`unsafe`: `newlines` must be exactly the `\n` offsets of `s`): `Owned` storage, sealed, taking over the `String`'s buffer (as `Vec<u8>`) and the newline `Vec<u32>`, with no copy. Pointers come from `Vec::as_mut_ptr` (full-capacity provenance). `Drop` rebuilds both `Vec`s.
  - `from_string(s)` = `from_parts(s, positions(s))`.
  - `exact(s: &str)`: `newlines::copy_positions` copies `s` and indexes its newlines in one pass (each 64-byte block is copied while its mask is computed), then `from_parts`.
  - `concat(pieces, len)` (`Text::compact`): the pieces' texts back to back, newline offsets copied from the pieces' own caches shifted, no rescan.
- `MAX_ADD_BYTES` = 64 KiB, the threshold above which an insert gets an exact chunk (1 KiB under Miri, to keep the tests fast).
- `Send + Sync` by `unsafe impl` (safety argument in [decisions.md](decisions.md) D9).
- Limits: `cap <= u32::MAX` (`assert_fits_u32`, panics `"buffer larger than 4 GiB"`); non-empty (panics `"empty chunk"`).

## `Piece` (`tree.rs`)

```rust
struct Piece { chunk: Arc<Chunk>, start: u32, len: u32, lf: u32, nl_first: u32 } // 24 bytes
```

- A published byte range `[start, start + len)` of a chunk.
  - `lf` = number of `\n` in it.
  - `nl_first` = index in the chunk's newline cache of its first `\n`. Its own newlines are `newlines(nl_first, lf)`.
- Soundness invariant: the range and slots are published, and both ends are char boundaries.
- Constructors:
  - `whole(chunk)`: everything published (used for exact chunks).
  - `store(add, s, lf)`: appends to the add chunk or a new one, and returns the piece plus the add chunk to keep.
  - `try_extend(add, s, lf)`: the same piece grown by `s`, if it ends at `add`'s published end.
- Queries:
  - `nth_newline(k)`: O(1).
  - `lf_before(off)`: O(log lf), binary search over the piece's own newlines.
  - `split(at)` and `sub(from, to)`: O(log lf). They assert the range (`invalid piece split` / `invalid sub-piece`) and the char boundaries (`offset not on a char boundary`). These are real `assert!`s, because the results feed `from_utf8_unchecked`, and they are the only boundary check edits need.

## `Node` and `Tree` (`tree.rs`)

```rust
type Tree = Option<Arc<Node>>;
struct Node {
    left: Tree, right: Tree, piece: Piece,
    height: u8,  // AVL height, leaf = 1, empty = 0
    len: usize,  // bytes in the whole subtree
    lf: usize,   // '\n' in the whole subtree
}
```

- Accessors on `&Tree`: `height`, `len`, `lf` (0 for `None`).
- Piece counts are not cached (an exact per-node count cost ~4% on paste, D17): `min_pieces`/`max_pieces` bound the count from the height in O(1) (Fibonacci minimum, full tree), and `has_at_most_in(t, 0, len, limit)` walks the tree and stops once it exceeds `limit`.
- `Arc` is `triomphe::Arc` (no weak count) for nodes and chunks.
- `node(l, piece, r)` builds a node computing the aggregates; it does **not** rebalance.
- In-order traversal of pieces = document text.

## `Text` (`text.rs`)

```rust
#[derive(Clone, Default)]
pub struct Text { root: Tree, add: Option<Arc<Chunk>> }
```

- `Clone` costs two `Arc` increments.
- `From<&str>` copies; `From<String>` takes over the buffer of a large text without `\r`.
- `add` is the chunk receiving this version's inserts. It is shared with the versions derived from it, and stays `None` until the first small insert.
- Two `Text`s are the same version iff `ptr_eq`: both empty, or the same root `Arc`.

## `Document` (`document.rs`)

```rust
pub struct Document {
    eol: LineEnding,
    states: Vec<State>,  // the undo tree; index = version number (seq), children after parents
    cur: usize,          // current version
    depth: usize,        // open begin_group calls
    group: Option<usize>,// version the open group writes into (always the newest)
    log: Vec<Edit>,      // every version's edits from its parent, back to back
    last: Vec<Edit>,     // edits made by the last call (edit or history move)
}
struct State { text: Text, parent: usize, edits: Range<usize> /* into log */, redo: Option<usize>, time: Instant }
pub struct Edit { pub start: usize, pub old_len: usize, pub new_len: usize }
```

Versions are whole `Text` roots. They share structure and chunks, so memory per version is O(log n) nodes plus the inserted bytes plus one `State` (~72 bytes) and its edits. `redo` is the child last created or left by an undo, so `redo` returns where `undo` came from.

## Invariants

| # | Invariant | Checked by |
|---|---|---|
| I1 | No `\r` in any chunk range reachable from a `Text` | `normalize` on every input path |
| I2 | Every piece non-empty | `tree::check` |
| I3 | `|h(left) − h(right)| ≤ 1` | `tree::check` |
| I4 | `height`, `len`, `lf` equal recomputed values | `tree::check` |
| I5 | `piece.lf` equals the actual `\n` count | `tree::check` |
| I6 | Published chunk bytes, pieces and nodes never change | append-only chunks; `edits_copy_only_a_path`, history checks, `diverging_versions_do_not_extend_each_other` |
| I7 | Pieces cover only published ranges with char-boundary ends | constructors, `Piece::split` assert, Miri |

## Complexity

n = pieces, k = bytes touched or returned, s = inserted bytes, f = newlines in one piece.

| Operation | Cost |
|---|---|
| `Text::clone`, `ptr_eq`, `len`, `line_count`, `is_empty` | O(1) |
| `insert(off, s)` | one path copy (`extend_at` or `insert_at`), O(log n + s); extension adds no piece; s > 64 KiB allocates an exact chunk |
| `delete(range)` | one path copy (`delete_in`) when inside a piece; otherwise split + split + join2; O(log n + log f) |
| `Text::from(String)` | one SIMD newline scan (`newlines.rs`, D16), no copy (large texts without `\r`) |
| `offset_to_line` | O(log n + log f) |
| `line_to_offset` | O(log n) |
| `line(i)` | one descent + borrowed slice when the line is inside one piece; otherwise O(log n + pieces in line) with a concat |
| `slice(range)` | O(log n + pieces in range); zero-copy if inside one piece |
| `chunks()` full iteration | O(n), O(height) stack |
| `Document::undo`/`redo` | O(edits of the version) |
| `Document::goto`/`earlier`/`later` | O(versions on the path + their edits) |
| `Document::earlier_time`/`later_time` | O(versions) scan, then `goto` |
| `Document::write_to` | O(total bytes) |
| Tree height | ≤ ~1.4405 log₂(n + 2) (tested on 20 000 pieces) |
