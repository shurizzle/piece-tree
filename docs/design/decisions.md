# Design decisions

Each entry: decision, why, consequences. Ordered by importance.

## D1. Persistent (immutable) tree

**Decision**: nodes are never mutated; every edit returns a new root sharing untouched subtrees via `Arc`.

**Why**: the benefits DaCamara cites (undo/redo as root swap, free snapshots, branching history) come from persistence, not from the balancing scheme. Snapshots are `Send + Sync`, so a highlighter, LSP client or saver thread can read a version without locks.

**Consequences**: each edit allocates O(log n) new nodes (path copying). `Arc` refcount traffic on clone/drop. Verified by `text::tests::edits_copy_only_a_path` (fresh nodes ≤ 4 × height).

## D2. Join-based AVL instead of persistent red-black

**Decision**: balance with AVL; all mutations are compositions of `join(l, piece, r)`, `split(t, off)`, `join2(l, r)`.

**Why**:
- DaCamara calls persistent red-black deletion the hardest part; he had to adapt it from `persistent-rbtree`/`rpds`. With join-based trees, delete is two splits and a `join2`: no deletion cases at all.
- The only delicate function is `join` (plus symmetric `join_left`/`join_right`), which is small and exhaustively testable.
- AVL height ≤ ~1.44 log₂ n vs ≤ 2 log₂ n for red-black: shorter descents for line queries, the hot path per VS Code.
- Red-black's advantage (fewer rotations on writes) mostly vanishes when every touched node is copied anyway.

**Consequences**: `join` is O(|h(l) − h(r)| + 1), `split` O(log n). Same asymptotics as red-black. Reference: Blelloch, Ferizovic, Sun, *Just Join for Parallel Ordered Sets* (2016).

## D3. Normalize to `\n` internally, choose output ending

**Decision**: all text entering a `Text` passes through `eol::normalize` (`\r\n` and lone `\r` → `\n`). `Document` keeps a `LineEnding` (detected on load or set by the user) and converts on `write_to`.

**Why**: VS Code calls mixed CRLF a nightmare: a `\r\n` pair can be split across pieces or created by an edit, and line counting must look across piece boundaries. With no `\r` in the tree, a line break is exactly one byte in one piece. User requirement: line endings configurable among CR, LF, CRLF; UTF-8 only.

**Consequences**:
- A file with mixed endings is written with a single ending.
- Byte offsets in `Text` differ from file offsets when the file used CR/CRLF.
- Inserting `"\r"` and then `"\n"` in two separate edits yields two line breaks (tested).

## D4. Subtree totals instead of left-subtree aggregates

**Decision**: each node stores `len` and `lf` of its **entire** subtree.

**Why**: VS Code stores left-only values so that a mutable update touches only the path to the root. In a persistent tree the path is copied anyway, so totals cost nothing extra and make `node()` and the descents simpler (`len(&left)` is a field read).

## D5. Append-only chunks with piece extension

**Decision**: text lives in `Chunk`s, each holding bytes and their `\n` offsets in one fixed allocation, written append-only. A `Text` carries its current add chunk. An insert landing right after a piece that ends at the add chunk's published end appends there and **extends that piece**. Otherwise it appends a new piece to the add chunk, or to a new chunk when that one is full.

**Why**: the first version created one immutable buffer per insert: a piece per keystroke and three allocations each. VS Code identifies node count as what slows reads, and benchmarks confirmed it (10 002 pieces after 10 000 keystrokes, 217 ns per `line()`). With extension the same session ends with 8 pieces and 10.7 ns per `line()` ([../guides/benchmarks.md](../guides/benchmarks.md)).

**How persistence survives**: bytes and newline slots of completed appends never change. An append first reserves its range past the reserved end with one atomic read-modify-write on `fill`, then writes it. The extension check (`at = Some(end)`) is part of that same atomic step, so it succeeds only if nobody appended since that piece was created. Versions that diverged from a common ancestor therefore append to new regions and never overwrite each other.

**Sizing**:
- Add chunks start at 256 bytes and double up to 64 KiB, with `max(cap / 4, lf)` newline slots. A chunk is sealed when either the bytes or the newline slots are full.
- Inserts over 64 KiB get an exact chunk, scanned once with memchr. `Text::from(String)` takes over the `String`'s buffer instead of copying it (see D12).
- Many small texts therefore stay cheap, and large documents allocate in 64 KiB steps.

**Consequences**:
- A chunk stays alive while any piece of any version references it, even if most of its text was deleted.
- Each append is one atomic `try_update` on a packed `(len, nl)` `AtomicU64`; there is no lock (see D11).

## D6. Byte offsets, `u32` inside chunks

