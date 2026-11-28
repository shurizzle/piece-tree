# Testing guide

## Commands

```sh
cargo test -p piece-tree                     # debug, ~4 s
cargo test --release -p piece-tree           # same tests, optimized
cargo clippy --workspace --all-targets
cargo +nightly-2026-11-20 llvm-cov -p piece-tree --lib --branch --show-missing-lines
cargo +nightly-2026-11-20 miri test -p piece-tree --lib    # tests that reach unsafe, ~4 min
cargo +nightly-2026-11-20 miri test -p piece-tree --lib -- -Z unstable-options --report-time   # per-test time
```

Miri needs the component once: `rustup component add miri --toolchain nightly-2026-11-20`.

Branch coverage needs nightly (`--branch`). To list branches never taken:

```sh
cargo +nightly-2026-11-20 llvm-cov report -p piece-tree --branch --text | grep -E 'True: 0|False: 0' -B3
```

## Coverage policy

100% lines, functions and branches for `piece-tree`, test code included. Known residue: 2 regions in `text.rs` that are the error paths of `Text::try_for_each_eol` in the instantiations that cannot fail (`write_to` into a `Vec`, `Display`). The same code is covered by the `FailAt` instantiations; no source line or segment is uncovered.

When coverage drops:
- Unreachable branch in production code → simplify the code (e.g. `detect` dropped a redundant condition), with a comment proving it.
- Unreachable branch in an `assert!(a && b)` in tests → split into `assert_eq!` on the full value.
- Hard-to-reach guard (e.g. 4 GiB) → extract into a function taking the value (`assert_fits_u32(len)`) and test it directly.

## Miri

`unsafe` code is in `chunk.rs`, `newlines.rs` and `eol.rs` (`normalize_owned`, covered by `normalize_matches_replace`). Miri does not run SIMD intrinsics, so under Miri `mask64` is the portable SWAR one: Miri still executes `positions`, `copy_positions`, `push_block` and `flatten` (every unsafe pointer write of `newlines.rs`). The NEON and SSE2 `byte_mask64` bodies are covered natively: `masks_report_exactly_the_needle_lanes` checks each of the 64 lanes alone, all lanes and none for `\n` and `\r`, for every mask (native and SWAR), with noise bytes next to the needle in value and bit pattern; the differential tests compare `positions`, `copy_positions` (copy and offsets) and the callback against a naive scan at every length around the 16/64-byte boundaries and the zero-padded tail, `eol_counts_match_the_naive_count` does the same for the `(\n, \r, \r\n)` counts, plus a `\r\n` split by every block boundary, and `normalize_matches_the_naive_rewrite` for the block normalizer (in place, from offset 0 and from the first `\r`, and appending after a prefix, both masks, every length, four densities, split pairs, all-`\r`, all-CRLF; under Miri it checks the in-place writes against Stacked Borrows). Miri runs the whole library suite (default Stacked Borrows), so every path that creates, appends to, reads or drops a chunk is checked, including `concurrent_appends_get_disjoint_spans`, `concurrent_edits_on_shared_versions` and `snapshot_written_on_a_thread_while_editing_in_place` (reads of a published piece racing in-place appends to the same add chunk).

**What runs under Miri**: a test runs if it reaches `unsafe` in a way no other Miri test does (a storage kind, an append path, a piece boundary shape, threads, in-place against persistent edits). Oracle tests of safe logic are `#[cfg_attr(miri, ignore = "<reason>")]`, the reason naming what covers their `unsafe` part: under the interpreter they re-run the same few chunk reads millions of times and find nothing new. Measured before this rule: the regex oracles took 286-325 s each and the whole run passed 40 minutes; after it, 154 tests in about 4 minutes.

