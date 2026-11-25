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

**`Chunk::try_append` (add chunk, W8a).** It kept `memchr_iter` (12 ns per newline) because the SIMD flatten writes junk slots past the real ones, which would land in another writer's reservation. Now it uses `newlines::positions_callback`, a scan that calls back once per hit, and writes each offset straight into its reserved slot (guarded by `k < lf`): no temporary buffer, no junk, no size threshold. Scratch program `examples/paste.rs` of the harness (`Text::insert` of N bytes with exponential line lengths of the given mean at random offsets of a 10 MB text, ns per paste, min of 6 alternating rounds), HEAD against the new code:

| paste | mean 8 | mean 20 | mean 60 | mean 400 |
|---|---|---|---|---|
| 256 B | 1047 -> 961 | 938 -> 945 | 908 -> 938 | 890 -> 919 |
| 1 KiB | 1484 -> 898 (0.61x) | 1055 -> 835 (0.79x) | 837 -> 816 | 750 -> 792 |
| 4 KiB | 4471 -> 1581 (0.35x) | 2814 -> 1229 (0.44x) | 1389 -> 921 (0.66x) | 874 -> 845 |
| 64 KiB | 67057 -> 19583 (0.29x) | 44868 -> 15435 (0.34x) | 20921 -> 11919 (0.57x) | 7525 -> 5995 (0.80x) |

Rows of 256 B and sparse text move by +-6% in both directions (code placement, same as the other rows without newline work). Hot paths of the A/B (`edits` example, 12 alternating rounds, min / median): paste 594 / 601 -> 609 / 615, random edits 603 / 619 -> 621 / 643, typing 60.9 -> 60.2, backspace 52.1 -> 51.4, `line()` 4.0 -> 4.0: +2-3%, inside the noise of two binaries.

Rejected in W8a: (1) **temporary buffer + copy** (`positions` into a `Vec`, then copy with the base added): needs a size threshold because the allocation costs +5-8% at 256 B (kept at 1024 B, `SIMD_SCAN_MIN`); at 64 KiB it is faster than the callback (mean 20: 10.0 against 15.4 us) but slower at 1-4 KiB (1.04-1.22x of the callback), and the threshold is a heuristic. (2) **`positions` built on the callback** (so that one scan serves both): Rust sources 0.103 -> 0.171 ns/B (+66%), exponential line lengths of mean 100 +9%, equal-length lines (synthetic) 0.098 -> 0.063 and CJK 0.064 -> 0.042 (the loop over set bits predicts well there): `flatten`'s 8 unconditional writes are what keeps irregular text fast (module doc of `newlines.rs`), so `positions` keeps it. The callback pays that misprediction once per block, which is why it loses to the buffer only on big, dense pastes (64 KiB with a line every 20 bytes).

Both scans share one block loop (`blocks_by`, the sink gets `(mask, base)`): `positions` passes `push_block` (`flatten`), `positions_callback` a loop per hit. A/B of that refactor against the version with two block loops, 5 alternating rounds, min: load 0.102-0.034 ns/B on every density row, 1.00x (Rust sources 0.99x); paste 0.94-1.00x (noise).

**Char counting and `char_to_offset` (W8c).** Scratch program `examples/chars2.rs` of the harness (50 MB text of one loaded chunk, ns per byte, min of 4 alternating runs x 9 reps; "edited" = the same text after 1000 inserts, ~1000 pieces of 50 KB). Reference points: `chars().count()` on a `&str` 0.040 (the old `char_count`), `str_indices::chars::count` 0.017 (2.4x; the SIMD counter does pay, a first reading that it was not needed was wrong).

| | HEAD (before) | now |
|---|---|---|
| `char_count` (and `offset_to_char`) | 0.040 | 0.017 |
| `char_to_offset`, last char: ASCII / mixed / CJK | 0.081 / 0.082 / 0.082 | 0.017 / 0.022 / 0.034 |
| `char_to_offset`, middle char (per total byte) | 0.060 / 0.061 / 0.061 | 0.008 / 0.011 / 0.017 |
| `char_to_offset`, last char, edited text | 0.043 / 0.043 / 0.042 | 0.032 / 0.032 / 0.031 |

