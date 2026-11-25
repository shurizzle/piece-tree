# Benchmarks

Sources: `crates/piece-tree/benches/bench.rs` (`harness = false`, `std::time::Instant`) and `crates/piece-tree/examples/profile.rs` (long loops for the profiler).

```sh
cargo bench -p piece-tree
cargo build --release -p piece-tree --example profile
samply record target/release/examples/profile typing    # typing | backspace | paste | edits | read
```

Build settings: `[profile.release]` and `[profile.bench]` use `lto = "fat"`, `codegen-units = 1`, `debug = "line-tables-only"`. A local, untracked `.cargo/config.toml` adds `-C target-cpu=native`. samply needs `kernel.perf_event_paranoid <= 1`.

## Methodology

- Each scenario runs 7 times (seeds 1..=7) and prints the **minimum** and the median ns/op.
- Read scenarios loop for milliseconds (50 passes over all lines, 1000 windows): single passes of ~0.2 ms swung by ±40%.
- **A/B**: copy the crate to a scratch directory before a change, then alternate `cargo bench` between the two copies 3–4 times and keep each scenario's minimum. A change is kept only if it beats the noise (about ±8% on this machine).
- **Build both sides the same way.** A workspace member and a standalone copy of identical code measured `line()` at 12.6 vs 10.2 ns: code placement changes with paths and crate layout. Compare two standalone copies, never the repo against a copy.

## Scenarios

| Scenario | What it measures | Unit |
|---|---|---|
| `load 50MB` | `Text::from(&str)` on ~50 MB of source-like text (copies) | ns per byte |
| `load 50MB owned` | `Text::from(String)` (takes over the buffer) | ns per byte |
| `Document load 50MB` | `Document::from_string`: line ending detection + owned load | ns per byte |
| `line() random, loaded` | 100 000 random `line(i)` on the loaded text (one piece) | ns per call |
| `typing 10k chars in 1MB` | 10 000 single-char inserts at a moving cursor mid-file, `\n` every 40 | ns per keystroke |
| `line() all, after typing` | every line of the typed text, 50 passes | ns per line |
| `line() 10x50 windows, typed` | 1000 random viewports of 50 lines | ns per line |
| `backspace 10k` | 10 000 single-char deletes over the typed region | ns per delete |
| `offset_to_line random, typed` | 100 000 offsets around the typed region | ns per call |
| `paste mid-piece 1k on 10MB` | 1000 inserts of `"paste\n"` inside existing pieces | ns per insert |
| `random edits 1k+1k on 10MB` | 1000 inserts + 1000 whole-line deletes at random lines | ns per edit |
| `line() all, after edits` | every line after the random edits (~3000 pieces) | ns per line |

## Regex search (`search.rs`)

Load average ~2, minimum of 7 runs. "regex+copy" is `regex::Regex` on `Text::to_string()`, copy included: what a caller would do without the cursor.

| Scenario | `Text` (cursor) | regex+copy | |
|---|---|---|---|
| `find_iter` literal `value_12345`, 10 MB (1 piece) | 87 µs/MB | 219 µs/MB | 2.5x faster |
| same, after 2000 random edits (~3000 pieces) | 109 µs/MB | 423 µs/MB | 3.9x faster |
| `find_iter` `\bvalue_\d+5\b`, 10 MB | 1.11 ms/MB | 0.89 ms/MB | 1.24x slower |
| same, after edits | 1.10 ms/MB | 1.29 ms/MB | 1.17x faster |
| `replace_all` `compute\((\d+)` → literal, ~170k matches | 0.52 µs/match | — | |
| same → `calc($1` | 1.31 µs/match | — | |

**Rejected**: disabling auto prefilters (the first workaround for the regex-cursor bug). `\bvalue_\d+5\b` took 49 ms/MB (45x slower) and the literal search 0.47 ms/MB (5.4x slower). Replaced by the vendored fix (decisions D14).

**Kept, no regression**: `replace_all` delegating to `replace_matching(re, rep, |_| true)` (the filter for editor substitutes). A/B against a standalone copy of the previous version, both built in `bench`, 3 alternating runs each, min of 7: literal 355/428/433 ns/match before vs 403/395/406 after, `$1` 1206/1181/1217 vs 1127/1247/1198. Differences are inside the run-to-run noise (±15%).

## Comparison with other implementations