**`rim`** has its own `unsafe`: the parse input (`Reader::read` in `editor/syntax.rs`, a slice of a piece handed out for longer than the cursor borrow) and the grammar loading (`dlopen`, a C symbol: foreign code Miri cannot run). Every `rim` test is `#[cfg_attr(miri, ignore = "…")]` except `reader_returns_bytes_from_any_offset_and_they_stay_valid` and `reader_bytes_survive_typing_into_the_shared_chunk` in `editor/syntax/tests.rs`, which read random versions of a `Text` at any offset, keep the slices while the reader moves on, and type into the shared chunk meanwhile. The rest is safe editor logic or calls tree-sitter's C code; the two `dlopen` tests say so in their reason. `main.rs` leaves mimalloc out under Miri. `cargo +nightly-2026-11-20 miri test -p rim` takes about 15 s (2 tests run).

Excluded or scaled under Miri, never removed (normal runs and coverage are unchanged):
- Safe logic, ignored: the regex oracles in `search/tests.rs` (`find_iter_and_find_from_match_regex`, `replace_all_matches_regex`, `replace_matching_matches_regex_on_the_kept_matches`, `rfind_before_matches_a_brute_force_oracle`, `find_iter_in_matches_regex_in_a_range`, `replacement_at_expands_one_match`; `TextCursor` stays covered by `cursor_*` and `literal_alternation_across_piece_boundaries`) and `replace_matching_logs_one_edit_per_match`; the batch and rebuild strategy tests (`apply_edits_matches_the_model`, `apply_edits_uses_both_strategies`, `apply_edits_clustered_in_a_fragmented_text`, `apply_edits_edge_cases`, `rebuild_choice_follows_the_piece_count`, `piece_count_bounds_hold_on_every_shape`); the char metric oracles (`char_metrics_on_long_pieces`, `char_to_offset_matches_the_model`); the history differentials (`undo_redo_differential`, `history_tree_differential`).
- Heavy, ignored: the medium/grow-only/delete-heavy differentials, `large_text`, `edits_copy_only_a_path`, `height_stays_logarithmic`, `typing_continues_in_a_new_chunk_when_full`.
- `assert_same` (text tests) samples lines and skips the char metrics under Miri.
- Scaled:
  - small differential: 2 seeds × 40 steps;
  - `every_mask_matches_the_naive_scan_at_every_length`: only the lengths next to a 16/64-byte boundary (258 s with every length, 22 s);
  - `split_at_every_offset`: texts up to 30 chars; in-place tree differential: 30 steps; `compact_differential`: 60 steps;
  - `rfind_before_crosses_windows`: 9 000 bytes (still three windows);
  - join loops: 6×6;
  - concurrent tests: 5 ops per thread;
  - undo/redo differential: 200 steps;
  - `extend_at`/`insert_at_every_offset`: 10 chars;
  - `delete_in_every_range`: 8 chars;
  - `insert_at_keeps_balance_under_many_inserts`: 40 inserts.
- `MAX_ADD_BYTES` is 64 KiB normally and **1 KiB under Miri** (`#[cfg(miri)]` const in `chunk.rs`). Large-text tests size their input from the constant (`MAX_ADD_BYTES / unit + 1`), so under Miri they still reach the exact and owned chunk paths with about 1 KiB. With 66 KiB a single such test took 151 s under Miri.
- **Rule**: every new exhaustive or large test gets its Miri scale in the same change. An unscaled exhaustive test once kept Miri on a single test for more than 30 minutes.
- Miri found real UB once: freeing an owned chunk through pointers derived from `as_mut_str()`/`as_mut_slice()`, which only cover `len`, not capacity. Take allocation pointers from `Vec::as_mut_ptr`.
- In files counted by coverage (`src/*.rs`), scale with `#[cfg(miri)]` / `#[cfg(not(miri))]` consts (see `UNDO_REDO_STEPS` in `document/tests.rs`): `if cfg!(miri)` leaves a dead region that breaks 100%.

## Layout

