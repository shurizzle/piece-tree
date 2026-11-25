# Background articles

The design merges two articles. Their key points are summarized here so the sources don't need re-reading.

## 1. "Text Editor Data Structures" — Cameron DaCamara (invoke::thought())

URL: https://cdacamar.github.io/data%20structures/algorithms/benchmarking/text%20editors/c++/editor-data-structures/

Despite the "benchmarking" tag, the article has **no measured numbers**; the comparison is qualitative and asymptotic.

Goals used to judge structures: efficient insert/delete, efficient undo/redo, UTF-8 support, efficient multi-cursor editing.

| Structure | Verdict |
|---|---|
| Single string | Compact, simple, sliceable for rendering; O(n) edits, reallocation spikes; undo needs side buffers for deleted text |
| Gap buffer (Emacs) | Great for localized edits; poor with multiple distant cursors (per Chris Wellons); same undo issues |
| Rope | O(log n) edits, undo via snapshots; immutable ropes copy nodes and can use much more memory than expected |
| Piece table (old MS Word) | Meets most goals; pieces in a contiguous array bring back reallocation; undo must store that array |
| Piece tree (VS Code) | Piece table with pieces in a red-black tree: rope-like edits with piece-table compactness. Idea dates to a 1998 paper. VS Code's version is mutable, so undo needs copies or reverse ops |

Final choice: **fredbuf**, a purely functional (immutable) piece tree, C++20, MIT.
- Insertion based on Bartosz Milewski's functional red-black tree.
- Deletion adapted from `persistent-rbtree` (derived from Rust's `rpds`); CLRS deletion was unusable because it relies on sentinels and parent pointers.
- CRLF not tracked in the tree; handled at edit and cursor-movement time.
- Undo/redo = swapping saved roots in two lists; enables branching history.
- Lessons: research constraints first, build debugging tools early (tree walker, printers), **immutable red-black deletion is hard**.

## 2. "Text Buffer Reimplementation, a Visual Studio Code Story" (VS Code blog, 2018-03-23, v1.21)

URL: https://code.visualstudio.com/blogs/2018/03/23/text-buffer-reimplementation

Old structure: **array of lines** (`ModelLine` per line). Fast line access, but:
- a 35 MB / 13.7M-line file used ~600 MB (40–60 bytes per line object, ~20x file size) and crashed with OOM;
- splitting into per-line strings made loading slow.

New structure, refined step by step into the **piece tree**:
1. Piece table: original buffer + added buffer + nodes (buffer, start, length). Memory ≈ file size, grows with edits.
2. **Line break cache**: line starts stored per buffer, so lines are found without scanning characters.
3. **No big concatenation**: file chunks (64 KB from `fs.readFile`) kept as separate buffers; a 500 MB file exceeded V8's 256 MB string limit.
4. **Balanced tree** (red-black, "more editing friendly"): each node stores the **left subtree's** length and line-feed count, so edits update only the path to the root. O(log n).
5. **Fewer allocations**: original buffers read-only, added buffer append-only; each buffer keeps its own `lineStarts`, nodes just reference positions. ~3x faster.

Benchmarks (charts only, test files from 1.46 MB to 184 MB):
- Memory: piece tree ≈ file size, far below the line array.
- Load: faster than splitting into lines.
- Edits: line array wins on tiny files, degrades past ~100k lines; piece tree stays stable.
- Reads (`getLineContent`): the piece tree's weak spot after many edits (O(log n) vs O(1)), but microseconds per call, under 1% of render/tokenize time.

Lessons:
- **Profile real usage**: `getLineContent` was the hottest method, not insert/delete/search.
- Mixed CRLF is a "nightmare": every edit can split or create a `\r\n` pair.
- GC pressure from throwaway substrings.
- A native C++ buffer saved memory but JS↔C++ round trips cancelled the speed gain; kept in JS.
- Future: normalize buffers/nodes when the node count grows; avoid full-line reads in Find.

## What this repository takes from each

| From DaCamara | From VS Code |
|---|---|
| Immutable, persistent tree; undo = root swap; snapshots | Per-buffer `\n` offset cache; subtree `\n` counts |
| Sharing unchanged structure between versions | Line lookup as the hot path to optimize |
| Simplify CRLF by not tracking it inside the tree | Awareness that CRLF pairs across pieces are a trap |

Departures from both: AVL with `join`/`split` instead of red-black; subtree totals instead of left-only aggregates; normalization to `\n` on input. See [../design/decisions.md](../design/decisions.md).
