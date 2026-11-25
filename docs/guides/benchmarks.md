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
