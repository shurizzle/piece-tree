# Handoff: pt-edit as the library's driver, round 5

M1–M4 committed in `bc6a0d2` (the M4 gap fixes below are not). Delete this file when the work is done or committed.

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
- **Char cache REMOVED** (D15, `benchmarks.md`): it cost +12..32% on paste/edits/`replace_all` and +50..100% on load. `Text` keeps the char API (`char_count`, `offset_to_char`, `char_to_offset`, `line_end`, `line_char_len`, `line_col_to_offset`, `offset_to_line_col`, `is_char_boundary`, `floor_char_boundary`) implemented by scanning: per line O(line), global O(n). `chunk.rs`/`tree.rs` are back to `fa02467`.
- `Text` API: `char_count`, `offset_to_char`, `char_to_offset`, `line_end`, `line_char_len`, `line_col_to_offset`, `offset_to_line_col`, `is_char_boundary`, `floor_char_boundary`.
- Tests: `assert_same` → `assert_chars` (every differential step), `char_metrics_on_long_pieces`, `char_metrics_panics`, `char_boundaries`. Coverage 100%.
- Editor: `line_chars`, `offset_of` and `pos_of` use the lib. New commands: `Ctrl+G`, `g Ctrl+G`, `ga`, `g8`, `go`, `:goto`, `N|`. There is a test for them.
- Docs: `data-structures.md`, `library-api.md`, decision D15, the invariants in `ARCHITECTURE.md`, `testing.md`, and a char-conversion row in `limitations.md`.
- M3 closed: bench A/B vs `fa02467` shows no slower scenario after removing the cache. Miri re-run after the removal: 130 passed, 0 failed, 7 ignored.

### M4 — search: DONE
- Lib (`find_iter_in`, `rfind_before`, `replacement_at`) and editor (`?`, offsets, `:s` flags `c` `n` `&`, `&`, `:&`, `:&&`, `g&`, `gn`/`gN`) done, tested, documented. Coverage 100% (2-region residue), clippy clean, pty smoke test of `:s///c` passed.
- Gaps closed: `gn`/`gN` in Visual extend the selection to the next match's end / previous match's start (a repeat moves on); the `:s///c` match being asked about is drawn reversed (`Confirm::cur`). Tests in `gn_selects_the_match`, `substitute_confirm_count_and_repeat`.

## Not started
- **M5:** shared ex range parser in `ex.rs`, with `/pat/` and `?pat?` addresses. Commands `:d :y :m :t/:co :> :< :j :p := :normal :sort :g :v :r :w file :w >> :sav :retab :set ff`. Lib `splice` exists already; possibly `Text::slice_text`/`append_text`.
- **M6:** lib `piece_count`/`chunk_count`/`memory_bytes`, `Text::compact`, `Document::compact`/`drop_history_before`. Editor `:stats`, `:compact`, `compactat`.
- **M7:** buffers and windows, background save from a `Text` snapshot.
- **M8:** jump/change lists, `gv gi gJ gp ]p R`, insert-mode Ctrl keys, wrap/list/expandtab/sw/ignorecase/smartcase/scrolloff, graphemes, clipboard read via OSC 52 query only (no `arboard`, no fallback: a terminal without OSC 52 is unsupported), macros as registers, virtual-column blocks, cmdline history/completion, init file.

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
