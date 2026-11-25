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
- Inserts over 64 KiB get an exact chunk, scanned once (SIMD newline scan, D16). `Text::from(String)` takes over the `String`'s buffer instead of copying it (see D12).
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

**Rejected at the time** (superseded by D18, which measured it again): `mimalloc` as global allocator, for the bench and pt-edit. A/B showed no consistent gain on edits (0.96–1.08x), because allocation was only ~5% of the edit profile. Only the copying load improved, and pt-edit loads owned.

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

**Decision**: `Text::from(String)` and `Document::from_string(String)` keep a large text (over 64 KiB, after normalization) in an `Owned` chunk built from the `String`'s own buffer. Only the newline scan remains (SIMD since D16). `LineEnding::detect` uses `memchr2` instead of a byte loop. pt-edit loads this way.

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

## D15. Char conversions by scanning, no char cache in the tree

**Decision**: `Text` offers char conversions (`char_count`, `offset_to_char`, `char_to_offset`, `line_char_len`, `line_col_to_offset`, `offset_to_line_col`) but the tree caches nothing about chars. Per-line ones scan the pieces of the line in place (`collect`, no copy; `line_col_to_offset` stops at the piece holding the column), global ones scan all the pieces: O(line length) and O(n). Counting and the char-to-byte lookup use `str_indices::chars` (SIMD, 2.4x `chars().count()`; `Text::char_to_offset` asks `to_byte_idx` per chunk and counts only the chunks it skips, 0.081 -> 0.017-0.034 ns/B on a loaded text, benchmarks.md); under Miri, which lacks its NEON intrinsic, the std equivalents run. `is_char_boundary`, `floor_char_boundary` and `line_end` need no scan.

**Why**: an editor converts columns of one line (the cursor line, visible lines), and `Text::line` is already O(line length) there. The global conversions serve single commands (`Ctrl+G` counts, `/pat/e+1`, `gn`).

**Rejected**: caching `chars` in every `Piece` and `Node` plus an index (chars before every 256 bytes) in sealed chunks. It made conversions O(log n) but cost, measured against `fa02467` with the same build: paste +12%, random edits +20%, `replace_all` +32%/+8%, load +50..100%. A samply profile of `edits` showed +17% samples: `Piece::chars_before` 53% of the increase, `tree::node` 25% (more work per rebuilt node, `Piece` 24 → 32 bytes). `Node` also needed `u32` totals to stay at 64 bytes, which limited a text to 4 Gi lines and chars. Details in [../guides/benchmarks.md](../guides/benchmarks.md).

**Cost of this choice**: a column conversion on a very long line (a minified 1 MB file) is O(line length) per call. Upgrade path: a per-chunk index again, built lazily on the first char query, or a cache for the cursor line only.

## D16. SIMD newline index for owned chunks

**Decision**: `Chunk::from_string` (so every load and every exact chunk) builds its newline offsets with `newlines::positions`. Each 64-byte block becomes one 64-bit mask (bit `i` set when byte `i` is `\n`); a block without a newline is skipped after one test; otherwise the mask is flattened into offsets with 8 unconditional writes (plus a loop only for the rare block with more than 8 newlines), because a loop over the set bits mispredicts once per block. Only `mask64` is architecture specific: NEON on aarch64 and SSE2 on x86_64 (both baseline, no runtime detection); every other architecture and Miri use a portable SWAR mask (plain `u64` arithmetic). The `Vec` starts with `len / 64 + 64` slots and calls `reserve(64)` before each non-empty block, so the junk writes of `flatten` stay inside the capacity whatever the mask says. There is no density heuristic and no `memchr` fallback. `Chunk::try_append` keeps `memchr_iter`: it writes into slots reserved by one atomic step, and the junk writes past the real ones would land in another writer's reservation.

