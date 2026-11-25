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
| 4. mimalloc as global allocator (bench, pt-edit) | 0.99x | 1.08x | 0.98x | 0.96x | **no** |
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
- Allocation is ~5% of the profile, which is why mimalloc and a node pool were not worth it.

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