**Decision**: public offsets are `usize` bytes. `Piece` stores `start`, `len`, `lf` and `nl_first` as `u32`.

**Why**:
- UTF-8 only (UTF-16 is not a target), and bytes are what `str` slicing needs.
- With `u32` fields the four of them fit in 16 bytes next to the `Arc`, so a `Piece` is 24 bytes. `nl_first` occupies what used to be padding, and makes `nth_newline` O(1).
- Chunks above 4 GiB are rejected (`assert_fits_u32`).

**Consequences**: callers convert columns to bytes themselves (the editor does it with `char_indices`). A single insert, or a file, over 4 GiB cannot be loaded, because it is one exact chunk.

## D7. Undo tree of versions, with groups and an edit log

**Decision**: `Document` keeps every version in a tree (`Vec<State>`, children after their parents). An effective edit makes a version; no-op edits are detected with `ptr_eq` and skipped. `begin_group`/`end_group` (nestable) fold the edits of one command into one version. Each version records the `Edit`s (start, old length, new length) from its parent, in one flat log, and its creation time. `undo`/`redo`/`goto`/`earlier`/`later` swap roots and report the path's edits as `last_edits`.

**Why**: persistence makes old versions free to keep (shared structure), so a tree costs nothing over two stacks and loses no branch. Editors need groups (one `u` per command) and position mapping (marks, cursors, other views) on every change, including undo; without the log the caller cannot know where text moved after an undo or a regex replace.

**Rejected**: grouping in the caller by counting edits (what pt-edit did before): it cannot map positions through undo and duplicates history logic in every caller. A `Vec<Edit>` per version: one allocation per keystroke; the flat log has none (the open group's version is always the newest, so its edits are the log's tail).

**Cost**: the timestamp is one `Instant::now()` (~22 ns) per version, about 15% of a single-key `Document::insert`; grouped typing (editors) reads the clock once per group. Measured in [../guides/benchmarks.md](../guides/benchmarks.md).

**Consequences**: history is never freed (roadmap: drop old versions). `last_edits` is empty after any call that changed nothing, so mapping after every call never applies an edit twice.

## D8. Dependencies: use the best crate for the job

**Decision**: depend on well-known crates instead of hand-rolling.
- `memchr`: byte scanning (newline cache, `\r` detection, `memchr2` line ending detection, newline counts).
- `triomphe`: `Arc` without a weak count, for nodes and chunks (D13).
- `parking_lot`: the house choice for any `Mutex`/`RwLock`. The crate currently has no locks (D11), so it is not a dependency right now.
- Add others, such as `aho-corasick`, when a feature needs them.

**Rejected**: `mimalloc` as global allocator, for the bench and pt-edit. A/B showed no consistent gain on edits (0.96–1.08x), because allocation is only ~5% of the edit profile. Only the copying load improved, and pt-edit loads owned.

**Note**: an earlier version claimed a "zero dependencies" rule. It was never a requirement and was removed.

## D9. `unsafe` confined to `chunk.rs`

**Decision**: the only `unsafe` code is the chunk storage. A chunk holds raw `bytes` and `newlines` pointers into one of two storages:
- `Words`: a `Box<[MaybeUninit<u32>]>` leaked to `NonNull` (byte area followed by newline slots), used by add chunks;
- `Owned`: the buffers of a `String` (as `Vec<u8>`) and a `Vec<u32>`, forgotten and rebuilt in `Drop`.

Writes go through raw pointers into reserved, unreferenced ranges. `Piece::text` reads with `from_utf8_unchecked`.

**Why**: sharing an append-only buffer between versions cannot be expressed with safe `&`/`&mut`: old versions hold shared references while new bytes are written. Keeping the allocation raw means no `Box` or `&` ever covers the tail being written, so there is no aliasing violation. Miri runs the whole test suite (Stacked Borrows, with concurrent appends) without errors.

**Safety argument**:
- Ranges of completed appends are immutable.
- Reservations are disjoint (one atomic RMW each), and a range is written only by the thread that reserved it.
- Readers see only ranges returned by completed appends. The `Text` hand-off (a channel, `thread::spawn`, the same thread) gives happens-before.
- A piece's ends are char boundaries: `Piece::split` and `Piece::sub` assert it wherever an edit cuts a piece, and piece edges are always boundaries.
- Owned storage takes its pointers from `Vec::as_mut_ptr`, which keeps provenance over the whole capacity. An earlier version took them from `as_mut_str()`/`as_mut_slice()`, which only cover `len`: freeing a `Vec` whose capacity exceeded its length was UB, and Miri caught it.

## D10. Path-copy edits instead of split + join

