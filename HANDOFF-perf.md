# Handoff: performance work after the comparison with ropey and SumTree

Delete this file when the work is done. Batch API, SIMD load and the inline fix are committed (`6aa28e6`, `f9b954f`); the pt-edit mimalloc change and the harness repo are not. `HANDOFF.md` is a different workstream (pt-edit, round 5): do not merge them.

## Goal

Make `piece-tree` as fast as possible, SIMD included if it pays. Numbers decide: AGENTS.md rules apply (A/B against a standalone copy of the previous version built the same way, keep only what beats the noise, record kept **and rejected** attempts in `docs/guides/benchmarks.md`, 100% coverage, Miri when `unsafe` changes, docs in the same change).

## The comparison harness

Separate repository, not part of this workspace: `/Users/domenico/p/piece-tree-bench` (git-initialized, nothing committed).

- Contains the four libraries in one binary, same profile (fat LTO, `codegen-units = 1`): `piece-tree` (path dependency on this working tree), `ropey` 1.x, `ropey` 2.0.0-beta.1, and Zed's `Rope` on top of `sum_tree` (column name in code: "SumTree (Zed rope)").
- `vendor/` holds Zed's `sum_tree` and `rope` at commit `77228009dd267dcf8ab9a20eef5802b2a8ea4afa`, with tests and tracing stripped (`vendor/PATCHES.md`). **`rope` is GPL-3.0-or-later: do not publish that repo** without resolving the license.
- Run: `cargo run --release` (rebuilds against the current `piece-tree` sources). Output: a table with min (median) ns/op per library and a "winner" column, then a cross-library sanity check (same text after every edit scenario).
- Environment variables:
  - `CORPUS=synthetic|rust|cjk` picks the text (default `synthetic`). `rust` reads `~/.cargo/registry/src/**/*.rs` once per process, so every library sees identical bytes.
  - `ONLY=<library name>` runs a single library (others print 0).
- Scenarios mirror `crates/piece-tree/benches/bench.rs`, plus a "clone per key" typing (undo-like) and a "batch 1k edits, one pass" scenario. Zed applies the batch in one cursor pass (its `Buffer::edit` pattern); the others apply the edits one by one from the end.
- A full run takes about 5 minutes per corpus. The machine was loaded (load average 8–18) but results repeated within ~3%. Two runs do not prove differences below ~10%: repeat the same binary before concluding.
- Gotcha: inside generic code `Text::insert` resolves to the inherent `&self -> Text` method, not the trait one. Call `Buffer::insert(&mut t, ..)` in scratch code.

## Results (last full run, working tree with the char cache removed)

ns/op, minimum of 7. Bold = best (ties within 5% both bold). Full tables: `winners.md` and `v4-*.txt` in the Claude scratchpad of the session that produced them (may be gone); rerun the harness to regenerate.

| scenario (synthetic) | piece-tree | ropey 1.x | ropey 2 beta | SumTree |
|---|---:|---:|---:|---:|
| load 50MB (per byte) | **0.2** | 0.4 | **0.2** | 0.4 |
| `line()` random | **34** | 518 | 715 | 668 |
| typing 10k in 1MB | 66 | 142 | **51** | 11 602 |
| typing, clone per key | **59** | 689 | 490 | 15 407 |
| `line()` all, after typing | **5.7** | 191 | 236 | 174 |
| backspace | **56** | 185 | 79 | 12 968 |
| `offset_to_line` | **13** | 113 | 70 | 44 |
| paste | 750 | 1 120 | **698** | 18 203 |
| random edits 1k+1k | 720 | 956 | **618** | 18 101 |
| batch 1k edits, one pass | **442** | 674 | 502 | 6 225 |

Rust and CJK corpora give the same picture. Over all 39 rows (3 corpora x 13), piece-tree wins or ties 32, ropey 2 beta 12, ropey 1.x 0, SumTree 0.