**Why**: studying `memchr` (`arch/generic/memchr.rs`) showed where `memchr_iter` loses. The iterator calls `find_raw(start, end)` once per hit and restarts at `hit + 1`; `find_raw` compares an unaligned head vector, realigns, runs a 4-vector loop and returns the *first* hit only, throwing away the compares of the other vectors, so the next call computes them again. That is ~12 ns per newline, and on source code (a newline every ~35 bytes) it was ~90% of `Text::from(String)`. Its `count` is a separate function with no per-hit state (0.02 ns/B). The one idea worth taking from `find_raw` is its early out: it ORs the four vector compares and tests once, so blocks without a newline cost almost nothing. With that, the mask scan in the prototype was faster than `memchr_iter` + `collect` on blank lines and at mean line lengths of 16 to 1000 bytes, and tied on a single line without newlines, and `Text::from(String)` of 50 MB went (ns/B, min of 5 alternating runs): Rust sources 0.385 -> 0.106 (3.6x), synthetic 0.180 -> 0.101, CJK 0.112 -> 0.064, exponential lines of mean 100/200/400/1000/5000: 1.8x/1.5x/1.3x/1.19x/1.03x, one line without newlines 0.033 -> 0.034 (noise). See benchmarks.md.

**Add chunks (W8a)**: `Chunk::try_append` indexes its newlines with `newlines::positions_callback` (one callback per hit, offsets written straight into the reserved slots), not `memchr_iter`: 1 KiB-64 KiB pastes with a line every 8-60 bytes are 1.5-3.5x faster, others unchanged within the noise. `positions` itself stays on `flatten`, because a scan built on the callback loses 66% on Rust sources.

**Rejected** (measured, benchmarks.md): preallocating the `Vec` from an exact count or a `len / 32` estimate: no gain, the growth is not the cost. A 16-byte NEON mask with a `while mask != 0` loop: 3.8x slower than the 64-byte mask, one misprediction per block. A first design chose between the mask and `memchr_iter` from the mean line length of a 64 KiB sample: dropped because the early out removed the need, and because the crossovers it was tuned on were wrong by 3x (lines of equal length hide the branch mispredictions of the per-hit iterators; exponentially distributed lengths, like real text, put them at ~450 B for NEON and ~190 B for SWAR). A counting pass for an exact capacity (~0.02 ns/B): not needed.

**Cost of this choice**: `unsafe` in a second file (`newlines.rs`, with SAFETY comments). A wrong mask cannot write out of bounds (`reserve(64)` comes first) but would give wrong newline offsets, and those feed `from_utf8_unchecked`; so correctness rests on the tests: a per-lane test of every `mask64` (each of the 64 lanes alone, all lanes, none, with noise bytes such as 0x0B and 0x8A), differential tests against a naive scan at every length around the 16/64-byte boundaries and the zero-padded tail, and a `debug_assert_eq!` against `memchr`'s counter that runs in every test. Miri runs the SWAR mask, hence `positions`, `push_block` and `flatten`; the NEON and SSE2 bodies are checked natively (SSE2 under emulation, see testing.md).

**AVX2 (tried on an Intel i5-8365U, rejected, benchmarks.md "Linux x86_64")**: a `mask64` with two 32-byte compares, the whole scan compiled under `#[target_feature(enable = "avx2")]` and chosen once per scan by `is_x86_feature_detected!`: no gain with `target-cpu=native` (0.94-1.05x), up to 1.28x slower behind runtime dispatch on dense text (Rust sources). SSE2 stays.

**To try (pending, needs a host with AVX-512BW)**: an AVX-512BW (`_mm512_cmpeq_epi8_mask`, which yields the 64-bit mask directly) `mask64` with `is_x86_feature_detected!` dispatch, not tried: no available host has AVX-512BW. Expect nothing (AVX2 gained nothing): the flatten step, not the mask, is the cost; and the dispatch itself cost up to 28% with AVX2. Acceptance: A/B against the SSE2 path with the load example of `benchmarks.md` (Rust, synthetic and CJK corpora, same host, min of 7, alternating runs); keep a path only if it beats the noise, and record the rejected ones too. For AVX-512 also check for frequency throttling on older Intel parts (time something else on the same host afterwards). The lane test and the differential tests cover any new `mask64`; they must run natively on that host.