| File | Scope |
|---|---|
| `src/chunk/tests.rs` | exact and owned chunks (`from_string` keeps the buffer: pointer check), geometric growth and caps, contiguous appends, conditional append (`at`), byte and newline capacity refusal (reserves nothing), concurrent appends from 8 threads, 4 GiB guard, empty chunk panics |
| `src/tree/tests.rs` | white-box: piece queries and `nl_first`, `split` and `sub` at every position and their panics (range, inside a char), `store`/`try_extend`, `extend_at` at every offset (shape unchanged, `f` called once, declines), `insert_at` at every offset and under mixed front/back/middle inserts, `delete_in` for every range (Some iff inside one piece), `join`/`join2` over all height pairs up to 41×41, `split` at every offset, `expose` move vs clone, rotations, height bound on 20 000 pieces |
| `src/text/tests.rs` | public `Text` behavior: `chunks_in`/`lines_in` differential against `String` slices on fragmented texts (random ranges, empty and full), borrowed vs owned lines, their panics; every differential step also checks the char metrics (`char_count`, both conversions, line/column, `line_char_len`, `line_end`) against `String`; char metrics on a long sealed piece under edits and at every 7th char; char boundary queries (`is_char_boundary`, `floor_char_boundary`, `ceil_char_boundary`); panics; 4 differential suites, edge cases, `Cow` borrowing, chunks order, multibyte boundaries, 100 000-line text, path-copy bound, cross-thread snapshot, a snapshot written on a thread (`write_to`, CRLF) while the original is edited in place (`snapshot_written_on_a_thread_while_editing_in_place`, Miri: 5 rounds), piece extension (typing at end and in the middle, diverging versions, full chunks, large inserts, a large insert with `\r\n` taking over the normalized copy (`insert` and `insert_mut`), after delete), concurrent edits on shared versions, every `line()` fast/fallback path, `From<String>` without copy and with normalization, one `should_panic` per assert; `apply_edits`: differential against a model on single-piece and fragmented texts (both strategies), edge cases (no-ops, inserts at one offset, adjacent edits, big replacements, `\r\n`), panics, the strategy choice and the piece-count bounds; `compact_differential` (random edits, compaction with several `max`, content and invariants checked, pre-compaction versions untouched), `compact_merges_runs_up_to_max`, `piece_chunk_and_memory_counts` |
| `src/search/tests.rs` | cursor walks like `chunks()` both ways (ends unchanged), `cursor_at` at every offset, empty text, **differential** `find_iter`/`find_from` against `regex` over 16 patterns (Unicode, `\b`, empty matches, `(?m)`, captures) on empty, single-piece and many-piece texts, **differential** `replace_all` against `regex::Regex::replace_all` over 8 replacements (`$1`, `${w}`, `$$`, `$0`, empty, `\r\n`), no-match keeps the version, large replacement in one owned chunk, **differential** `replace_matching` (every other match kept) against `regex` captures + `expand`, the filter sees each match range in order, rejecting all keeps the version, `Document::replace_all`/`replace_matching` one undo step (none without accepted matches), invalid pattern error, regression test for the regex-cursor prefilter bug, `rfind_before` against a brute-force oracle and across windows, `find_iter_in` against `regex` over ranges (look-around, matches ending past the range, invalid ranges), `replacement_at` against `regex` captures |
| `src/eol.rs` (inline) | detection incl. every tie, `\r\r\n`, leading `\n`, parse/display round-trip, normalization, borrow-when-unchanged, `normalize_owned` reusing the buffer, `normalize` / `normalize_owned` / `push_normalized` against the old double `replace` on 2000 random `\r`/`\n`/multibyte strings |
| `src/document/tests.rs` | EOL round-trip for all endings (every output check also compares `Display` with `write_to`), output across piece boundaries, writer error at every write call (`FailAt`), undo/redo differential over 2000 ops, **differential** history tree (edits, splices, nested groups, undo, redo, earlier, later, goto) against a model tree, with every `last_edits` checked to turn the previous text into the current one, groups as one version (nesting, empty group, undo closing a group), branches and redo following the last visit, time travel on set timestamps, `splice` and `Edit::map`/`map_offset`, one edit per `replace_matching` match, `versions()`, no-op edits, set_eol not an undo step, `from_string` equals `new`, `Document` is `Send + Sync`; `compact_keeps_text_and_history`, `drop_history_keeps_the_subtree` (renumbering, refused drops, moves and `last_edits` between the kept versions, groups closed) |
| `src/lib.rs` doctest | end-to-end usage |
| `src/test_util.rs` | `Rng` (64-bit LCG), `boundary`, `range`, `text`, `ATOMS` (ASCII, `é`, `€`, `ß`, `🦀`, `\n`) |

