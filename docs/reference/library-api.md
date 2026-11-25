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
| `delete(Range)` | `Text` | `invalid range` (start > end), `out of bounds`, `char boundary` | empty range → same version; one path copy when the range is inside one piece |
| `offset_to_line(off)` | 0-based line | `out of bounds` (off > len) | offset at a `\n` → line it ends |
| `line_to_offset(line)` | start byte | `out of bounds` (line ≥ line_count) | |
| `line(i)` | `Cow<str>` without `\n` | `out of bounds` | one descent and borrowed if the line is inside one piece |
| `slice(Range)` | `Cow<str>` | `invalid range` (reversed or end > len), `char boundary` (from `str`) | borrowed if in one piece |
| `chunks()` | `Chunks<'_>` iterator of `&str` | — | one item per piece, in order (contiguous typing yields one piece) |
| `Display` / `to_string()` | full text | — | |
| `find_iter`, `find_from`, `replace_all`, `cursor`, `cursor_at` | — | `out of bounds` (`find_from`/`cursor_at`) | regex search; see [search.md](search.md) |

## `Document`

| Method | Notes |
|---|---|
| `new(&str)` | detects `LineEnding`, normalizes text, empty history |
| `from_string(String)` | same, taking over the buffer of large files (no copy) |
| `text() -> &Text` | current version |
| `eol()` / `set_eol(LineEnding)` | output ending; changing it is not an undo step |
| `insert(off, &str)` / `delete(Range)` | same panics as `Text`; effective edits push an undo entry and clear redo; no-ops do nothing |
| `undo() -> bool` / `redo() -> bool` | false when the stack is empty; O(1) |
| `replace_all(&Regex, &str) -> usize` | regex replace as one undo step ([search.md](search.md)) |
| `write_to(impl Write) -> io::Result<()>` | writes with `eol()`; propagates writer errors |

## `LineEnding`

`Lf` (default), `Cr`, `CrLf`; `detect(&str)`, `as_str()`, `Display`, `FromStr`. See [../design/line-endings.md](../design/line-endings.md).

## Example

The crate-level doctest in `crates/piece-tree/src/lib.rs` shows load, insert, snapshot, undo and CRLF output.
