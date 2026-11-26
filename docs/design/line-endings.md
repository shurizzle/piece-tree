# Line endings

Source: `crates/piece-tree/src/eol.rs`, `eol_counts` in `newlines.rs`, `Text::write_to` / `try_for_each_eol` in `text.rs`. Rationale: [decisions.md](decisions.md) D3.

## Model

- Inside `Text`, the only line break is `\n` (invariant I1).
- `LineEnding { Lf (default), Cr, CrLf }` is a property of the `Document`, used only on output.
- `as_str()`: `"\n"`, `"\r"`, `"\r\n"`. `Display`: `LF`, `CR`, `CRLF`. `FromStr`: case-insensitive `lf`/`cr`/`crlf`; error `unknown line ending "<s>", expected lf, cr or crlf`.

## Normalization (`normalize`)

`\r\n` and lone `\r` → `\n`. Returns `Cow::Borrowed` when the input has no `\r` (no allocation in the common case); otherwise one pass from the first `\r` (`newlines::normalize_append` / `normalize_in_place`): per 64-byte block a `\r` mask; a block without one (and not right after a `\r`) is one 64-byte store, otherwise the `\r` lanes become `\n` in a local copy and the `\n` lanes right after a `\r` (`nl & (cr << 1 | carry)`) are dropped, the runs between them stored with constant 64-byte writes. No per-line search restart and no per-line `memcpy` call (the `memchr_iter` loop it replaced cost one of each per line of a CRLF file). Two variants share the rule:
- `push_normalized(out, s)` appends straight to a buffer (`Text::apply_edits` builds all its replacements this way, no allocation per edit);
- `normalize_owned(String)` (`Text::from(String)`, `Document::from_string`) compacts in the `String`'s own buffer: the output is never longer, so no allocation at all, then `from_utf8_unchecked` (only ASCII bytes are rewritten or dropped). In place is safe because the next block is loaded before the current one is written and no write reaches past it.

| Input | Output |
|---|---|
| `a\r\nb` | `a\nb` |
| `a\rb` | `a\nb` |
| `\r\r\n` | `\n\n` (lone CR + CRLF) |

Applied by `Text::insert`, hence also by `Text::from` and `Document::new`.

## Detection (`LineEnding::detect`)

Single SIMD pass (`newlines::eol_counts`): each 64-byte block gives a `\n` mask and a `\r` mask (the `mask64` of D16 with the byte as a parameter); popcounts give all `\n`, all `\r` and the `\r\n` pairs (`nl & (cr << 1 | carry)`, the carry being the last `\r` lane of the previous block). Then `lf` (lone `\n`) and `cr` (lone `\r`) are the totals minus `crlf` (`\r\r\n` = 1 cr + 1 crlf). No per-hit work, unlike the `memchr2_iter` loop it replaced (about 3x faster, benchmarks.md "Code cleanup").

```
if crlf > lf && crlf >= cr  → CrLf
elif cr > lf                → Cr      (here cr > crlf is implied)
else                        → Lf
```

Tie rules (all tested in `eol::tests::detect_ties`):

| Counts | Result |
|---|---|
| none | Lf |
| lf = cr = crlf | Lf |
| crlf = cr > lf | CrLf |
| cr = lf | Lf |
| crlf = lf | Lf |

## Output (`Text::write_to`, `Document::write_to`, `Display for Document`)

- `Lf`: chunks written as-is.
- `Cr`/`CrLf`: each chunk split on `\n`; parts written with the ending between them. Works across piece boundaries because the conversion is per byte, independent of chunking.
- Errors from the writer propagate unchanged.
- One walk for all of them: `Text::try_for_each_eol(eol, f)` (in-place piece walk, no heap stack); `Display for Text` is the `Lf` case.

## Editor

`rim` uses the detected ending (`:set ff` changes it); the status bar shows it; saving writes with it. Reloading a file saved with a single ending reproduces the same bytes (round-trip tested for all three).