## Differential tests

`text::tests::differential(seed, steps, cap, delete_pct)` applies the same random edits to `Text` and `String`:
- inserts at 0, at the end, or at random boundaries; deletes of everything, prefixes, suffixes or random ranges;
- deletes are forced above `cap` bytes;
- after **every** step `assert_same` checks content, chunks, length, line count, `line_to_offset`/`line` (all lines while the text is under 512 bytes or every 64 steps, otherwise a sample), `offset_to_line` and `slice` on random offsets, and `tree::check`;
- every 25 steps a snapshot is saved; at the end all snapshots must still match their model (persistence).

Suites: 40 seeds × 400 steps on small texts, 3 × 3000 medium, grow-only 1200, delete-heavy 4000.

**Performance note**: model checks are O(n) per step, so a grow-only run is quadratic. 4000 grow-only steps took 31 s; 1200 keep the whole suite at ~3 s. Increase sizes in `large_text`-style tests (sampled checks) instead of in the differential loop.

### Vimscript against Neovim (rim)

`crates/rim/src/editor/script/golden.rs` runs every script of `script/cases/*.vim` through `Editor` and compares what it prints with the output Neovim printed for it (`*.golden`, recorded by `python3 -I tools/vimscript_oracle.py`, which needs `nvim`; `cargo test` does not). `KNOWN` there lists the cases that still differ and only shrinks; `RIM_GOLDEN_SHOW=1` shows every difference. The corpora: `range`, `typed`, `cmd`, `bar`, `let`, `funcs`, `expr`, `args` (every builtin with one wrong-typed argument per position), `mixed` (two together), `triple` (three together), `extreme` (extreme valid values), `double` (two extreme values together) `try`/`try2` (exceptions: catch patterns, finally with pending break/continue/return/finish, errors converted to `Vim(cmd):E...`, `E605`, `abort` functions, `:silent!`) and `edge` (every builtin with wrong-typed arguments, literals, operators, `:let` targets, `:echo*`; written to find differences, all of which are fixed or documented). A case must not depend on rim's option defaults, on the print order of a Dict with several keys, or on a command that ends the oracle's Neovim (`:x`). See [../reference/vimscript.md](../reference/vimscript.md).

## Conventions

- Panic tests match on the message fragments `out of bounds`, `invalid range`, `char boundary`, `larger than 4 GiB`, `invalid piece split`, `empty chunk`.
- Tests that need several pieces must avoid piece extension: insert at the front (`insert(0, ..)`) or build from separate texts. Appending at the end extends one piece.
- Every test that builds trees goes through `tree::check` (directly or via `assert_tree`/`assert_same`).
- Seeds are fixed: a failure reproduces exactly.

## SIMD paths on other architectures

The development machine is aarch64, so the x86_64 `mask64` (SSE2) is run by cross-compiling the test binary and executing it under emulation (Colima/Docker, QEMU):

```sh
RUSTFLAGS="-C linker=rust-lld -C linker-flavor=ld.lld -C link-self-contained=yes" \
  cargo test -p piece-tree --lib --release --no-run --target x86_64-unknown-linux-musl --target-dir <dir under $HOME>
docker run --rm --platform linux/amd64 -v <dir with the test binary>:/b alpine /b/<test binary>
```

The directory must be under `$HOME` (the VM does not see `/private/tmp`). The emulator reports SSE2 only. On a native x86_64 Linux host the plain `cargo test -p piece-tree` runs the SSE2 `mask64` directly (done on an Intel i5-8365U, W4). An AVX2 `mask64` was tried there and rejected (D16); a future AVX-512 one needs a host with AVX-512BW: the lane test and the differential tests exercise whatever `mask64` is compiled in.
