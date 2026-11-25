# Regex search and replace

Source: `crates/piece-tree/src/search.rs`. Rationale: [../design/decisions.md](../design/decisions.md) D14.

## API

```rust
use piece_tree::{Regex, Text};

let re = Regex::new(r"\bvalue_(\d+)\b")?;      // Err(RegexError) on a bad pattern
let ranges: Vec<_> = text.find_iter(&re).collect();  // byte ranges, leftmost non-overlapping
let next = text.find_from(&re, cursor_offset);       // "find next" at or after an offset
let (new_text, n) = text.replace_all(&re, "v$1");    // $n, ${name}, $$ like `regex`
doc.replace_all(&re, "v$1");                         // Document: one undo step
```

| Item | Notes |
|---|---|
| `Regex::new(&str) -> Result<Regex, RegexError>` | `regex` syntax and semantics (it is regex-automata's meta engine); `RegexError` displays the full cause chain |
| `Text::find_iter(&Regex)` | iterator of `Range<usize>` in bytes, same as `regex::Regex::find_iter(..).map(range)` |
| `Text::find_from(&Regex, off)` | same as `regex::Regex::find_at(haystack, off)`: the text before `off` is still visible to look-behind such as `\b` and `^`; panics `out of bounds` if `off > len` |
| `Text::replace_all(&Regex, &str) -> (Text, usize)` | same output as `regex::Regex::replace_all`; the replacement is normalized (`\r\n` → `\n`); no match returns the same version (`ptr_eq`) |
| `Document::replace_all(&Regex, &str) -> usize` | single undo step; no match, no step |
| `Text::cursor()`, `Text::cursor_at(off)` | `TextCursor`, an implementation of `regex_cursor::Cursor`, for using regex-cursor's engines directly |

## Semantics worth knowing

- The text only contains `\n` line breaks, so `(?m)^`/`$` match at every line regardless of the file's line ending, and `.` never matches a line break.
- Offsets are bytes on char boundaries and can be passed straight to `insert`/`delete`/`slice`.
- Pieces never split a code point, so `TextCursor` is `utf8_aware`: Unicode classes, Unicode `\b` and empty matches behave exactly as on a `&str`.

## How it works

- **Search** walks the pieces with `TextCursor`: a stack of nodes from the root to the current piece, with in-order successor/predecessor moves. There is no copy, and regex-cursor stitches matches across piece boundaries.
- **`replace_all`**:
  1. collects the matches and their expanded replacements into one buffer (`regex_automata::util::interpolate::string`, with group text from `Text::slice`);
  2. stores that buffer once: in the add chunk, or as an owned chunk above 64 KiB. A literal replacement is stored once and reused for every match;
  3. builds the new tree in one go from the untouched pieces (`tree::pieces_in`) and the replacement sub-pieces (`tree::from_pieces`, perfectly balanced, O(k)).

## Limits

- **regex-cursor is vendored with a fix** (`vendor/regex-cursor/PATCHES.md`). Upstream 0.1.5's prefilter-only strategy (`Pre::search`) restarts from the chunk where the previous search left the cursor, so it skips matches: `é|🦀` over the pieces `é`,`é`,`é` finds 2 of 3. The regression test is `literal_alternation_across_piece_boundaries`. The first workaround, disabling auto prefilters, was correct but made `\bvalue_\d+5\b` 45x slower (49 ms/MB), because without the literal prefilter the Unicode `\b` drops the DFA on the first non-ASCII byte.
- There is no reverse search ("find previous"). Iterate `find_iter` up to the cursor, or add a reverse search later.
- `replace_all` collects every match before building, so memory is O(matches).