`char_to_offset` was the one that mattered: it counted the whole chunk (`c.chars().count()`) to decide whether the target was in it and then walked chars through the target chunk (0.72 / 0.85 / 1.02 ns/B before the first W8c step). It now asks `str_indices::chars::to_byte_idx(chunk, left)` first: a result below `chunk.len()` is the answer (one SIMD scan up to the target); `chunk.len()` means the char is not in the chunk (or is the one just past it), so the chunk is skipped by `chars::count`. Counting, skipping and the lookup all use `str_indices` (`count_chars`, `to_byte_idx` in `text.rs`; plain std under Miri, which does not implement the NEON intrinsic `vaddlvq_u8` it needs). The per-line functions (`line_char_len`, `line_col_to_offset`, `offset_to_line_col`) use `count_chars` too: on strings of 4-40 B the two counters are within ~1-1.4 ns of each other (noise), from 100 B up `str_indices` takes 0.7x, 0.3x from 400 B (scratch `chars3.rs`).

**Rejected / reworked in W8c**, ns/B on the last char (ASCII / mixed / CJK), same program:
1. First W8c step: skip the chunk in blocks of `CHAR_SKIP_BLOCK` (4096 B) counted with `chars().count()`, walking chars only in the last block, but after counting the whole chunk (a second scan): 0.081 / 0.083 / 0.083, 9-12x better than the 0.72-1.02 before but 2x the cost of one count. Block sizes of 1 KiB to 256 KiB gave the same time, which hid the cause (the leading full count) at first.
2. Same loop in one pass (no leading count): 0.042 / 0.043 / 0.043.
3. One-pass block loop with `str_indices` (`count` per 4096 B block, `to_byte_idx` in the target block): 0.017 / 0.018 / 0.017, the best everywhere (middle 0.009, edited 0.018); 256 B blocks 0.021-0.047, 1-64 KiB 0.017-0.025. **Not kept**: it needs a constant and a loop for a gain of 0-0.017 ns/B (at most ~1 ms per call on 50 MB, only on CJK and on texts of many pieces) over the 5-line version below.
4. `count` of each chunk, then `to_byte_idx` in the target chunk: 0.033 / 0.039 / 0.052 (two scans of the target chunk, and `to_byte_idx` is slower than `count`, 3x on CJK).
5. **Kept**: `to_byte_idx` first, `count` only for chunks that do not hold the char: 0.017 / 0.022 / 0.034 (CJK is 2x the block loop because `to_byte_idx` scans slower than `count` there), edited text 0.032 against 0.018 (each skipped piece is scanned by `to_byte_idx` and then counted). Edited text with ~1000 pieces of 50 KB gains nothing over HEAD from the first W8c steps (0.043 in every variant); a text with a few huge pieces keeps the full gain.

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

## Rerun after the clustered batches, the add-chunk scan and `char_to_offset` (W2, W8a, W8c)

The cross-library harness again, 3 runs per corpus and allocator (the same procedure as the noise section above), against those 3-run minima. Reads, `line()`, `offset_to_line`, load and the batch row: 0.95-1.04x, unchanged. The edit rows (typing, backspace, paste, random edits) came out 0-5% slower with the system allocator and up to +10% on the CJK corpus (paste 631 -> 694, random edits 615 -> 676), with mimalloc 0-5%. The ranking does not change: ropey 2 beta stays ahead on typing with the system allocator (1.18-1.37x) and on random edits (1.10-1.18x), piece-tree stays ahead with mimalloc on paste (1.22-1.26x) and random edits (1.26-1.34x), and by 1.4-34x everywhere else.

Is the drift real? Two binaries built from different code differ 5-10% by placement alone, and another process was building during that run, so it was checked with the A/B that controls both: the `edits` example of the harness, 15 alternating rounds of three standalone builds (HEAD, the current code, and the current code with the newline scan of `try_append` moved into an `#[inline(never)]` method), min / median in ns:

| | HEAD | current | `#[inline(never)]` scan |
|---|---|---|---|
| paste | 621.8 / 649.8 | 620.7 / 674.2 | 631.2 / 682.6 |
| random edits | 639.2 / 660.9 | 645.1 / 664.1 | 634.4 / 682.0 |
| typing | 62.1 / 62.3 | 60.8 / 61.8 | 57.6 / 60.0 |
| backspace | 53.1 / 53.3 | 53.2 / 53.4 | 53.1 / 53.9 |
| `line()` | 4.1 / 4.2 | 4.1 / 4.2 | 4.0 / 4.1 |

The current code is within 1% of HEAD on every row on the minima (the medians of paste are 4% higher, 650 -> 674, with a spread between rounds of the same size), so no regression is established: a small real cost of 1-4% on paste cannot be excluded, the harness drift being mostly placement and load. **Rejected: `#[inline(never)]` on the scan.** It does not move the edit rows (paste and random edits within 2%, typing 57.6 against 60.8 is a single-binary placement effect that the medians do not confirm), and the paste rows with newlines are 1-6% slower (256 B - 64 KiB, 1.00-1.06x of the inlined version): the scan is cheap enough that the call costs more than the code growth. The same attribute fixed the batch code (round 5, above) because that code is large; this one is not.

