# Handoff: pt-edit as the library's driver, round 5

Not committed. Delete this file when the work is done or committed.

The approved plan has the full milestone list (M1–M8, with rules and verification):
`~/.claude/plans/divieto-assoluto-non-puoi-cheeky-kitten-of-0ce138e8-7589-4b04-99a8-ad5254676d90.md`

Goal: make the library complete by building editor features that need it. The user authorized changes to `crates/piece-tree` under the AGENTS.md rules:
- 100% coverage with `--branch`.
- Differential tests.
- `tree::check` on new trees.
- Miri when `chunk.rs` or `unsafe` code changes.
- Bench A/B for hot paths, recorded in `benchmarks.md`.
- Docs in the same change.

## Done

### M1 + M2 — undo tree, groups, edit log (`crates/piece-tree/src/document.rs`)
- `Document` is a tree of versions:
  - `states: Vec<State>`, where each `State` has `text`, `parent`, a range into the flat `log: Vec<Edit>`, a `redo` child and an `Instant`.
  - Fields `cur` and `depth`, plus `group` (the open group's version, always the newest) and `last` (the edits made by the last call).
- New API: `splice`, `begin_group`/`end_group`/`group`, `last_edits`, `seq`, `history_len`, `versions()` returning `Version { seq, parent, edits, leaf, time }`, `undo`/`redo` (now along the tree), `earlier`/`later`, `earlier_time`/`later_time`, `goto`.
- `Edit { start, old_len, new_len }`, with `inverse` and `map`, and the free function `map_offset`. All exported from `lib.rs`.
- `Text::replace_matching_edits` (crate-private) returns one `Edit` per replaced match; `Document::replace_matching` logs them.
- `last_edits` is cleared by every call, including `begin_group`/`end_group`.
- Tests moved to `src/document/tests.rs`:
  - a differential history-tree test against a model;
  - `assert_edits`, which checks that the edits turn the previous text into the current one;
  - groups, branches, time travel, `splice`, `map`, `versions`.
- Coverage: 100%, except the known residue of 2 regions (`write_to::<Vec>` `?` paths).
- Bench: new scenario `Document typing 10k chars in 1MB`, also added to `examples/profile.rs` as `doc-typing`. +15% per ungrouped key, all of it from `Instant::now()` (~22 ns). Kept. Recorded in `docs/guides/benchmarks.md` and decision D7.
- Editor side:
  - The `group_edits`/`undo_groups` counting is gone. `Editor::edit()` opens a lib group on a command's first edit; `end_command` closes it.
  - Marks are mapped through `last_edits` after every doc call: edits, `:s`, undo, redo, time travel.
  - `Editor::history()` puts the cursor at the change; if the restored text starts with `\n`, on the next line.
  - New commands: `g-`, `g+`, `:earlier`/`:later` (N, `Ns`/`m`/`h`/`d`), `:undo N`, `:undo`, `:redo`, `:undolist`.
- Docs updated: `library-api.md`, `data-structures.md`, `algorithms.md`, `decisions.md` (D7 rewritten), `limitations.md`, `testing.md`, `ARCHITECTURE.md`, `pt-edit.md`.

### M3 — char metrics (`chunk.rs`, `tree.rs`, `text.rs`)
- Sealed chunks carry `char_index: Box<[u32]>`: the chars before every `CHAR_BLOCK` (1024 bytes, 16 under Miri). `Chunk::char_index()` returns the bytes and the index. Helpers: `count_chars`, `is_char_start`.
- Each `Piece` caches `chars: u32` (the struct grows from 24 to 32 bytes), with `chars_before(off)` and `byte_of_char(k)` (requires `k < chars`). Each `Node` caches `chars` (it grows from 64 to 80 bytes). `tree::check` verifies chars.
- `Text` API: `char_count`, `offset_to_char`, `char_to_offset`, `line_end`, `line_char_len`, `line_col_to_offset`, `offset_to_line_col`, `is_char_boundary`, `floor_char_boundary`.
- Tests: `assert_same` → `assert_chars` (every differential step), `char_metrics_on_indexed_chunks`, `char_metrics_panics`, `char_boundaries`. Coverage 100%.
- Editor: `line_chars`, `offset_of` and `pos_of` use the lib. New commands: `Ctrl+G`, `g Ctrl+G`, `ga`, `g8`, `go`, `:goto`, `N|`. There is a test for them.
- Docs: `data-structures.md`, `library-api.md`, decision D15, the invariants in `ARCHITECTURE.md`, `testing.md`, and the Node size in `limitations.md`.
- **Still to do for M3:**
  - Miri result: run `cargo +nightly-2026-11-20 miri test -p piece-tree --lib`. It was started but its result was never read. `chunk.rs` changed, so this is required.
  - Bench A/B of the hot paths (Piece/Node got bigger, load does an extra pass). The standalone copies are in the scratchpad (`.../scratchpad/ab/{new,m1}`) and may be gone: recreate a pre-M3 copy from `git stash`/diff if needed. Record kept/rejected in `benchmarks.md` (D15 points there).
  - `pt-edit.md`: document `Ctrl+G`, `g Ctrl+G`, `ga`, `g8`, `go`, `:goto` and `|`.

### M4 — search (lib part DONE, editor part IN PROGRESS)
- Lib (`search.rs`):
  - `find_iter_in(re, range)`;
  - `rfind_before(re, off)`, exact and windowed (doubling from 4 KiB);
  - `replacement_at(re, off, rep)`;
  - private `expand`.
- Lib tests use oracles (brute force for `rfind_before`, `regex` for the others). Coverage 100%.
- **Lib docs for M4 not written yet:** `search.md`, `library-api.md`, `algorithms.md`, `testing.md`, plus a limitations row for the `rfind_before` worst case.
- Editor, done but **not compiling in tests yet**:
  - `editor/search.rs` rewritten: `Offset` (`e`, `s`/`b`, lines) and `Offset::parse`; `Search { pat, re, back, offset }`; `split_typed`; `find_forward`/`find_backward` (via `rfind_before`) return ranges; `visible_matches` (via `find_iter_in`, split per line). The old `line_matches` is removed.
  - `motion.rs`: `search_motion(forward, n, from)` applies offsets and sets `search_landing`; `find_match`. `n`/`N`/`*`/`#` use them, and `n`/`N` follow the last direction.
  - `editor.rs`: the `?` command; fields `search_back` and `search_landing`; the Enter handler parses pattern and offset; incsearch works in both directions.
  - `render.rs`: the `?` prompt; highlights come from `visible_matches`, so multi-line matches are highlighted.
  - **Current compile error** (only in tests, `editor/search.rs` around lines 187 and 193): `[vec![], vec![], vec![]]` needs a type, e.g. `[Vec::<Range<usize>>::new(), ...]` or `vec![Vec::<Range<usize>>::new(); 3]`. The binary builds.
- After the fix:
  - Run `cargo test -p pt-edit` and fix the existing tests that change. `N`/`#` wrap semantics may differ slightly; `incsearch` / `hlsearch` frame tests may shift.
  - Add tests for `?`, the offsets (`/pat/e`, `/pat/s+1`, `/pat/+1`, `//e`), `n` after an offset, and multi-line highlights.
- Editor M4 not started:
  - `:s` flags `c` (confirm `y/n/a/q/l`, current match highlighted; use `Text::replacement_at` + `splice` in one group) and `n` (count only);
  - `&`, `:&`, `:&&`, `g&` (store `last_sub`);
  - `gn`/`gN` (add `n`/`N` to `G_MOTIONS`; with an operator act on the match range; `cgn` + `.`).
- Then the M4 editor docs (`pt-edit.md`, `limitations.md`): remove the "backward search is a forward scan" and "highlights per visible line" rows and their `shortcut:` comments; add `?` to the `limitations.md` vim-subset row.

## Not started
- **M5:** shared ex range parser in `ex.rs`, with `/pat/` and `?pat?` addresses. Commands `:d :y :m :t/:co :> :< :j :p := :normal :sort :g :v :r :w file :w >> :sav :retab :set ff`. Lib `splice` exists already; possibly `Text::slice_text`/`append_text`.
- **M6:** lib `piece_count`/`chunk_count`/`memory_bytes`, `Text::compact`, `Document::compact`/`drop_history_before`. Editor `:stats`, `:compact`, `compactat`.
- **M7:** buffers and windows, background save from a `Text` snapshot.
- **M8:** jump/change lists, `gv gi gJ gp ]p R`, insert-mode Ctrl keys, wrap/list/expandtab/sw/ignorecase/smartcase/scrolloff, graphemes, arboard, macros as registers, virtual-column blocks, cmdline history/completion, init file.

## Parser notes (editor)
- `g<c>` keys map to the private-use char `parse::g_key(c)` (0xE100 + c). Add `c` to `G_MOTIONS` or `G_COMMANDS`; `parse::is_motion` covers both sets.
- Editor consts: `G_EARLIER`, `G_LATER`, `G_COUNTS`, `G_ASCII`, `G_UTF8`, `G_BYTE`. Motions that are jumps go in `motion::JUMPS`.
- Ctrl keys map to control chars in `normal_char`/`char_key` (Ctrl+G = `\x07`).

## Checks before calling a milestone done
```sh
cargo test --workspace
cargo clippy --workspace --all-targets
cargo +nightly-2026-11-20 llvm-cov -p piece-tree --lib --branch --show-missing-lines
cargo +nightly-2026-11-20 miri test -p piece-tree --lib   # when chunk.rs/unsafe changed
```
Then a pty smoke test. Send Esc in its own write: crossterm reads `\x1bj` as Alt+j.
