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
let (t, n) = text.replace_matching(&re, "v$1", |m| m.start >= from);  // only accepted matches
let visible: Vec<_> = text.find_iter_in(&re, a..b).collect();  // matches starting in a range
let prev = text.rfind_before(&re, cursor_offset);    // "find previous"
let (m, rep) = text.replacement_at(&re, off, "v$1").unwrap();  // next match + its expansion
```

| Item | Notes |
|---|---|
| `Regex::new(&str) -> Result<Regex, RegexError>` | `regex` syntax and semantics (it is regex-automata's meta engine); `RegexError` displays the full cause chain |
| `Text::find_iter(&Regex)` | iterator of `Range<usize>` in bytes, same as `regex::Regex::find_iter(..).map(range)` |
| `Text::find_from(&Regex, off)` | same as `regex::Regex::find_at(haystack, off)`: the text before `off` is still visible to look-behind such as `\b` and `^`; panics `out of bounds` if `off > len` |
| `Text::replace_all(&Regex, &str) -> (Text, usize)` | same output as `regex::Regex::replace_all`; the replacement is normalized (`\r\n` → `\n`); no match returns the same version (`ptr_eq`) |
| `Text::replace_matching(&Regex, &str, keep)` | `replace_all` restricted to the matches `keep: FnMut(Range<usize>) -> bool` accepts, called once per match in order; rejected matches stay and are not counted. `replace_all` is `replace_matching(.., \|_\| true)`. Used by rim's `:s` (line range, first match per line) |
| `Text::find_iter_in(&Regex, Range)` | matches starting in the range, searched from `range.start` with the surrounding text visible to `\b`/`^`; a match may end past `range.end`; panics `invalid range`/`out of bounds`. For highlighting the visible part |
| `Text::rfind_before(&Regex, off) -> Option<Range>` | the match starting at the largest position before `off` where `find_from` finds one starting right there (overlapping starts count, as vim's `?`); panics `out of bounds` |
| `Text::replacement_at(&Regex, off, &str) -> Option<(Range, String)>` | the first match at or after `off` and its replacement expanded as `replace_all` (normalized to `\n`); for confirming substitutions one by one with `Document::splice` |
| `Document::replace_all(&Regex, &str) -> usize` | single undo step; no match, no step |
| `Document::replace_matching(&Regex, &str, keep) -> usize` | same, filtered |
| `Text::cursor()`, `Text::cursor_at(off)` | `TextCursor`, an implementation of `regex_cursor::Cursor` (re-exported as `RegexCursor`, so callers can read the pieces with `chunk()`/`advance()`), for using regex-cursor's engines directly |

## Semantics worth knowing

- The text only contains `\n` line breaks, so `(?m)^`/`$` match at every line regardless of the file's line ending, and `.` never matches a line break.
- Offsets are bytes on char boundaries and can be passed straight to `insert`/`delete`/`slice`.
- Pieces never split a code point, so `TextCursor` is `utf8_aware`: Unicode classes, Unicode `\b` and empty matches behave exactly as on a `&str`.

## How it works

- **Search** walks the pieces with `TextCursor`: a stack of nodes from the root to the current piece, with in-order successor/predecessor moves. There is no copy, and regex-cursor stitches matches across piece boundaries.
- **`rfind_before`**: for a window `[w, off)` it walks the starts `p` where `find_from(p)` matches at `p` (leftmost, so each step jumps to the next start), keeps the last one, and doubles the window until one is found or the text start is reached.
- **`replace_all`**:
  1. collects the matches and their expanded replacements into one buffer (`regex_automata::util::interpolate::string`, with group text from `Text::slice`);
  2. stores that buffer once: in the add chunk, or as an owned chunk above 64 KiB. A literal replacement is stored once and reused for every match;
  3. builds the new tree in one go from the untouched pieces (`tree::pieces_in`) and the replacement sub-pieces (`tree::from_pieces`, perfectly balanced, O(k)).

## Limits

- **regex-cursor is vendored with a fix** (`vendor/regex-cursor/PATCHES.md`). Upstream 0.1.5's prefilter-only strategy (`Pre::search`) restarts from the chunk where the previous search left the cursor, so it skips matches: `é|🦀` over the pieces `é`,`é`,`é` finds 2 of 3. The regression test is `literal_alternation_across_piece_boundaries`. The first workaround, disabling auto prefilters, was correct but made `\bvalue_\d+5\b` 45x slower (49 ms/MB), because without the literal prefilter the Unicode `\b` drops the DFA on the first non-ASCII byte.
- `rfind_before` scans backward in windows doubling from 4 KiB, enumerating the match starts in each. A match near `off` costs about its window; the worst case (few matches, none after `off`) is O(n log n). A regex cursor cannot run backward, so there is no real reverse engine.
- `replace_all` collects every match before building, so memory is O(matches).
