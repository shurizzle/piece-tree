# Handoff: performance work (comparison with ropey and SumTree)

Everything listed under "Done" is committed (`6aa28e6` SIMD load, `b31312b` batch API, inline fix and mimalloc in pt-edit). The comparison harness repo (`~/p/piece-tree-bench`) is **not** committed. Delete this file when the open work is finished. `HANDOFF.md` is a different workstream (pt-edit, round 5): do not merge them.

Goal: make `piece-tree` as fast as possible, SIMD included if it pays. Numbers decide. AGENTS.md rules apply: A/B against a standalone copy of the previous version built the same way, keep only what beats the noise, record kept **and rejected** attempts in `docs/guides/benchmarks.md`, 100% coverage, Miri when `unsafe` changes, docs in the same change.

## OPEN WORK (nothing here is started unless it says so)

Each item: what, why, how to measure, where to look. IDs are stable, refer to them by ID.

**Order and dependencies.** W2 and W3 are done (uncommitted, see Done). W5/W6 are independent (W5 needs a real x86_64 host). W4 needs a Linux host (none is known to exist: ask the user). W1 is decided after W3 and W4. W7 only if W1 is not done and W4 shows a slow system allocator. No W1 acceptance threshold is set: the user decides how much gain justifies a rewrite of `tree.rs`, so bring a measured estimate and ask.

**Profiling**: `samply` (named in AGENTS.md) is not installed here; use macOS `sample <process> 5 -file out.txt` on a looping run of an `examples/` program (the harness `examples/edits.rs` loops per scenario) and count samples in `malloc`/`free`.

**Noise**: the same binary repeats within ~3% run to run; two binaries built from the same code can differ 5-10% (code placement). Treat a difference below ~10% as unproven unless it comes from alternating runs of two binaries, many rounds, comparing min and median.

### W1. Wide leaves in the tree (undecided, biggest possible gain, biggest change)
- **What**: each `Node` holds several pieces in a contiguous array (B-tree-like) instead of one piece per node, so an edit copies 3-4 nodes instead of ~12 (binary AVL, ~12 deep at ~3000 pieces).
- **Why**: the remaining losses against ropey 2 beta are typing (1.16-1.31x), paste on synthetic text (1.06x) and random edits on Rust sources (1.12x). Profiles put ~55% of paste/random edits in `malloc`/`free` (every edit allocates and frees a path), which fewer, wider nodes reduce under any allocator.
- **Cost**: rewrite of `crates/piece-tree/src/tree.rs` and its invariants: `tree::check`, `join`/`split`/`join2`, `Node` totals (`len`, `lf`, `height`), `delete_in`, `extend_at`, `insert_at`, `from_pieces`, `pieces_in`, `min_pieces`/`max_pieces`/`has_at_most` (D17 batch strategy), and the docs (ARCHITECTURE.md invariants, `data-structures.md`, `algorithms.md`).
- **Why undecided**: with mimalloc the allocation cost drops and typing ties ropey 2 beta on Rust sources (D18), so the case is weaker. Decide after W3 (noise) and W4 (Linux), with a measured estimate of the gain, e.g. a throwaway prototype of the path-copy cost with 4-wide nodes.
- **Estimate done** (prototype `piece-tree-bench/w1proto`, section "Estimate for wide leaves" of `benchmarks.md`): path copy of an insert 26-35% cheaper with 8-piece leaves and fanout 8 (paste about -27% system / -21% mimalloc end to end, from a tie to 1.4x ahead of ropey 2 beta with the system allocator), reads 25-44% faster, **typing on a small tree +90% (21 -> 40 ns), which widens the typing gap against ropey 2 to about 1.5-1.7x**; delete, split/join of B-trees and the D17 bounds are not prototyped. The decision is the user's.
- **Measure with**: the harness rows typing, paste, random edits, backspace, `offset_to_line`, `line()` (reads must not regress: 10-34x lead today), plus `cargo bench -p piece-tree`.

### W4. Linux (nothing was measured outside macOS)
- Re-measure the allocator effect (mimalloc vs system, D18) and the load path (SSE2) on a Linux x86_64 host. The macOS allocator may behave differently from glibc's: not compared.

