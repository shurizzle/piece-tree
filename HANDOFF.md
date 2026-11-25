# Handoff: rim as the library's driver, round 5

Delete this file when the work is done.

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
- Docs updated: `library-api.md`, `data-structures.md`, `algorithms.md`, `decisions.md` (D7 rewritten), `limitations.md`, `testing.md`, `ARCHITECTURE.md`, `rim.md`.

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

### M5 — ex commands on ranges: DONE
- `crates/rim/src/editor/ex.rs`: shared range parser (`%`, `.`, `$`, `N`, `'m`, `/pat/`, `?pat?`, `\/`, `\?`, `\&`, `+N`, `,`/`;`), `[range] name[!] arg` split, the dispatcher `Editor::command` (moved from `editor.rs`, vim abbreviations via `abbr`), commands `:d :y :m :t/:co :> :< :j[!] :p := :normal :g :g! :v :sort[!] [i n u r /pat/] :r :w file :w! :w >> :[range]w! :sav :retab[!] :set ff`. `substitute.rs` keeps only the `:s`/`:&` arguments.
- `:g`/`:normal` lines: `LineMarks` (dead when removed whole, skipped when joined; pending shift keeps it linear: 200k lines `:g/^/d` 0.15 s, `:%norm Ax` 0.49 s release). One undo group per command line; `line_key` now closes the group and clears `rec_cmd` after every command line.
- Behavior changes: `:0s` counts as line 1 (vim), `:99` goes to the last line, `is_dirty` also compares the line ending (`saved_eol`), `join` takes `spaces` (for `:j!`).
- No lib changes: `Text::slice_text`/`append_text` not needed (`:r`/`:t`/`:m` copy; `shortcut:` + `limitations.md`).
- Tests: `ex.rs` unit tests (ranges, names, reg/count, `retab_line`, `LineMarks` vs plain mapping) and `ex_*` tests in `editor/tests.rs`. `cargo test -p rim` and clippy clean. Not done: pty smoke test.
- Docs: `rim.md` (ex section, internals, tests), `limitations.md`, `ARCHITECTURE.md`, `AGENTS.md`.

### M6 — maintenance and stats: DONE
- Lib (`text.rs`, `document.rs`, accessors `Piece::chunk` in `tree.rs`, `Chunk::heap_bytes` in `chunk.rs`): `Text::piece_count`/`chunk_count`/`memory_bytes`, `Text::compact(max)` (runs of pieces merged into owned chunks of at most `max` bytes, balanced rebuild, same version when nothing merges), `Document::compact(max)` (current version only, history kept), `Document::drop_history_before(seq)` (keeps the subtree of `seq`, renumbered; false when the current version is outside it). Tests: `compact_differential`, `compact_merges_runs_up_to_max`, `piece_chunk_and_memory_counts`, `compact_keeps_text_and_history`, `drop_history_keeps_the_subtree`. Coverage 100% (2-region residue), Miri clean.
- Editor (`rim`): `:stats`, `:compact` (64 KiB chunks, a clean buffer stays clean), `:set compactat=N` (default 10000, 0 off), `Editor::idle` called by `main` after 1 s without events. Test `stats_compact_and_idle`. `drop_history_before` has no editor command.
- Bench: `compact edited` 1325 ns/piece (3.9 ms for 10 MB, 2974 → 174 pieces); `line()` 25.1 → 15.3 ns; literal search -7%, regex same (`benchmarks.md`, "Compaction").
- Miri scope cut (`testing.md`, AGENTS.md): only tests reaching `unsafe` in a new way run; safe-logic oracles are ignored with a reason. 154 tests, ~4 min.
- Editor renamed `pt-edit` → `rim` (crate `crates/rim`, `docs/reference/rim.md`).

## Not started
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