**Decision**:
- Inserts use `extend_at` (replace the piece ending at `off`, copy only the path, no rebalancing), else `insert_at` (persistent AVL insert, `join` rebalancing on the way up).
- Deletes inside one piece use `delete_in` (shrink, split or remove that piece along one path).
- `split`/`join`/`join2` remain for deletes spanning pieces.

**Why**: the profile showed `expose` + `Arc::drop_slow` at ~50% of edit time. `split` + `split_last` + `join` copy about 3 × height nodes even when the shape does not change. A single path copy creates about one node per level. Typing went 1.6x, backspace 3.2x and random edits 2x faster ([../guides/benchmarks.md](../guides/benchmarks.md)).

## D11. Lock-free chunk reservation, no separate boundary descent

**Decision**:
- `Chunk::fill` is an `AtomicU64` packing `(len, nl)`. `try_append` reserves with one `try_update` that also performs the capacity and `at` checks, then writes the reserved range.
- Edits no longer run a separate descent to check char boundaries. The check happens in `Piece::split`/`Piece::sub` exactly where a piece is cut (message `offset not on a char boundary`); offsets at piece edges are always boundaries.

**Why**: a mutex costs a lock and an unlock (two atomic RMWs) per append, and the extra descent was a whole tree walk per edit. Together: +7–17% on edits.

## D12. Owned loads

**Decision**: `Text::from(String)` and `Document::from_string(String)` keep a large text (over 64 KiB, after normalization) in an `Owned` chunk built from the `String`'s own buffer. Only the memchr newline scan remains. `LineEnding::detect` uses `memchr2` instead of a byte loop. pt-edit loads this way.

**Why**: the 50 MB load went from 1.0 to 0.3 ns/byte, and a full `Document` load from 1.6 to 0.5 ns/byte.

## D13. `triomphe::Arc`

**Decision**: nodes and chunks use `triomphe::Arc`: an 8-byte header and no weak count, so `try_unwrap` and drop do less atomic work. Persistence never needs weak references.

**Why**: +18–25% on every edit scenario in A/B.

## D14. Regex through `regex-cursor`, prefilters off, replace built in one go

**Decision**:
- Search with `regex-cursor` (regex-automata's engines over a `Cursor` of chunks) through `TextCursor`.
- regex-cursor is vendored with a one-line fix (see below).
- `piece_tree::Regex` is a newtype whose own `RegexError` keeps the full cause chain.
- `replace_all` builds the new tree from pieces in one pass.

**Why**:
- No copy of the text, full `regex` syntax and semantics, and it is the approach Helix uses on ropey.
- Our pieces never split a code point, so the cursor is UTF-8 aware.
- Alternatives considered:
  - per-line `regex` on `line()`: fast, but no multi-line matches;
  - `regex` on `to_string()`: an O(n) copy per search;
  - hand-feeding a DFA: no captures.

**The upstream bug and the fix**:
- The differential tests found missed matches, and a trivial `Vec` cursor reproduced them, so the bug was in regex-cursor.
- Root cause: `Input::set_span` moves the cursor only forward, and the prefilter-only strategy (`Pre::search`) does not seek back to the search start like the automata engines do. After `literal::find_n` reads ahead, the next search starts from a later chunk.
- Fix: `input.move_to(input.start())` in `Pre::search`. Putting it in `literal::find` instead loops forever, because the automata engines also call `find` from their current position mid-scan.
- The first workaround (`auto_prefilter(false)`) was correct but 45x slower on `\bvalue_\d+5\b`, so it was replaced by the patch.
- Drop the vendored copy when upstream ships a fix.

**Replace**: one edit per match would create k versions and k path copies. Collecting the matches and assembling `pieces_in` gaps plus sub-pieces of one stored replacement buffer gives one version, one undo step and an O(n + k) build. The `$` expansion uses `regex_automata::util::interpolate::string`, the same code `regex` uses.

## D15. Char metrics cached in the tree

**Decision**: every piece caches its char count and every node the subtree's. Sealed chunks (loads, large inserts) get an immutable char index at creation (chars before every 1 KiB), so splitting or querying a long piece scans at most a block; add-chunk pieces (≤ 64 KiB) are scanned. `char_to_offset`, `offset_to_char` and the line/column conversions are O(log n).

**Why**: editors address text by columns; without the cache every column conversion is O(line length) on the caller's side (pt-edit's `chars().count()`), and char offsets in the whole text are O(n). Counting on demand at split time would scan the whole loaded piece (MBs) per edit.

**Rejected**: an index in add chunks: their pieces are short, and keeping it would need writes past the published end of a second area (more `unsafe`).

**Cost**: `Piece` 24 → 32 bytes, `Node` 64 → 80, one extra pass over the text at load; numbers in [../guides/benchmarks.md](../guides/benchmarks.md).