- **Where piece-tree loses**: typing (ropey 2 beta 1.25–1.4x faster); paste and random edits on the synthetic text (ropey 2 beta 7–17% faster); load on the Rust corpus (0.4 ns/B against 0.1–0.2 for ropey 2 beta).
- **Where it wins most**: reads (`line()` 10–34x, `offset_to_line` 3.4–3.7x) and snapshots (clone per key, 8x).
- **SumTree** edits cost 6–19 µs. Profiled with `sample`: the main thread is real work (`Cursor::slice`, `append`, `push_tree_recursive`, memmove), not rayon or invariant checks. It is slow because of the design, not because of a vendoring mistake.

### History of this investigation (so nobody repeats it)

- An early backspace regression (275 ns) was the char cache `Piece::sub` scan, already fixed in the working tree (see `benchmarks.md`, "char metrics v1 -> v2"). The char cache was later removed altogether (decision D15): `chunk.rs` and `tree.rs` no longer have `chars`, so **`Piece`/`Node` are back to their old size and the "Node grew to 80 bytes" hypothesis no longer applies**. Paste dropped ~941 -> ~663–750 ns and the Rust load ~0.7 -> ~0.4 ns/B after that.
- A first harness version re-read the Rust corpus for every library; the registry changed mid-run and piece-tree got different text (false sanity failure). Fixed by reading once.

## Findings from profiling (samply is not installed; used macOS `sample`)

- `edits` scenario: 294 of 519 samples in malloc/free (`_xzm_*`). `paste` earlier: 618 of 1157. About 55% of the time is allocation.
- Cause: every edit copies one path of the binary AVL. With ~3000 pieces the depth is ~12, so ~12 nodes are allocated and ~12 freed per edit (the benchmark drops the previous version immediately). Ropey and SumTree use high fanout (3–4 nodes touched) or mutate in place.
- `typing` extends the last piece (`extend_at`, no rebalance), which is why it is already close to ropey. The remaining 1.3x is structural: `insert(&self)` always path-copies, ropey mutates in place when the root is unshared.

## Ideas, in order of expected gain / cost

None of these is measured yet except where stated.

1. **Batch edit API — DONE (committed), see D17 and `benchmarks.md`.** `Text::apply_edits(&[(Range, &str)])` and `Document::apply_edits` (one version, one undo step, `last_edits` one `Edit` per effective edit). Strategy by density: rebuild in one pass (`Text::rebuilt`, shared with `replace_matching`) when `edits >= 3 && pieces <= edits * 10`, else one path copy per edit from the end. The piece count comes from height bounds plus a walk that stops at the budget (no per-node field: it cost +3.8% on paste). 1000 scattered edits on a 10 MB single piece: 417 -> 92 ns per edit (4.5x); fragmented 4437 pieces: 512 -> 302 (1.7x); across libraries piece-tree 88-99 ns, ropey 2 beta 428-537, ropey 1.x 655-708, SumTree 5710-6414. Tests: differential against a model (both strategies, both fragmented and single-piece texts, `\r\n` normalization, big replacements, persistence), panics, `Document` (version, `last_edits`, undo, groups), choice and bounds tests. 154 tests, clippy clean, coverage 100% for `text.rs`/`tree.rs`/`search.rs`/`document.rs` (the usual 2-region residue), Miri on the batch and tree tests.
   - Found and fixed: the batch code made paste and random edits +4-8% slower (not the SIMD load; inlining of batch helpers into shared paths); `#[inline(never)]` on `tree::delete_range`, `Text::rebuilt`, `Text::apply_edits_spans` restores them to base level within ~3% (12 alternating rounds, `benchmarks.md`).
   - Rejected and measured: divide and conquer on the middle edit (up to 2x slower on fragmented trees), a piece count per `Node`, a height-only estimate, counting every piece before deciding.
   - Upgrade path: rebuild only the span between the first and last edit for batches clustered in a large fragmented text.
