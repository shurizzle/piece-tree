# `rim`

Minimal vim-like terminal editor in `crates/rim/`. Purpose: exercise the library by hand, especially `Text::line` (the render hot path) and regex search/replace (`Text::find_from`, `find_iter`, `Document::replace_matching`). It only uses the library's public API.

| File | Holds |
|---|---|
| `src/main.rs` | CLI, theme detection, init file, OSC 52 clipboard query, `TerminalGuard`, event loop (polls background saves) |
| `src/editor.rs` | `Editor` state, mode handlers, edits and undo groups, operators, paste, Visual and block ops, `:s`, save/reload |
| `src/editor/buffers.rs` | `Buffer` (document, file, marks, options), `:e file`, `:b`, `:ls`, `:bd`, `Ctrl+^`, background `:w` (`Saving`) |
| `src/editor/windows.rs` | `Window` (cursor, scroll), `Split` layout tree, `Rect`s, `neighbor`, `:sp`/`:vs`, `Ctrl+W` |
| `src/editor/ex.rs` | command lines: range parser (shared by every `:` command), name and argument, dispatcher, line commands (`:d :y :m :t :> :< :j :p := :normal :g :v :sort :r :w :sav :retab`, `:set ff`), `LineMarks`, atomic write |
| `src/editor/parse.rs` | Normal-mode grammar (`parse`, `Cmd`), key sets, `strip_counts`, key ↔ char mapping, keys ↔ register text (`key_char`, `text_keys`) |
| `src/editor/graphemes.rs` | grapheme clusters (columns, widths, spans), `LineIndex` of long lines |
| `src/editor/layout.rs` | row layout of wrapped lines (`Rows`, `Layouts`) |
| `src/editor/motion.rs` | cluster iterators, motions, finds, `%`, screen lines, marks, search over the text |
| `src/editor/objects.rs` | text objects |
| `src/editor/search.rs` | `Search` (pattern + compiled `piece_tree::Regex`), forward/backward wrap, matches inside a line |
| `src/editor/substitute.rs` | `:s`/`:&` arguments (delimiters, escapes, flags) |
| `src/editor/registers.rs` | registers, OSC 52 escape and reply parser |
| `src/editor/options.rs` | `:set` options |
| `src/editor/highlight.rs` | `:highlight` groups, built-in defaults, resolving a group to colors |
| `src/editor/filetype.rs` | filetype detection from file name, filetype → grammar name |
| `src/editor/builtin.rs`, `src/editor/queries/` | grammars linked into the binary and our text object and locals queries |
| `src/editor/syntax.rs` | tree-sitter: grammar loading, incremental tree, locals, injections, highlight colors, `f`/`c`/`a` objects (see [syntax.md](syntax.md)) |
| `src/editor/render.rs` | `Frame` layout, `draw`, cell widths |
| `src/editor/tests.rs` | key-sequence and frame tests; the submodules keep their own unit tests |

## Usage

```sh
rim <file>...
```

- Every file is loaded into a buffer (a file named twice once); the first is shown, `:bn`/`:b N` reach the others.

- Missing file → empty buffer; created on first save.
- Files are loaded with `Document::from_string`, which keeps the file's buffer without copying it.
- Non-UTF-8 file → error on startup (`read_to_string`).
- The line ending is detected per file; `:set ff=unix|dos|mac` changes it.
- At startup the terminal background is queried (`terminal-colorsaurus`, before raw mode); a light one selects the light highlight defaults (`background=light`). Errors or no answer → dark.
- Then the init file `$XDG_CONFIG_HOME/rim/init` (or `~/.config/rim/init`) is read, if it exists: `set`/`se`, `syntax`/`syn` and `highlight`/`hi` lines (a leading `:` is allowed), `"` comments and blank lines. Any other line, or an option error, is reported on the message line with its line number (`line 2: only :set, :syntax and :highlight are allowed`); the other lines still apply. Files after the first copy the options.

## Modes

Starts in Normal. Status bar: `MODE | name [+] | Ln, Col | EOL | pending keys [recording @r] message`; with several windows each window has its own status row (` name [+] | Ln, Col | EOL`, reversed for the current one) and the last row is `MODE | pending keys [recording @r] message`, with `MODE` one of `NORMAL`, `INSERT`, `REPLACE`, `VISUAL`, `V-LINE`, `V-BLOCK`. Cursor is a block in Normal and Visual, a bar in Insert, Replace and on the command line.

A column is a grapheme cluster (an extended one, `unicode-segmentation`): `e` + U+0301, a ZWJ emoji sequence or a flag is one cursor position, one `x`, one `r` target, and is drawn as one glyph of its width.

### Normal

Grammar: `["x] [count] cmd [char]` or `["x] [count] op [count] (motion [char] | (i|a) object | op)`; the register may also follow the count (`3"ap`). Counts multiply (`2d3w` = `d6w`), capped at 1 000 000. A leading `0` is the motion. Esc, an unknown key or an invalid register cancels pending keys.

| Motion | Kind | Notes |
|---|---|---|
| `h` `l` (←/→) | exclusive | by clusters; stay in the line |
| `j` `k` (↓/↑) | linewise | keep `want_col` |
| `Ctrl+D` `Ctrl+U` (PgDn/PgUp) | linewise | half a screen of rows (wrapped lines count for the rows they show) |
| `w` `b` | exclusive | cross lines; word classes: word chars (alnum, `_`), other non-blank, blank; an empty line is a word |
| `e` | inclusive | |
| `0` (Home) `^` | exclusive | |
| `$` (End) | inclusive | count = lines down; `want_col` sticks to the line end |
| `gg` `G` | linewise | count = line number; cursor on the first non-blank |
| `gj` `gk` | exclusive | down/up by screen rows (`wrap`; else `j`/`k`), keeping the screen column across consecutive uses (`want_x`); stops at the text edges |
| `H` `M` `L` | linewise | top/middle (middle screen row)/bottom line shown whole; count = lines from the top/bottom; `H`/`L` stay `scrolloff` lines from the edge unless it is the text's start/end |
| `%` | inclusive | the bracket matching the first `()[]{}` at or after the cursor in the line, across lines |
| `N%` | linewise | line at N percent of the text |
| `n` `N` | exclusive | next/previous match of the last search in its direction (`?` reverses `n`), wrapping, with its offset; the next match may start inside the current one (vim) |
| `gn` `gN` | exclusive | with an operator: the match under the cursor, else the next/previous one (`dgn`, `cgn` then `.` repeats on the next match). Alone: selects it in Visual. Inside Visual: extends the selection to the end of the next match (`gN`: the start of the previous one); a repeated `gn` moves on |
| `N\|` | exclusive | to column (cluster) N of the line |
| `go` | exclusive | to byte N (count) of the text |
| `*` `#` | exclusive | search `\b<word>\b` for the word under the cursor (or the next one in the line), forward/backward |
| `f<c>` `t<c>` | inclusive | to the `count`-th `c` in the line / one char before it |
| `F<c>` `T<c>` | exclusive | same, backward |
| `;` `,` | as the find | repeat the last find in the same/opposite direction; a repeated `t`/`T` skips an adjacent match (vim default `cpo`) |
| `` `<m> `` | exclusive | to mark `m`; ` `` ` to where the last jump started |
| `'<m>` | linewise | to mark `m`'s line, first non-blank; `''` to the last jump's line |