### W5. x86_64 real host: AVX2 and AVX-512BW newline scan
- Not implemented: the development machine is an Apple M1 and the QEMU emulation (Colima) reports SSE2 only. On a real host: run the test suite natively (SSE2 path), implement one `mask64` per feature in `crates/piece-tree/src/newlines.rs` behind `is_x86_feature_detected!` (AVX2: two `_mm256_cmpeq_epi8` + `_mm256_movemask_epi8` combined into a `u64`; AVX-512BW: `_mm512_cmpeq_epi8_mask` returns the mask directly), A/B each against SSE2 with the load example (Rust, synthetic, CJK; min of 7, alternating), keep only winners, record kept and rejected in `benchmarks.md` and D16. Check AVX-512 frequency throttling on older Intel parts. Expectation, not measured: small gain, the flatten step dominates.

### W6. Other architectures for the newline scan
- Table with mechanism, `std::arch` status (checked 2026-11-25) and test needs in D16 (`docs/design/decisions.md`). The portable SWAR mask already serves every other architecture and Miri. Candidates in order: wasm32 simd128 and 32-bit x86 (stable intrinsics), then loongarch64, s390x, riscv64, powerpc64, `std::simd` once stable. Compare against SWAR (~0.13 ns/B on the M1), same acceptance as W5.

### W7. Node pool / free list inside the library (allocator-independent)
- mimalloc gives -20..-29% on edits (D18) but only where the application sets it. A pool would help under any allocator, but `triomphe::Arc` takes no custom allocator, so it needs an own `Arc` or an arena: large change. Only worth it if W1 is not done and W4 shows the system allocator is slow on Linux too.

### W8. Small items (W8a and W8c are done, see Done)
- **W8b (done as D19, see Done; the text below is the original assessment)** Typing 1.2-1.3x gap against ropey 2 beta: would need in-place mutation when the root is unshared (`Arc::get_mut` down the path). In an editor with undo the old versions stay alive so the copy is needed anyway. Low value, high risk: skip unless W1 and W7 are done.
- **W8d** Housekeeping (not performance work): the harness repo is not committed and vendors Zed's GPL-3.0-or-later `rope`: never publish it as is. pt-edit with mimalloc was never benchmarked end to end (the gain is the library-level measurement).

## Done (details in `docs/`)

- **Insert and delete in place (D20, uncommitted)**: `Text::insert_mut` for every insert, `Text::delete_mut`, `Document` insert/delete/splice inside a group, via `Arc::make_mut` along the path (`tree::insert_mut`, `tree::delete_mut`, in-place rotations). A/B against HEAD: paste 611 -> 330 ns (system) / 455 -> 316 (mimalloc), random edits 611 -> 316 / 436 -> 304, backspace 51.6 -> 19.5 / 38.6 -> 19.7; persistent API unchanged. Cross-library: paste 1.73-2.05x, random edits 1.78-1.98x, backspace 3.68-4.29x, typing 3.3-3.8x ahead of ropey 2 beta in all six cells. No new `unsafe`; differential tests against the persistent code with kept versions, coverage 100%, Miri. Estimate (projected -44% / -39% paste) in `benchmarks.md`. Not done: whole-piece and cross-piece deletes stay persistent; `Document` outside a group; `apply_edits`/`replace_all` (already a linear rebuild).

- **Typing in place (D19, uncommitted)**: `Text::insert_mut` + `Document::insert` in an open group: typing 61 -> 13.2 ns (system), 51.5 -> 13.1 (mimalloc); cross-library typing now 3.5-4.6x ahead of ropey 2 beta in all 6 cells (was 1.16-1.37x behind on the system allocator). Profile of the old path: 59% malloc/free. The micro-optimizations of the plan (short-string path, cheaper `try_append`) were not built (8% ceiling). Not helped: a version per key (no group, or clone per key). Miri on the new tests, coverage 100%. **W8b is therefore done in its useful form**; W1 (wide leaves) is now even less attractive (typing +90% in the prototype), W7 (node pool) would still help the versions kept per key.

- **W8a add-chunk newline index** (uncommitted): `Chunk::try_append` uses `newlines::positions_callback` (callback per hit, offsets written into the reserved slots, guard `k < lf`): pastes of 1-64 KiB with dense newlines 1.5-3.5x faster, small ones unchanged. Rejected: temporary buffer + threshold (heuristic, 5-8% slower at 256 B, faster only on 64 KiB dense), `positions` built on the callback (+66% on Rust sources). Hot paths +2-3% (noise): re-checked with 15 alternating rounds, within 1% of HEAD; `#[inline(never)]` on the scan rejected (`benchmarks.md`, "Rerun after ..."). Full cross-library rerun: ranking unchanged.
- **W8c char counting and `char_to_offset`** (uncommitted, redone): the first version counted each chunk twice and the claim "no SIMD counter needed" was wrong (`str_indices::chars::count` 0.017 against 0.040 ns/B). Now `str_indices` everywhere (`count_chars`, `to_byte_idx`; std under Miri): `char_count` 0.040 -> 0.017, `char_to_offset` last char 0.081 -> 0.017 / 0.022 / 0.034 (ASCII / mixed / CJK), no `CHAR_SKIP_BLOCK`. Rejected variants and numbers in `benchmarks.md`. Miri on the char tests passes (1533 s with the differential test), coverage 100%, clippy clean.

