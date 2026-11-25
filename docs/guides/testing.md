# Testing guide

## Commands

```sh
cargo test -p piece-tree                     # debug, ~4 s
cargo test --release -p piece-tree           # same tests, optimized
cargo clippy --workspace --all-targets
cargo +nightly-2026-11-20 llvm-cov -p piece-tree --lib --branch --show-missing-lines
cargo +nightly-2026-11-20 miri test -p piece-tree --lib    # whole suite, ~7 min (regex compilation is slow under Miri)
cargo +nightly-2026-11-20 miri test -p piece-tree --lib -- -Z unstable-options --report-time   # per-test time
```

Miri needs the component once: `rustup component add miri --toolchain nightly-2026-11-20`.

Branch coverage needs nightly (`--branch`). To list branches never taken:

```sh
cargo +nightly-2026-11-20 llvm-cov report -p piece-tree --branch --text | grep -E 'True: 0|False: 0' -B3
```

## Coverage policy

100% lines, functions and branches for `piece-tree`, test code included. Known residue: 2 regions in `document.rs` that are the `?` error paths of the `write_to::<Vec<u8>>` instantiation (a `Vec` writer cannot fail). The same code is covered by the `FailAt` instantiations; no source line or segment is uncovered.

When coverage drops:
- Unreachable branch in production code → simplify the code (e.g. `detect` dropped a redundant condition), with a comment proving it.
- Unreachable branch in an `assert!(a && b)` in tests → split into `assert_eq!` on the full value.
- Hard-to-reach guard (e.g. 4 GiB) → extract into a function taking the value (`assert_fits_u32(len)`) and test it directly.

## Miri

All `unsafe` code is in `chunk.rs`; Miri runs the whole library suite (default Stacked Borrows), so every path that creates, appends to, reads or drops a chunk is checked, including `concurrent_appends_get_disjoint_spans` and `concurrent_edits_on_shared_versions`.

Heavy tests are excluded or scaled under Miri, never removed:
- `#[cfg_attr(miri, ignore = ...)]` on the medium/grow-only/delete-heavy differentials, `large_text`, `edits_copy_only_a_path`, `height_stays_logarithmic`, `typing_continues_in_a_new_chunk_when_full`.
- Scaled:
  - small differential: 2 seeds × 60 steps;
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
| `src/text/tests.rs` | public `Text` behavior: every differential step also checks the char metrics (`char_count`, both conversions, line/column, `line_char_len`, `line_end`) against `String`; char metrics on an indexed sealed chunk under edits and at every 7th char of a long piece; char boundary queries; panics; 4 differential suites, edge cases, `Cow` borrowing, chunks order, multibyte boundaries, 100 000-line text, path-copy bound, cross-thread snapshot, piece extension (typing at end and in the middle, diverging versions, full chunks, large inserts, after delete), concurrent edits on shared versions, every `line()` fast/fallback path, `From<String>` without copy and with normalization, one `should_panic` per assert |
| `src/search/tests.rs` | cursor walks like `chunks()` both ways (ends unchanged), `cursor_at` at every offset, empty text, **differential** `find_iter`/`find_from` against `regex` over 16 patterns (Unicode, `\b`, empty matches, `(?m)`, captures) on empty, single-piece and many-piece texts, **differential** `replace_all` against `regex::Regex::replace_all` over 8 replacements (`$1`, `${w}`, `$$`, `$0`, empty, `\r\n`), no-match keeps the version, large replacement in one owned chunk, **differential** `replace_matching` (every other match kept) against `regex` captures + `expand`, the filter sees each match range in order, rejecting all keeps the version, `Document::replace_all`/`replace_matching` one undo step (none without accepted matches), invalid pattern error, regression test for the regex-cursor prefilter bug |
| `src/eol.rs` (inline) | detection incl. every tie, `\r\r\n`, leading `\n`, parse/display round-trip, normalization, borrow-when-unchanged, `normalize_owned` reusing the buffer |
| `src/document/tests.rs` | EOL round-trip for all endings, output across piece boundaries, writer error at every write call (`FailAt`), undo/redo differential over 2000 ops, **differential** history tree (edits, splices, nested groups, undo, redo, earlier, later, goto) against a model tree, with every `last_edits` checked to turn the previous text into the current one, groups as one version (nesting, empty group, undo closing a group), branches and redo following the last visit, time travel on set timestamps, `splice` and `Edit::map`/`map_offset`, one edit per `replace_matching` match, `versions()`, no-op edits, set_eol not an undo step, `from_string` equals `new` |
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

## Conventions

- Panic tests match on the message fragments `out of bounds`, `invalid range`, `char boundary`, `larger than 4 GiB`, `invalid piece split`, `empty chunk`.
- Tests that need several pieces must avoid piece extension: insert at the front (`insert(0, ..)`) or build from separate texts. Appending at the end extends one piece.
- Every test that builds trees goes through `tree::check` (directly or via `assert_tree`/`assert_same`).
- Seeds are fixed: a failure reproduces exactly.