**Other architectures (not implemented, to try)**: aarch64 (NEON), x86_64 (SSE2) and the portable SWAR mask (every other architecture, and Miri) are implemented. Anything below replaces SWAR where it wins, so compare against SWAR (flat ~0.13 ns/B on the Apple M1), not against `memchr`. Status checked on 2026-11-25 against the `std::arch` sources of `nightly-2026-11-20` (stable rustc 1.100.0); re-check before starting, these change every release:

| Architecture | Mask step (idea) | `std::arch` status | Needs to test |
|---|---|---|---|
| wasm32 (simd128) | `i8x16_eq` + `i8x16_bitmask` (returns `u16`), four per block | stable since 1.54, compile-time only: `-C target-feature=+simd128` and `cfg(target_feature = "simd128")` | a wasm runtime (wasmtime or node) as test runner |
| x86 (32-bit) | reuse the SSE2 `mask64` under `target_arch = "x86"` and `target_feature = "sse2"` (default on i686, not on i586) | stable | a 32-bit x86 build and run |
| loongarch64 (LSX/LASX) | compare, then `lsx_vmskltz_b` (16 bits per 128-bit vector) or `lasx_xvmskltz_b` (256-bit) | `vmskltz_b` is marked stable since 1.101.0 (`stdarch_loongarch_simd`), so not in 1.100.0; LSX/LASX are not baseline, needs runtime detection | LoongArch host or QEMU |
| s390x (vector facility) | `vec_cmpeq` + `vec_bperm_u128` | unstable (`stdarch_s390x`): nightly only | s390x host or QEMU |
| riscv64 (RVV) | `vmseq` writes a mask register, then `vcpop`/`vfirst` | no vector intrinsics found in `std::arch` (only unstable scalar-extension ones, `riscv_ext_intrinsics`) | wait for intrinsics; QEMU can run RVV meanwhile |
| powerpc64 (AltiVec/VSX) | compare + bit gather (`vec_bperm`) | only 8 unstable items (`stdarch_powerpc`), no compare or gather: not usable yet | wait |
| any (`std::simd`) | `Simd<u8, 64>::simd_eq(..).to_bitmask()`: one code path for every architecture | `portable_simd`, nightly only | wait for stabilization; would replace the per-architecture functions |

Not checked: aarch64 SVE/SVE2 (NEON is baseline and enough for a 128-bit compare). Suggested order: wasm32 and 32-bit x86 first (stable intrinsics), the rest as `std::arch` stabilizes. Every new path follows the same acceptance as AVX2/AVX-512: A/B against the current path on that architecture with the load example of `benchmarks.md`, keep only winners, record rejected ones; the lane test and the differential tests cover any new `mask64`.

## D17. Batch edits: one rebuild when dense, path copies when sparse

**Decision**: `Text::apply_edits` and `Document::apply_edits` take many edits at once (sorted, non-overlapping, in offsets of the source text). The replacements are stored once; the tree is then either rebuilt in one linear pass (`Text::rebuilt`, shared with `replace_matching`) or edited with one path copy per edit, from the end. Rebuild when `edits >= 3` and `pieces <= edits * 10`. The piece count is bounded from the tree height in O(1) (`min_pieces`, `max_pieces`); when the budget `edits * 10` falls between the bounds, `has_at_most` walks the tree and stops once the count exceeds the budget. A sparse batch with `edits >= 6` (`CLUSTER_MIN_EDITS`: break-even is between 4 and 6) first tries a **clustered rebuild** (`Text::rebuilt_cluster`): when the span from the first to the last edit has at most `edits * 10` pieces, only that span is rebuilt and joined (`split` + `join2`) with the untouched text on both sides. It is rejected in O(1) when the span is over half of the text or by an estimated density (`span * min_pieces <= budget * len`), and then by `has_at_most_in`, a counting walk over the span that clones nothing; a rebuild attempted without both costs scattered batches +40-60%.

