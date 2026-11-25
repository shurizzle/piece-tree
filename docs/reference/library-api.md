# `piece-tree` public API

Exports: `Text`, `Chunks`, `Document`, `LineEnding`, `Regex`, `RegexError`, `TextCursor`. All offsets are **bytes**.

## `Text`

Immutable. Edits return a new `Text`; `self` is unchanged. `Send + Sync`; `Clone` is two `Arc` increments. Versions derived from each other share an append-only add chunk, so typing at the same spot keeps extending one piece.

| Method | Returns | Panics | Notes |
|---|---|---|---|
| `new()` / `default()` | empty text | — | |
| `From<&str>` | text | — | input normalized to `\n`; copies |
| `From<String>` | text | — | same, but a large text without `\r` keeps the `String`'s buffer (no copy) |
| `len()` | bytes | — | O(1) |
| `is_empty()` | bool | — | |
| `line_count()` | `\n` count + 1 | — | empty text has 1 line |
| `ptr_eq(&other)` | same version? | — | identity, not content equality |
| `insert(off, &str)` | `Text` | `out of bounds`, `char boundary` | normalizes input; empty input → same version; extends the previous piece when typing contiguously; one path copy |
| `insert_mut(&mut self, off, &str)` | `()` | same as `insert` | `insert` in place: the nodes of the path that no other version shares are edited where they are, a shared node is cloned alone, so an unshared value allocates only the new pieces (typing 13 ns per key against 61, paste 330 ns against 611); clones taken before the call are never affected ([decisions.md](../design/decisions.md) D19, D20) |
| `delete_mut(&mut self, Range)` | `()` | same as `delete` | `delete` in place, same sharing rules: a range inside one piece edits the path in place (backspace 19.5 ns against 52); a range that spans pieces or equals one takes the persistent code |
| `delete(Range)` | `Text` | `invalid range` (start > end), `out of bounds`, `char boundary` | empty range → same version; one path copy when the range is inside one piece |
| `apply_edits(&[(Range, &str)])` | `Text` | `invalid range` (reversed, unsorted or overlapping ranges), `out of bounds`, `char boundary` | many edits in one pass; ranges are offsets of *this* text, sorted by start and not overlapping (an edit may start where the previous ends; inserts at one offset apply in order); no effective edit → same version ([algorithms.md](../design/algorithms.md)) |
| `offset_to_line(off)` | 0-based line | `out of bounds` (off > len) | offset at a `\n` → line it ends |
| `line_to_offset(line)` | start byte | `out of bounds` (line ≥ line_count) | |
| `line(i)` | `Cow<str>` without `\n` | `out of bounds` | one descent and borrowed if the line is inside one piece |
| `char_count()` | chars | — | O(n) |
| `offset_to_char(off)` / `char_to_offset(ch)` | char index / byte offset | `out of bounds`, `char boundary` | O(n) scan of the pieces up to the offset |
| `line_end(line)` | byte offset of the line's `\n` (or the end) | `out of bounds` | |
| `line_char_len(line)` | chars in the line | `out of bounds` | O(line length), reads the pieces in place (no copy) |
| `chars_in(Range<usize>)` | chars in a byte range (char boundaries) | `invalid range` | O(range length), no copy, no allocation |
| `line_col_to_offset(line, col)` / `offset_to_line_col(off)` | char columns ↔ bytes | `out of bounds` (line, or col > line length), `char boundary` | O(line length), no copy |
| `is_char_boundary(off)` / `floor_char_boundary(off)` | bool / boundary at or before `off` (clamped) | — | |
| `slice(Range)` | `Cow<str>` | `invalid range` (reversed or end > len), `char boundary` (from `str`) | borrowed if in one piece |
| `chunks()` | `Chunks<'_>` iterator of `&str` | — | one item per piece, in order (contiguous typing yields one piece) |
| `Display` / `to_string()` | full text | — | |
| `find_iter`, `find_from`, `find_iter_in`, `rfind_before`, `replacement_at`, `replace_all`, `replace_matching`, `cursor`, `cursor_at` | — | `out of bounds` (`find_from`/`rfind_before`/`replacement_at`/`cursor_at`), `invalid range` (`find_iter_in`) | regex search; see [search.md](search.md) |

## `Document`

| Method | Notes |
|---|---|
| `new(&str)` | detects `LineEnding`, normalizes text, empty history |
| `from_string(String)` | same, taking over the buffer of large files (no copy) |
| `text() -> &Text` | current version |
| `eol()` / `set_eol(LineEnding)` | output ending; changing it is not an undo step |
| `insert(off, &str)` / `delete(Range)` | same panics as `Text`; an effective edit makes a new version (a child of the current one); no-ops do nothing. Inside an open group `insert`, `delete` and `splice` edit the group's version in place (`Text::insert_mut` / `delete_mut`), about 3.7x cheaper per key than a version per key |
| `splice(Range, &str)` | replace a range as one edit; same content is not a change |
| `apply_edits(&[(Range, &str)])` | `Text::apply_edits` as one change: one version, one undo step; `last_edits` has one edit per effective edit (each start in the text left by the previous ones); nothing to change → no version |
| `begin_group()` / `end_group() -> bool` / `group(f)` | edits in a group make one version; nestable (outermost counts); `end_group` says whether it made one; any history move closes open groups |
| `undo() -> bool` / `redo() -> bool` | to the parent / the child last created or left; false at the ends |
| `earlier(n)` / `later(n)` | `n` versions back/forward in creation order, across branches (vim `g-`/`g+`) |
| `earlier_time(Duration)` / `later_time(Duration)` | by timestamp (vim `:earlier 10s`) |
| `goto(seq) -> bool` | to version `seq` (clamped), through the common ancestor |
| `seq()` / `history_len()` / `versions()` | current version number, count, and `Version { seq, parent, edits, leaf, time }` for each |
| `last_edits() -> &[Edit]` | edits made by the last call (an edit, or a history move's path); empty after a no-op, including group calls |
| `replace_all(&Regex, &str) -> usize` | regex replace as one undo step ([search.md](search.md)) |
| `replace_matching(&Regex, &str, keep) -> usize` | same, only the matches `keep(range)` accepts; `last_edits` has one edit per replaced match |
| `write_to(impl Write) -> io::Result<()>` | writes with `eol()`; propagates writer errors |

## `Edit`, `map_offset`

`Edit { start, old_len, new_len }`: one change; a list applies in order, each start in the text left by the previous ones. `Edit::inverse()` undoes it; `Edit::map(off)` and `map_offset(&[Edit], off)` move a position through changes (before: unchanged; after: shifted; inside a replaced range: to its start; an insertion at `off` pushes it).

## `LineEnding`

`Lf` (default), `Cr`, `CrLf`; `detect(&str)`, `as_str()`, `Display`, `FromStr`. See [../design/line-endings.md](../design/line-endings.md).

## Example

The crate-level doctest in `crates/piece-tree/src/lib.rs` shows load, insert, snapshot, undo and CRLF output.
