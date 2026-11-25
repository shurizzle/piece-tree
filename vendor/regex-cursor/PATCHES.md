# Local patches to regex-cursor 0.1.5

Upstream: https://crates.io/crates/regex-cursor (MIT OR Apache-2.0, see LICENSE-*).

## Literal prefilter search restarts from the wrong chunk

`src/engines/meta/strategy.rs`, `Pre::search` (the prefilter-only strategy): add
`input.move_to(input.start())` at the start of the search.

Not in `literal::find` itself: the automata engines also call it as an
accelerator from their *current* position mid-scan, and seeking back to the
search start there loops forever.

**Bug**: `literal::find_n` advances the cursor past the match to fill its sliding
window. The next search of an iterator calls `Input::set_span`, which only moves
the cursor forward (`if self.at() < span.start`), so the following literal
search starts from the chunk the cursor was left on and skips matches in
between. The other engines (PikeVM, DFAs) already call `move_to(input.start())`
before searching.

**Repro**: `é|🦀` over the chunks `é`, `é`, `é` finds `[0..2, 4..6]` instead of
`[0..2, 2..4, 4..6]`. The piece-tree test is
`search::tests::literal_alternation_across_piece_boundaries`.

Drop this vendored copy once upstream ships the fix.