Jumps (`G gg % n N * # H M L`, marks, `/`, `:<n>`) save the cursor as the `'` mark and at the end of the window's jump list first (an older entry on the same line is dropped; at most 100). `Ctrl+O` goes `count` entries back (first adding the cursor, so `Ctrl+I` returns), `Ctrl+I` (Tab) forward; an entry in another buffer switches to it. Each buffer keeps a change list: the place of the last edit of every changing command (one entry per line in a row, at most 100); `g;` goes `count` entries back, `g,` forward (`At start of change list`, `At end of change list`, `Change list is empty`). Both lists follow edits like marks.

| Operator | Action |
|---|---|
| `d` | delete into the register |
| `c` | delete, then Insert (`cc` keeps the first line's indent) |
| `y` | yank into the register |
| `>` `<` | move the indent by `shiftwidth` columns (a tab counts as `tabstop`); the indent is written again as spaces (`expandtab`) or tabs then spaces; always linewise; empty lines are not indented |
| `gu` `gU` `g~` | lowercase / uppercase / toggle case |

Doubled (`dd`, `cc`, `yy`, `>>`, `<<`, `guu`/`gugu`, `gUU`/`gUgU`, `g~~`/`g~g~`) acts on `count` lines. Vim special cases: `cw` on a non-blank acts like `ce`; with an operator, `w` stops at the end of the line of the last word moved over (`dw` on a line's last word does not join lines).

| Command | Action |
|---|---|
| `i` `a` `I` `A` | Insert before/after cursor, at first non-blank, at line end; with a count the typed text is repeated on Esc (`3ix<Esc>` → `xxx`) |
| `o` `O` | open a line below/above with the current indent; with a count, each repeat opens one more line |
| `v` `V` `Ctrl+V` | Visual mode: charwise, linewise, block |
| `r<c>` | replace `count` clusters with `c` (nothing if fewer remain) |
| `R` | Replace mode: typed chars take the place of the clusters under the cursor (added at the line end); Backspace puts back what was typed over; a count repeats the typed text; Esc leaves |
| `~` | toggle case of `count` clusters, cursor moves past them |
| `.` | repeat the last change; a count replaces the original one (`2dd` then `3.` deletes 3 lines) |
| `x` `D` `C` `S` | `dl`, `d$`, `c$`, `cc` |
| `J` | join `max(count, 2)` lines with one space (none before an empty line) |
| `gJ` | join without removing blanks or adding a space |
| `p` `P` | paste after/before (linewise: below/above the line; block: at the cursor's screen column on successive lines, padding short ones), `count` times |
| `gp` `gP` | as `p`/`P`, cursor just after the pasted text |
| `]p` | as `p`, a linewise register re-indented: its first line takes the cursor line's indent, the others keep theirs relative to it |
| `gv` | select the last Visual selection again (kind, anchor and cursor, moved by edits) |
| `gi` | Insert where Insert mode was last left (mark `^`) |
| `Ctrl+O` `Ctrl+I` (Tab) | back/forward through the jump list |
| `g;` `g,` | back/forward through the change list |
| `Ctrl+E` `Ctrl+Y` | scroll `count` lines down/up; the cursor moves only to stay on screen (and `scrolloff` lines inside) |
| `Ctrl+F` `Ctrl+B` | scroll `count` pages (the screen minus two lines) down/up, the same way |
| `u` `Ctrl+R` | undo/redo `count` commands; the cursor goes to the start of the change |
| `g-` `g+` | `count` versions back/forward in time, across undo branches |
| `Ctrl+A` `Ctrl+X` | add/subtract `count` to the decimal number at or after the cursor in the line (`-` sign included); cursor on its last digit; `i64` overflow → `Number out of range` |
| `m<a-z>` | set a mark |
| `q<a-z>` … `q` | record a macro into the register (`q<A-Z>` appends) |
| `[count]@<r>` `@@` | play register `r` as keys (any register, `+` asks the terminal), or the last one played |
| `zz` `zt` `zb` | scroll so the cursor line is in the middle, at the top, at the bottom |
| `:` `/` | command line, search |

### Registers

| Register | Content |
|---|---|
| `"` | unnamed: the last yank or delete (also after a named one) |
| `0` | last yank without a register |
| `1`–`9` | deletes and changes without a register, newest in `1` (each shifts the others) |
| `a`–`z` | named; `A`–`Z` append to them (a linewise append makes the register linewise) |
| `+` `*` | system clipboard: writes go out as OSC 52 on the next draw; reads (`"+p`, `Ctrl+R +`, `@+`) ask the terminal with an OSC 52 query (text ending in a line break is linewise). No answer within 500 ms → `Clipboard read failed: the terminal did not answer OSC 52`; there is no fallback, so a terminal without OSC 52 reads (or with them disabled) cannot paste the system clipboard |

Kinds: charwise, linewise (text ends with `\n`; pasting below the last line moves that `\n` to the front) and block (one string per line).

### Macros

`qa` records every key in every mode (command line and search included) until `q` in Normal mode with nothing pending; the status bar shows `recording @a`. The keys are stored as the text of register `a` (`qA` appends), without touching `"` or the numbered registers: chars as themselves, Ctrl+<letter> as its control char, Esc `\x1b`, Enter `\r`, Backspace `\x7f`, Tab `\t`, arrows, Home/End, PgUp/PgDn and Delete as private-use chars (U+E200…). So `"ap` pastes a macro and `"ay…` (or any yank into the register) edits it. `@a` turns the register text back into keys (Enter for `\r` and `\n`) and replays them through the normal key handler; keys a macro plays are not recorded again. A macro calling macros stops after 100 nested levels (`Macro recursion too deep`). A `:q` inside a macro quits.

### Visual

`v`/`V`/`Ctrl+V` start a selection from the cursor (the anchor) to the cursor. Marks `<` and `>` track its start and end (`'<` is the first line, `` `< `` the exact position) and stay after leaving Visual; `gv` selects it again. Every Normal motion, with counts and char arguments, moves the cursor end. A charwise selection ending on an empty line includes its line break. The selection is drawn reversed; a selected line break shows as one reversed cell. A `"x` prefix names the register.

| Key | Action |
|---|---|
| `d` `x` | delete |
| `c` `s` | change |
| `y` | yank |
| `>` `<` | shift the lines `count` times |
| `~` `u` `U` | toggle / lower / upper case |
| `r<c>` | replace every selected cluster |
| `J` | join the lines (at least two) |
| `I` `A` | Insert at the start / after the end of the selection (linewise: first non-blank / line end) |
| `o` | swap cursor and anchor |
| `:` | command line prefilled with `'<,'>` (the selection's lines) |
| `v` `V` `Ctrl+V` | switch kind, or leave when it is the current one |
| Esc | leave |
| `[count] i<obj>` `a<obj>` | select a text object; a line object switches to V-LINE (`vip`). Repeating a bracket or tag object grows the selection outward (`vi(i(`) |

**Block** (`Ctrl+V`): lines between anchor and cursor × the screen columns from the leftmost cell of the two corners to the last cell of the rightmost one, so tabs and wide chars keep it straight; on each line the clusters with a cell in those columns (a tab or wide char cut by an edge is taken whole); `$` extends every line to its end. `d`/`x`/`y` store a block register; `c`/`s`/`I` insert at the left screen column and `A` after the right one (with `$`: at each line end). On Esc, text typed on the first line without a line break is copied to the other lines: `I`/`c` skip lines narrower than the column, `A` pads them with spaces. All of it is one undo step. `r`, `~`, `u`, `U` act on the block; `>`, `<`, `J` on its lines.

### Text objects

After an operator (`diw`, `ca(`, `yip`) or in Visual mode (`vi"`). `i` is inner, `a` around. A count picks the `count`-th object (or `count` words, sentences, paragraphs). No match, or an empty object in Visual, does nothing.

| Object | Inner | Around |
|---|---|---|
| `w` / `W` | runs of one word class (blanks are a run), in the cursor line; `W` splits on blanks only | plus trailing blanks, or leading ones when there are none |
| `s` | a sentence (ends at `.`/`!`/`?`, optional `)]"'`, then a blank or the paragraph end) or the blanks between two, inside the cursor's paragraph; crosses lines | plus trailing blanks (leading ones when there are none); on blanks, the blanks and the next sentence |
| `p` | lines that are all blank or all non-blank (whitespace-only lines are blank), linewise | plus the following blank lines, or the preceding ones at the end of the text |
| `"` `'` `` ` `` | between the first quote pair in the line ending at or after the cursor; a quote after an odd number of `\` does not count | plus the quotes and trailing blanks |
| `(` `)` `b`, `[` `]`, `{` `}` `B`, `<` `>` | inside the `count`-th enclosing pair, across lines; linewise when both brackets sit alone at the edges of a multi-line block (`di{` on a function body) | plus the brackets |
| `f` `c` `a` | function, class, parameter from the grammar's `textobjects.scm` (`@function.inside`/`.around`, …); the smallest holding the cursor (also inside an injected block), `count` goes outward; needs a grammar (see [syntax.md](syntax.md)); CSS rules and at-rules are classes | the `.around` capture; for a parameter also its comma |
| `t` | between the tags of the `count`-th element enclosing the cursor (`<!…>`, `<?…>`, `…/>` skipped; unclosed tags like `<br>` ignored) | plus the tags |

### Insert

Printable chars, Enter, Tab (`tabstop` spaces with `expandtab`, else a tab), Backspace/Delete (a cluster; join lines at edges), arrows, Home/End, PgUp/PgDn. A typed combining mark joins the cluster before it. Esc → Normal, cursor one cluster left (block insert: back to the block start); the mark `^` keeps where Insert was left (`gi`). Only `KeyEventKind::Press` events are handled.

| Key | Action |
|---|---|
| `Ctrl+W` | delete the blanks and the run of one word class before the cursor; at the line start, the line break (like Backspace) |
| `Ctrl+U` | delete back to the indent, or to the line start from inside the indent |
| `Ctrl+R <r>` | insert the text of register `r` (`+`: the system clipboard) |
| `Ctrl+O` | run one Normal command, then back to Insert (a command that did not move keeps the cursor past the line end; a count on the insert is dropped) |
| `Ctrl+V <key>` | insert the key itself: Tab as a tab (also with `expandtab`), Ctrl+<letter> as its control char, Esc as `\x1b`; Enter as a line break (the text holds no lone `\r`) |

In Replace mode (`R`) the same keys apply, typed chars replace clusters, and Backspace restores them.

**Autoindent**: Enter, `o`, `O` (and their count repeats) copy the leading blanks of the current line (Enter: only those before the cursor); `cc`/`S` keep them. A line left holding only that indent is emptied on Esc or Enter, like vim.

### Command line and search

Typed in the status row; Backspace on an empty line or Esc cancels.

- **History**: `:` lines and `/`/`?` searches each keep the last 100 entered (Enter; no repeat of the previous one). Up/Down walk the entries starting with what was typed, newest first; past the newest, the typed text comes back.
- **Completion**: Tab completes the word: the command name after the range (`:und` → `undo`, `undolist`), or the file name argument of `:e :sp :vs :r :w :sav :wq :x` (directories end in `/`, hidden files only after a `.`). More Tabs cycle through the sorted candidates, Shift+Tab backward.
- **`Ctrl+R <r>`** inserts register `r` (a linewise one without its final line break).

| Command | Action |
|---|---|
| `:w` `:w!` | save, on a background thread (`"name" writing...`, then `"name" written (EOL)`); editing goes on meanwhile |
| `:q` | close the window; on the last one quit, refusing while any buffer has unsaved changes (`No write since last change (add ! to override)`, or `... for buffer N "name" ...` for another buffer); waits for running saves first |
| `:q!` | close the window / quit, discarding changes |
| `:qa[ll]` `:qa!` | quit from any window (same check / discarding) |
| `:wq` | save (waiting for it) and `:q` (stays open if the save fails) |
| `:x` | save if dirty, then `:q` |
| `:wqa` `:xa` | save every modified buffer, then quit |
| `:e file` | edit `file`: the buffer already holding it (same canonical path), else a new one (missing file: empty); the current buffer stays loaded even if modified (vim's `hidden`) |
| `:bn [N]` `:bp [N]` (`:bN`) | next/previous buffer, wrapping |
| `:b N` | buffer N |
| `:ls` (`:buffers`, `:files`) | `N %a/# [+ ]"name" line L` per buffer, `\|`-separated (`%a` current, `#` alternate) |
| `:bd[!] [N]` | delete buffer N (default current); refuses a modified one without `!`; windows showing it move to the alternate or first other buffer; the last buffer cannot be deleted |
| `Ctrl+^` | alternate buffer (the one shown before) |
| `:sp [file]` `:vs [file]` | split the window: a new view of the same buffer and cursor above / on the left (then `:e file` in it) |
| `:clo[se]` `:on[ly]` | close the window (not the last) / close all others |
| `Ctrl+W h/j/k/l` | to the window left/below/above/right, the one across that edge on the cursor's row/column; a count repeats |
| `Ctrl+W w` | next window in layout order (wraps); `N Ctrl+W w` the Nth |
| `Ctrl+W c` `o` `s` `v` | `:close`, `:only`, `:sp`, `:vs` |
| `:e` | reload the file from disk; refuses with unsaved changes |
| `:e!` | reload, discarding changes; undo history starts over, the line ending is detected again |
| `:<n>` `:/pat/` `:'m` … | go to the line of the (last) address; past the end: the last line |
| `:noh[lsearch]` | hide search highlights until the next search, `n` or `N` |
| `:u[ndo]` / `:red[o]` | undo / redo one step |
| `:undo N` | go to version N (0 is the loaded text), on any branch |
| `:ea[rlier] N` / `:lat[er] N` | N versions back/forward in time (`g-`/`g+`) |
| `:earlier Ns` (`m`, `h`, `d`) / `:later Ns` | to the version from that long before/after the current one |
| `:stats` | pieces, chunks, memory bytes (`Text::memory_bytes`), bytes, chars, lines and versions of the current text |
| `:compact` | `Document::compact` into 64 KiB chunks (`N pieces -> M`); history kept, a clean buffer stays clean |
| `:undol[ist]` | `at <current> of <newest> \| seq:changes:age` for each branch tip |
| `:[range]s/pat/rep/[flags]` | substitute, below |
| `:[range]d …` `:m` `:t` `:g` `:sort` `:r` `:w file` … | line commands, below |
| `:set …` | options, below |
| `:syntax`, `:syntax on`, `:syntax off` (`:syn`) | says whether syntax is on, or switches it for the whole editor: off parses and colors nothing (the trees are dropped) and `f`/`c`/`a` do nothing; on rebuilds from each buffer's filetype. Also valid in the init file |
| `:hi[ghlight]` | `:hi` lists the groups the user defined (the built-in ones, ~60, do not fit the status line), `:hi Group` shows one; `:hi [default] Group key=value…` sets keys (`ctermfg`/`ctermbg` 0–255 or `NONE`, `guifg`/`guibg`/`guisp` `#rrggbb` or `NONE`, `ctermfg`/`ctermbg` also a color name (`DarkBlue`, `LightGray`, … 0–15 of xterm), `guifg`/`guibg`/`guisp` also a name (`Red`, `SeaGreen`, … RGB; names are case-insensitive, the table is `NAMES`), `guisp` is checked and shown but not drawn, `cterm`/`gui` comma list of `bold,italic,underline,undercurl,strikethrough,reverse` (`inverse`) or `NONE`), keys not given keep their value (the built-in group's included) and any key drops a link; `:hi [default] link A B` (`B` = `NONE` clears `A`); `:hi clear [Group]` drops the user's definitions and brings the built-in ones back. `default` changes nothing for a group the user already defined. Capture groups are `@name` (Neovim names): `@function.method` falls back to `@function` by prefix, a name that is no capture gives `Unknown capture: @name` and nothing changes. Built-in interface groups: `Normal` (base fg/bg of every cell), `LineNr`, `CursorLineNr` (bold), `CursorLine` (its bg), `Search` (`hlsearch`/`incsearch`/`:s///c`), `Visual` (reverse), `StatusLine`, `StatusLineNC`, `VertSplit`. Global (all buffers); `:set bg=` switches the built-in set, user definitions stay |
| `/pat[/off]` `?pat[?off]` | search forward/backward from the cursor, wrapping; empty `pat` reuses the last one; `off` below |
| `:s…` `:&` `:&&` | substitute / repeat the last one (`:&&` keeps its flags) |
| `:go[to] N` | to byte N of the text |
| `Ctrl+G` | file name, line, size; `g Ctrl+G` counts: lines, words, chars, bytes (of the selection in Visual) |
| `ga` `g8` | codepoint of the char under the cursor in decimal/hex/octal; its UTF-8 bytes |
| `&` `g&` | `:s` again on the line / `:%s//~/&` (last substitute, same flags, whole text) |

Unknown commands report `Not an editor command: <cmd>`.

### Ex ranges and line commands

Every `:` command line is `[range] name[!] [arg]` (`ex::parse`); names take vim's abbreviations (`:d[elete]`, `:norm[al]`, `:sor[t]`).

- **Addresses**: `N` (0 is "before the first line": `:0r`, `:m0`; elsewhere it counts as 1), `.`, `$`, `'m` (marks, `'<`/`'>`), `/pat/` (next line with a match after the cursor line, wrapping), `?pat?` (previous), `\/` `\?` (next/previous with the last search), `\&` (next with the last substitute pattern), each with `+N`/`-N` (`+` alone is `.+1`). `%` is `1,$`. `a,b` counts both from the cursor line, `a;b` the second from the first (`:/x/;/y/d`); backwards ranges are swapped. A line past the end is `Invalid range` (except for `:N` alone, which goes to the last line), an unset mark `Mark not set`, a failed search `Pattern not found: pat`. Address patterns, `:g` and `:sort` patterns match `^`/`$` at line breaks (`(?m)`), an empty one is the last search, and they become the last search.
- **Default range**: the cursor line, except `:w`, `:g`/`:v`, `:sort`, `:retab` (whole text) and `:=` (last line).

| Command | Action |
|---|---|
| `:[range]d [x] [count]` | delete lines (linewise register; `count` lines from the range's last line) |
| `:[range]y [x] [count]` | yank lines; the cursor stays |
| `:[range]m {addr}` | move the lines below `addr` (`0`: on top); into itself → `Cannot move a range of lines into itself` |
| `:[range]t {addr}` `:co` | copy the lines below `addr` |
| `:[range]> [count]` `:<` | shift by `shiftwidth` as `>`/`<`; each extra `>`/`<` once more (`:>>>`) |
| `:[range]j[!] [count]` | join (one address: with the next line); `!` keeps blanks and adds no space |
| `:[range]p` | show the last line of the range and go there |
| `:[range]=` | line number of the last address (default: line count) |
| `:[range]norm[al] {keys}` | run `keys` in Normal mode at the cursor, or at column 0 of each line of the range; an unfinished command or insert ends as with Esc; not recorded by `q` |
| `:[range]g/pat/[cmd]` `:g!` `:v` | mark the lines with a match starting on them (without, for `:g!`/`:v`), then run `cmd` (default `:p`) on each one still there; `Pattern not found: pat` / `Pattern found in every line: pat`; not nestable (`Cannot do :global recursive`) |
| `:[range]sor[t][!] [i] [n] [u] [r] [/pat/]` | stable sort (`!` reversed, `i` ignore case, `n` by the first decimal number with its `-`, lines without one first, `u` drop equal lines); with `/pat/` by what follows the first match (`r`: by the match), lines without a match first in their order |
| `:[range]r [file]` | the file's lines below the last address (`:0r` on top), line endings converted like on load; the current file without a name |
| `:[range]w[!] file` `:w >> file` | write (or append) the lines to another file, in the buffer's line ending; an existing file needs `!`; `:[range]w!` without a name writes the lines to the buffer's file (`Use ! to write partial buffer` without `!`) |
| `:sav[eas][!] file` | write the buffer to `file` and edit it from now on |
| `:[range]ret[ab][!] [N]` | redo each run of blanks holding a tab for tab stop N, then set `tabstop=N`: as spaces with `expandtab`, else tabs then spaces, and then `!` also turns runs of spaces into tabs; columns are screen cells (a wide char counts 2) |
| `:set ff=unix\|dos\|mac` `:set ff?` | the buffer's line ending (written on the next save; the buffer becomes modified) |

Each command line is one undo step (`:g` and `:normal` included) and `.` does not repeat it.

**Search**: patterns are Rust `regex` syntax (piece-tree's `Regex`): `\d+`, `(?i)foo`, `^`/`$` per line, `\b`. With `ignorecase` a pattern ignores case (`/`, `?`, `:s`, `:g`, `:sort`, address patterns), unless `smartcase` and it holds an uppercase letter; `*`/`#` follow `ignorecase` only, as in vim. While typing (incsearch, with `incsearch`) the cursor previews the first match from where `/` started and the typed pattern is highlighted; a pattern that does not compile yet (`(`) previews nothing; Esc goes back. **Search offset** after the closing delimiter: `/pat/e` cursor on the last char of the match, `e+1`/`e-1` chars from there, `s+N`/`b+N` from the start, `+N`/`-N` linewise N lines down/up. `//e` reuses the last pattern with a new offset; `n` reapplies the offset. `\/` in the pattern is a literal delimiter. Matches can span lines and are highlighted across them. On Enter an invalid pattern shows `Invalid pattern: <cause>` and keeps the last search. After Enter every non-empty match on screen is highlighted (`hlsearch`, yellow) until `:noh`.

### Substitute (`:s`)

`:[range]s<d>pat<d>rep[<d>[flags]]`, one undo step, not repeated by `.`.

- **Delimiter** `<d>`: any char but alphanumerics, blanks, `\`, `"` and `|` (`:s#a/b#c#`). `\<d>` is a literal delimiter in either field.
- **Pattern**: Rust regex; other `\` escapes go to the regex. Empty: the last search. Flags `i`/`I` prefix `(?i)`/`(?-i)`.
- **Replacement**: `$1`, `${name}`, `$0` as `regex`; `\n` line break, `\t` tab, `\\` backslash, `\$` literal `$`, other `\x` is `x`.
- **Range**: none = cursor line; any range of the ex commands (above).
- **Flags**: `g` every match on a line (default: the first on each line); `i`, `I`; `n` only count (`N matches on M lines`, no change); `c` confirm each one (below); `&` (first) keep the flags of the last substitute; anything else → `Trailing characters: <rest>`.
- **Confirm** (`c`): the cursor goes to each match and the status asks `replace with X (y/n/a/q/l)?`: `y` replace, `n` skip, `a` replace this and all the rest, `l` replace this and stop, `q`/Esc stop; other keys are ignored. The whole session is one undo step. The match being asked about is drawn reversed, like a selection (`Confirm::cur`, `selection` in `render.rs`); the other matches keep the search highlight.
- **Repeat**: `:&` is the last pattern and replacement with the flags reset, `:&&` (or the `&` flag) keeps them; `&` = `:&` on the line, `g&` = whole text keeping flags. Without a previous substitute: `No previous substitute`.
- A match belongs to the line where it starts, so `:s/\n//` joins lines and `:s/$/!/` appends.
- Result: `N substitution(s) on M line(s)` or `Pattern not found: pat`; the pattern becomes the last search (`n`, highlights); the cursor goes to the first non-blank of the line where the last substitution ends.

### Options (`:set`)

`:set name`, `:set noname`, `:set invname` / `name!` (toggle), `:set name=value`, `:set name?`; several per command; `:set` alone lists all. Errors: `Unknown option: <arg>`, `Invalid argument: <arg>`.

| Option | Short | Default | Meaning |
|---|---|---|---|
| `number` | `nu` | on | absolute line numbers |
| `relativenumber` | `rnu` | on | distances from the cursor line; with `number`, the cursor line shows its absolute number, else `0` |
| `cursorline` | `cul` | on | cursor line background |
| `wrap` | | on | long lines continue on the next screen rows (break on cell width, a char never splits); `nowrap` scrolls sideways |
| `tabstop` | `ts` | 4 | tab width (1–32), the width Tab inserts |
| `expandtab` | `et` | on | Tab, `>`/`<` and `:retab` write spaces; off: tabs (then spaces) |
| `shiftwidth` | `sw` | 0 | columns of one `>`/`<` shift (0–32); 0 is `tabstop` |
| `list` | | off | a tab shows as `>` then spaces (same width), the line end as `$` |
| `ignorecase` | `ic` | off | searches ignore case |
| `smartcase` | `scs` | off | with `ignorecase`, a pattern holding an uppercase letter keeps case |
| `hlsearch` | `hls` | on | highlight the last search's matches |
| `incsearch` | `is` | on | preview and highlight the pattern being typed |
| `scrolloff` | `so` | 0 | lines kept above and below the cursor (at most half the screen) |
| `compactat` | | 10000 | after 1 s without keys (`main`: `event::poll`, once per quiet period), `Editor::idle` runs `:compact` when the text has more pieces than this, in Normal mode between commands; 0 disables it |
| `filetype` | `ft` | by name | kind of file, buffer-local; set when a buffer opens from its name (`editor/filetype.rs`: extension or names like `Makefile`; empty when unknown), `:set ft=name` overrides (any value) |
| `background` | `bg` | detected | `dark` or `light` set of built-in highlight groups |
| `termguicolors` | `tgc` | off | groups draw with their `guifg`/`guibg`/`gui` (truecolor), falling back to the `cterm*` value of each key that has no `gui*` one |

Default groups: dark — cursor line bg 236, `LineNr` 243, `CursorLineNr` 214 (bold), `Search` 16 on 220; light — 254, 244, 166, 16 on 228. With both `number` and `relativenumber` off there is no gutter.

## Internals

- **Cursor**: `(line, col)` with `col` a grapheme cluster index; byte offset = `line_to_offset(line)` + byte of the `col`-th cluster of the line (`offset_of`, `pos_of`, `line_chars` = clusters in the line). Normal mode clamps `col` to the last cluster.
- **Graphemes** (`graphemes.rs`): a line is scanned in spans, either a run of chars that are each a cluster or one cluster from `unicode-segmentation`. A char is in a run when no boundary rule can join it to another run char (ASCII but `\r`, Latin to U+02FF, Greek and Cyrillic without their marks, Vietnamese and Greek extended, punctuation and symbols but ZWJ/ZWNJ and the marks for symbols, CJK symbols, kana but its tone and voicing marks, ideographs, Hangul syllables, compatibility ideographs, fullwidth forms; checked against the segmenter for every accepted char); a run's last char goes to the segmenter when a non-run char follows (`e` + U+0301). The rule is a branch-free predicate on a char's first three bytes (`complex`), so `run_end` tests 32 positions at once in three tiers (the lead byte alone, then punctuation and kana exactly, then the full check) and the run's chars are counted with `str_indices`. `iter` returns a run's chars from their lead bytes; `row_spans` and the row layout walk runs and decode each char once, the layout taking ASCII and wide ideographs' cells from the lead byte (`lead_cell`). Widths: a single char by `cell_width`, a longer cluster by `unicode-width` on the string, at least 1 (a lone combining mark is drawn on a space) and at most 2 but for tabs. Lines of at least 4 KiB get a `LineIndex` (`Buffer::cols`, the 4 most recent): cluster boundaries `(byte, column)` about 4 KiB apart, so a conversion reads one window (`Text::slice`, a copy only when it spans pieces). After each `Document` call `map_marks` passes its edits (one covering edit) to the indexes of the text they were made to: an edit outside the line moves or keeps the index, an edit inside it without line breaks rescans from the boundary before it until the scan lands again on an old boundary (a boundary in both versions, so the rest is laid out as before), and anything else drops it.
- **Key parsing**: Normal keys accumulate in `pending` (Ctrl+<letter> mapped to its control char, Ctrl+^ to `\x1e`, Tab to `\x09` (Ctrl+I); `Ctrl+W` and `]` take the next key as their argument; arrows to `hjkl`) and `parse` re-reads them on every key: `Incomplete`, `Invalid`, or `Cmd { reg, count, op, key, arg }`. `gu`/`gU`/`g~` become private-use operator chars. Visual mode handles its own keys (`VISUAL_KEYS`, `r<c>`, `i`/`a` + object, `"x`) and parses the rest as motions.
- **Motions** return a target `(line, col)` and a kind (exclusive, inclusive, linewise); operators turn it into a byte range (an inclusive end takes the whole cluster). Word, bracket and sentence scans walk cluster iterators over lines (`fwd`/`bwd`, the first char of each cluster, classed by it) that yield `\n` at line ends.
- **Text objects**: `text_object` returns an `Obj`, a byte range or a line range; operators apply it as an exclusive or linewise motion, Visual mode turns it into anchor and cursor (`select_object`, `visual_object` for growth). Sentences are split per paragraph (`sentences`); tags are paired by one scan with a stack (`tag_pairs`, `shortcut:` it reads the whole text).
- **Search**: a `Search` keeps the pattern and its compiled `piece_tree::Regex` (`Rc`, compiled once). Forward: `Text::find_from` just past the char under the cursor, else from 0 (wrapped). Backward: `Text::rfind_before` (windowed, see [search.md](search.md)). Highlights: `Text::find_iter_in` over the visible lines, split per line (`search::visible_matches`), so multi-line matches are highlighted. `/` and `?` offsets live in `search::Offset`; `n`/`N`/`*`/`#` go through `search_motion`. `:s///c` keeps a `Confirm` session (`Mode::Confirm`) stepping with `Text::replacement_at` + `Document::splice` in one group; `gn` is `Editor::select_match`.
- **Ex commands**: `ex::parse` splits the range, the name (a run of letters, or one of `& < > =`) and the rest; `substitute::parse` takes `:s`/`:&` (it returns `None` for other names, so the dispatcher in `Editor::command` goes on). `Editor::lines` resolves a range to 1-based lines (`resolve`: `/pat/` via `search::find_forward`/`find_backward` from the line after/before), `range0` to 0-based ones. Line commands use `insert_lines` (below a line, `\n` before the block or after it on top) and `delete_lines` (with the line break after, or before on the last line), so the last line needs no special case. After every command line, `line_key` closes the undo group and clears `rec_cmd` (no `.`), unless a confirm session goes on.
- **`:g` and `:normal` lines**: `for_lines` opens one `Document` group around the loop and pushes a `LineMarks` (one per nesting level, mapped in `map_marks` with the other marks): each line is `(start, end, alive)`; an edit that removes a whole line kills it, a line joined into the one above no longer starts a line and is skipped (vim: `:g/./j` joins pairs). Edits ending before the next line to visit only add to a pending shift, so `:g/^/d`, `:g/^/m0`, `:g/./j` and `:%norm Ax` stay linear (200 000 lines, release: 0.15 s, 0.4 s, 0.43 s, 0.49 s). `:normal` runs keys through `key` with `macro_depth` raised (not recorded by `q`) and ends with Esc if not back in Normal.
- **Substitute**: `Editor::substitute` resolves the range to a byte span and calls `Document::replace_matching` with a filter: match start inside the span and, without `g`, the first match per start line (`Text::offset_to_line`). The editor counts it as one tracked edit, so it is one undo group. Marks are not moved, only clamped (`shortcut:`).
- **Registers**: `Registers::store` writes the named target (or `0`/the `1`–`9` shift) and `"`; `cur_reg` holds the command's `"x` until the first store or paste. Reads go through `Editor::reg`, which asks `clipboard_reader` for `+`/`*`: `main` sets it to `read_clipboard`, which writes the OSC 52 query `ESC ] 52 ; c ; ? BEL` and reads stdin (`rustix` `poll` and `read`, up to 500 ms) until `parse_osc52_reply` finds `ESC ] 52 ; <sel> ; <base64>` ended by BEL or ST. It runs while a key is handled, when crossterm is not reading stdin, so the reply never reaches the key parser.
- **Marks**: byte offsets. After every `Document` call (edits, `:s`, undo, redo, time travel) they are mapped through `Document::last_edits` with `piece_tree::map_offset` (a mark inside a removed range moves to its start). `mark` still clamps to the text and a char boundary.
- **Undo**: the library's undo tree. Every edit goes through `Editor::edit`, which opens a `Document` group on the command's first edit; `end_command` closes it at the end of each Normal command and on Esc from Insert, so a whole insert session (including the deletion of `c`, the newline of `o` and a block insert's copies) is one version and one `u`. `u`, `Ctrl+R`, `g-`, `g+` and the `:` history commands go through `Editor::history`, which maps marks and puts the cursor at the first edit of the move (on the next line when the restored text starts with a line break, so undoing `dd` on the last line lands on it).
- **Repeat (`.`)**: `key` records every Normal, Insert and Visual key since the last Normal-mode key typed with nothing pending. A parsed command stores its count, its keys without counts (`strip_counts`) and how many keys it took; when it closes a non-empty undo group these become `LastChange { count, cmd, tail }` (`tail`: keys after the command: insert text, Visual keys). `.` replays `new count or count` + `cmd` + `tail` through `key` with recording off (`replaying`). A Visual change replays from its `v`.
- **Macros**: recorded in `key` before dispatch (skipped while a macro or `.` plays) and stored as register text (`parse::key_char`, `Registers::set_macro`); `play_macro` turns it back into keys (`parse::text_keys`, shared with `:normal`) and replays them with a depth counter; hitting the limit sets `macro_abort`, which stops every level.
- **Jump and change lists**: `Window::jumps` (buffer id, offset) with `jump_idx`, filled by `set_jump` (`push_jump`); `Buffer::changes` with `change_idx`, filled by `end_command` from the start of the command's last edit (`change_off`). `map_marks` maps both, `Buffer::last_visual` (`gv`) and the marks.
- **Insert extras**: `insert_pending` holds `Ctrl+R`/`Ctrl+V` until the next key; `Ctrl+O` sets `insert_one` (the cursor before it) and switches to Normal, and `key` switches back once a later key leaves Normal mode with nothing pending. Replace mode is Insert with `replacing` set: the clusters typed over (`None` for one added at the line end), popped by Backspace.
- **Command line**: `line_edit` handles Up/Down (`history`, `hist_at`), Tab/Shift+Tab (`ex::complete`, `completion`) and `Ctrl+R` (`line_reg`) before `line_key`'s own keys; `line_changed` then updates the incsearch preview or puts the cursor back after Esc.
- **Counted inserts**: Insert mode records its keys; on Esc they are replayed `count - 1` times, after opening a new line for `o`/`O`.
- **Line numbers**: `line_number(line, cursor, nu, rnu)`; a gutter of `digits(line_count) + 1` columns (`gutter_width`; distances never exceed `line_count`), right-aligned. Horizontal scrolling and the cursor column account for the gutter.
- **Huge lines**: every per-line scan avoids work proportional to the line where it can. `fwd`/`bwd` (the char iterators under word motions, bracket matching and `%`) read a line in place and lazily (`FwdChars`, `BwdChars`), `f`/`t`/`F`/`T`, `%`, `*`, `Ctrl-A` and the quote objects search bytes (`memchr`) and count chars only up to the hit, `iw`/`aw` move from the cursor, `first_non_blank` reads growing windows, columns ↔ bytes of a long line go through its `LineIndex` (one window per conversion, a rescan around each edit), `matches_in` keeps the highlight ranges (computed in one pass: each match's column is counted from the previous one) and `cell_width` skips the width table for ASCII and the common CJK ranges. The rows of the cursor line and of up to 3 other lines of at least `LONG_LINE` (8 KiB) bytes are kept in `Layouts` (`layout.rs`), keyed by the `Text` version. Still proportional to the line: a first jump deep into it (the `LineIndex` is built and the prefix laid out once: 2.1 M-char CJK line, `500000|` + frame 5 ms, ASCII 1 ms), `gk`/`k` into a huge line above, a failed bracket or text-object search (scans to the text start), sentence objects (they build the paragraph), `yy`/`p` of the line (copy), and a text change on a visible huge line with `hlsearch` (the regex runs from the line start to keep vim's matches).
- **Rendering**: `frame(w, h)` lays out a `Frame` (rows of styled spans, cursor cell and shape, cursor line rows and the current window's columns, the resolved interface groups (`Ui`), pending clipboard text): `Split::rects` gives each window its area, `window_rows` lays out and scrolls one window (other windows through `with_window`, without selection, cursor or cursor line), and the rows are joined left to right, padded to their window width, with a `│` column between side-by-side windows. Then the window status rows and the last row; `draw` turns it into crossterm commands. Search highlights are computed per visible line range and kept while the text version, pattern and lines stay the same (`matches_in`), in cluster columns (a match starting or ending inside a cluster covers it). Only visible rows are built, each via `Text::line`, styled per cluster (selection over search matches over plain). Cell widths come from `graphemes::width`: tabs `tabstop` cells (with `list`, `>` then spaces), control chars 1 (drawn as `?`), wide clusters 2, a lone combining mark 1 (drawn on a space); with `list` the line end shows `$`. `scrolloff` keeps that many lines above and below the cursor line when scrolling. With `wrap` (`layout.rs`: `Rows` finds row starts lazily, only as far as the screen, the cursor row or a height cap needs; `Layout` keeps the cursor line's rows between frames, and after an edit keeps the rows ending before the first changed byte and resumes from there; a frame with the same `Text` version reads nothing) each line takes one or more rows, a gutter-wide blank prefix on continuation rows, and vertical scroll keeps the whole cursor line on screen (`top` stays a line index); the cursor line background covers every row of the cursor line; a cursor line taller than the screen scrolls by rows inside itself (`top_sub`); a cursor past a full last row (Insert at end) stays on that row's last cell. `Ctrl-D`/`Ctrl-U` move half a screen of rows, and `H`/`M`/`L` use `bottom_line`; both read the width of the last frame (`text_w`). Without `wrap`, horizontal scroll is by screen columns and keeps the whole cursor char visible; a wide char cut by the left edge shows as spaces. The cursor line row is padded to the full width with spaces (erasing with a background color is not portable), and `draw` sets colors after each span's attribute, because `Attribute::Reset` clears them; a span's own background (matches) wins over the cursor line's. The status bar is `StatusLine` (reversed by default), replaced by the `:`/`/` input line in those modes; `fit` cuts or pads it to the width in cells.
- **Buffers and windows**: `Editor` holds the current `buf: Buffer` (document, path, `saved`, marks, line indexes `cols`, options, `last` cursor offset, change list, last Visual selection) and `win: Window` (cursor, `want_col`, scroll, `rows`, `text_w`, `want_x`, row layout, match cache, jump list); the others are parked in `buffers` and `windows` and swapped in with `mem::swap` (`switch_buffer`, `park_and_take`), so every command keeps reading `self.buf`/`self.win`. Global state (mode, registers and so macros, searches, command-line history, `.`) stays on `Editor`. A parked window keeps its cursor as a byte offset (`off`); when it shows the current buffer, `map_marks` maps it through `last_edits` with the marks, and `line`/`col` are recomputed from it when the window comes back. Two windows on one buffer share the `Buffer`, so they show the same `Text` version. Layout: `Split` is a tree of `Win(id)`, `Row` (side by side) and `Col` (stacked) with equal shares; `insert` adds a sibling to a parent of the same direction or turns the leaf into a pair, `remove` collapses a split left with one child. `Ctrl+W hjkl` uses the `Rect`s of the last frame and its cursor cell (`neighbor`).
- **Dirty tracking**: `saved: Text` and `saved_eol` hold the version and line ending last written; dirty = `!doc.text().ptr_eq(&saved)` or a different line ending (`:set ff`). Undoing back to the saved version makes the buffer clean again, with no diffing.
- **Saving** (`ex::write_atomic`, also `:w file` and `:sav`; `:w >>` appends in place): resolve symlinks (`canonicalize`), write to `<target>.rim.tmp` via `BufWriter`, copy the target's permissions and (best effort, unix) owner and group, `sync_all`, then `rename` over the target, so a failed write never truncates the file and a symlink stays a symlink. `:w` runs this on a thread (`save_buffer`) with a clone of the current `Text` (an O(1) snapshot: `Text` is `Send + Sync`, and later in-place edits never change it) and the line ending; a second write of the same file first waits for the running one. `poll_saves` (after every key, and every 50 ms from `main` while one runs) joins finished writes: success sets that buffer's `saved` to the snapshot, so edits made meanwhile keep it modified; failure reports `Save failed`. `:wq`, `:x`, `:wqa`, `:sav`, `:q`, `:bd` and `:e` wait, so their modified check sees the finished write; quitting waits for every write. A write's `written` message replaces only its own `writing...` (or an empty message line), never what a later command reported; a failure is always shown.
- **Compaction**: `Editor::compact` calls `Document::compact(COMPACT_MAX)` (64 KiB, the library's largest add chunk) and moves `saved` along when the buffer was clean, since dirty tracking compares versions by pointer. `:stats` reads `Text::piece_count`, `chunk_count`, `memory_bytes` (O(pieces)) and `char_count` (O(n)).
- **Init file**: `Editor::load_init` reads it (`main` picks the path) and applies each `set` line with `Options::set`; the errors are joined on the message line.
- **Terminal safety**: `TerminalGuard` enables raw mode and the alternate screen and restores both (and the default cursor shape) in `Drop`, including on panic.

## Tests

`cargo test -p rim`:
- Unit tests in the submodules: graphemes (spans, columns, `next`/`prev`, `locate`, `iter` forward, backward and from both ends, and widths against `unicode-segmentation` on random mixed text, every char `simple` accepts against the segmenter, the block tiers of `run_end` against `complex` on every lead byte with every pair of continuation bytes and `run_end` on long text against a char-by-char scan, `lead_cell` against `cell_width` on every char, `LineIndex` kept across random edits against a fresh one), parser (counts, registers, case operators, `strip_counts`, key round trip, keys ↔ register text), completion (names, files, hidden files), regex search (wrap both ways, matches across pieces, invalid patterns), line matches, ex parser (ranges, `/pat/` and `\/` addresses, `;`, names, registers and counts), `LineMarks` against the plain mapping, `retab_line`, `:s` parser (delimiters, escapes, flags, non-commands), registers (shift, append, clipboard, OSC 52 escape and replies), options (`:set` grammar, errors, new options and their helpers), window layout (`Split` insert/remove/rects, `neighbor`), sentence splitting, escaped quotes, tag pairing.
- `src/editor/tests.rs` feeds key sequences to `Editor` (no terminal) and checks text, cursor, mode, registers and messages for every command, motion, object, mode and `:` command above, including regex search and incsearch, `:s` (ranges, `g`, `i`, groups, `\n`, Visual `'<,'>`, messages, cursor, undo), undo grouping and the undo tree (`g-`, `g+`, `:earlier`/`:later` by count and time, `:undo N`, `:undolist`, redo after a branch switch), cursor after undo, `.` with counts, macros, marks following edits, undo, redo, time travel and `:s`, block inserts, reload, save (permissions, symlinks, background write of the snapshot while editing, `:wqa`, `:bd`/`:e` waiting for a running write, write messages not covering later ones, several files at startup), buffers (`:e`, `:ls`, `:bn`/`:bp`/`:b`, `Ctrl+^`, `:bd`, quitting with a hidden modified buffer), windows (`:sp`/`:vs` frames with per-window status rows and separators, a parked cursor moved by an edit in the other window, `Ctrl+W hjkl w c o s v`, `:clo`, `:on`, `:q` closing windows, Insert mode across drawing other windows), the ex line commands (addresses, `:d :y :m :t :> :< :j :p :=`, `:normal`, `:g`/`:v` with deleted and joined lines, `:sort` flags and patterns, `:r`, `:w file`/`>>`/partial, `:sav`, `:retab`, `:set ff`), grapheme clusters (motions, `x`, `r`, `~`, Insert, words, frames, highlights), `list`/`ignorecase`/`smartcase`/`hlsearch`/`incsearch`/`scrolloff`/`expandtab`/`shiftwidth`, jump and change lists (across buffers, following edits), `gv gi gJ gp gP ]p`, Replace mode, `Ctrl+E/Y/F/B`, Insert `Ctrl+W/U/R/O/V`, macros as register text, blocks in screen columns (tabs, wide chars, paste), command-line history, completion and `Ctrl+R`, the clipboard read (fake reader, no answer), and the init file.
- Rendering is snapshot-tested on `Frame`s turned into text (`screen`: reversed spans in `[...]`, matches in `{...}`): gutter variants, scrolling (`zz`/`zt`/`zb`), status, selections (block too), search highlights, wide chars, tabs, command line. `draw` is checked for colors, attributes, truecolor, `Normal`, cursor shape, highlight groups and OSC 52.
- A manual pty smoke test covers the real terminal (Esc in its own write; the script answers the OSC 52 query).

## Limits

See [limitations.md](limitations.md): vim subset only, blocks take a tab cut by an edge whole, `"+p` needs a terminal answering OSC 52 reads, tag scan O(n), save breaks hard links, buffer-local options, the last buffer cannot be deleted.