## Typing in place (`Text::insert_mut`, D19)

The full tables of the last cross-library run (every row, four libraries, both allocators, three corpora) are in [comparison-tables.md](comparison-tables.md).

Goal: bring typing (59 ns with the system allocator, 50 with mimalloc) to ropey 2 beta's 47 ns.

**Profile first** (macOS `sample`, system allocator, a typing loop of the harness, 4303 samples): `_xzm_free_tc` 908, `_xzm_malloc_tc` 763, `malloc_zone_malloc` 473, `free` 260 and the two stubs 124: **59% allocator**. Then `tree::extend_at` 510 (12%), `tree::node` 472 (11%), the `Arc<Node>` drop 281 (6.5%), `Text::insert` 180 (4%, `normalize` and `count_lf` inlined), `Chunk::try_append` 172 (4%), `memmove` 53. So the two micro-optimizations of the plan (a scalar short-string path in `Text::insert`, a cheaper `try_append`) had at most ~8% to give, and were **not built**. The cost is the path copy: 2-3 nodes allocated and as many freed per key.

**Estimate** (the W1 prototype, `piece-tree-bench/w1proto`, AVL copied from `tree.rs`): on the harness tree (3 pieces) the typing path copy is 21 ns and growing the piece in place when the path is unshared is 2 ns (3000 pieces: 250 -> 20 ns, 30000: 307 -> 27 ns; mimalloc 21 -> 2, 204 -> 20, 254 -> 27).

**Implemented**: `Text::insert_mut` (in place when every node of the path has one owner, otherwise `insert`), `Document::insert` uses it inside an open group. Scratch program `examples/typing_mut.rs` of the harness (10k keys into a 1 MB text, `Text` value cloned from the loaded one, min of 80 reps, ns per key, 3 runs identical to 0.1-0.3):

| | system | mimalloc |
|---|---|---|
| `Text::insert` (path copy) | 60.9-62.2 | 51.4-51.5 |
| `Text::insert_mut` | 13.2 | 13.1 |
| `Document::insert`, no group (a version per key; the 1 MB setup is inside the timing of both `Document` rows) | 105 | 96 |
| `Document::insert`, in a group | 28 | 29 |

Cross-library harness (3 runs per corpus and allocator, the typing row now uses `insert_mut` for piece-tree through `Buffer::type_key`; the "clone per key" row keeps `insert`), piece-tree before -> after against the best other library of the same run:

| Corpus / allocator | typing before -> after | best other | lead after |
|---|---|---|---|
| synthetic / system | 62.2 -> 12.8 | ropey 2 beta 51.6 | 4.0x |
| synthetic / mimalloc | 52.5 -> 12.6 | ropey 2 beta 47.1 | 3.7x |
| Rust / system | 61.0 -> 12.8 | ropey 2 beta 58.5 | 4.6x |
| Rust / mimalloc | 50.9 -> 13.0 | ropey 2 beta 52.4 | 4.0x |
| CJK / system | 61.3 -> 13.1 | ropey 2 beta 51.7 | 3.9x |
| CJK / mimalloc | 51.1 -> 13.0 | ropey 2 beta 45.5 | 3.5x |

Before this change ropey 2 beta led typing by 1.18-1.37x with the system allocator (rerun above) and by 1.03-1.12x with mimalloc. The other rows did not move beyond the noise of two binaries (backspace 0.97-1.02x, paste 0.92-1.02x, random edits 0.95-1.02x, `line()` 0.93-0.98x, "clone per key" 0.96-1.12x: that row uses `insert`, whose code did not change, and its 3-run spread was 2-20% before). A/B against a standalone copy of HEAD, `edits` example, 15 alternating rounds, min / median: paste 599 / 647 -> 598 / 630, random edits 620 / 664 -> 618 / 642, typing through `insert` 60.4 / 60.5 -> 60.4 / 60.5, backspace 52.2 -> 51.5, `line()` 3.9 -> 3.9: no regression, `insert` is untouched.

Not helped by design: a version per key. `Document` without a group, and the "clone per key" scenario, keep the old version alive, so the path is copied (the new code only adds a refused `Arc::get_mut` at the root, inside the noise).

## Insert and delete in place (D20)

Implemented after the estimate below: `Text::insert_mut` for every insert, `Text::delete_mut`, `Document::insert` / `delete` / `splice` inside a group. A/B against a standalone copy of HEAD built the same way (HEAD = the typing change of D19), harness examples `edits` (persistent API, in both) and `edits_mut` (the in-place API, new code only; same scenarios), alternating runs, min / median in ns per operation:

