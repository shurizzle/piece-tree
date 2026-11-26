# Knowledge base

One topic per file. Fetch only what the task needs.

| File | Read when |
|---|---|
| [background/articles.md](background/articles.md) | You need the origin of the design: summaries of DaCamara's and VS Code's articles |
| [design/decisions.md](design/decisions.md) | You wonder *why* something is the way it is (AVL vs RB, LF normalization, totals, chunks and piece extension, u32, `unsafe`) |
| [design/data-structures.md](design/data-structures.md) | You touch `Chunk`, `Piece`, `Node`, `Text`; invariants and complexity table |
| [design/algorithms.md](design/algorithms.md) | You touch `join`, `split`, `join2`, path copying, the insert path, or the query descents |
| [design/line-endings.md](design/line-endings.md) | You touch `LineEnding`, detection tie rules, normalization, output conversion |
| [reference/library-api.md](reference/library-api.md) | You use or extend the public API of `piece-tree` (signatures, panics, costs) |
| [reference/search.md](reference/search.md) | You search or replace with regexes in a `Text`/`Document` |
| [reference/rim.md](reference/rim.md) | You work on the editor: modes, keys, buffers, windows, registers, macros, marks, jump and change lists, text objects, search, command-line history and completion, `:set` and the init file, grapheme columns, clipboard, `.`, undo grouping, rendering, background saving, reloading |
| [reference/syntax.md](reference/syntax.md) | You touch tree-sitter highlighting or the `f`/`c`/`a` text objects: built-in grammars, runtime layout, `tools/grammars.sh`, capture colors, locals, injections, edit sync |
| [reference/limitations.md](reference/limitations.md) | Known shortcuts, risks and the roadmap |
| [guides/testing.md](guides/testing.md) | You add or change tests, check coverage, or run Miri |
| [guides/benchmarks.md](guides/benchmarks.md) | You change performance-sensitive code or need the numbers |
| [guides/comparison-tables.md](guides/comparison-tables.md) | You want the full cross-library tables (every row, four libraries, both allocators, three corpora) of the last run |
| [guides/comparison-tables-linux.md](guides/comparison-tables-linux.md) | The same tables measured on Linux x86_64 (glibc, Intel laptop, W4) |
