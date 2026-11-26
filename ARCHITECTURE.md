# Architecture

A text buffer for editors that combines two published designs:

- **Persistent piece tree** (Cameron DaCamara, *fredbuf*): edits return a new immutable tree that shares structure with the old one, so undo/redo and snapshots are just root pointers.
- **Per-buffer line break cache** (VS Code text buffer, 2018): each chunk of text stores the offsets of its `\n`, so line queries never scan text.

The tree is a **join-based AVL** instead of a red-black tree. Edits are one persistent path copy (`join` doubles as the rebalancer), and range deletes across pieces use `split` + `join2`, so there are no red-black delete cases. Text lives in **append-only chunks**; typing extends the last piece instead of creating one per keystroke. See [docs/design/decisions.md](docs/design/decisions.md).

## Workspace

```
Cargo.toml                 workspace (resolver 3, edition 2024)
crates/
  piece-tree/              library (memchr, str_indices, triomphe, regex-cursor), 100% test coverage
    src/
      lib.rs               public re-exports + crate docs (doctest)
      chunk.rs             Chunk: append-only bytes + newline cache, one allocation (unsafe)
      chunk/tests.rs
      newlines.rs          SIMD newline offsets for owned chunks (NEON / SSE2 / portable SWAR, unsafe)
      tree.rs              Piece, Node, join/split (persistent AVL)
      tree/tests.rs
      text.rs              Text: immutable value, public queries and edits
      text/tests.rs
      eol.rs               LineEnding, detection, normalization (+ tests)
      document.rs          Document: undo tree of Text versions, groups, edit log, output EOL
      document/tests.rs
      search.rs            Regex, TextCursor, find_iter/find_from/find_iter_in/rfind_before/replacement_at/replace_all/replace_matching
      search/tests.rs
      test_util.rs         deterministic LCG and random text (cfg(test))
    benches/bench.rs       benchmarks (harness = false)
    examples/profile.rs    long single-scenario loops for samply
  rim/                 minimal vim-like terminal editor (crossterm, tree-sitter + libloading + the grammar crates of the common languages (cargo features `lang-*`), unicode-width, unicode-segmentation, memchr, str_indices, base64, terminal-colorsaurus, rustix on unix, mimalloc as global allocator)
    src/main.rs            CLI, theme detection, terminal guard, event loop (`Editor::idle` after 1 s without events, `poll_saves` every 50 ms while a `:w` runs)
    src/editor.rs          Editor state, modes, edits/undo groups, operators, `:s`, save/reload (+ editor/tests.rs)
    src/editor/            buffers.rs (Buffer, :e/:b/:ls/:bd, background :w), windows.rs (Window, Split layout, Ctrl+W), parse.rs (grammar, keys ↔ register text), graphemes.rs (cluster columns and widths, LineIndex of long lines), motion.rs, objects.rs, search.rs (regex search via piece-tree), ex.rs (ex ranges, `:` dispatcher, line commands, `:g`/`:normal` line marks), substitute.rs (:s arguments), registers.rs, options.rs (:set), filetype.rs (detection by name), syntax.rs + syntax/ (tree-sitter grammars loaded at run time: `lang.rs` grammar and queries, `layers.rs` injections, `query.rs` highlight and locals; highlighting, `f`/`c`/`a` objects), builtin.rs + queries/ (grammars linked in as fallback), layout.rs (lazy wrap rows, kept for the cursor line), render.rs (Frame, draw)
vendor/regex-cursor/       upstream regex-cursor 0.1.5 + documented fix (PATCHES.md)
docs/                      detailed knowledge base, see docs/README.md
```

## Layers

```
rim (TUI)  ──uses──▶  Document  ──owns──▶  undo tree of Text versions + edit log
                                               │  Text = { root, add chunk }
                                               ▼
                                     Tree = Option<Arc<Node>>   (persistent AVL)
                                               │ each node holds one
                                               ▼
                                     Piece { Arc<Chunk>, start, len, lf, nl_first }
                                               │
                                               ▼
                                     Chunk { bytes | newline offsets }  (append-only)
```

| Layer | Responsibility | Mutability |
|---|---|---|
| `Chunk` | text bytes and their `\n` offsets (one allocation, or a `String`'s buffer taken over) | append-only: completed ranges immutable, new ranges reserved atomically |
| `Piece` | a published byte range of a chunk, its `\n` count and first newline index | value |
| `Node`/`Tree` | balanced ordering of pieces, subtree totals (`len`, `lf`, `height`) | immutable, shared via `Arc` |
| `Text` | public API: byte offsets, lines, slices, chunks; holds the current add chunk | immutable value, `Clone` is O(1) |
| `Document` | undo tree, groups, edit log, output line ending, writing | mutable wrapper |
| `rim` | buffers, windows, cursor, rendering, keys, file I/O (`:w` on a thread from a `Text` snapshot) | application |

## Core invariants

1. Text inside the tree contains **no `\r`**: all input passes through `eol::normalize`.
2. Every piece is **non-empty**.
3. AVL balance: `|height(left) - height(right)| <= 1` at every node.
4. Node `len` and `lf` are **totals of the whole subtree** (not left-only as in VS Code); pieces cache their own `lf`. Chars are not cached: char conversions scan (see D15).
5. Public offsets are **bytes** and must be on UTF-8 char boundaries (asserted).
6. **No version is ever observable as changed.** `Text::insert` and friends return a new `Text`. The in-place paths (`Text::insert_mut`, `Text::delete_mut`) only change a node that `Arc::get_mut` / `Arc::make_mut` shows has a single owner and clone a shared one before touching it, so a clone, an undo state or a snapshot keeps its content (D19, D20).
7. **Soundness**: a piece only covers published chunk bytes and newline slots, and its ends are char boundaries. `Piece::text` relies on it (`from_utf8_unchecked`); `Piece::split` asserts it.

`tree::check` (test only) verifies 2–4 on every tree a test produces. Miri checks 7 (see [docs/guides/testing.md](docs/guides/testing.md)).

## Edit flow

`Text::insert(off, s)`: assert `off <= len`, normalize `s`, then:
- `s` > 64 KiB: one exact chunk (copied and newline-indexed in one pass, or the normalized copy taken over), inserted with `insert_at`;
- else, if the piece ending at `off` ends at the reserved end of the add chunk: append there and **extend that piece** (`extend_at`, one path copy, no rebalancing);
- else append to the add chunk (or a new, larger one) and insert a new piece (`insert_at`, persistent AVL insert).

`Text::delete(a..b)`: inside one piece → `delete_in` (one path copy); otherwise `split` at `a`, `split` rest at `b - a`, `join2(left, right)`.

Char boundaries are asserted where a piece is cut (`Piece::split`/`sub`). Old versions stay valid because chunks never change completed ranges. Details: [docs/design/algorithms.md](docs/design/algorithms.md).

## Where to go next

- Knowledge index: [docs/README.md](docs/README.md)
- Agent instructions: [AGENTS.md](AGENTS.md)