| Row | system: HEAD | system: persistent API now | system: in place | mimalloc: HEAD | mimalloc: in place |
|---|---|---|---|---|---|
| paste 1k on 10 MB | 610.7 / 653.4 | 621.4 / 640.0 | **330.0 / 347.4** (-46%) | 455.2 / 461.2 | **315.5 / 328.1** (-31%) |
| random edits 1k+1k | 611.0 / 639.4 | 611.2 / 643.2 | **315.5 / 343.0** (-48%) | 436.4 / 440.5 | **304.2 / 314.4** (-30%) |
| typing 10k | 60.4 / 60.5 | 60.5 / 61.4 | 13.4 / 13.8 | 49.5 / 49.5 | 13.4 / 13.8 |
| backspace 10k | 51.6 / 52.3 | 52.2 / 52.4 | **19.5 / 20.1** (-62%) | 38.6 / 39.8 | **19.7 / 20.1** (-49%) |
| `line()` | 3.9 / 4.0 | 3.9 / 3.9 | 3.8 / 3.8 | 3.9 / 3.9 | 3.8 / 3.8 |

15 rounds with the system allocator, 12 with mimalloc. The persistent API (`insert`, `delete`) did not move: `Text::insert` and `delete` are untouched. Cross-library (`tools/run.sh`, 3 runs per corpus and allocator; the harness adapter now calls `insert_mut` / `delete_mut` for piece-tree, and `Text::insert` for the "clone per key" row, where every version is kept), piece-tree before -> after, and the lead over the best other library after (all in `comparison-tables.md`):

| Row | synthetic sys | Rust sys | CJK sys | synthetic mimalloc | Rust mimalloc | CJK mimalloc |
|---|---|---|---|---|---|---|
| paste mid-piece 1k | 687 -> 341 (ropey 2 beta 678, 1.99x) | 634 -> 357 (667, 1.87x) | 659 -> 322 (659, 2.05x) | 449 -> 326 (597, 1.83x) | 467 -> 324 (561, 1.73x) | 454 -> 309 (567, 1.84x) |
| random edits 1k+1k | 644 -> 329 (606, 1.84x) | 674 -> 323 (574, 1.78x) | 642 -> 308 (588, 1.91x) | 430 -> 304 (595, 1.96x) | 447 -> 301 (596, 1.98x) | 437 -> 294 (574, 1.95x) |
| backspace 10k | 53.0 -> 19.9 (76, 3.83x) | 53.7 -> 20.3 (87, 4.29x) | 54.4 -> 19.9 (79, 3.95x) | 39.4 -> 20.1 (74, 3.68x) | 40.7 -> 19.9 (85, 4.28x) | 39.6 -> 19.9 (77, 3.87x) |
| typing 10k (D19) | 12.8 -> 14.0 (48, 3.46x) | 12.8 -> 13.6 (52, 3.83x) | 13.1 -> 13.6 (45, 3.32x) | 12.6 -> 13.9 (48, 3.44x) | 13.0 -> 13.5 (51, 3.77x) | 13.0 -> 13.5 (45, 3.35x) |
| typing, clone per key | 67.5 -> 68.1 | 66.4 -> 61.7 | 65.9 -> 64.3 | 50.9 -> 50.9 | 48.7 -> 49.0 | 57.6 -> 55.1 |

Reads and the batch row did not move (`line()` 0.96-1.06x, batch 1k 0.98-1.03x). Typing is 4-10% slower in the harness than in the previous run (12.8 -> 14.0) while the isolated A/B above shows 13.4 for both versions: code placement of two different binaries.

The estimate below projected paste ~385 / ~275 ns and random edits ~330 / ~275 ns (system / mimalloc), backspace -25%: the system allocator did better than projected (330 and 316), mimalloc about 13% worse (316 and 304), backspace much better (it never allocates: a suffix trim only shrinks a piece).

## Estimate for in-place insert and delete (throwaway prototype)

Question: D19 made typing 4x cheaper by editing the nodes of an unshared version in place. Does the same apply to the remaining edit rows (paste, random edits, backspace), where ropey 2 beta is still ahead with the system allocator (1.04x on paste, 1.10-1.18x on random edits)? Prototype in the same crate as the W1 estimate (`piece-tree-bench/w1proto`, `w1proto inplace`, outside the workspace): the AVL of `tree.rs` against the same AVL edited with `Arc::make_mut` along the path (a node with one owner is changed in place, a shared one is cloned, so a partly shared version needs no separate path), with rotations done in place and the cached `height`/`len`/`lf` fixed on the way back. Operations: insert of a piece in the middle of another (`insert_at` against `insert_mut`), delete of 40 bytes inside one piece (`delete_in` against `delete_mut`; deleting a whole piece or a range that spans pieces falls back to the persistent code), and deleting the last byte of a piece (backspace). The in-place trees were checked against the persistent ones for 4000 random inserts and deletes on trees of 0, 40 and 3000 pieces: same pieces in the same order, AVL balance and totals valid at every step, and versions kept before the edits unchanged. Same `Piece` and `Arc` as the library, min of 3 runs of 30 rounds of 512 ops, ns per op, persistent -> in place:

