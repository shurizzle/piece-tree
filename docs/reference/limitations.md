# Limitations and roadmap

## Library

| Limit | Impact | Upgrade path |
|---|---|---|
| Pieces still multiply under scattered edits | Extension only helps contiguous typing; random edits still add pieces (~3000 after 2000 random edits) | Periodically rebuild into large chunks (VS Code's planned "normalization") when the piece count exceeds a threshold |
| Chunks stay alive while referenced | A chunk whose text is mostly deleted is kept whole by the remaining pieces (and by undo history) | Compaction during rebuild; drop old undo entries |
| Add chunk allocated in full | Up to 64 KiB bytes + 64 KiB newline slots reserved per add chunk (untouched pages are usually not committed by the OS) | Smaller maximum, or a separate growable newline area |
| Mixed line endings normalized to one | Saving rewrites the other endings | Track original endings per line if fidelity is ever required |
| Chunk ≤ 4 GiB (`u32`) | Files over 4 GiB cannot load (one exact chunk) | Split large loads into several exact chunks |
| Undo per edit, no grouping | Callers must group themselves (`pt-edit` counts edits per command) | `Document::begin_group`/`end_group` or time-based merging |
| Node layout not compacted | `Node` is 64 bytes + 8 of `triomphe::Arc` header | Inline piece fields or `u32` totals; a node pool is not worth it while allocation is ~5% of the edit profile |
| Atomic refcount traffic | Path copies clone sibling and chunk `Arc`s; drop of old versions dominates benchmarks that discard every version | Non-atomic `Rc` would lose `Send + Sync` snapshots; batch edits (one version per group) if needed |
| Recursion in `join`/`split` | Depth O(log n), not an issue in practice | — |

## Editor

| Limit | Impact | Upgrade path |
|---|---|---|
| Widths per char, not per grapheme (`shortcut:` in `editor/render.rs`) | A cluster (emoji with modifiers, combining marks) takes several cursor positions; some emoji sequences may misalign | Grapheme segmentation (`unicode-segmentation`) |
| Save via temp file + rename | Permissions are copied and symlinks followed, but hard links are broken, owner is kept only when allowed (root or same user), ACLs and xattrs are lost | Write in place after a backup |
| Vim subset only | No regex search, `?`, `:s`, `gv`, uppercase (file) marks, jump list, `-` small-delete register, block `O`, multi-cursor | Add on demand |
| Search is a full scan | `n`/`N`/`*` walk the chunks from the start each time (no copy, but O(n)); highlights are per visible line | Start from the cursor's chunk; regex via the library if it grows one |
| Tag objects scan the whole text (`shortcut:` in `editor/objects.rs`) | `it`/`at` slice and scan the text on every use | Scan outward from the cursor |
| `"+`/`"*` paste the editor's own copy (`shortcut:` in `editor/registers.rs`) | OSC 52 is write-only in most terminals: text copied elsewhere cannot be pasted with `"+p` | Read the clipboard (`arboard`) |
| Macros apart from text registers | `"ap` does not paste macro `a`, `"ay` does not edit it | Store macros as register text |
| Marks are byte offsets moved by edits only | Undo/redo do not move marks back; they are clamped, so they may land elsewhere | Store marks in undo history, or line/col with per-edit adjustment |
| Block columns are chars (`Ctrl+V`) | Tabs and wide chars make the block ragged on screen; the cursor end follows Normal clamping on short lines | Screen-column (virtual) blocks |
| No `:set` persistence | Options reset on every start; no config file | Read a config file at startup |
| Background detection | Needs a terminal answering OSC 11; others (and errors, timeouts up to 1 s at startup) fall back to dark | `:set bg=light` |

## Verified properties

Correctness of the library is backed by differential tests against `String`, invariant checks on every produced tree, persistence checks on old versions, Miri on the `unsafe` chunk code (including concurrent appends), and 100% line/function/branch coverage. Performance numbers are in [../guides/benchmarks.md](../guides/benchmarks.md). See [../guides/testing.md](../guides/testing.md).
