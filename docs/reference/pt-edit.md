# `pt-edit`

Minimal vim-like terminal editor in `crates/pt-edit/`. Purpose: exercise the library by hand, especially `Text::line` (the render hot path) and `Text::chunks` (search). It only uses the library's public API.

| File | Holds |
|---|---|
| `src/main.rs` | CLI, theme detection, `TerminalGuard`, event loop |
| `src/editor.rs` | `Editor` state, mode handlers, edits and undo groups, operators, paste, Visual and block ops, `:` commands, save/reload |
| `src/editor/parse.rs` | Normal-mode grammar (`parse`, `Cmd`), key sets, `strip_counts`, key ↔ char mapping |
| `src/editor/motion.rs` | char iterators, motions, finds, `%`, screen lines, marks, search over the text |
| `src/editor/objects.rs` | text objects |
| `src/editor/search.rs` | chunk search (`memchr::memmem`), matches inside a line, whole-word check |
| `src/editor/registers.rs` | registers, OSC 52 |
| `src/editor/options.rs` | `:set` options, palette |
| `src/editor/render.rs` | `Frame` layout, `draw`, cell widths |
| `src/editor/tests.rs` | key-sequence and frame tests; the submodules keep their own unit tests |

## Usage

```sh
pt-edit <file> [--eol lf|cr|crlf]
```

- Missing file → empty buffer; created on first save.
- Files are loaded with `Document::from_string`, which keeps the file's buffer without copying it.
- Non-UTF-8 file → error on startup (`read_to_string`).
- `--eol` overrides the detected ending.
- At startup the terminal background is queried (`terminal-colorsaurus`, before raw mode); a light one selects the light palette (`background=light`). Errors or no answer → dark.

## Modes

Starts in Normal. Status bar: `MODE | name [+] | Ln, Col | EOL | pending keys [recording @r] message`, with `MODE` one of `NORMAL`, `INSERT`, `VISUAL`, `V-LINE`, `V-BLOCK`. Cursor is a block in Normal and Visual, a bar in Insert and on the command line.

### Normal

Grammar: `["x] [count] cmd [char]` or `["x] [count] op [count] (motion [char] | (i|a) object | op)`; the register may also follow the count (`3"ap`). Counts multiply (`2d3w` = `d6w`), capped at 1 000 000. A leading `0` is the motion. Esc, an unknown key or an invalid register cancels pending keys.

| Motion | Kind | Notes |
|---|---|---|
| `h` `l` (←/→) | exclusive | stay in the line |
| `j` `k` (↓/↑) | linewise | keep `want_col` |
| `Ctrl+D` `Ctrl+U` (PgDn/PgUp) | linewise | half a screen |
| `w` `b` | exclusive | cross lines; word classes: word chars (alnum, `_`), other non-blank, blank; an empty line is a word |
| `e` | inclusive | |
| `0` (Home) `^` | exclusive | |
| `$` (End) | inclusive | count = lines down; `want_col` sticks to the line end |
| `gg` `G` | linewise | count = line number; cursor on the first non-blank |
| `H` `M` `L` | linewise | top/middle/bottom screen line; count = lines from the top/bottom |
| `%` | inclusive | the bracket matching the first `()[]{}` at or after the cursor in the line, across lines |
| `N%` | linewise | line at N percent of the text |
| `n` `N` | exclusive | next/previous match of the last search, wrapping |
| `*` `#` | exclusive | search the word under the cursor (or the next one in the line) as a whole word, forward/backward |
| `f<c>` `t<c>` | inclusive | to the `count`-th `c` in the line / one char before it |
| `F<c>` `T<c>` | exclusive | same, backward |
| `;` `,` | as the find | repeat the last find in the same/opposite direction; a repeated `t`/`T` skips an adjacent match (vim default `cpo`) |
| `` `<m> `` | exclusive | to mark `m`; ` `` ` to where the last jump started |
| `'<m>` | linewise | to mark `m`'s line, first non-blank; `''` to the last jump's line |