Same scenarios run over four libraries in one binary, same profile (fat LTO, `codegen-units = 1`), same allocator, on an Apple M1 Pro (load average 8-18, results repeat within ~3% for the same binary; one binary per corpus; the 3-run spreads are under "Noise of the cross-library harness"). Harness: a separate repository (`piece-tree-bench`, not part of this workspace and not to be published as is: it vendors Zed's GPL-3.0-or-later `rope` crate). Libraries: piece-tree (this tree), ropey 1.6.1, ropey 2.0.0-beta.1, and Zed's `Rope` on top of its `sum_tree` (commit `77228009dd267dcf8ab9a20eef5802b2a8ea4afa`, tests and tracing stripped). Last full run: after the SIMD newline scan (D16), the batch API (D17) and the `#[inline(never)]` fix, system allocator.

How each scenario is measured:
- Every library works with byte offsets. ropey 1.x indexes by char, so it pays `byte_to_char` on every edit, as an editor working in bytes would.
- "`line()`" is the sum of the lengths of the chunks the library hands out for the line (no text copy). SumTree needs two point-to-offset descents for it, the others one.
- "typing, clone per key" keeps every intermediate version alive (clone before each key), the cost of an undo history.
- "batch 1k edits": about 1000 sorted line inserts and deletes in offsets of the original text. piece-tree applies them with `Text::apply_edits`, Zed in one cursor pass (its `Buffer::edit` pattern), ropey one at a time from the last edit to the first.
- Corpora: synthetic source-like lines; Rust sources read once from `~/.cargo/registry/src` (about 64 MB, wrapped when shorter than the 50 MB load needs); CJK-heavy lines (3-byte chars).
- Values are ns per operation, minimum of 7 runs; load rows are ns per byte and printed with one decimal, so "0.1 = 0.1" hides differences (the load A/B below has the real numbers). A tie is within 5%. The cross-library check (same text after every edit scenario) is `ok` on all three corpora.

**Synthetic source-like text**

| Scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | Best |
|---|---:|---:|---:|---:|---|
| load 50MB from &str (per byte) | **0.1** | 0.3 | 0.2 | 0.3 | piece-tree (2.00x) |
| load 50MB from String (per byte) | **0.1** | 0.4 | 0.2 | 0.3 | piece-tree (2.00x) |
| line() random, loaded | **31** | 487 | 697 | 657 | piece-tree (15.67x) |
| typing 10k chars in 1MB | 61 | 142 | **47** | 11 478 | ropey 2 beta (1.29x) |
| typing 10k, clone per key | **61** | 751 | 518 | 15 296 | piece-tree (8.43x) |
| line() all, after typing | **5.5** | 197 | 223 | 166 | piece-tree (30.27x) |
| line() 10x50 windows, typed | **5.6** | 205 | 242 | 190 | piece-tree (33.96x) |
| backspace 10k | **51** | 180 | 74 | 12 527 | piece-tree (1.46x) |
| offset_to_line random, typed | **12** | 110 | 65 | 42 | piece-tree (3.41x) |
| paste mid-piece 1k on 10MB | 745 | 1 002 | **702** | 18 975 | ropey 2 beta (1.06x) |
| random edits 1k+1k on 10MB | **673** | 880 | 720 | 17 079 | piece-tree (1.07x) |
| line() all, after edits | **18** | 207 | 248 | 192 | piece-tree (10.58x) |
| batch 1k edits, one pass, 10MB | **93** | 653 | 535 | 5 628 | piece-tree (5.78x) |

**Rust sources from the cargo registry**

| Scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | Best |
|---|---:|---:|---:|---:|---|
| load 50MB from &str (per byte) | **0.1** | 0.3 | 0.2 | 0.3 | piece-tree (2.00x) |
| load 50MB from String (per byte) | **0.1** | 0.3 | **0.1** | 0.4 | piece-tree = ropey 2 beta (tie) |
| line() random, loaded | **29** | 440 | 677 | 640 | piece-tree (15.38x) |
| typing 10k chars in 1MB | 59 | 132 | **51** | 10 248 | ropey 2 beta (1.16x) |
| typing 10k, clone per key | **60** | 706 | 510 | 13 782 | piece-tree (8.51x) |
| line() all, after typing | **5.4** | 181 | 222 | 168 | piece-tree (31.13x) |
| line() 10x50 windows, typed | **5.6** | 188 | 239 | 194 | piece-tree (33.50x) |
| backspace 10k | **51** | 188 | 83 | 11 132 | piece-tree (1.63x) |
| offset_to_line random, typed | **12** | 101 | 64 | 46 | piece-tree (3.75x) |
| paste mid-piece 1k on 10MB | **657** | 997 | **680** | 18 493 | piece-tree = ropey 2 beta (tie) |
| random edits 1k+1k on 10MB | 640 | 836 | **573** | 17 332 | ropey 2 beta (1.12x) |
| line() all, after edits | **17** | 192 | 240 | 174 | piece-tree (10.35x) |
| batch 1k edits, one pass, 10MB | **98** | 660 | 478 | 5 874 | piece-tree (4.87x) |

**CJK-heavy text**

| Scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree (Zed rope) | Best |
|---|---:|---:|---:|---:|---|
| load 50MB from &str (per byte) | **0.1** | 0.3 | 0.2 | 0.3 | piece-tree (2.00x) |
| load 50MB from String (per byte) | **0.1** | 0.3 | **0.1** | 0.3 | piece-tree = ropey 2 beta (tie) |
| line() random, loaded | **27** | 464 | 692 | 647 | piece-tree (16.92x) |
| typing 10k chars in 1MB | 61 | 133 | **46** | 10 595 | ropey 2 beta (1.31x) |
| typing 10k, clone per key | **57** | 629 | 489 | 14 270 | piece-tree (8.63x) |
| line() all, after typing | **5.7** | 202 | 231 | 181 | piece-tree (31.72x) |
| line() 10x50 windows, typed | **5.9** | 207 | 249 | 202 | piece-tree (34.31x) |
| backspace 10k | **52** | 181 | 80 | 11 589 | piece-tree (1.52x) |
| offset_to_line random, typed | **12** | 104 | 67 | 44 | piece-tree (3.68x) |
| paste mid-piece 1k on 10MB | **664** | 998 | 716 | 18 772 | piece-tree (1.08x) |
| random edits 1k+1k on 10MB | **640** | 919 | 698 | 17 862 | piece-tree (1.09x) |
| line() all, after edits | **20** | 216 | 242 | 212 | piece-tree (10.56x) |
| batch 1k edits, one pass, 10MB | **89** | 689 | 427 | 6 117 | piece-tree (4.78x) |

Wins or ties over the 39 rows (13 scenarios x 3 corpora): piece-tree 34, ropey 2 beta 8, ropey 1.x 0, SumTree 0.

Where piece-tree does not win: typing (ropey 2 beta 1.16-1.31x faster: it mutates in place, piece-tree copies a path per key), paste on the synthetic text (1.06x) and random edits on the Rust sources (1.12x). SumTree edits cost 5.6-19 us each in every scenario, also in one cursor pass: its profile (macOS `sample`) shows real work in `Cursor::slice`, `append` and memmove, not a vendoring mistake. With mimalloc as the global allocator of the whole harness the picture changes (see "Allocator" below).

## Results, round 2 (profile-driven)

Fair A/B, both sides standalone copies, minimum of 4 alternating runs, load average ~2. "Before" is the state at the end of round 1.

| Scenario | Before | After | Speedup |
|---|---|---|---|
| load 50MB owned | 1.0 ns/B (copy) | 0.3 ns/B | 3.3x |
| Document load 50MB | 1.6 ns/B | 0.5 ns/B | 3.2x |
| typing | 420 ns | 222 ns | 1.9x |
| backspace | 456 ns | 136 ns | 3.4x |
| paste mid-piece | 1912 ns | 1093 ns | 1.75x |
| random edits | 2395 ns | 1113 ns | 2.15x |
| reads (`line`, `offset_to_line`, load by copy) | — | — | unchanged within noise |

### Per step (each against the previous step)

| Step | typing | backspace | paste | edits | Kept |
|---|---|---|---|---|---|
| 1. Path-copy insert/extend/delete instead of split + join | 1.61x | 3.15x | 1.46x | 2.05x | yes |
| 2. `triomphe::Arc` (no weak count) for nodes and chunks | 1.25x | 1.21x | 1.18x | 1.21x | yes |
| 3. Owned load (`From<String>`), `memchr2` line ending detection | — | — | — | — | yes (load 3.3x, Document load 3.4x) |
| 4. mimalloc as global allocator (bench, pt-edit) | 0.99x | 1.08x | 0.98x | 0.96x | **no** at the time; measured again later: 0.71-0.80x, see "Allocator" below (D18) |
| 5. Lock-free chunk reservation (`AtomicU64`), boundary checks folded into piece asserts | 1.17x | 1.15x | 1.07x | 1.14x | yes |
| `#[inline]` on the read path | reads ±5%, no consistent sign | | | | **no** |
| Contiguous single allocation for `Chunk::exact(&str)` | reads unchanged | | | | **no** |

### Profiles (samply, `typing`)

| Before round 2 | Share | After round 2 | Share |
|---|---|---|---|
| `tree::expose` | 34% | `Arc<Node>::drop_slow` | 25% |
| `Arc<Node>::drop_slow` | 15% | `tree::extend_at` | 24% |
| `tree::node` | 11% | `tree::node` | 11% |
| `free` | 8% | `Chunk::try_append` | 11% |
| `Text::insert` | 7% | `Text::insert` | 9% |
| `malloc` | 4% | `malloc` + `free` | 5% |

- Total samples for the same work halved (900 → 449).
- `drop_slow` is the benchmark freeing the previous version after every keystroke. In `pt-edit` old versions stay in the undo stack, so that cost does not occur per keystroke.
- Allocation was ~5% of the profile then, which is why mimalloc and a node pool did not look worth it. Later profiles show ~55% on paste and random edits (see "Allocator" below, D18).

## Results, round 1

Machine load average ~2, minimum of two back-to-back runs.
- **Baseline**: one `Buffer` per insert, `Piece` without `nl_first`, `line()` in 3 descents, per-byte newline scan.
- **Final**: `nl_first`, single-descent `line()`, memchr newline scan, append-only chunks with piece extension.

| Scenario | Baseline | Final | Speedup |
|---|---|---|---|
| load 50MB | 1.0 ns/B | 0.9 ns/B | 1.1x |
| `line()` random, loaded | 280 ns | 65 ns | 4.3x |
| typing | 1330 ns | 449 ns | 3.0x |
| pieces after typing | 10 002 | 8 | — |
| `line()` all, after typing | 217 ns | 10.7 ns | 20x |
| `line()` windows, typed | 181 ns | 11.2 ns | 16x |
| random edits | 2626 ns | 2256 ns | 1.2x |
| `line()` all, after edits | 161 ns | 23 ns | 7x |

Where the round 1 gains come from:
- **`nl_first`** makes `nth_newline` O(1) and limits `lf_before` to the piece's own newlines.
- **Single-descent `line()`** answers lines inside one piece with one walk and a borrowed slice.
- **Piece extension** keeps a typing session in one piece per chunk.
- **Exact chunks** scan large inserts once with memchr.

## Undo tree and edit log (`document.rs`)

New scenario `Document typing 10k chars in 1MB`: the typing loop through `Document::insert`, one version per key (the worst case: editors group a whole insert session into one version). Six alternating runs, min of 7 each, standalone copies built the same way, load average ~5:

| Variant | min ns/key over 6 runs |
|---|---|
| before (two `Vec<Text>` stacks) | 243 261 270 273 274 293 |
| undo tree + flat edit log + timestamp (kept) | 298 301 306 309 362 364 |
| same without the timestamp (diagnostic only) | 220 236 262 275 309 655 |

**Kept**: the tree with timestamps, ~+15% per ungrouped key. The difference is all `Instant::now()` (measured alone: ~22 ns); the tree and the log cost nothing measurable. Time travel (`earlier_time`) needs the stamp.

**Rejected**: a `Vec<Edit>` per version (first version): one allocation per key, ~+30%. Replaced by the flat log.

## Char metrics cache (tried and removed, D15)

A/B against a standalone copy of `fa02467` (before the undo tree, char metrics and search work), both built the same way, `cargo bench -p piece-tree`, min of 7 runs, ns/op. The corpus has a `✓` on every line.

**Attempt: `chars` cached in every `Piece` and `Node`, plus a char index (chars before every N bytes) in sealed chunks. Rejected.**

| Scenario | v1 (1 KiB blocks) | v4 (best: `Node` 64 B, 256-byte blocks) |
|---|---|---|
| load 50MB (per byte) | +100% | +100% |
| paste mid-piece 1k on 10MB | +37% | +12% |
| random edits 1k+1k on 10MB | +65% | +20% |
| replace_all literal (per match) | +126% | +32% |
| backspace 10k | +431% | +5% |

- v1 → v2: an all-ASCII piece (`chars == len`) skips the scan in `chars_before` (backspace +431% → +11%).
- v3: `Node` back to 64 bytes (`height` in `Piece`'s padding, `u32` totals, which limited a text to 4 Gi lines and chars).
- v4: blocks 1024 → 256 bytes (index 1.6% of the text).
- Same bench on an ASCII-only corpus (the shortcut applies): paste +17%, random edits +23%, `replace_all` +8%/+5%, load +100%. So the scan explained most of `replace_all` and the index pass all of the load cost, but a floor of +17..23% on edits remained.
- samply profile of `edits` (1787 → 2088 samples, +17%): `Piece::chars_before` 0 → 159 (53% of the increase), `tree::node` 57 → 131 (25%: totals, `height`, overflow check, `Piece` 24 → 32 bytes), the rest unresolved addresses.

**Result of removing it** (char conversions scan, no cache; `chunk.rs`/`tree.rs` back to their `fa02467` form):

| Scenario | `fa02467` | now | |
|---|---|---|---|
| load 50MB (per byte), owned, Document | 0.2 / 0.2 / 0.3 | 0.2 / 0.2 / 0.3 | +0% |
| typing 10k chars in 1MB | 65.5 | 65.7 | +0% |
| backspace 10k | 56.3 | 54.3 | -4% |
| paste mid-piece 1k on 10MB | 752.1 | 627.0 | -17% |
| random edits 1k+1k on 10MB | 778.4 | 613.4 | -21% |
| replace_all literal / $1 (per match) | 168.9 / 578.9 | 157.4 / 571.2 | -7% / -1% |
| line()/offset_to_line/find_iter scenarios | | | -27% to +3% |

The gains over `fa02467` (paste, edits, `line() random`) are within what code placement alone moves in this setup (see Methodology); the point is that no scenario is slower. What is lost: column conversions are O(line length) and global char conversions O(n).

## SIMD newline index (`newlines.rs`, D16)

A/B, both sides the same example (`Text::from(String)` of 50 MB, min of 7 loads per run), built against a standalone copy of the tree before the change and against the working tree after it, 5 alternating runs each, aarch64 (Apple M1 Pro), min over the runs. "exp avg N": line lengths exponentially distributed with mean N, like real text.

| Corpus | before (ns/B) | after (ns/B) | speedup |
|---|---|---|---|
| Rust sources (a newline every ~34 B) | 0.385 | 0.106 | 3.6x |
| synthetic (59 B) | 0.180 | 0.101 | 1.8x |
| CJK (89 B) | 0.112 | 0.064 | 1.75x |
| exp avg 100 | 0.223 | 0.123 | 1.8x |
| exp avg 200 | 0.127 | 0.084 | 1.5x |
| exp avg 400 | 0.079 | 0.060 | 1.3x |
| exp avg 1000 | 0.050 | 0.042 | 1.19x |
| exp avg 5000 | 0.035 | 0.034 | 1.03x |
| one line, no newline | 0.033 | 0.034 | 0.97x (noise: 0.034-0.036 over the runs) |

Edits are unchanged (harness, synthetic: typing 69, backspace 57, paste 661, random edits 653 ns, as before within noise).

Prototype, newline offsets only (ns/B, 32 MB texts, same output asserted against `memchr`), exponentially distributed lines unless noted:

| Mean line | `memchr_iter` + `collect` (before) | `memchr` portable code | NEON 64 B mask, no skip | SWAR 64 B mask, no skip | NEON + empty-block skip (kept) | SWAR + skip (kept) |
|---|---|---|---|---|---|---|
| 16 B | 0.825 | 1.039 | 0.065 | 0.139 | 0.093 | 0.162 |
| 34 B (Rust sources) | 0.373 | 0.426 | 0.061 | 0.139 | 0.074 | 0.135 |
| 64 B | 0.287 | 0.290 | 0.059 | 0.136 | 0.102 | 0.166 |
| 128 B | 0.172 | 0.167 | 0.061 | 0.134 | 0.096 | 0.153 |
| 256 B | 0.093 | 0.105 | 0.061 | 0.134 | 0.057 | 0.100 |
| 512 B | 0.054 | 0.078 | 0.061 | 0.139 | 0.038 | 0.076 |
| 1000 B | 0.035 | 0.063 | 0.059 | 0.139 | 0.028 | 0.061 |
| one line | 0.017 | 0.046 | 0.060 | 0.135 | 0.017 | 0.042 |

(The "no skip" columns are fixed cost per block; the skip columns are the whole function, `Vec` growth included. Without the skip the mask scan loses to `memchr` on long lines, which is why the first design needed a heuristic.) Other prototype results: `memchr_iter().count()` 0.024 ns/B; preallocating the `Vec` (exact count or `len / 32`) 0.388/0.355 against 0.368, **no** gain; 16-byte NEON mask with a `while mask != 0` loop 0.232 against 0.067, **no**.

**Rejected: choosing the scan by sampled mean line length.** Built and tested first (mask below a threshold, `memchr_iter` above). Calibrated on lines of equal length it gave thresholds of ~160 B (NEON) and ~32-64 B (SWAR); with exponentially distributed lengths the crossovers are ~450 B and ~190 B, because equal lengths make the per-hit iterators' branches predictable. Dropped when the early-out version proved never slower than `memchr_iter` at any length. **Lesson**: calibrate on line-length distributions of real text, not on equal-length lines.

`Chunk::try_append` (add chunk) keeps `memchr_iter`: it cannot write junk slots past its reserved range, and appends are small. x86_64 was only run under QEMU emulation (SSE2, correctness, not speed), so the x86_64 numbers are unknown. AVX2 and AVX-512BW are not implemented and **still have to be tried on a real x86_64 host** (procedure and acceptance criteria in D16). Other architectures (wasm32, 32-bit x86, loongarch64, s390x, riscv64, powerpc64, `std::simd`) are listed in D16 with their `std::arch` status, also still to try.

## Batch edits (`Text::apply_edits`, D17)

Scratch program, 10 MB synthetic text, min over 15 reps of a whole batch and 3 runs, ns per edit. "One by one": `delete` + `insert` from the last edit to the first; `apply_edits`: the batch API. Edits are line inserts and line deletes at random lines ("scattered") or inside a 200-line window ("clustered"). Single piece: the freshly loaded text; fragmented: 4437 pieces after 3000 random edits.

| Shape | edits | one by one | `apply_edits` | speedup |
|---|---|---|---|---|
| single piece, scattered | 1 | 291 | 333 | 0.87x |
| | 2 | 188 | 229 | 0.82x |
| | 4 | 219 | 146 | 1.50x |
| | 8 | 224 | 120 | 1.87x |
| | 16 | 253 | 109 | 2.32x |
| | 32 | 271 | 96 | 2.82x |
| | 128 | 372 | 93 | 4.00x |
| | 997 | 417 | 92 | 4.53x |
| | 4925 | 448 | 87 | 5.15x |
| fragmented, scattered | 1-32 | 411-500 | 419-500 | 0.96-1.00x |
| | 128 | 469 | 514 | 0.91x |
| | 997 | 512 | 302 | 1.70x |
| | 4925 | 548 | 145 | 3.78x |
| single piece, clustered | 4 / 15 / 51 | 198 / 233 / 251 | 125 / 106 / 83 | 1.58x / 2.20x / 3.02x |
| fragmented, clustered | 4 / 6 / 8 / 12 / 15 / 51 | 427 / 417 / 417 / 424 / 439 / 419 | 438 / 340 / 302 / 243 / 208 / 114 | 0.97x / 1.23x / 1.38x / 1.74x / 2.11x / 3.68x |

Below 3 edits it is the sparse path plus the fixed cost of validating, normalizing and storing the replacements (~40 ns per edit at 1-2 edits): use `insert`/`delete` there. The 0.91x row is the bounded count walk of D17 (1280 pieces visited, ~7 ns each); it is the worst band (the 128-edit row is 525 -> 514 against the version before the clustered path: no change).

**Clustered batches (W2).** The 4437-piece rows "fragmented, clustered" took the sparse path and gained nothing (1.0x). Now, when the batch is sparse and has at least `CLUSTER_MIN_EDITS` (6) edits, `Text::rebuilt_cluster` rebuilds only the span from the first to the last edit (`rebuilt` over `[lo, hi)`), and joins it with the untouched left and right parts obtained by `split`. A/B against a standalone copy of the previous version, same example built the same way, 8 alternating rounds, min, ns per edit (`apply_edits`, previous -> new): 6 edits 424 -> 340 (1.25x), 8 edits 427 -> 302 (1.4x), 12 edits 434 -> 243 (1.8x), 15 edits 442 -> 208 (2.1x), 51 edits 428 -> 114 (3.8x); 4 edits 438 -> 438 (below the minimum, same path). Single piece and scattered rows unchanged (0.96-1.04x; rows that never reach the new code move by up to 8% between builds: code placement). Hot paths, same A/B, 12 alternating rounds, min / median: paste 637 / 662 -> 605 / 619, random edits 651 / 682 -> 618 / 633, typing 60.9 -> 60.9, backspace 52.2 -> 52.2, `line()` 4.0 -> 4.0 (no regression).

**Rejected / reworked in W2** (each step measured against the previous version of the same A/B):
1. The span rebuild tried on every sparse batch with only a piece limit, cloning pieces: scattered batches on the fragmented text became +40-60% slower (417-438 -> 547-703 ns at 4-128 edits), because a failed attempt clones up to `edits * 10` pieces (an atomic increment each) for nothing, much more than the ~7 ns per piece of a count.
2. Adding the O(1) density estimate (`span * min_pieces <= budget * len`) removed it except at 128 edits (+27%).
3. Adding a count walk that clones nothing (`tree::has_at_most_in`) before the rebuild brought that to +10% (574 against 521), and left 4 clustered edits at +10% (469 against 427): there the attempt succeeds, but two splits and two `join2` cost about four path copies, so the span rebuild only breaks even.
4. Kept: a minimum of 6 edits for the clustered path (break-even between 4 and 6; 4 edits +12%, 6 edits -20%) and an O(1) rejection of spans over half of the text (they would hold about the pieces `rebuild_wins` has just rejected). Both slowdowns are gone (4 clustered edits 1.00x, 128 scattered edits 0.98x).

## Noise of the cross-library harness (3 runs per cell)

The same harness binary run 3 times per corpus (synthetic, Rust sources, CJK), alternating the system-allocator and the mimalloc build, on the M1 Pro with a quiet machine (load ~2). Spread = (max / min - 1) over the 3 runs of one cell, on the per-run minimum. Reads, loads and typing: 1-10% for piece-tree, 1-9% for the others. Edit rows are noisier: paste 2-9%, random edits 2-11% for piece-tree, up to 52% (ropey 1.x), 27% (ropey 2 beta, CJK) and 12% (SumTree); "typing, clone per key" up to 20% (mimalloc). What the repeats establish (min of the 3 minima, ns/op, piece-tree against the best other):

| Row | system allocator (synthetic / Rust / CJK) | mimalloc (synthetic / Rust / CJK) |
|---|---|---|
| typing 10k in 1 MB | 59.3 / 59.2 / 59.2 against ropey 2 beta 47.0 / 50.9 / 45.7: **ropey 2 ahead by 1.16-1.30x**, established (spreads <= 8%) | 50.7 / 50.7 / 50.5 against 48.2 / 50.8 / 45.2: tie on Rust, ropey 2 ahead by 1.05x and 1.12x (within the spreads of 3-7%) |
| paste mid-piece 1k | 660 / 661 / 631 against 663 / 648 / 666: tie | 442 / 451 / 436 against 587 / 600 / 568: **piece-tree ahead by 1.3x**, established |
| random edits 1k+1k | 631 / 643 / 615 against 578 / 570 / 572: ropey 2 ahead by 1.07-1.13x, at the edge of the spreads (4-27%) | 424 / 431 / 417 against 585 / 561 / 559: **piece-tree ahead by 1.3x**, established |
| backspace | 51 / 51 / 51 against 74 / 83 / 77 | 39 / 40 / 39 against 74 / 83 / 77 |

So the typing gap against ropey 2 beta is real with the system allocator and mostly closes with mimalloc (D18); the paste and random-edit differences with the system allocator are not established (ropey 2 is at most 13% ahead on random edits, a tie on paste), and with mimalloc piece-tree is clearly ahead. The full tables of the earlier single runs stay valid.

## Allocator: mimalloc against the system allocator (D18)

Harness feature `mimalloc` (`cargo run --release --features mimalloc`): `mimalloc::MiMalloc` as the global allocator of the whole binary, so all four libraries get it. macOS (Apple M1 Pro) only; the macOS system allocator may be slower than glibc's (not compared), so the effect on Linux may be smaller or larger (not measured). Profiles (macOS `sample`) before the change: 294 of 519 samples in `malloc`/`free` for random edits, 618 of 1157 for paste.

piece-tree alone, `edits` scratch program, 10 alternating rounds, ns/op, min / median:

| | system | mimalloc | min ratio |
|---|---|---|---|
| paste 1k on 10 MB | 582 / 637 | 440 / 454 | 0.76 |
| random edits 1k+1k | 617 / 652 | 436 / 457 | 0.71 |
| typing 10k | 60.8 / 61.0 | 48.7 / 48.9 | 0.80 |
| backspace 10k | 52.1 / 52.2 | 38.5 / 38.8 | 0.74 |
| `line()` all | 4.1 / 4.1 | 4.1 / 4.1 | 1.00 |

Effect on each library over the non-load rows of the full harness (mimalloc / system, one binary per allocator and corpus, min of 7 per row): piece-tree 0.54 / 0.86 / 1.06 (min / median / max), ropey 1.x 0.58 / 0.95 / 1.07, ropey 2 beta 0.52 / 0.97 / 1.05, SumTree 0.78 / 0.91 / 1.03. The cross-library text check is `ok` in all six runs.

Full comparison under mimalloc (same method as "Comparison with other implementations"; the system allocator tables are there):

**Synthetic (mimalloc)**

| Scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree | Best |
|---|---:|---:|---:|---:|---|
| load 50MB from &str (per byte) | **0.1** | 0.3 | 0.2 | 0.2 | piece-tree (2.00x) |
| load 50MB from String (per byte) | **0.1** | 0.3 | 0.2 | 0.2 | piece-tree (2.00x) |
| line() random, loaded | **30** | 517 | 799 | 688 | piece-tree (17.11x) |
| typing 10k chars in 1MB | 53 | 134 | **47** | 10 700 | ropey 2 beta (1.11x) |
| typing 10k, clone per key | **51** | 477 | 299 | 13 171 | piece-tree (5.82x) |
| line() all, after typing | **5.6** | 188 | 221 | 168 | piece-tree (30.05x) |
| line() 10x50 windows, typed | **5.7** | 196 | 243 | 195 | piece-tree (34.25x) |
| backspace 10k | **40** | 178 | 74 | 11 685 | piece-tree (1.85x) |
| offset_to_line random, typed | **12** | 113 | 66 | 38 | piece-tree (3.07x) |
| paste mid-piece 1k on 10MB | **549** | 1 008 | 600 | 17 873 | piece-tree (1.09x) |
| random edits 1k+1k on 10MB | **450** | 991 | 677 | 18 743 | piece-tree (1.50x) |
| line() all, after edits | **18** | 193 | 241 | 194 | piece-tree (10.47x) |
| batch 1k edits, one pass, 10MB | **79** | 684 | 446 | 5 312 | piece-tree (5.68x) |

**Rust sources (mimalloc)**

| Scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree | Best |
|---|---:|---:|---:|---:|---|
| load 50MB from &str (per byte) | **0.1** | 0.3 | 0.2 | 0.2 | piece-tree (2.00x) |
| load 50MB from String (per byte) | **0.1** | 0.3 | 0.2 | 0.2 | piece-tree (2.00x) |
| line() random, loaded | **35** | 506 | 778 | 598 | piece-tree (14.36x) |
| typing 10k chars in 1MB | **51** | 135 | **51** | 9 172 | piece-tree = ropey 2 beta (tie) |
| typing 10k, clone per key | **48** | 417 | 274 | 11 743 | piece-tree (5.76x) |
| line() all, after typing | **5.7** | 174 | 219 | 167 | piece-tree (29.37x) |
| line() 10x50 windows, typed | **5.8** | 179 | 245 | 191 | piece-tree (30.83x) |
| backspace 10k | **41** | 180 | 84 | 10 172 | piece-tree (2.07x) |
| offset_to_line random, typed | **12** | 101 | 67 | 41 | piece-tree (3.33x) |
| paste mid-piece 1k on 10MB | **472** | 873 | 679 | 18 478 | piece-tree (1.44x) |
| random edits 1k+1k on 10MB | **450** | 908 | 695 | 18 264 | piece-tree (1.54x) |
| line() all, after edits | **17** | 180 | 234 | 174 | piece-tree (10.10x) |
| batch 1k edits, one pass, 10MB | **84** | 603 | 465 | 5 390 | piece-tree (5.55x) |

**CJK (mimalloc)**

| Scenario | piece-tree | ropey 1.x | ropey 2 beta | SumTree | Best |
|---|---:|---:|---:|---:|---|
| load 50MB from &str (per byte) | **0.1** | 0.3 | 0.2 | 0.2 | piece-tree (2.00x) |
| load 50MB from String (per byte) | **0.1** | 0.3 | 0.2 | 0.2 | piece-tree (2.00x) |
| line() random, loaded | **32** | 529 | 766 | 686 | piece-tree (16.44x) |
| typing 10k chars in 1MB | 51 | 131 | **45** | 9 444 | ropey 2 beta (1.12x) |
| typing 10k, clone per key | **58** | 451 | 254 | 11 919 | piece-tree (4.40x) |
| line() all, after typing | **5.5** | 189 | 223 | 178 | piece-tree (32.45x) |
| line() 10x50 windows, typed | **5.8** | 192 | 244 | 203 | piece-tree (33.10x) |
| backspace 10k | **39** | 172 | 77 | 10 403 | piece-tree (1.96x) |
| offset_to_line random, typed | **12** | 104 | 65 | 38 | piece-tree (3.25x) |
| paste mid-piece 1k on 10MB | **441** | 907 | 654 | 17 668 | piece-tree (1.48x) |
| random edits 1k+1k on 10MB | **427** | 925 | 662 | 19 261 | piece-tree (1.55x) |
| line() all, after edits | **20** | 201 | 233 | 206 | piece-tree (10.07x) |
| batch 1k edits, one pass, 10MB | **73** | 613 | 522 | 5 386 | piece-tree (7.16x) |

Wins or ties over the 39 rows with mimalloc: piece-tree 37, ropey 2 beta 3, ropey 1.x 0, SumTree 0 (33 / 10 / 0 / 0 with the system allocator). Adopted by pt-edit (application decision, D18); `cargo bench -p piece-tree` and the examples stay on the system allocator.
