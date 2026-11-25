# Handoff: performance work after the comparison with ropey and SumTree

Not committed. Delete this file when the work is done or committed. `HANDOFF.md` is a different workstream (pt-edit, round 5): do not merge them.

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

1. **Batch edit API** (`apply_edits`, and a one-pass `replace_all`): one `split` + `join` per edit group instead of one path copy per edit. Low risk, and `:s` needs it. The harness scenario "batch 1k edits" is the benchmark for it (today piece-tree: 424–460 ns per edit, applying one by one).
2. **Cheap probe: mimalloc** in the harness binary (affects all four libraries). The docs reject it (0.96–1.08x) but only measured `typing`, where allocation is ~5%. Measure it on `paste` and `edits`. If it helps a lot, a node pool/free list becomes worth trying.
3. **Wide leaves**: each node holds several pieces in a contiguous array (B-tree-like). Biggest lever for scattered edits, but a rewrite of `tree.rs` and its invariants (`tree::check`, `join`/`split`). Only after 1 and 2.
4. **Load: bulk newline extraction — DONE (uncommitted), see D16 and `benchmarks.md`.** `crates/piece-tree/src/newlines.rs` replaces `memchr_iter(..).collect()` in `Chunk::from_string`. Studying `memchr` showed why the old scan was slow (`find_raw` returns the first hit and discards the other compares; the iterator restarts at `hit + 1`) and gave the one idea worth keeping: OR the vector compares and test once, so blocks without a newline are almost free. Design: 64-byte mask (NEON on aarch64, SSE2 on x86_64, portable SWAR elsewhere and under Miri) + empty-block skip + flatten with 8 unconditional writes. No density heuristic, no `memchr` fallback. A/B against a standalone copy of the previous tree, `Text::from(String)` of 50 MB, min of 5 alternating runs: Rust sources 0.385 -> 0.106 ns/B (3.6x), synthetic 1.8x, CJK 1.75x, exponential lines of mean 100/200/400/1000/5000: 1.8x/1.5x/1.3x/1.19x/1.03x, no newlines 0.97x (noise). Edits unchanged. Rejected: preallocating the `Vec`, a 16-byte mask with a `while` loop, and a first version that picked `memchr_iter` or the mask from the sampled mean line length (calibrated on equal-length lines its thresholds were 3x too low: calibrate on realistic line-length distributions).
   - Checks done: 140 tests pass (debug and release, aarch64); clippy clean; coverage 100% lines/functions/branches for `newlines.rs` and `chunk.rs` (total regions 99.89%, the 2-region residue already known); the x86_64 SSE2 `mask64` ran under QEMU (Colima), 140 of 140 tests passing (command in `docs/guides/testing.md`); Miri on the `newlines` and `chunk` tests, where Miri executes the SWAR mask and every unsafe write of `newlines.rs`.
   - **Not verified, be explicit**: AVX2 and AVX-512 are not implemented. The development machine is an Apple M1 and the emulator reports SSE2 only, so neither can run or be timed here, and the x86_64 speed of the SSE2 path itself is unknown. Plan: one `mask64` per feature (AVX2: two `_mm256_cmpeq_epi8` + `_mm256_movemask_epi8` combined into a `u64`; AVX-512BW: `_mm512_cmpeq_epi8_mask` returns the mask directly) behind `is_x86_feature_detected!`, on a real x86_64 host, keeping only winners. The existing lane test and differential tests cover a new `mask64` automatically. My expectation, not measured: small gain, because the flatten step dominates.
   - `Chunk::try_append` (add chunk) still uses `memchr_iter`: the flatten writes junk slots past the real ones, which would land in another writer's reservation. Pastes up to 64 KiB with many newlines pay the old per-hit cost; only worth changing (temporary buffer + copy) if a profile shows it.
5. **Other SIMD**: nothing else qualifies. Edits are pointer chasing and allocation (see the profile above), so SIMD does not apply. With the char cache gone there is no char counting on the load path; `char_count` and friends scan on demand: only look at a SIMD char counter (`str_indices`) if those APIs show up in an editor profile.
6. **Typing 1.3x gap**: would need in-place mutation when the root is unshared (`&mut self` API with `triomphe::Arc::get_mut` down the path). Conflicts with the "no interior mutability" rule only if done on `Piece`/`Node` in place; `Arc::get_mut`/`make_mut` style is allowed. In an editor with undo the old versions stay alive, so the copy is needed anyway. Low value, high risk: skip unless the others are done.

## Next steps

1. Repeat the full harness 3 times per corpus on the current tree to get a noise estimate per row (not done yet).
2. Idea 4 is done. **Still to do, needs a real x86_64 host: try AVX2 and AVX-512BW** (not implemented here because the dev machine is an M1 and the emulator has SSE2 only). On that host: run the test suite natively (SSE2 path), implement one `mask64` per feature with `is_x86_feature_detected!` dispatch, A/B each against SSE2 with the load example (Rust, synthetic, CJK; min of 7, alternating), keep only winners, record kept and rejected in `benchmarks.md` and D16. Check AVX-512 frequency throttling on older Intel parts.
3. **Still to do: other architectures.** Table with mechanism, `std::arch` status (checked 2026-11-25) and test needs in D16 (`docs/design/decisions.md`). The portable SWAR mask is already there (every other architecture and Miri use it); the table lists what would replace it where it wins: wasm32 simd128 and 32-bit x86 first (stable intrinsics), the rest once `std::arch` stabilizes. Compare against SWAR (~0.13 ns/B flat on the M1), same acceptance as step 2.

## Not done / caveats

- Nothing in `crates/piece-tree` was changed by this investigation.
- Texts tested: one synthetic, one Rust-source corpus (~64 MB read from the cargo registry, wrapped when shorter than requested), one CJK-heavy synthetic. No real-world prose or very long lines.
- Line access is measured as "sum of chunk lengths of the line" for every library (no text copy); SumTree needs two point-to-offset descents for it, the others one.
- `byte_to_char` conversion is charged to ropey 1.x on every edit, as an editor working in bytes would pay it.
- Harness is not committed and has no `docs`; results above are the only record.
