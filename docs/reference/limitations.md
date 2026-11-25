# Limitations and roadmap

## Library

| Limit | Impact | Upgrade path |
|---|---|---|
| In-place edits need an unshared version | `Text::insert_mut` / `delete_mut` and `Document` inside a group update nodes in place (typing 13 ns per key, paste 330 ns, backspace 20 ns); when each edit must stay a version (`Document` without a group, or a clone per edit) the path is copied: 50-60 ns per key, ~610 ns per paste | Nothing to do: a kept version needs its own path. Ranges that span pieces, and whole-piece deletes, are always persistent (`split` + `join2`) |
| Pieces still multiply under scattered edits | Extension only helps contiguous typing; random edits still add pieces (~3000 after 2000 random edits) | Periodically rebuild into large chunks (VS Code's planned "normalization") when the piece count exceeds a threshold |
| Chunks stay alive while referenced | A chunk whose text is mostly deleted is kept whole by the remaining pieces (and by undo history) | Compaction during rebuild; drop old undo entries |
| Add chunk allocated in full | Up to 64 KiB bytes + 64 KiB newline slots reserved per add chunk (untouched pages are usually not committed by the OS) | Smaller maximum, or a separate growable newline area |
| Mixed line endings normalized to one | Saving rewrites the other endings | Track original endings per line if fidelity is ever required |
| Chunk ≤ 4 GiB (`u32`) | Files over 4 GiB cannot load (one exact chunk) | Split large loads into several exact chunks |
| `rfind_before` worst case O(n log n) | Backward search with few matches and none after the cursor rescans doubling windows to the start | A reverse regex engine, or an index of match starts |
| Char conversions scan | Per-line ones are O(line length), global ones (`char_count`, `offset_to_char`, `char_to_offset`) O(n), measured 0.008-0.034 ns/B (0.4-1.7 ms for 50 MB, SIMD counting from `str_indices`); on a 1 MB single line every column conversion scans the line | A char index per sealed chunk built lazily on the first char query (see D15) |
| Newline scan is SIMD only on aarch64 and x86_64 | NEON and SSE2 `mask64` (~0.1 ns/B on the M1, ~0.26 on an i5-8365U, Rust sources); every other architecture (wasm32, 32-bit x86, loongarch64, s390x, riscv64, powerpc64) uses the portable SWAR mask (~0.13 ns/B on the M1). On x86_64, AVX2 and SSE4.2 were tried and lost; AVX-512BW is not worth trying | One `mask64` per architecture where it beats SWAR, in the order and with the `std::arch` status and test needs listed in D16 (wasm32 simd128 and 32-bit x86 first: stable intrinsics), or `std::simd` once stable; same A/B acceptance as D16 |
| History is never freed | Every version (and the chunks it references) lives until the `Document` is dropped | Drop versions older than a seq or a time |
| Atomic refcount traffic | Path copies clone sibling and chunk `Arc`s; drop of old versions dominates benchmarks that discard every version | Non-atomic `Rc` would lose `Send + Sync` snapshots; batch edits (one version per group) if needed |
| Recursion in `join`/`split` | Depth O(log n), not an issue in practice | — |

## Editor

| Limit | Impact | Upgrade path |
|---|---|---|
| Widths per char, not per grapheme (`shortcut:` in `editor/render.rs`) | A cluster (emoji with modifiers, combining marks) takes several cursor positions; some emoji sequences may misalign | Grapheme segmentation (`unicode-segmentation`) |
| Huge lines are not free (`editor/layout.rs`, `editor/render.rs`, `editor/search.rs`) | Typing, motions, objects and scrolling in a line of millions of chars cost the window around the cursor (see `pt-edit.md`, Huge lines). Still O(line): the first jump deep into a line (2 MB of CJK: about 2.3 ms to lay out its prefix once), `gk`/`k` into a huge line above (it is laid out whole, then kept), a failed `ci(`-style search (scans back to the text start), sentence objects, `yy`/`p`, and a text change on a visible huge line with `hlsearch` (the regex runs from the line start so matches stay exactly vim's: 100 000 matches about 7 ms, none about 0.2 ms) | Checkpoints of the row layout and of the match state per line |
| Save via temp file + rename | Permissions are copied and symlinks followed, but hard links are broken, owner is kept only when allowed (root or same user), ACLs and xattrs are lost | Write in place after a backup |
| Vim subset only | No vim regex syntax (Rust `regex` only), `gv`, uppercase (file) marks, jump list, `-` small-delete register, block `O`, multi-cursor | Add on demand |
| Tag objects scan the whole text (`shortcut:` in `editor/objects.rs`) | `it`/`at` slice and scan the text on every use | Scan outward from the cursor |
| `"+`/`"*` paste the editor's own copy (`shortcut:` in `editor/registers.rs`) | OSC 52 is write-only in most terminals: text copied elsewhere cannot be pasted with `"+p` | Read the clipboard with an OSC 52 query (terminals without OSC 52 are unsupported) |
| `:p` shows one line (`shortcut:` in `editor/ex.rs`) | `:p` and `:g/pat/` show only the last line printed (one message row) | A message pager |
| Ex corner cases (`shortcut:` in `editor/ex.rs`, `editor.rs`) | Marks on lines moved by `:m` stay where the lines were; `:retab` always writes tabs plus spaces (no `expandtab`); the `c` flag of `:s` is refused under `:g`/`:normal`; `:r` copies the file into the text; `:retab` counts one column per char | Marks that follow lines; `expandtab` (M8); a confirm loop that waits; `Text::append_text`; display widths |
| Macros apart from text registers | `"ap` does not paste macro `a`, `"ay` does not edit it | Store macros as register text |
| Marks in removed text | A mark inside removed text moves to the removal's start, and undoing the removal does not bring it back inside (vim keeps the line) | Keep a line-relative position for marks in removed lines |
| Block columns are chars (`Ctrl+V`) | Tabs and wide chars make the block ragged on screen; the cursor end follows Normal clamping on short lines | Screen-column (virtual) blocks |
| No `:set` persistence | Options reset on every start; no config file | Read a config file at startup |
| Background detection | Needs a terminal answering OSC 11; others (and errors, timeouts up to 1 s at startup) fall back to dark | `:set bg=light` |

## Verified properties

Correctness of the library is backed by differential tests against `String`, invariant checks on every produced tree, persistence checks on old versions, Miri on the `unsafe` chunk code (including concurrent appends), and 100% line/function/branch coverage. Performance numbers are in [../guides/benchmarks.md](../guides/benchmarks.md). See [../guides/testing.md](../guides/testing.md).