- **W2 clustered batches (D17)** (uncommitted): `Text::rebuilt_cluster` rebuilds only the span between the first and last edit when the batch is sparse and has at least 6 edits (`CLUSTER_MIN_EDITS`); fragmented clustered 6/15/51 edits 424/442/428 -> 340/208/114 ns per edit (1.25x/2.1x/3.8x). The first version cost +10% at 4 clustered edits and 128 scattered edits (failed attempt, break-even of two splits and two joins): fixed by the minimum and an O(1) span-over-half rejection (details and rejected variants in `benchmarks.md`). Hot paths unchanged (12 alternating rounds). Coverage 100%, clippy clean, Miri on the batch and `pieces_in` tests (before the last gate change, which is safe Rust only).
- **W3 noise (3 runs per corpus and allocator)**: section "Noise of the cross-library harness" in `benchmarks.md`. Typing gap against ropey 2 beta is real on the system allocator (1.16-1.30x) and nearly closed with mimalloc; paste and random edits on the system allocator are not established, with mimalloc piece-tree leads by 1.3x.

- **SIMD newline scan (D16, `newlines.rs`)**: `Text::from(String)` of 50 MB, ns/B before -> after: Rust sources 0.385 -> 0.106 (3.6x), synthetic 1.8x, CJK 1.75x, exponential line lengths (mean 100/200/400/1000/5000) 1.8x/1.5x/1.3x/1.19x/1.03x, no newlines 0.97x (noise). NEON on aarch64, SSE2 on x86_64, portable SWAR elsewhere and under Miri; empty-block skip (the one idea worth taking from `memchr`'s `find_raw`) + 8 unconditional writes. Rejected: preallocating the `Vec`, a 16-byte mask with a `while` loop, choosing `memchr_iter` or the mask from the sampled mean line length (calibrated on equal-length lines its thresholds were 3x too low: calibrate on realistic line-length distributions). SSE2 verified under QEMU (140/140 tests), Miri runs the SWAR path.
- **Batch edit API (D17)**: `Text::apply_edits(&[(Range, &str)])` and `Document::apply_edits` (one version, one undo step, one `Edit` per effective edit in `last_edits`). Rebuild in one pass when `edits >= 3 && pieces <= edits * 10`, else one path copy per edit from the end; the piece count comes from height bounds plus a walk that stops at the budget. 1000 scattered edits on a single piece: 417 -> 92 ns per edit (4.5x); on 4437 pieces 512 -> 302 (1.7x). Rejected: divide and conquer on the middle edit (up to 2x slower on fragmented trees), a piece count per `Node` (+3.8% on paste), a height-only estimate, counting every piece first.
- **Inline fix**: the batch code made paste and random edits +4-8% slower through inlining into shared paths; `#[inline(never)]` on `tree::delete_range`, `Text::rebuilt`, `Text::apply_edits_spans` restored them (12 alternating rounds, `benchmarks.md`).
- **mimalloc (D18)**: piece-tree on macOS: paste -24%, random edits -29%, typing -20%, backspace -26%, reads 0%; other libraries gain less. **pt-edit sets it as global allocator** (`crates/pt-edit/src/main.rs`); the library, `cargo bench` and the examples stay on the system allocator.
- 154 library tests (aarch64; 140 when the SIMD scan was integrated, the batch API added the rest), clippy clean, coverage 100% (the usual 2-region residue in `document.rs`), Miri on `newlines`, `chunk`, batch and tree tests.

## The comparison harness

Separate repository `~/p/piece-tree-bench` (git-initialized, nothing committed): the four libraries in one binary, same profile (fat LTO, `codegen-units = 1`): `piece-tree` (path dependency on this working tree), `ropey` 1.6.1, `ropey` 2.0.0-beta.1, Zed's `Rope` on `sum_tree` (column "SumTree (Zed rope)").

- `vendor/` holds Zed's `sum_tree` and `rope` at commit `77228009dd267dcf8ab9a20eef5802b2a8ea4afa`, tests and tracing stripped (`vendor/PATCHES.md`). `rope` is GPL-3.0-or-later.
- Run: `cargo run --release` (rebuilds against the current sources); `--features mimalloc` for mimalloc as global allocator of the whole binary. Output: a table (min and median ns/op per library, a "winner" column), then a cross-library sanity check (same text after every edit scenario).
- `CORPUS=synthetic|rust|cjk` (default synthetic; `rust` reads `~/.cargo/registry/src/**/*.rs` once per process). `ONLY=<library name>` runs one library.
- Scenarios mirror `crates/piece-tree/benches/bench.rs`, plus "clone per key" typing (undo-like) and "batch 1k edits, one pass" (piece-tree `apply_edits`, Zed in one cursor pass, ropey one by one from the end).
- Scratch programs in `examples/`: `edits.rs` (tight A/B of paste, random edits, typing, backspace, `line()` for piece-tree only), `batch.rs` (apply_edits vs one by one, by size and shape), `load.rs`, `nl.rs`, `swar.rs` (newline scan prototypes). To A/B against an older tree, copy the workspace to a standalone directory and point the `piece-tree` path dependency at it; alternate the binaries run by run.
- A full run takes ~5 minutes per corpus. The machine was loaded (load average 8-18) but the same binary repeats within ~3%; the same code built in different binaries differs by 5-10% (code placement), so alternate and repeat.
- Gotcha: inside generic code `Text::insert` resolves to the inherent `&self -> Text` method, not the trait one: call `Buffer::insert(&mut t, ..)` in scratch code.
- The full tables of the last runs are in `docs/guides/benchmarks.md` ("Comparison with other implementations", "Allocator").

## Latest results (system allocator, macOS M1 Pro, synthetic corpus; Rust and CJK give the same picture)

ns/op, minimum of 7; bold = best.

| scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree |
|---|---:|---:|---:|---:|
| load 50MB (per byte) | **0.1** | 0.3 | 0.2 | 0.3 |
| `line()` random | **31** | 487 | 697 | 657 |
| typing 10k in 1MB | 61 | 142 | **47** | 11 478 |
| typing, clone per key | **61** | 751 | 518 | 15 296 |
| backspace | **51** | 180 | 74 | 12 527 |
| `offset_to_line` | **12** | 110 | 65 | 42 |
| paste | 745 | 1 002 | **702** | 18 975 |
| random edits 1k+1k | **673** | 880 | 720 | 17 079 |
| batch 1k edits, one pass | **93** | 653 | 535 | 5 628 |

Over 39 rows (13 scenarios x 3 corpora) piece-tree wins or ties 34, ropey 2 beta 8, ropey 1.x 0, SumTree 0 (system allocator); with mimalloc in all libraries 37 / 3 / 0 / 0. SumTree edits cost 5.6-19 us each, also in one cursor pass: its profile (macOS `sample`) shows real work in `Cursor::slice`, `append` and memmove, not a vendoring mistake.

## Findings from profiling (samply is not installed; macOS `sample` was used)

- `edits` scenario: 294 of 519 samples in `malloc`/`free`; `paste`: 618 of 1157: about 55% of the time is allocation (before mimalloc).
- Cause: every edit copies one path of the binary AVL (~12 nodes allocated, ~12 freed with the previous version). Ropey and SumTree use high fanout (3-4 nodes touched) or mutate in place.
- `typing` extends the last piece (`extend_at`, no rebalance), which is why it is already close to ropey; the remaining gap is structural (`insert(&self)` always path-copies).

## History of this investigation (so nobody repeats it)

- An early backspace regression (275 ns) was the char cache `Piece::sub` scan; the char cache was later removed altogether (D15), so `Piece`/`Node` are back to their old size.
- A first harness version re-read the Rust corpus for every library; the registry changed mid-run and piece-tree got different text (false sanity failure). Fixed by reading once.
- Equal-length lines hide the branch mispredictions of per-hit iterators: calibrate scan heuristics on exponentially distributed line lengths.
- An A/B script with an infinite loop in the corpus generator looked like a slow benchmark: print progress per corpus.

## Caveats

- Texts tested: one synthetic, one Rust-source corpus (~64 MB from the cargo registry, wrapped when shorter than requested), one CJK-heavy synthetic. No real-world prose, no very long lines in the cross-library harness.
- Line access is measured as "sum of chunk lengths of the line" for every library (no text copy); SumTree needs two point-to-offset descents for it, the others one.
- `byte_to_char` is charged to ropey 1.x on every edit, as an editor working in bytes would pay it.
- Everything was measured on one Apple M1 Pro under macOS.
