# Line endings

Source: `crates/piece-tree/src/eol.rs`, `Document::write_to` in `document.rs`. Rationale: [decisions.md](decisions.md) D3.

## Model

- Inside `Text`, the only line break is `\n` (invariant I1).
- `LineEnding { Lf (default), Cr, CrLf }` is a property of the `Document`, used only on output.
- `as_str()`: `"\n"`, `"\r"`, `"\r\n"`. `Display`: `LF`, `CR`, `CRLF`. `FromStr`: case-insensitive `lf`/`cr`/`crlf`; error `unknown line ending "<s>", expected lf, cr or crlf`.

## Normalization (`normalize`)

`\r\n` → `\n` first, then lone `\r` → `\n`. Returns `Cow::Borrowed` when the input has no `\r` (no allocation in the common case).

| Input | Output |
|---|---|
| `a\r\nb` | `a\nb` |
| `a\rb` | `a\nb` |
| `\r\r\n` | `\n\n` (lone CR + CRLF) |

Applied by `Text::insert`, hence also by `Text::from` and `Document::new`.

## Detection (`LineEnding::detect`)

Single pass counting `lf` (lone `\n`), `cr` (lone `\r`), `crlf` (`\r\n` pairs; `\r\r\n` = 1 cr + 1 crlf).

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

## Output (`Document::write_to`)

- `Lf`: chunks written as-is.
- `Cr`/`CrLf`: each chunk split on `\n`; parts written with the ending between them. Works across piece boundaries because the conversion is per byte, independent of chunking.
- Errors from the writer propagate unchanged.

## Editor

`rim` uses the detected ending (`:set ff` changes it); the status bar shows it; saving writes with it. Reloading a file saved with a single ending reproduces the same bytes (round-trip tested for all three).