| pieces | paste, system | paste, mimalloc | edits (insert + delete, average), system | edits, mimalloc | backspace, system | backspace, mimalloc |
|---|---|---|---|---|---|---|
| 1 | 355 -> 134 | 267 -> 122 | 382 -> 122 | 257 -> 115 | 21 -> 9 | 20 -> 10 |
| 1000 | 468 -> 166 | 333 -> 158 | 461 -> 153 | 304 -> 147 | 214 -> 46 | 173 -> 45 |
| 3000 | 508 -> 208 | 368 -> 191 | 499 -> 182 | 333 -> 175 | 253 -> 55 | 213 -> 55 |
| 30000 | 618 -> 297 | 463 -> 281 | 576 -> 280 | 421 -> 255 | 328 -> 75 | 329 -> 71 |

When every version is kept (a clone per operation, so every node on the path is shared) the new code is not slower: paste at 1 / 1000 / 3000 / 30000 pieces, persistent -> make_mut, system: 268 -> 245, 314 -> 294, 342 -> 324, 416 -> 405 (mimalloc 205 -> 202, 267 -> 242, 294 -> 264, 375 -> 337).

**Projection to the library rows** (the fixed part of an operation that no tree change touches is taken as the real row minus the prototype's persistent time on a tree of the harness size, ~2000 pieces after 1000 pastes: ~200 ns with the system allocator and ~100 ns with mimalloc for paste, ~165 and ~110 ns for random edits; it is added to the in-place time at the same size):

| Row | now (system / mimalloc) | projected | best other now | lead |
|---|---|---|---|---|
| paste mid-piece 1k | 687 / 449 | ~385 / ~275 (-44% / -39%) | ropey 2 beta 664 / 593 | ~1.7x / ~2.2x (from 0.97x / 1.3x) |
| random edits 1k+1k | 644 / 430 | ~330 / ~275 (-49% / -36%) | ropey 2 beta 581 / 588 | ~1.8x / ~2.1x (from 0.90x / 1.4x) |
| backspace | 53 / 39 | ~41 / ~29 (-23% / -26%) | ropey 2 beta 74 / 90 | 1.8x / 3.1x |

Why it works: the path copy of ~12 nodes (an allocation and a free each, plus the `Arc` traffic of their children) becomes the two allocations of the new pieces (one for a delete); the walk, the rotations and the totals stay. It is allocator-independent, like D19: the gain is smaller with mimalloc only because the baseline is cheaper.

What the prototype does not include: the real insert has the chunk side (`Piece::store`, `try_append`, the newline index) and the char-boundary asserts of `Piece::split`/`sub`, the whole-piece and cross-piece deletes (`delete_range`: `split` + `join2`) would still be persistent, and the same needs a `Text::delete_mut` and `Document` wiring inside groups. The gain only exists while the previous version is not kept (the harness pattern `t = t.insert(..)`, the editor inside a group); with kept versions the code is as fast as the persistent one (table above), not faster.

## Estimate for wide leaves (W1, throwaway prototype)

Question: how much would a B-tree-like tree (several pieces per node, `Arc` per node, path copying) gain over the binary AVL of `tree.rs`? Prototype outside the workspace (`piece-tree-bench/w1proto`, a standalone crate, not part of the library): the same 24-byte `Piece` with an `Arc<Chunk>`, the same `triomphe::Arc`, the AVL copied from `tree.rs` (`node`, `join`, `insert_at`, `extend_at`) against a persistent B-tree with up to `L` pieces per leaf and `F` children per inner node (insert and the typing extension only). Built the same way (fat LTO), system allocator and mimalloc, min of 3 runs of 40 rounds. "Insert" = `t = t.insert(random offset, piece)` dropping the previous version each step (the paste scenario); "typing" = growing one piece by one byte per key (`extend_at`, no structural change); "lookup" = `lf_before` at a random offset. The AVL of the prototype reproduces the library (3000 pieces: 511 ns against 660 ns of the real paste, the rest being the chunk append and the line-feed counts), which fixes the part that a tree change cannot touch at about 120 ns (system) and 80 ns (mimalloc) per paste.

Best shape, `L = 8, F = 8` (about 5.5 pieces per leaf when random inserts fill it), ns, AVL -> wide:

| | pieces | system allocator | mimalloc |
|---|---|---|---|
| insert | 1 (a loaded text) | 365 -> 240 (-34%) | 269 -> 199 (-26%) |
| | 1000 | 433 -> 281 (-35%) | 325 -> 235 (-28%) |
| | 3000 | 511 -> 341 (-33%) | 363 -> 270 (-26%) |
| | 30000 | 627 -> 419 (-33%) | 480 -> 321 (-33%) |
| typing | 3 (1 MB text) | 21 -> 40 (**+90%**) | 21 -> 40 (**+90%**) |
| | 1000 | 210 -> 188 (-10%) | 161 -> 171 (+6%) |
| | 3000 | 249 -> 232 (-7%) | 209 -> 210 (0%) |
| | 30000 | 314 -> 271 (-14%) | 271 -> 276 (+2%) |
| lookup | 1000 | 35 -> 26 (-25%) | 36 -> 26 (-27%) |
| | 3000 | 52.5 -> 33.7 (-36%) | 52.4 -> 34.0 (-35%) |
| | 30000 | 106 -> 59 (-44%) | 104 -> 59 (-43%) |

Other shapes: `L = 4, F = 4` gains less on insert (-10% to -14% at 3000 pieces) and adds more nodes; `L = 16` (either `F`) is no better than the AVL on insert (-14% to +10% at 3000 pieces, depending on `F` and the allocator) and clearly worse on typing (+8% to +55% on fragmented trees, 2.7x on a 3-piece tree): copying 16 pieces costs 16 atomic increments. A wide node is also smaller per piece: 240 bytes for 8 slots (about 44 bytes per stored piece at the observed fill) against 72 bytes per AVL node.

Reading of the numbers:
- **Paste and random edits**: the path copy gets 26-35% cheaper (4 allocations instead of ~14). Subtracting the untouched part, the end-to-end paste would go from about 660 to 485 ns (-27%) with the system allocator and from about 443 to 350 ns (-21%) with mimalloc, i.e. from a tie with ropey 2 beta to 1.4x ahead (system) and from 1.3x to 1.7x ahead (mimalloc). Random edits (insert plus delete) are expected to follow, but delete is not prototyped.
- **Typing gets worse in the harness scenario**: on the 1 MB text the tree has 3 pieces, the AVL path copy is two small nodes (21 ns) and a wide leaf costs 40 ns (its 8 slots are copied and initialized): typing 59 -> about 78 ns (system) and 51 -> about 70 ns (mimalloc), against ropey 2 beta's 47: the gap would grow from 1.16-1.30x to 1.5-1.7x. In a fragmented text typing gains 0-14%. A real implementation could narrow it (a smaller first leaf, an in-place path for unshared nodes) but not by a measured amount.
- **Reads** are 25-44% faster, which does not matter much: `line()` is already 10-34x ahead.

What the prototype does not include and what would eat part of the gain: delete with merge/borrow of underfull nodes, `split` and `join` of two B-trees of different heights (the AVL `join` is the base of `delete_range`, `apply_edits`, the clustered batch of D17), `from_pieces`, `pieces_in`, and the piece-count bounds of D17 (`min_pieces`, `max_pieces`, `has_at_most`), which are defined on the AVL height. The prototype's own overheads (a scratch array of 20 slots per node) were reduced for `extend` but not for `insert`, so the insert gain is, if anything, understated.

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

## Editor frame with `wrap` (`pt-edit`, `render.rs`)

Release build, 100×50 screen, one run of 200 (10 for the huge line) per cell, temporary ignored test (removed); per-iteration time of `frame` alone and of key + `frame`. Compared with `nowrap` on the same build; there is no copy of the previous version because `wrap` did not exist.

| Scenario | `wrap` frame | `nowrap` frame | `wrap` `gj`+frame | `wrap` `L`,`Ctrl-D`+frame |
|---|---|---|---|---|
| 100k lines × 120 ASCII, cursor mid-file | 44 µs | 62 µs | 44 µs | 46 µs |
| 1 line × 2 MB ASCII | 157 µs | 86 µs | 467 µs | 525 µs |

Steps, kept and **rejected**:

- First version: the cursor line was split into rows 3–4 times per frame, each with a width lookup per char. 1 × 2 MB: `wrap` frame 10.3 ms (`nowrap` 6.4 ms), `gj`+frame 20 ms. **Rejected** as too slow for huge lines.
- Cursor line laid out once per frame (`cur_segs`, no repeated `Text::line`): `wrap` 3.5 ms, `nowrap` 86 µs (the old `nowrap` cost came from the repeated copies too). Kept.
- ASCII fast path in `segments` (`str::is_ascii` + `memchr` for tabs, rows are fixed-size chunks): `wrap` 157 µs, 65× faster than the first version. Kept. Non-ASCII lines still pay one width lookup per char per frame (about 3.5 ms for 2 MB), see [limitations](../reference/limitations.md).

### `segments` on mixed (non-ASCII or tab) lines

`segments` alone, release, 2 MB line, text width 100, mean of 10, against the plain per-char loop (`naive`, the layout before the run skipping) in the same binary:

| Line | `segments` | `naive` |
|---|---|---|
| one accent in 2 MB of ASCII | 0.33 ms | 2.7 ms |
| accent every 1000 chars | 0.48 ms | 2.7 ms |
| accent every 8 chars | 3.7 ms | 3.0 ms |
| tab every 8 chars | 3.0 ms | 2.7 ms |
| pure CJK | 5.3 ms | 5.1 ms |

Steps, kept and **rejected**:

- Skip ASCII runs of up to 64 bytes, retry every 16 bytes after a failure, per-char `str` slicing in the loop: sparse 4-5x faster but dense text 2-3x **slower** (accent every 8 chars 9.5 ms, CJK 11 ms). **Rejected.**
- Same with a `Chars` iterator and exponential backoff on failed checks: dense text 5-6 ms. **Rejected**, the loop around the iterator was the cost.
- Failed checks double a window laid out by the plain `char_indices` loop (16 bytes up to 4 KiB): the table above. Kept; dense mixed text stays within 20% of the plain loop.

These are the costs of laying a whole line out; since the lazy layout below a frame only pays them for a line prefix, once.

### Lazy rows kept for the cursor line (`layout.rs`)

Release, 100×50 screen, cursor at char 500000 of a single 2 MB line, mean of 20 per cell (temporary ignored test, removed). Key + `frame` unless noted; the previous layout re-laid the cursor line out on every frame.

| Line | frame, same text | `gj` + frame | `Ctrl-D` + frame | insert `x` only | insert `x` + frame |
|---|---|---|---|---|---|
| 2 MB CJK (6 MB) | 50 µs | 233 µs | 244 µs | 1.77 ms | 2.04 ms |
| 2 MB ASCII | 65 µs | 141 µs | 145 µs | 0.44 ms | 0.60 ms |
| 2 MB accent every 8 chars | 72 µs | 159 µs | 158 µs | 0.61 ms | 0.82 ms |

Before (whole line laid out every frame, ASCII fast paths included): CJK frame 10.9 ms and 44 ms with `gj`, ASCII frame 157 µs, accent every 8 chars 9.5 ms. The first jump to the cursor (cold) lays out its prefix once: CJK 2.3 ms, ASCII 0.29 ms, accent 0.98 ms. What remains of the insert cost is the editor's insert path, which the frame does not touch (frame share: 0.27, 0.16 and 0.21 ms).

Steps, kept and **rejected**:

- Rows laid out lazily (`Rows`), cursor line cached with a byte comparison of the old and new line each frame: steady frame CJK 617 µs, ASCII 283 µs. Kept as the base.
- Skip the comparison when the slice address and length are unchanged, holding the `Text` so the address is not reused: steady 52 µs. **Rejected** for the next step, which does not rely on addresses.
- Cache keyed by `Text::ptr_eq` and line number, one `Text::line` read per frame after an edit instead of 3-4: insert + frame CJK 2.74 ms to 2.04 ms. Kept.

### Position conversions, `hlsearch` and Visual on huge lines (`pt-edit`, `Text::line_col_to_offset`)

Release, a single 2 MB line (CJK: 6 MB), cursor at char 500000 after a few typed chars (several pieces), mean of 20 per cell (temporary ignored test, removed).

| Operation | CJK before | CJK after | ASCII before | ASCII after |
|---|---|---|---|---|
| `Text::line_col_to_offset` | 1.68 ms | 0.14 ms | 385 µs | 42 µs |
| `l` (key only) | 480 µs | 0.27 µs | 179 µs | 0.09 µs |
| `h` (key only) | 292 µs | 0.06 µs | 120 µs | 0.05 µs |
| `x` in Normal | 4.02 ms | 0.73 ms | 1.07 ms | 0.27 ms |
| typed char in Insert | 1.78 ms | 0.29 ms | 449 µs | 103 µs |
| typed char + frame | 2.08 ms | 0.55 ms | 595 µs | 245 µs |
| `v` then `l` + frame | 800 µs | 134 µs | 375 µs | 224 µs |

Steps, kept and **rejected**:

- `line_col_to_offset` used `char_indices().nth(col)`; `str_indices::chars::to_byte_idx` (already a house choice, see AGENTS.md) does the lookup with SIMD. Kept; it was the largest share of every edit.
- `Editor::line_chars` keeps its last answer per text version (`Text::ptr_eq`, line): motions, clamps and the Visual selection ask for the same count several times per key. Kept; `l`/`h` no longer scan the line.
- `visible_matches` converted every match with `offset_to_line_col`, which counts chars from the line start: quadratic on a line with many matches (250 000 matches in 2 MB: 20 frames did not finish in 60 s). Now the column of each match is counted from the previous one, and the highlight lookup per char is a binary search instead of a scan of the line's matches. The result is kept while the text version, pattern and lines are the same (`matches_in`). Kept; a miss with 330 000 matches costs about 20 ms, a hit nothing.
- **Not done**: restricting the matches to the displayed window. Matches must be enumerated from the line start to stay exactly as vim finds them (a match depends on the text after it), so a miss still costs the whole line.

## Editor on huge lines: A/B against HEAD (`pt-edit`, library `Text` conversions)

Supersedes the single-run workspace tables of the three editor sections above (kept for the steps they record). Both sides are standalone copies built the same way (`cargo test --release -p pt-edit`), the same ignored test in both (removed from the repo afterwards), 3 alternating runs, minimum of 5 repetitions per cell, µs, 100×50 screen, one 2.1 M-char line (`"abcdef ghijk, lm(no) "` or `"日本語 テスト、漢字(abc) "` repeated), cursor at char 500000 after a few typed chars (several pieces). "Before" is HEAD (`679cdb5`: no wrap, per-char `Vec<char>` scans); "after" has wrap on (default), so its frame also lays rows out.

| Operation | ASCII key before → after | ASCII frame before → after | CJK key before → after | CJK frame before → after |
|---|---|---|---|---|
| `w` | 1830 → 87 | 2031 → 66 | 2622 → 203 | 2971 → 60 |
| `b` | 2830 → 93 | 2028 → 66 | 3344 → 235 | 2973 → 60 |
| `e` | 1791 → 87 | 2023 → 66 | 2546 → 205 | 2938 → 61 |
| `fz` (not found) | 1921 → 92 | 2036 → 66 | 2280 → 211 | 2995 → 60 |
| `%` | 2274 → 252 | 2000 → 66 | 3873 → 564 | 2932 → 61 |
| `x` | 1070 → 107 | 1990 → 166 | 2654 → 223 | 2953 → 297 |
| `dw` | 2624 → 188 | 2024 → 191 | 4949 → 428 | 2977 → 305 |
| `diw` | 3111 → 225 | 2030 → 169 | 6618 → 481 | 2965 → 237 |
| `ciwx<Esc>` | 3628 → 263 | 2006 → 181 | 7734 → 569 | 2964 → 254 |
| `yiw` | 3119 → 192 | 2031 → 66 | 6607 → 431 | 2957 → 60 |
| `l` / `h` | 183 / 123 → 0.0 | 1998 → 66 | 305 / 200 → 0.0 | 3027 → 60 |
| `ix` (typed char) | 510 → 43 | 1994 → 195 | 1273 → 93 | 2945 → 311 |
| `ixyz<Esc>` | 1439 → 146 | 1985 → 188 | 3741 → 309 | 2946 → 316 |
| `u` | 150 → 36 | 1917 → 104 | 257 → 61 | 2903 → 127 |
| `vlld` | 1873 → 193 | 1987 → 179 | 4497 → 418 | 2956 → 300 |
| `$` | 186 → 0.1 | 7854 → 301 | 307 → 0.1 | 8876 → 2235 |

`hlsearch` on 10 000 matches in one 200 KB line (`*` on a word, then a frame): key 410 → 59 µs, frame 29 543 → 1 002 µs (HEAD converted every match from the line start, quadratic; 250 000 matches in 2 MB did not finish a frame in 60 s). Library, `Text::line_col_to_offset` (standalone copies, 5 alternating runs, min of 9, ns): 2 MB ASCII 1 piece at col 1000 694 → 52, mid-line 702 946 → 12 242, line end 1 432 744 → 48 708; the same text in about 100 pieces at col 1000 40 612 → 623, mid-line 743 977 → 26 235; 6 MB CJK in 100 pieces at col 1000 92 998 → 727, line end 5 056 594 → 129 419 (`str_indices::chars::to_byte_idx` instead of `char_indices().nth`, and the pieces read in place instead of copied by `slice`).

What did not get faster: `$`/`A` on the 2.1 M-char CJK line still lays out its whole prefix once (2.2 ms, down from 8.9 ms with no layout kept), and `yy`/`p` copy the line.