Jumps (`G gg % n N * # H M L`, marks, `/`, `:<n>`) save the cursor as the `'` mark first.

| Operator | Action |
|---|---|
| `d` | delete into the register |
| `c` | delete, then Insert (`cc` keeps the first line's indent) |
| `y` | yank into the register |
| `>` `<` | indent by `tabstop` spaces / remove up to `tabstop` leading blanks (a tab counts as `tabstop`), always linewise; empty lines are not indented |
| `gu` `gU` `g~` | lowercase / uppercase / toggle case |

Doubled (`dd`, `cc`, `yy`, `>>`, `<<`, `guu`/`gugu`, `gUU`/`gUgU`, `g~~`/`g~g~`) acts on `count` lines. Vim special cases: `cw` on a non-blank acts like `ce`; with an operator, `w` stops at the end of the line of the last word moved over (`dw` on a line's last word does not join lines).

| Command | Action |
|---|---|
| `i` `a` `I` `A` | Insert before/after cursor, at first non-blank, at line end; with a count the typed text is repeated on Esc (`3ix<Esc>` → `xxx`) |
| `o` `O` | open a line below/above with the current indent; with a count, each repeat opens one more line |
| `v` `V` `Ctrl+V` | Visual mode: charwise, linewise, block |
| `r<c>` | replace `count` chars with `c` (nothing if fewer remain) |
| `~` | toggle case of `count` chars, cursor moves past them |
| `.` | repeat the last change; a count replaces the original one (`2dd` then `3.` deletes 3 lines) |
| `x` `D` `C` `S` | `dl`, `d$`, `c$`, `cc` |
| `J` | join `max(count, 2)` lines with one space (none before an empty line) |
| `p` `P` | paste after/before (linewise: below/above the line; block: at the column on successive lines), `count` times |
| `u` `Ctrl+R` | undo/redo `count` groups |
| `Ctrl+A` `Ctrl+X` | add/subtract `count` to the decimal number at or after the cursor in the line (`-` sign included); cursor on its last digit; `i64` overflow → `Number out of range` |
| `m<a-z>` | set a mark |
| `q<a-z>` … `q` | record a macro |
| `[count]@<a-z>` `@@` | play a macro, or the last one played |
| `zz` `zt` `zb` | scroll so the cursor line is in the middle, at the top, at the bottom |
| `:` `/` | command line, search |

### Registers

| Register | Content |
|---|---|
| `"` | unnamed: the last yank or delete (also after a named one) |
| `0` | last yank without a register |
| `1`–`9` | deletes and changes without a register, newest in `1` (each shifts the others) |
| `a`–`z` | named; `A`–`Z` append to them (a linewise append makes the register linewise) |
| `+` `*` | system clipboard: writes go out as OSC 52 on the next draw; pasting uses the editor's own copy |

Kinds: charwise, linewise (text ends with `\n`; pasting below the last line moves that `\n` to the front) and block (one string per line).

### Macros

`qa` records every key in every mode (command line and search included) until `q` in Normal mode with nothing pending; the status bar shows `recording @a`. `@a` replays the keys through the normal key handler; keys a macro plays are not recorded again. Macros live apart from the text registers. A macro calling macros stops after 100 nested levels (`Macro recursion too deep`). A `:q` inside a macro quits.

### Visual

`v`/`V`/`Ctrl+V` start a selection from the cursor (the anchor) to the cursor. Every Normal motion, with counts and char arguments, moves the cursor end. A charwise selection ending on an empty line includes its line break. The selection is drawn reversed; a selected line break shows as one reversed cell. A `"x` prefix names the register.

| Key | Action |
|---|---|
| `d` `x` | delete |
| `c` `s` | change |
| `y` | yank |
| `>` `<` | shift the lines `count` times |
| `~` `u` `U` | toggle / lower / upper case |
| `r<c>` | replace every selected char |
| `J` | join the lines (at least two) |
| `I` `A` | Insert at the start / after the end of the selection (linewise: first non-blank / line end) |
| `o` | swap cursor and anchor |
| `v` `V` `Ctrl+V` | switch kind, or leave when it is the current one |
| Esc | leave |
| `[count] i<obj>` `a<obj>` | select a text object; a line object switches to V-LINE (`vip`). Repeating a bracket or tag object grows the selection outward (`vi(i(`) |

**Block** (`Ctrl+V`): lines between anchor and cursor × the char columns between them; `$` extends every line to its end. `d`/`x`/`y` store a block register; `c`/`s`/`I` insert at the left column and `A` after the right one (with `$`: at each line end). On Esc, text typed on the first line without a line break is copied to the other lines: `I`/`c` skip lines shorter than the column, `A` pads them with spaces. All of it is one undo step. `r`, `~`, `u`, `U` act on the block; `>`, `<`, `J` on its lines.

### Text objects

After an operator (`diw`, `ca(`, `yip`) or in Visual mode (`vi"`). `i` is inner, `a` around. A count picks the `count`-th object (or `count` words, sentences, paragraphs). No match, or an empty object in Visual, does nothing.

| Object | Inner | Around |
|---|---|---|
| `w` / `W` | runs of one word class (blanks are a run), in the cursor line; `W` splits on blanks only | plus trailing blanks, or leading ones when there are none |
| `s` | a sentence (ends at `.`/`!`/`?`, optional `)]"'`, then a blank or the paragraph end) or the blanks between two, inside the cursor's paragraph; crosses lines | plus trailing blanks (leading ones when there are none); on blanks, the blanks and the next sentence |
| `p` | lines that are all blank or all non-blank (whitespace-only lines are blank), linewise | plus the following blank lines, or the preceding ones at the end of the text |
| `"` `'` `` ` `` | between the first quote pair in the line ending at or after the cursor; a quote after an odd number of `\` does not count | plus the quotes and trailing blanks |
| `(` `)` `b`, `[` `]`, `{` `}` `B`, `<` `>` | inside the `count`-th enclosing pair, across lines; linewise when both brackets sit alone at the edges of a multi-line block (`di{` on a function body) | plus the brackets |
| `t` | between the tags of the `count`-th element enclosing the cursor (`<!…>`, `<?…>`, `…/>` skipped; unclosed tags like `<br>` ignored) | plus the tags |

### Insert

Printable chars, Enter, Tab (`tabstop` spaces), Backspace/Delete (join lines at edges), arrows, Home/End, PgUp/PgDn. Esc → Normal, cursor one char left (block insert: back to the block start). Only `KeyEventKind::Press` events are handled.

**Autoindent**: Enter, `o`, `O` (and their count repeats) copy the leading blanks of the current line (Enter: only those before the cursor); `cc`/`S` keep them. A line left holding only that indent is emptied on Esc or Enter, like vim.

### Command line and search

Typed in the status row; Backspace on an empty line or Esc cancels.

| Command | Action |
|---|---|
| `:w` | save |
| `:q` | quit; refuses with unsaved changes (`No write since last change (add ! to override)`) |
| `:q!` | quit, discarding changes |
| `:wq` | save and quit (stays open if the save fails) |
| `:x` | save if dirty, then quit |
| `:e` | reload the file from disk; refuses with unsaved changes |
| `:e!` | reload, discarding changes; undo history starts over, `--eol` still applies |
| `:<n>` | go to line `n` |
| `:noh[lsearch]` | hide search highlights until the next search, `n` or `N` |
| `:set …` | options, below |
| `/pat` | search forward from the cursor, wrapping; empty `pat` reuses the last one |

Unknown commands report `Not an editor command: <cmd>`.

**Search**: literal text. While typing (incsearch) the cursor previews the first match from where `/` started and the typed pattern is highlighted; Esc goes back. After Enter every match of the last search on screen is highlighted (hlsearch, yellow) until `:noh`.

### Options (`:set`)

`:set name`, `:set noname`, `:set invname` / `name!` (toggle), `:set name=value`, `:set name?`; several per command; `:set` alone lists all. Errors: `Unknown option: <arg>`, `Invalid argument: <arg>`.

| Option | Short | Default | Meaning |
|---|---|---|---|
| `number` | `nu` | on | absolute line numbers |
| `relativenumber` | `rnu` | on | distances from the cursor line; with `number`, the cursor line shows its absolute number, else `0` |
| `cursorline` | `cul` | on | cursor line background |
| `tabstop` | `ts` | 4 | tab width (1–32), spaces inserted by Tab, `>`/`<` shift |
| `background` | `bg` | detected | `dark` or `light` palette |
| `cursorlinebg` | `clbg` | palette | cursor line background, xterm 256-color index |
| `numberfg` | `nufg` | palette | line number color |
| `cursornumberfg` | `cnufg` | palette | cursor line number color |

Palettes (`Palette::new`): dark — cursor line 236, numbers 243, cursor line number 214 (bold), matches 16 on 220; light — 254, 244, 166, matches 16 on 228. With both `number` and `relativenumber` off there is no gutter.

## Internals

- **Cursor**: `(line, col)` with `col` in chars; byte offset = `line_to_offset(line)` + byte of the `col`-th char of `line(line)`. Normal mode clamps `col` to the last char.
- **Key parsing**: Normal keys accumulate in `pending` (Ctrl+D/U/R/A/X/V mapped to `\x04`/`\x15`/`\x12`/`\x01`/`\x18`/`\x16`, arrows to `hjkl`) and `parse` re-reads them on every key: `Incomplete`, `Invalid`, or `Cmd { reg, count, op, key, arg }`. `gu`/`gU`/`g~` become private-use operator chars. Visual mode handles its own keys (`VISUAL_KEYS`, `r<c>`, `i`/`a` + object, `"x`) and parses the rest as motions.
- **Motions** return a target `(line, col)` and a kind (exclusive, inclusive, linewise); operators turn it into a byte range. Word, bracket and sentence scans walk char iterators over lines (`fwd`/`bwd`) that yield `\n` at line ends.
- **Text objects**: `text_object` returns an `Obj`, a byte range or a line range; operators apply it as an exclusive or linewise motion, Visual mode turns it into anchor and cursor (`select_object`, `visual_object` for growth). Sentences are split per paragraph (`sentences`); tags are paired by one scan with a stack (`tag_pairs`, `shortcut:` it reads the whole text).
- **Search**: `search::match_starts` walks `Text::chunks` with a `memmem::Finder`; matches across chunk boundaries come from a small buffer of the previous `pat.len() - 1` bytes plus the start of the next chunk, keeping only matches that start in the buffer and end past it (no double counts, any chunk sizes). `find_text` takes the first match after the cursor (or the last before it) and wraps. Whole words check the chars around the match in its line. Highlights use `search::line_matches` on each visible line.
- **Registers**: `Registers::store` writes the named target (or `0`/the `1`–`9` shift) and `"`; `cur_reg` holds the command's `"x` until the first store or paste.
- **Marks**: byte offsets, shifted by `edit_insert`/`edit_delete` (a mark inside a deleted range moves to its start). Undo does not move them; `mark` clamps to the text and a char boundary.
- **Undo grouping**: `Document` has one undo step per effective edit and no grouping, so every edit goes through `edit_insert`/`edit_delete`, which count edits that changed the root (`ptr_eq`). The count is pushed as one group at the end of each Normal command and on Esc from Insert, so a whole insert session (including the deletion of `c`, the newline of `o` and a block insert's copies) is one `u`. `u`/`Ctrl+R` call `Document::undo`/`redo` once per edit in the group; a new edit clears the redo groups.
- **Repeat (`.`)**: `key` records every Normal, Insert and Visual key since the last Normal-mode key typed with nothing pending. A parsed command stores its count, its keys without counts (`strip_counts`) and how many keys it took; when it closes a non-empty undo group these become `LastChange { count, cmd, tail }` (`tail`: keys after the command: insert text, Visual keys). `.` replays `new count or count` + `cmd` + `tail` through `key` with recording off (`replaying`). A Visual change replays from its `v`.
- **Macros**: recorded in `key` before dispatch (skipped while a macro or `.` plays), replayed by `play_macro` with a depth counter; hitting the limit sets `macro_abort`, which stops every level.
- **Counted inserts**: Insert mode records its keys; on Esc they are replayed `count - 1` times, after opening a new line for `o`/`O`.
- **Line numbers**: `line_number(line, cursor, nu, rnu)`; a gutter of `digits(line_count) + 1` columns (`gutter_width`; distances never exceed `line_count`), right-aligned. Horizontal scrolling and the cursor column account for the gutter.
- **Rendering**: `frame(w, h)` lays out a `Frame` (rows of styled spans, cursor cell and shape, cursor line row, palette, pending clipboard text) and scrolls; `draw` turns it into crossterm commands. Only visible rows are built, each via `Text::line`, styled per char (selection over search matches over plain). Cell widths come from `unicode-width` (`cell_width`): tabs `tabstop` cells, control chars 1 (drawn as `?`), wide chars 2, combining marks 0. Horizontal scroll is by screen columns and keeps the whole cursor char visible; a wide char cut by the left edge shows as spaces. The cursor line row is padded to the full width with spaces (erasing with a background color is not portable), and `draw` sets colors after each span's attribute, because `Attribute::Reset` clears them; a span's own background (matches) wins over the cursor line's. The status bar is reversed, replaced by the `:`/`/` input line in those modes; `fit` cuts or pads it to the width in cells.
- **Dirty tracking**: `saved: Text` holds the version last written; dirty = `!doc.text().ptr_eq(&saved)`. Undoing back to the saved version makes the buffer clean again, with no diffing.
- **Saving**: resolve symlinks (`canonicalize`), write to `<target>.pt-edit.tmp` via `BufWriter`, copy the target's permissions and (best effort, unix) owner and group, `sync_all`, then `rename` over the target, so a failed write never truncates the file and a symlink stays a symlink.
- **Terminal safety**: `TerminalGuard` enables raw mode and the alternate screen and restores both (and the default cursor shape) in `Drop`, including on panic.

## Tests

`cargo test -p pt-edit`:
- Unit tests in the submodules: parser (counts, registers, case operators, `strip_counts`, key round trip), chunk search (boundary-spanning and overlapping matches over one-byte chunks), line matches, registers (shift, append, clipboard, OSC 52), options (`:set` grammar and errors), sentence splitting, escaped quotes, tag pairing.
- `src/editor/tests.rs` feeds key sequences to `Editor` (no terminal) and checks text, cursor, mode, registers and messages for every command, motion, object, mode and `:` command above, including undo grouping, `.` with counts, macros, marks following edits, block inserts, reload, and save (permissions, symlinks).
- Rendering is snapshot-tested on `Frame`s turned into text (`screen`: reversed spans in `[...]`, matches in `{...}`): gutter variants, scrolling (`zz`/`zt`/`zb`), status, selections (block too), search highlights, wide chars, tabs, command line. `draw` is checked for colors, cursor shape, palettes and OSC 52.
- A manual pty smoke test covers the real terminal.

## Limits

See [limitations.md](limitations.md): vim subset only, widths per char rather than per grapheme, block columns in chars, `"+p` uses the editor's copy, macros apart from registers, marks not moved by undo, tag scan O(n), save breaks hard links.