**Why**: `replace_all` already built its result in one go, but there was no way to apply a list of edits (an editor's multi-edit commands, `:g`, formatting, refactors) without one path copy per edit, ~500 ns each on a fragmented tree. A rebuild costs ~30 ns per piece plus ~100 ns per edit, so it wins when the edits are dense relative to the pieces. Measured on a 10 MB text (benchmarks.md), ns per edit, one by one -> `apply_edits`: a single piece, 1000 edits: 417 -> 92 (4.5x), 4925 edits 448 -> 87 (5.2x), from 4 edits on 1.5x; fragmented (4437 pieces), 1000 edits: 512 -> 302 (1.7x), 4925 edits: 548 -> 145 (3.8x); clustered in 200 lines of the fragmented text: 6 edits 424 -> 340 (1.25x), 15 edits 442 -> 208 (2.1x), 51 edits 428 -> 114 (3.8x); below 6 edits and scattered batches unchanged. Against the other libraries (1000 sorted edits, one pass): piece-tree 88-99 ns, ropey 2 beta 428-537, ropey 1.x 655-708, SumTree (one cursor pass) 5710-6414.

**Rejected** (measured): divide and conquer on the middle edit (split the tree around it, recurse on both sides, join): 1.1-2.8x faster on a single piece but 0.45-0.77x (up to 2x slower) on a fragmented tree below ~1000 edits, because every edit pays two splits and two joins. Choosing the strategy by edit count alone: no constant serves both a single piece (rebuild wins from 3-4 edits) and 4437 pieces (from ~400). A piece count cached in every `Node` (`u32`, fits the padding, `Node` stays 64 bytes): exact and O(1), but +3.8% on paste (6 of 6 alternating pairs), too much on the hot path for a cold feature. A walk that counts every piece: 31 µs on 4437 pieces, +53% on a 128-edit batch, which is why the walk stops at the budget. A height-only estimate: off by up to 3.7x (it missed the 1.9x gain at 1000 edits on 4437 pieces).

**Cost of this choice**: in the band where the bounds do not decide and the answer is "sparse", the walk costs up to ~10% (measured 0.91x at 128 edits on 4437 pieces). A dense batch rebuilds the whole tree, so the new version shares no nodes with the old one (as `replace_all` already does). One or two edits are 13-20% slower than `insert`/`delete` (fixed overhead of normalizing and storing): use those. **Upgrade path**: rebuild only the span between the first and last edit and join it to the shared ends, for batches clustered in a large fragmented text (today they take the sparse path, which is as fast as one by one).

## D18. The allocator: mimalloc was worth ~25% on edits (macOS, before D19/D20), used by pt-edit

**Decision**: `pt-edit` sets `mimalloc::MiMalloc` as its global allocator. The library stays allocator-agnostic (it cannot choose the global allocator, and an application embedding it picks its own); `cargo bench -p piece-tree` and the examples keep the system allocator, so their numbers are comparable with the older ones. This corrects the earlier rejection in D8 ("mimalloc: no").

**Why it matters**: profiles with macOS `sample` of the current tree put 294 of 519 samples (random edits) and 618 of 1157 (paste) in `malloc`/`free`, ~55% of the time: an edit copies a path of the AVL tree (~12 nodes allocated, ~12 freed with the previous version). Measured with the harness feature `mimalloc` (same code, only the global allocator differs; piece-tree `edits` program, 10 alternating rounds, ns/op, min):

| | system | mimalloc | |
|---|---|---|---|
| paste 1k on 10 MB | 582 | 440 | -24% |
| random edits 1k+1k | 617 | 436 | -29% |
| typing 10k | 60.8 | 48.7 | -20% |
| backspace 10k | 52.1 | 38.5 | -26% |
| `line()` all | 4.1 | 4.1 | 0% |

Full harness (all four libraries, three corpora, `benchmarks.md`): over the non-load rows the mimalloc/system ratio has median 0.86 for piece-tree, 0.95 for ropey 1.x, 0.97 for ropey 2 beta and 0.91 for SumTree, so piece-tree gains the most because it allocates the most per edit. Under mimalloc piece-tree wins or ties 37 of 39 rows (33 with the system allocator); typing ties ropey 2 beta on Rust sources and trails it by 1.11-1.12x elsewhere, random edits are 1.5x faster than ropey 2 beta.

**Why the earlier "no" differs**: D8 measured 0.96-1.08x when allocation was ~5% of the `typing` profile. The causes of the difference are not established (the tree and the workloads changed). **Linux (W4)**: on glibc 2.44 (Intel i5-8365U), after the in-place edits D19/D20, mimalloc is worth -6..-13% on paste, random edits, typing and batches (mostly within the noise) and costs +10-22% on typing with a clone per key; piece-tree is best in 36/39 rows with glibc and 39/39 with mimalloc (benchmarks.md, comparison-tables-linux.md). pt-edit keeps mimalloc (no loss on its paths, a small gain on macOS); there is no case for a library node pool from the allocator side.

**Cost**: mimalloc is a C dependency built with `cc` (needs a C compiler to build pt-edit); pt-edit itself was not benchmarked end to end, the gain is the library-level measurement above. **Open**: (a) a node pool or free list inside the library, which would help under any allocator but needs its own `Arc` or an arena (`triomphe::Arc` takes no custom allocator): a large change; (b) done: Linux measured (W4), see above.

## D19. Typing in place when the version is unshared (`Text::insert_mut`)

**Decision**: `Text::insert_mut(&mut self, off, s)` is `insert` that updates `self`. When `s` extends the piece ending at `off` and every node on the path is uniquely owned (`Arc::get_mut` succeeds on each), the piece and the totals of the path are updated in place; any shared node, any other case, or a full chunk falls back to `*self = self.insert(off, s)`. `Document::insert` uses it while a group is open on the current version. `insert` and the persistent API are unchanged.

**Why**: a profile of the `typing` loop (macOS `sample`, system allocator) put 59% of the samples in `malloc`/`free` (2533 of 4303) and only about 4% each in `Text::insert` itself (where `normalize` and `count_lf` are inlined) and `try_append`: every key allocated and freed 2-3 nodes of the path. The planned micro-optimizations (a scalar short-string path instead of two `memchr` calls, a cheaper `try_append`) could not reach 8%. A prototype of the AVL path (same `Piece`, same `Arc`) put the path copy at 21 ns and the in-place extension at 2 ns for the harness tree (3 pieces). Measured in the library (harness example, 10k keys into a 1 MB text, min of 80 reps): `insert` 61 ns, `insert_mut` 13.2 ns with the system allocator; 51.5 and 13.1 with mimalloc (4.6x and 3.9x). `Document` typing inside a group: 105 -> 28 ns per key (setup included in both). Against ropey 2 beta (45-58 ns in the same rows) the cross-library harness shows piece-tree 3.5-4.6x ahead on typing in all 6 corpus/allocator cells, from 1.16-1.37x behind (system allocator). The earlier W8b note ("with undo the old versions stay alive, so the copy is needed anyway") held for a version per key, not inside a group: `pt-edit` wraps every command, and so every insert-mode session, in a group.

**Persistence**: a node is touched only if `Arc::get_mut` proves a single owner, which is also what makes a clone, an undo state or a snapshot (each holds the root, hence every node under it) keep its content. The chunk is appended to only after the whole path is known to be unique, so a refused attempt changes nothing. Tests: every outcome of `extend_in_place` (shared, declined, done, in all three positions of the typed piece), a differential test of `insert_mut` against a `String` model with kept clones that must not change, and `Document` typing in a group with a clone held across keys.

**Rejected / not done**: the short-string fast path and the cheaper `try_append` (about 8% ceiling from the profile, not built); wide leaves (typing +90% on small trees in the W1 prototype, see the estimate in benchmarks.md). **Limits**: it only helps while the previous version is not kept; a version per key (`Document` without a group, or the "clone per key" scenario) still copies the path (50-60 ns).

## D20. Insert and delete in place for every edit (`insert_mut`, `delete_mut`)

**Decision**: `Text::insert_mut` handles every insert in place, not only the typing extension of D19, and `Text::delete_mut` is the in-place `delete`. They use `Arc::make_mut` along the path (`tree::insert_mut`, `tree::delete_mut`): a node with one owner is edited where it is, a shared node is cloned alone, so a value nobody keeps allocates only its new pieces and a version that shares nodes is never changed. Rotations are done in place (`rotate_left_mut`, `rotate_right_mut`, `rebalance_mut`) and `update` recomputes the cached `height`, `len` and `lf`. A range inside one piece is edited in place (prefix or suffix trim: no allocation; middle cut: one new node); a range that spans pieces or equals one takes the persistent `split` + `join2`. `Document::insert`, `delete` and `splice` use them inside an open group. `insert`, `delete` and the rest of the persistent API are unchanged.

**Why**: the profile behind D19 (59% of the typing samples in `malloc`/`free`) holds for paste and random edits too (294 of 519 and 618 of 1157 samples before mimalloc): a persistent edit copies ~12 nodes (an allocation and a free each, plus `Arc` traffic) where an unshared one needs the two nodes it creates. A prototype of this (`piece-tree-bench/w1proto`, `w1proto inplace`, verified against the persistent AVL) projected paste -44% / -39% (system / mimalloc), random edits -49% / -36%, backspace -25%. Measured in the library (harness `edits` and `edits_mut` examples, A/B against a standalone copy of HEAD, 15 alternating rounds, min, ns per op; mimalloc 12 rounds): paste 611 -> 330 (-46%) / 455 -> 316 (-31%), random edits 611 -> 316 (-48%) / 436 -> 304 (-30%), backspace 51.6 -> 19.5 (-62%) / 38.6 -> 19.7 (-49%), typing 60.4 -> 13.4 / 49.5 -> 13.4. The projection was close with the system allocator (a bit pessimistic: 385 / 330 projected for paste / edits) and ~13% optimistic with mimalloc (275 projected, 316 and 304 measured). The persistent API did not move (paste 611 -> 621, edits 611 -> 611, typing 60.4 -> 60.5, backspace 51.6 -> 52.2, `line()` 3.9 -> 3.9). Cross-library, against ropey 2 beta (3 runs per corpus and allocator, `comparison-tables.md`): paste 1.73-2.05x ahead in all six corpus / allocator cells (it was 0.97-1.04x behind with the system allocator), random edits 1.78-1.98x (0.86-0.91x behind), backspace 3.68-4.29x, typing 3.3-3.8x; the "clone per key" row (a version per key, `Text::insert`) is unchanged, 0.93-1.01x.

**Persistence and soundness**: no `unsafe` was added. `Arc::make_mut` clones a shared node before touching it, so every other version keeps its nodes. The cached totals of a node are rewritten only after the change succeeded, so a panic from a char-boundary assertion (`Piece::split`, `Piece::sub`) leaves a valid tree with the same content (the nodes on the path may be fresh clones). Tests: a differential test of `tree::insert_mut` and `tree::delete_mut` against `insert_at` and `delete_range` on empty, small-piece and big-piece trees (balance, totals and content checked at every step, versions kept before the edits checked at the end), every outcome of `delete_mut` on a piece placed first, middle and last, a differential test of `Text::insert_mut` / `delete_mut` against a `String` model with kept clones, `Document` editing in a group with a held clone, and Miri on all of them.

**Limits**: the gain exists while the previous version is not kept (the harness pattern `t.insert_mut(..)`, an editor group); with a version per edit the path is copied as before (and the in-place call costs an extra refused `get_mut` and a second normalization on the typing fallback, ~5 ns). Typing right after a kept version still goes through the copying `insert` once (it must extend the piece). Whole-piece and cross-piece deletes are persistent. **Not done**: `apply_edits` and `replace_all` (already one linear rebuild), `Document` edits outside a group.

