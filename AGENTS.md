# AGENTS.md

Instructions for coding agents working in this repository.

## Orientation

1. Read [ARCHITECTURE.md](ARCHITECTURE.md) first (short).
2. Fetch only the doc you need from [docs/README.md](docs/README.md); it maps each topic to one file.
3. Code is the source of truth; if a doc disagrees with code, fix the doc in the same change.

## Commands

```sh
cargo test -p piece-tree                       # library tests (~3 s debug)
cargo test --release -p piece-tree             # same tests, optimized
cargo clippy --workspace --all-targets         # must be clean
cargo +nightly-2026-11-20 llvm-cov -p piece-tree --lib --branch --show-missing-lines   # coverage
cargo +nightly-2026-11-20 miri test -p piece-tree --lib   # unsafe checks (~7 min)
cargo bench -p piece-tree                      # benchmarks, min of 7 runs
cargo build --release -p piece-tree --example profile && samply record target/release/examples/profile typing   # profile
cargo run -p pt-edit -- <file> [--eol lf|cr|crlf]
cargo test -p pt-edit                          # editor tests (keys, frames, submodule units)
```

## Rules

- **Always update the docs with every change.** Any addition or change to code, behavior, API, tests, commands, limits or design updates the affected files in `docs/`, `ARCHITECTURE.md` and this file **in the same change**. New topics get their own file under `docs/` and a row in `docs/README.md`. A change without its doc update is incomplete.
- **Library coverage stays at 100%** of lines, functions and branches (`--branch`). New code ships with tests in the same change. The only accepted residue is per-instantiation regions of generic `?` paths (see [docs/guides/testing.md](docs/guides/testing.md)).
- **Dependencies are welcome** when they are the best tool. House choices: `parking_lot` for every `Mutex`/`RwLock` (never `std::sync` locks), `memchr` for byte searches. Reach for `aho-corasick` for multi-pattern search, and similar well-known crates, instead of hand-rolling. Test randomness currently uses `test_util::Rng` (fixed seeds).
- Keep the invariants listed in ARCHITECTURE.md. Any new tree-producing code must be exercised under `tree::check`.
- Never break persistence: `Piece` and `Node` have no interior mutability; a `Chunk` only ever writes past its published end, under its lock.
- **`unsafe`** is allowed for performance (it lives in `chunk.rs`). Every `unsafe` block and `unsafe impl` has a `// SAFETY:` comment; every `unsafe fn` has a `# Safety` section. Any change touching `unsafe` code or the invariant it relies on must pass Miri.
- Under Miri, heavy tests are `#[cfg_attr(miri, ignore = ...)]` or scaled. In coverage-counted files (`src/*.rs`), scale with `#[cfg(miri)]`/`#[cfg(not(miri))]` consts, not `if cfg!(miri)`, which leaves a dead region.
- Performance claims need numbers: A/B against a standalone copy of the previous version built the same way (never the workspace against a copy: code placement alone moved reads by 20%), keep a change only if it beats the noise, and record kept **and rejected** attempts in [docs/guides/benchmarks.md](docs/guides/benchmarks.md). Profile with samply before guessing.
- `vendor/regex-cursor` is upstream 0.1.5 plus the patches listed in its `PATCHES.md`, wired in with `[patch.crates-io]`. Keep the diff minimal and documented, never lint or reformat it, and drop it once upstream has the fix.
- Release and bench profiles use fat LTO and `codegen-units = 1`. `-C target-cpu=native` lives only in the untracked `.cargo/config.toml`; never commit it.
- Public APIs take **byte offsets** and assert char boundaries and bounds with messages containing `out of bounds`, `invalid range` or `char boundary` (tests match on them).
- English only in code, comments and docs.
- Known limits use the comment form `// shortcut: <limit>, <when to upgrade>`; list new ones in [docs/reference/limitations.md](docs/reference/limitations.md).
- Comments explain *why*, not *what*.
- Test modules for large files live in `src/<module>/tests.rs`; small modules keep inline `#[cfg(test)] mod tests`.
- Differential tests assert O(n) model checks per step: keep step counts moderate (see testing guide) so the suite stays under a few seconds.
- Do not commit, push or rewrite history without explicit approval from the user.

## Layout cheat sheet

| Need | File |
|---|---|
| Chunk storage, `unsafe` | `crates/piece-tree/src/chunk.rs` |
| Pieces, balancing, split/join | `crates/piece-tree/src/tree.rs` |
| Public text API | `crates/piece-tree/src/text.rs` |
| Line endings | `crates/piece-tree/src/eol.rs` |
| Undo/redo, writing | `crates/piece-tree/src/document.rs` |
| Regex search/replace | `crates/piece-tree/src/search.rs` |
| Benchmarks | `crates/piece-tree/benches/bench.rs` |
| Editor | `crates/pt-edit/src/editor.rs` + `editor/*.rs` (grammar, motions, objects, search, registers, options, render; CLI/terminal in `main.rs`) |