2. **mimalloc probe — DONE, see D18 and `benchmarks.md` ("Allocator").** Harness feature `mimalloc` (`cargo run --release --features mimalloc`). piece-tree on macOS: paste -24%, random edits -29%, typing -20%, backspace -26%, reads 0%; other libraries gain less (median ratio 0.86 piece-tree, 0.95 ropey 1.x, 0.97 ropey 2 beta, 0.91 SumTree). Under mimalloc piece-tree wins or ties 37 of 39 rows. The earlier "no" in the docs was measured when allocation was ~5% of the `typing` profile; allocation is ~55% of paste/random edits now. **pt-edit now uses mimalloc** (D18, `crates/pt-edit/src/main.rs`); the library and `cargo bench` stay on the system allocator. **Open**: a node pool/free list in the library (needs its own `Arc` or an arena, large); re-measure on Linux (the macOS allocator may behave differently from glibc's; not compared).
3. **Wide leaves — TO DO, undecided**: each node holds several pieces in a contiguous array (B-tree-like), so an edit touches 3-4 nodes instead of ~12. Biggest lever for scattered edits and typing, but a rewrite of `tree.rs` and its invariants (`tree::check`, `join`/`split`, `Node` totals, `delete_in`/`extend_at`/`insert_at`). The case is weaker now: with mimalloc the allocation cost drops and typing ties ropey 2 beta on Rust sources (D18). Decide after the repeated harness runs (Next steps 1) and the Linux allocator check.
4. **Load: bulk newline extraction — DONE (committed), see D16 and `benchmarks.md`.** `crates/piece-tree/src/newlines.rs` replaces `memchr_iter(..).collect()` in `Chunk::from_string`. Studying `memchr` showed why the old scan was slow (`find_raw` returns the first hit and discards the other compares; the iterator restarts at `hit + 1`) and gave the one idea worth keeping: OR the vector compares and test once, so blocks without a newline are almost free. Design: 64-byte mask (NEON on aarch64, SSE2 on x86_64, portable SWAR elsewhere and under Miri) + empty-block skip + flatten with 8 unconditional writes. No density heuristic, no `memchr` fallback. A/B against a standalone copy of the previous tree, `Text::from(String)` of 50 MB, min of 5 alternating runs: Rust sources 0.385 -> 0.106 ns/B (3.6x), synthetic 1.8x, CJK 1.75x, exponential lines of mean 100/200/400/1000/5000: 1.8x/1.5x/1.3x/1.19x/1.03x, no newlines 0.97x (noise). Edits unchanged. Rejected: preallocating the `Vec`, a 16-byte mask with a `while` loop, and a first version that picked `memchr_iter` or the mask from the sampled mean line length (calibrated on equal-length lines its thresholds were 3x too low: calibrate on realistic line-length distributions).
   - Checks done: 140 tests pass (debug and release, aarch64); clippy clean; coverage 100% lines/functions/branches for `newlines.rs` and `chunk.rs` (total regions 99.89%, the 2-region residue already known); the x86_64 SSE2 `mask64` ran under QEMU (Colima), 140 of 140 tests passing (command in `docs/guides/testing.md`); Miri on the `newlines` and `chunk` tests, where Miri executes the SWAR mask and every unsafe write of `newlines.rs`.
   - **Not verified, be explicit**: AVX2 and AVX-512 are not implemented. The development machine is an Apple M1 and the emulator reports SSE2 only, so neither can run or be timed here, and the x86_64 speed of the SSE2 path itself is unknown. Plan: one `mask64` per feature (AVX2: two `_mm256_cmpeq_epi8` + `_mm256_movemask_epi8` combined into a `u64`; AVX-512BW: `_mm512_cmpeq_epi8_mask` returns the mask directly) behind `is_x86_feature_detected!`, on a real x86_64 host, keeping only winners. The existing lane test and differential tests cover a new `mask64` automatically. My expectation, not measured: small gain, because the flatten step dominates.
   - `Chunk::try_append` (add chunk) still uses `memchr_iter`: the flatten writes junk slots past the real ones, which would land in another writer's reservation. Pastes up to 64 KiB with many newlines pay the old per-hit cost; only worth changing (temporary buffer + copy) if a profile shows it.
5. **Other SIMD**: nothing else qualifies. Edits are pointer chasing and allocation (see the profile above), so SIMD does not apply. With the char cache gone there is no char counting on the load path; `char_count` and friends scan on demand: only look at a SIMD char counter (`str_indices`) if those APIs show up in an editor profile.
6. **Typing 1.3x gap**: would need in-place mutation when the root is unshared (`&mut self` API with `triomphe::Arc::get_mut` down the path). Conflicts with the "no interior mutability" rule only if done on `Piece`/`Node` in place; `Arc::get_mut`/`make_mut` style is allowed. In an editor with undo the old versions stay alive, so the copy is needed anyway. Low value, high risk: skip unless the others are done.

## Next steps

1. Repeat the full harness 3 times per corpus on the current tree to get a noise estimate per row (not done yet).
2. Idea 4 is done. **Still to do, needs a real x86_64 host: try AVX2 and AVX-512BW** (not implemented here because the dev machine is an M1 and the emulator has SSE2 only). On that host: run the test suite natively (SSE2 path), implement one `mask64` per feature with `is_x86_feature_detected!` dispatch, A/B each against SSE2 with the load example (Rust, synthetic, CJK; min of 7, alternating), keep only winners, record kept and rejected in `benchmarks.md` and D16. Check AVX-512 frequency throttling on older Intel parts.
3. **Still to do: other architectures.** Table with mechanism, `std::arch` status (checked 2026-11-25) and test needs in D16 (`docs/design/decisions.md`). The portable SWAR mask is already there (every other architecture and Miri use it); the table lists what would replace it where it wins: wasm32 simd128 and 32-bit x86 first (stable intrinsics), the rest once `std::arch` stabilizes. Compare against SWAR (~0.13 ns/B flat on the M1), same acceptance as step 2.
4. Repeat the cross-library harness 3 times per corpus (noise estimate per row), now also with `--features mimalloc`; re-measure the allocator effect on a Linux host (not done: macOS only so far). Then decide about wide leaves (idea 3): with mimalloc typing already ties ropey 2 beta on Rust sources, so its case is weaker.

5. **Batch on clustered edits in a large fragmented text — TO DO.** Today such batches take the sparse path (as fast as one by one, no gain; see D17 and `benchmarks.md`, "fragmented, clustered"). Idea: rebuild only the span between the first and last edit (`pieces_in` for that span + `from_pieces`) and join it to the untouched left and right parts with `split`/`join`. Measure on 4437 pieces with 4/15/51 edits inside 200 lines (1.0x today) before deciding; keep the strategy rule and its tests (`rebuild_wins`) in sync.

## Not done / caveats

- `crates/piece-tree` changed by this work, committed: `src/newlines.rs` (new) and `src/chunk.rs` (load), `src/tree.rs`, `src/text.rs`, `src/search.rs`, `src/document.rs` (batch API), their tests, `benches/bench.rs` (batch scenarios), and the docs listed in D16/D17. Uncommitted: `crates/pt-edit` (mimalloc) and the doc updates for it.
- Texts tested: one synthetic, one Rust-source corpus (~64 MB read from the cargo registry, wrapped when shorter than requested), one CJK-heavy synthetic. No real-world prose or very long lines.
- Line access is measured as "sum of chunk lengths of the line" for every library (no text copy); SumTree needs two point-to-offset descents for it, the others one.
- `byte_to_char` conversion is charged to ropey 1.x on every edit, as an editor working in bytes would pay it.
- Harness is not committed and has no `docs`; results above are the only record.
