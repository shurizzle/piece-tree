//! Grapheme clusters: the unit of cursor columns (`Pos.1`) and of screen cells.
//!
//! Lines are scanned in spans: a run of ASCII bytes (each its own cluster) or one cluster. Text made
//! of chars that never join a neighbor of the same kind (ASCII but `\r`, Latin, Greek, Cyrillic, the
//! common CJK ranges) skips the segmentation tables; anything else goes through
//! `unicode-segmentation`. A long line also gets a `LineIndex`, so a conversion scans a few KiB.

use std::ops::Range;

use piece_tree::{Edit, Text};
use unicode_segmentation::{GraphemeCursor, UnicodeSegmentation};
use unicode_width::UnicodeWidthStr;

use super::render::cell_width;

/// Whether the char with lead byte `c0` (then `c1`, `c2`, or 0 past the string) is not "simple".
/// A simple char is one a boundary always separates from a neighbor of this kind: it is neither
/// `\r`, a mark that extends the cluster before it (Extend, SpacingMark, ZWJ), a prepended mark, a
/// regional indicator nor a Hangul jamo. The simple ones are those of the common scripts that hold
/// none of them: ASCII but `\r`; U+0080–U+02FF; Greek and Cyrillic but their combining marks;
/// Latin and Greek extended (U+1E00–U+1FFF); punctuation, symbols, arrows and dingbats (U+2000–U+2FFF)
/// but ZWNJ/ZWJ and the marks for symbols; CJK symbols, kana and extension A (U+3000–U+3FFF) but
/// the tone and voicing marks; ideographs; Yi, Lisu, Vai and Cyrillic extended up to its marks;
/// Hangul syllables; compatibility ideographs; fullwidth and halfwidth forms but the voicing marks.
/// Emoji count as not simple (they are 4 bytes). Continuation bytes give false. Decided on the bytes,
/// without decoding, so a block of positions can be tested at once (`run_end`).
/// `tests::simple_chars_are_their_own_clusters` checks every char this accepts.
#[inline(always)]
fn complex(c0: u8, c1: u8, c2: u8) -> bool {
    // Bitwise only, no branches, so `run_end` vectorizes it.
    let r = |c: u8, lo: u8, hi: u8| c.wrapping_sub(lo) <= hi - lo;
    let e2 = (c1 == 0x80) & ((c2 == 0x8C) | (c2 == 0x8D))
        | (c1 == 0x83) & (c2 >= 0x90)
        | (c1 == 0xB3) & r(c2, 0xAF, 0xB1)
        | (c1 == 0xB5) & (c2 == 0xBF)
        | (c1 == 0xB7) & (c2 >= 0xA0);
    let e3 = (c1 == 0x80) & r(c2, 0xAA, 0xAF) | (c1 == 0x82) & r(c2, 0x99, 0x9A);
    let ef_simple = r(c1, 0xA4, 0xAB) | (c1 == 0xBC) & (c2 >= 0x81) | (c1 == 0xBD) | (c1 == 0xBE) & !r(c2, 0x9E, 0x9F) | (c1 == 0xBF) & (c2 <= 0xAF);
    (c0 == b'\r')
        | r(c0, 0xC0, 0xC1)
        | (c0 == 0xCC)
        | (c0 == 0xCD) & (c1 < 0xB0)
        | (c0 == 0xD2) & r(c1, 0x83, 0x89)
        | (c0 == 0xD4) & (c1 >= 0xB0)
        | r(c0, 0xD5, 0xE0)
        | (c0 == 0xE1) & (c1 < 0xB8)
        | (c0 == 0xE2) & e2
        | (c0 == 0xE3) & e3
        | (c0 == 0xEA) & ((c1 == 0x99) & (c2 >= 0xAF) | r(c1, 0x9A, 0xAF))
        | (c0 == 0xED) & ((c1 > 0x9E) | (c1 == 0x9E) & (c2 > 0xA3))
        | (c0 == 0xEE)
        | (c0 == 0xEF) & !ef_simple
        | (c0 >= 0xF0)
}

/// Length of the char at `b[i]` (a lead byte) if it is simple (see `complex`), 0 otherwise.
#[inline]
fn simple(b: &[u8], i: usize) -> usize {
    let at = |k: usize| b.get(i + k).copied().unwrap_or(0);
    if complex(b[i], at(1), at(2)) { 0 } else { char_len(b[i]) }
}

/// Tier 1 of `run_end`: the lead byte alone, a superset of `complex` (ASCII but `\r`, Latin, Greek,
/// Cyrillic, ideographs and Hangul E4–E9, EB, EC never match).
#[inline(always)]
fn maybe_lead(c: u8) -> bool {
    let never = (c.wrapping_sub(0xE4) <= 0x05) | (c == 0xEB) | (c == 0xEC) | (c.wrapping_sub(0xC2) <= 0x09) | (c.wrapping_sub(0xCE) <= 0x03);
    (c == b'\r') | (c >= 0xC0) & !never
}

/// Tier 2 of `run_end`: a superset of `complex` deciding punctuation and kana (E2, E3) on their
/// bytes, other leads as `maybe_lead`.
#[inline(always)]
fn maybe_char(c: u8, c1: u8, c2: u8) -> bool {
    let e3 = (c == 0xE3) & ((c1 == 0x80) & (c2.wrapping_sub(0xAA) <= 0x05) | (c1 == 0x82) & (c2.wrapping_sub(0x99) <= 0x01));
    let e2 = (c == 0xE2) & ((c1 == 0x80) | (c1 == 0x83) | (c1 == 0xB3) | (c1 == 0xB5) | (c1 == 0xB7)) & (c2 >= 0x8C);
    maybe_lead(c) & (c.wrapping_sub(0xE2) > 0x01) | e3 | e2
}

/// First byte in `j..lim` that is the lead of a non-simple char (`lim` when none). `j` is a char
/// boundary; `lim` is one too. Blocks of 32 positions are tested at once (vectorized: each position
/// looks at its byte and the next two, which continuation bytes never match), through cheaper
/// supersets of `complex` first.
pub(super) fn run_end(b: &[u8], mut j: usize, lim: usize) -> usize {
    const W: usize = 32;
    while j + W <= lim && j + W + 2 <= b.len() {
        let (x0, x1, x2) = (&b[j..j + W], &b[j + 1..j + W + 1], &b[j + 2..j + W + 2]);
        let mut lead = 0u8;
        for &c in x0 {
            lead |= u8::from(maybe_lead(c));
        }
        if lead != 0 {
            let mut maybe = 0u8;
            for k in 0..W {
                maybe |= u8::from(maybe_char(x0[k], x1[k], x2[k]));
            }
            if maybe != 0 {
                let mut any = 0u8;
                for k in 0..W {
                    any |= u8::from(complex(x0[k], x1[k], x2[k]));
                }
                if any != 0 {
                    break;
                }
            }
        }
        j += W;
    }
    while j < lim {
        let at = |k: usize| b.get(j + k).copied().unwrap_or(0);
        if complex(b[j], at(1), at(2)) {
            return j;
        }
        j += 1;
    }
    lim
}

/// Spans of `s` from byte `i` (a cluster boundary): `(start, end, n, run)`. A `run` is `n` chars
/// that are each a cluster (ASCII, or chars `simple` says never join their neighbors); any other
/// span is one cluster (`n == 1`).
pub(super) struct Spans<'a> {
    s: &'a str,
    i: usize,
    /// Runs stop here (a cut inside a run is a boundary); a cluster may end past it.
    limit: usize,
}

impl Iterator for Spans<'_> {
    type Item = (usize, usize, usize, bool);

    fn next(&mut self) -> Option<Self::Item> {
        let (s, i) = (self.s, self.i);
        let b = s.as_bytes();
        if i >= b.len() {
            return None;
        }
        let lim = self.limit.min(b.len()).max(i);
        let j = run_end(b, i, lim);
        let mut n = str_indices::chars::count(&s[i..j]);
        let mut j = j;
        // The run's last char may start a cluster with what follows (`e` + U+0301).
        if j < b.len() && n > 0 {
            j = s.floor_char_boundary(j - 1);
            n -= 1;
        }
        if n > 0 {
            self.i = j;
            return Some((i, j, n, true));
        }
        let e = i + s[i..].graphemes(true).next().map_or(0, str::len);
        self.i = e;
        Some((i, e, 1, false))
    }
}

fn spans(s: &str) -> Spans<'_> {
    Spans { s, i: 0, limit: usize::MAX }
}

/// Spans of `s` from byte `from` (a boundary) that start before `limit`, runs cut at it (moved up
/// to a char boundary).
pub(super) fn spans_in(s: &str, from: usize, limit: usize) -> impl Iterator<Item = (usize, usize, usize, bool)> + '_ {
    let limit = s.ceil_char_boundary(limit.min(s.len()));
    Spans { s, i: from, limit }.take_while(move |sp| sp.0 < limit)
}

/// Byte of the `k`-th char of a run `r` of `n` chars (ASCII when `n` is its length).
fn run_byte(r: &str, n: usize, k: usize) -> usize {
    if n == r.len() { k } else { str_indices::chars::to_byte_idx(r, k) }
}

/// Chars in run prefix `r` (ASCII when `ascii`).
fn run_chars(r: &str, ascii: bool) -> usize {
    if ascii { r.len() } else { str_indices::chars::count(r) }
}

/// Clusters in `s`.
pub(super) fn count(s: &str) -> usize {
    spans(s).map(|(_, _, n, _)| n).sum()
}

/// Byte where cluster `col` of `s` starts; `s.len()` for `col` at or past the end.
pub(super) fn byte_of(s: &str, mut col: usize) -> usize {
    for (a, b, n, _) in spans(s) {
        if col < n {
            return a + run_byte(&s[a..b], n, col);
        }
        col -= n;
    }
    s.len()
}

/// Column of the cluster holding byte `b` of `s` (the count of clusters ending at or before it).
pub(super) fn col_of(s: &str, b: usize) -> usize {
    locate(s, b).0
}

/// Column and start byte of the cluster holding byte `b` of `s`; `(count, len)` past the end.
pub(super) fn locate(s: &str, b: usize) -> (usize, usize) {
    let mut col = 0;
    for (start, end, n, run) in spans(s) {
        if end > b {
            if !run {
                return (col, start);
            }
            let c = s.floor_char_boundary(b);
            return (col + run_chars(&s[start..c], n == end - start), c);
        }
        col += n;
    }
    (col, s.len())
}

/// End of the cluster starting at byte `b` (a boundary, `b < s.len()`). Looks one char ahead in
/// the common case, so stepping through a line costs its length once.
pub(super) fn next(s: &str, b: usize) -> usize {
    let bytes = s.as_bytes();
    let n = simple(bytes, b);
    if n > 0 && (b + n == bytes.len() || simple(bytes, b + n) > 0) {
        return b + n;
    }
    b + s[b..].graphemes(true).next().map_or(0, str::len)
}

/// The last cluster boundary before byte `b` (a char boundary, `b > 0`): the start of the cluster
/// ending at `b` when `b` is a boundary.
pub(super) fn prev(s: &str, b: usize) -> usize {
    let bytes = s.as_bytes();
    // A char that never joins its neighbor of the same kind is a cluster when the char before is one too.
    let c = s[..b].chars().next_back().map_or(0, char::len_utf8);
    let a = b - c;
    if simple(bytes, a) == c && (a == 0 || simple(bytes, s.floor_char_boundary(a - 1)) > 0) {
        return a;
    }
    GraphemeCursor::new(b, s.len(), true).prev_boundary(s, 0).ok().flatten().unwrap_or(0)
}

/// The clusters of `s` in order.
pub(super) fn iter(s: &str) -> Clusters<'_> {
    Clusters { s, a: 0, b: s.len(), run: 0 }
}

/// Iterator over the clusters of a string, both ways (`iter`). Forward it keeps the end of the
/// current run of simple chars, so inside a run each cluster is one char, found from its lead byte.
pub(super) struct Clusters<'a> {
    s: &'a str,
    a: usize,
    b: usize,
    run: usize,
}

/// Length and cells of the char at lead byte `b[p]` when the lead alone says them: ASCII, and the
/// wide ideographs and Hangul syllables (U+4000–U+9FFF but the hexagrams U+4DC0–U+4DFF,
/// U+B000–U+CFFF). None for any other char.
#[inline]
pub(super) fn lead_cell(b: &[u8], p: usize, ts: usize) -> Option<(usize, usize)> {
    match b[p] {
        b'\t' => Some((1, ts)),
        0x00..=0x7F => Some((1, 1)),
        0xE4 if b.get(p + 1) == Some(&0xB7) => None,
        0xE4..=0xE9 | 0xEB | 0xEC => Some((3, 2)),
        _ => None,
    }
}

/// Bytes of the UTF-8 char whose lead byte is `c`.
fn char_len(c: u8) -> usize {
    match c {
        0..0xE0 => 1 + usize::from(c >= 0xC0),
        0xE0..0xF0 => 3,
        _ => 4,
    }
}

impl<'a> Iterator for Clusters<'a> {
    type Item = &'a str;

    #[inline]
    fn next(&mut self) -> Option<&'a str> {
        if self.a >= self.b {
            return None;
        }
        if self.a >= self.run {
            match (Spans { s: self.s, i: self.a, limit: self.b }).next() {
                Some((_, e, _, true)) => self.run = e,
                Some((_, e, _, false)) => {
                    let g = &self.s[self.a..e.min(self.b)];
                    self.a = e.min(self.b);
                    return Some(g);
                }
                None => return None,
            }
        }
        let e = self.a + char_len(self.s.as_bytes()[self.a]);
        let g = &self.s[self.a..e];
        self.a = e;
        Some(g)
    }
}

impl DoubleEndedIterator for Clusters<'_> {
    fn next_back(&mut self) -> Option<Self::Item> {
        if self.a >= self.b {
            return None;
        }
        let p = prev(self.s, self.b).max(self.a);
        let g = &self.s[p..self.b];
        self.b = p;
        // A run found forward may reach past the new end.
        self.run = self.run.min(p);
        Some(g)
    }
}

/// Screen cells of a cluster: a single char by `cell_width`, a longer cluster by its width; at
/// least 1 (a lone combining mark is drawn on a space) and, but for a tab, at most 2.
pub(super) fn width(g: &str, ts: usize) -> usize {
    let mut it = g.chars();
    match (it.next(), it.next()) {
        (Some(c), None) => cell_width(c, ts).max(1),
        (None, _) => 0,
        _ => g.width().clamp(1, 2),
    }
}

/// Screen cells of the first `col` clusters of `s`.
pub(super) fn screen_col(s: &str, col: usize, ts: usize) -> usize {
    let mut x = 0;
    let mut left = col;
    for (a, b, n, run) in spans(s) {
        if left == 0 {
            break;
        }
        let k = n.min(left);
        x += if run { s[a..a + run_byte(&s[a..b], n, k)].chars().map(|c| cell_width(c, ts).max(1)).sum() } else { width(&s[a..b], ts) };
        left -= k;
    }
    x
}

/// Lines at least this long (bytes) get a `LineIndex`; shorter ones are scanned whole.
pub(super) const INDEXED: usize = 4096;

/// Bytes between two checkpoints of a `LineIndex`.
const STEP: usize = 4096;

/// Bytes past the last span trusted in a window of a longer line: a span is only certain once the
/// next char is known, and a cluster this long is not expected.
const MARGIN: usize = 64;

/// Columns of one long line of one text version: checkpoints `(byte, column)` on cluster boundaries
/// about `STEP` bytes apart, so a conversion scans one window (a slice, copied only when it spans
/// pieces). An edit inside the line rescans from the checkpoint before it to the first checkpoint
/// after it that is still a boundary (`update`), so typing in a huge line costs the window.
pub(super) struct LineIndex {
    text: Text,
    line: usize,
    /// Byte offset of the line in `text`, and its length.
    start: usize,
    len: usize,
    count: usize,
    /// The first is `(0, 0)`; bytes and columns increase.
    marks: Vec<(usize, usize)>,
}

impl LineIndex {
    pub fn build(text: &Text, line: usize) -> Self {
        let start = text.line_to_offset(line);
        let s = text.line(line);
        let mut ix = Self { text: text.clone(), line, start, len: s.len(), count: 0, marks: vec![(0, 0)] };
        ix.count = ix.scan(&s, 0, 0, s.len());
        ix
    }

    /// Whether this indexes `line` of `text`.
    pub fn is(&self, text: &Text, line: usize) -> bool {
        self.line == line && self.text.ptr_eq(text)
    }

    /// Whether this indexes a line of `text`.
    pub fn is_of(&self, text: &Text) -> bool {
        self.text.ptr_eq(text)
    }

    pub fn count(&self) -> usize {
        self.count
    }

    /// Lays clusters of `s` (line bytes from `from`, a boundary of column `col`) out until byte
    /// `until` (relative to the line), adding checkpoints; returns the column reached. Every span
    /// of `s` is certain: `s` ends at a boundary.
    fn scan(&mut self, s: &str, from: usize, mut col: usize, until: usize) -> usize {
        for (a, b, n, run) in spans(s) {
            if from + a >= until {
                break;
            }
            self.mark_span(&s[a..b], from + a, n, run, col);
            col += n;
        }
        col
    }

    /// Adds the checkpoints falling in span `r` (at line byte `a`, column `col`, `n` clusters).
    /// Inside a run every char boundary is a cluster boundary.
    fn mark_span(&mut self, r: &str, a: usize, n: usize, run: bool, col: usize) {
        let last = self.marks.last().expect("the first mark").0;
        if !run {
            if a >= last + STEP {
                self.marks.push((a, col));
            }
            return;
        }
        let ascii = n == r.len();
        let (mut q, mut c) = (a, col);
        let mut p = (last + STEP).max(a);
        while p < a + r.len() {
            let to = a + r.floor_char_boundary(p - a);
            c += run_chars(&r[q - a..to - a], ascii);
            q = to;
            if q > self.marks.last().expect("the first mark").0 {
                self.marks.push((q, c));
            }
            p = q + STEP;
        }
    }

    /// Line bytes between checkpoint `k` and the next one (or the line end), and the checkpoint.
    fn window(&self, k: usize) -> (std::borrow::Cow<'_, str>, (usize, usize)) {
        let m = self.marks[k];
        let end = self.marks.get(k + 1).map_or(self.len, |n| n.0);
        (self.text.slice(self.start + m.0..self.start + end), m)
    }

    /// Byte (in the line) where cluster `col` starts; the line length past the end.
    pub fn byte_of(&self, col: usize) -> usize {
        if col >= self.count {
            return self.len;
        }
        let k = self.marks.partition_point(|m| m.1 <= col) - 1;
        let (w, (b0, c0)) = self.window(k);
        b0 + byte_of(&w, col - c0)
    }

    /// Column of the cluster holding byte `b` of the line; the count past the end.
    pub fn col_of(&self, b: usize) -> usize {
        if b >= self.len {
            return self.count;
        }
        let k = self.marks.partition_point(|m| m.0 <= b) - 1;
        let (w, (b0, c0)) = self.window(k);
        c0 + col_of(&w, b - b0)
    }

    /// Follows the edits of one `Document` call (applied in order) to `new`. False when the index no
    /// longer describes a line of `new` the same way (the caller drops it).
    pub fn update(&mut self, edits: &[Edit], new: &Text) -> bool {
        let Some((at, old, new_len)) = cover(edits) else { return true };
        let (s, end) = (self.start, self.start + self.len);
        if at > end {
            // After the line end and its line break.
        } else if at + old < s {
            // Before the line break ending the previous line: the line moves.
            self.start = s + new_len - old;
            self.line = new.offset_to_line(self.start);
            if new.line_to_offset(self.line) != self.start {
                return false;
            }
        } else if at >= s && at + old <= end {
            let has_nl = |t: &Text, r: Range<usize>| memchr::memchr(b'\n', t.slice(r).as_bytes()).is_some();
            if has_nl(&self.text, at..at + old) || has_nl(new, at..at + new_len) {
                return false;
            }
            self.rescan(at - s, old, new_len, new);
        } else {
            return false;
        }
        self.text = new.clone();
        true
    }

    /// Lays the line out again after `old` bytes at line byte `a` became `new_len` bytes in `new`,
    /// from the checkpoint before the change to the first later checkpoint found again as a boundary.
    fn rescan(&mut self, a: usize, old: usize, new_len: usize, new: &Text) {
        let keep = self.marks.partition_point(|m| m.0 < a).max(1);
        let tail: Vec<(usize, usize)> = self.marks.iter().filter(|m| m.0 > a + old).map(|&(b, c)| (b + new_len - old, c)).collect();
        let (old_count, len) = (self.count, self.len + new_len - old);
        self.marks.truncate(keep);
        (self.len, self.text) = (len, new.clone());
        let (mut p, mut col) = self.marks[keep - 1];
        let mut ti = 0;
        let mut size = STEP;
        while p < len {
            // The window ends past the next checkpoint to find, or at the line end.
            let target = tail.get(ti).map_or(len, |t| t.0);
            let we = new.floor_char_boundary(self.start + (target.max(p + size) + MARGIN).min(len)) - self.start;
            let w = new.slice(self.start + p..self.start + we);
            let trusted = if we == len { len } else { we - MARGIN };
            let mut stop = None;
            for (x, y, mut n, run) in spans(&w) {
                let (x, mut y) = (p + x, p + y);
                let ascii = run && n == y - x;
                if y > trusted && we < len {
                    // Inside a run every char boundary is a cluster boundary: keep its trusted part.
                    let t = x + w[x - p..y - p].floor_char_boundary(trusted.saturating_sub(x));
                    if !run || t <= x {
                        stop = Some((x, col));
                        break;
                    }
                    n = run_chars(&w[x - p..t - p], ascii);
                    y = t;
                    stop = Some((y, col + n));
                }
                while tail.get(ti).is_some_and(|t| t.0 < x) {
                    ti += 1;
                }
                // Back on an old checkpoint: the rest of the line is laid out as before.
                if let Some(&(tb, tc)) = tail.get(ti)
                    && (tb == x || (run && tb < y))
                {
                    let land = col + run_chars(&w[x - p..tb - p], ascii);
                    let base = self.marks.last().expect("the first mark").0;
                    self.marks.extend(tail[ti..].iter().filter(|m| m.0 > base).map(|&(b, c)| (b, land + c - tc)));
                    self.count = land + old_count - tc;
                    return;
                }
                self.mark_span(&w[x - p..y - p], x, n, run, col);
                col += n;
                if stop.is_some() {
                    break;
                }
            }
            match stop {
                Some((x, c)) => {
                    // `x` is a boundary: continue from it with a larger window if no progress was made.
                    if x == p {
                        size *= 2;
                    }
                    (p, col) = (x, c);
                }
                None => p = we,
            }
        }
        self.count = col;
    }
}

/// One edit covering a list of edits applied in order: `(start, old length, new length)`, the
/// old range in the text before them and the new one in the text after.
fn cover(edits: &[Edit]) -> Option<(usize, usize, usize)> {
    let (first, rest) = edits.split_first()?;
    let (mut at, mut old, mut new) = (first.start, first.old_len, first.new_len);
    for e in rest {
        let lo = at.min(e.start);
        // The end in the current text, before `e`: past both ranges.
        let hi = (at + new).max(e.start + e.old_len);
        // Bytes past the covered range are unchanged, so the old end is `hi` shifted back.
        let old_end = hi + old - new;
        (at, old, new) = (lo, old_end - lo, hi + e.new_len - e.old_len - lo);
    }
    Some((at, old, new))
}

#[cfg(test)]
mod tests {
    use super::*;

    /// Chars that exercise every rule: CR LF, combining marks, ZWJ emoji, regional indicators,
    /// Hangul jamo and syllables, a prepend mark, CJK, kana and its voiced mark, tabs.
    const ALPHABET: &[&str] = &[
        "a", " ", "\t", "\r", "\n", "e", "\u{301}", "\u{200d}", "\u{1f468}", "\u{1f1ee}", "\u{1f1f9}", "\u{1100}", "\u{1161}",
        "\u{11a8}", "\u{ac00}", "\u{0600}", "\u{65e5}", "\u{30c6}", "\u{3099}", "\u{fe0f}", "\u{0915}", "\u{094d}",
    ];

    fn random(seed: &mut u64, len: usize) -> String {
        (0..len)
            .map(|_| {
                *seed = seed.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
                ALPHABET[(*seed >> 33) as usize % ALPHABET.len()]
            })
            .collect()
    }

    #[test]
    fn spans_agree_with_unicode_segmentation() {
        let mut seed = 7;
        for len in (0..400).map(|i| i % 40) {
            let s = random(&mut seed, len);
            let starts: Vec<usize> = s.grapheme_indices(true).map(|(i, _)| i).collect();
            assert_eq!(count(&s), starts.len(), "{s:?}");
            for (col, &b) in starts.iter().enumerate() {
                assert_eq!(byte_of(&s, col), b, "{s:?} {col}");
                assert_eq!(col_of(&s, b), col, "{s:?} {b}");
                let end = starts.get(col + 1).copied().unwrap_or(s.len());
                assert_eq!(next(&s, b), end, "{s:?} {b}");
                assert_eq!(prev(&s, end), b, "{s:?} {end}");
                // Inside a cluster the column is the cluster's.
                for m in (b..end).filter(|&m| s.is_char_boundary(m)) {
                    assert_eq!(locate(&s, m), (col, b), "{s:?} {m}");
                }
            }
            assert_eq!(byte_of(&s, starts.len()), s.len());
            assert_eq!(col_of(&s, s.len()), starts.len());
            let want: Vec<&str> = s.graphemes(true).collect();
            assert_eq!(iter(&s).collect::<Vec<_>>(), want, "{s:?}");
            assert_eq!(iter(&s).rev().collect::<Vec<_>>(), want.iter().rev().copied().collect::<Vec<_>>(), "{s:?}");
            // Alternating ends meet in the middle without skipping or repeating a cluster.
            let (mut it, mut front, mut back) = (iter(&s), Vec::new(), Vec::new());
            for k in 0.. {
                let g = if k % 3 == 0 { it.next_back().inspect(|&g| back.push(g)) } else { it.next().inspect(|&g| front.push(g)) };
                if g.is_none() {
                    break;
                }
            }
            front.extend(back.into_iter().rev());
            assert_eq!(front, want, "{s:?}");
            let cells: usize = iter(&s).map(|g| width(g, 4)).sum();
            assert_eq!(screen_col(&s, starts.len(), 4), cells, "{s:?}");
        }
    }

    /// Edits random lines of mixed text and checks the index kept across them against a fresh one.
    #[test]
    fn line_index_kept_across_edits_matches_a_fresh_one() {
        let mut seed = 11u64;
        let mut rnd = |n: usize| {
            seed = seed.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
            (seed >> 33) as usize % n
        };
        for round in 0..10 {
            // Long lines, so windows and checkpoints are exercised; mostly simple text with rare joiners.
            let unit: String = (0..20 + rnd(40)).map(|_| if rnd(10) == 0 { ALPHABET[rnd(ALPHABET.len())] } else { ["a", "日", " ", "é"][rnd(4)] }).collect();
            // `Text` turns a lone `\r` into a line break.
            let unit = unit.replace(['\n', '\r'], "");
            let line = unit.repeat(12_000 / unit.len().max(1) + 1);
            let mut text = Text::new().insert(0, &format!("x\n{line}\nz"));
            let mut ix = LineIndex::build(&text, 1);
            for _ in 0..8 {
                let (start, end) = (text.line_to_offset(1), text.line_end(1));
                let at = text.floor_char_boundary(start + rnd(end - start + 1));
                let del = text.floor_char_boundary((at + rnd(3) * rnd(200)).min(end)) - at;
                let ins: String = (0..rnd(4)).map(|_| ALPHABET[rnd(ALPHABET.len())]).filter(|c| !matches!(*c, "\n" | "\r")).collect();
                // Sometimes an edit elsewhere: before the line (it moves) or after it.
                let (at, del) = match rnd(6) {
                    0 => (0, 0),
                    1 => (text.len(), 0),
                    _ => (at, del),
                };
                let new = text.delete(at..at + del).insert(at, &ins);
                let edits = [Edit { start: at, old_len: del, new_len: 0 }, Edit { start: at, old_len: 0, new_len: ins.len() }];
                assert!(ix.update(&edits, &new), "round {round}");
                text = new;
                let line_no = text.offset_to_line(ix.start);
                let fresh = LineIndex::build(&text, line_no);
                assert_eq!((ix.line, ix.start, ix.len, ix.count), (fresh.line, fresh.start, fresh.len, fresh.count), "round {round}");
                let s = text.line(ix.line);
                for col in [0, 1, rnd(ix.count + 1), ix.count / 2, ix.count.saturating_sub(1), ix.count] {
                    assert_eq!(ix.byte_of(col), byte_of(&s, col), "round {round} col {col}");
                }
                for b in [0, rnd(s.len() + 1), s.len()] {
                    let b = s.floor_char_boundary(b);
                    assert_eq!(ix.col_of(b), col_of(&s, b), "round {round} byte {b}");
                }
                assert!(ix.marks.windows(2).all(|m| m[0].0 < m[1].0 && m[0].1 < m[1].1));
            }
        }
        // A line break in the change drops the index.
        let text = Text::new().insert(0, &"a".repeat(9000));
        let mut ix = LineIndex::build(&text, 0);
        let new = text.insert(5, "\n");
        assert!(!ix.update(&[Edit { start: 5, old_len: 0, new_len: 1 }], &new));
    }

    /// Every char `simple` accepts forms a boundary with any other accepted char on both sides, and
    /// with nothing it does not accept before it but what segmentation agrees with.
    #[test]
    fn simple_chars_are_their_own_clusters() {
        let accepted: Vec<char> = (0..=0x10FFFFu32)
            .filter_map(char::from_u32)
            .filter(|c| {
                let mut buf = [0; 4];
                let s = c.encode_utf8(&mut buf);
                simple(s.as_bytes(), 0) == s.len()
            })
            .collect();
        // A sample of neighbors from every accepted range, against each accepted char.
        let probes: Vec<char> = accepted.iter().step_by(4999).copied().chain(['a', '\u{e9}', '\u{65e5}', '\u{2014}']).collect();
        for &c in &accepted {
            for &p in &probes {
                let s = format!("{p}{c}{p}");
                assert_eq!(s.graphemes(true).count(), 3, "{:04x} next to {:04x}", c as u32, p as u32);
            }
        }
    }

    /// The block tiers of `run_end` never miss what `complex` matches: every lead byte with every
    /// pair of continuation bytes (or nothing after it).
    #[test]
    fn run_end_tiers_cover_complex() {
        let next = || [0u8].into_iter().chain(0x80..=0xBF);
        for c in 0..=255u8 {
            for c1 in next() {
                for c2 in next() {
                    if complex(c, c1, c2) {
                        assert!(maybe_char(c, c1, c2) && maybe_lead(c), "{c:02x} {c1:02x} {c2:02x}");
                    }
                }
            }
        }
        // `run_end` on long text, blocks included, against the char-by-char scan.
        let mut seed = 5u64;
        for _ in 0..200 {
            let mut rnd = |n: usize| {
                seed = seed.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
                (seed >> 33) as usize % n
            };
            // Mostly simple text, so blocks are skipped, with one char of any kind somewhere.
            let mut parts: Vec<&str> = (0..300).map(|_| ["a", "\u{65e5}", "\u{30c6}", "\u{3001}", "\u{2014}", "\u{e9}"][rnd(6)]).collect();
            let at = rnd(parts.len());
            parts[at] = ALPHABET[rnd(ALPHABET.len())];
            let s: String = parts.concat();
            let b = s.as_bytes();
            for from in [0, 1, 50, 200].map(|k| s.floor_char_boundary(k)) {
                let want = (from..b.len()).find(|&j| s.is_char_boundary(j) && simple(b, j) == 0).unwrap_or(b.len());
                assert_eq!(run_end(b, from, b.len()), want, "{s:?} {from}");
            }
        }
    }

    #[test]
    fn lead_cells_agree_with_cell_width() {
        for c in (0..=0x10FFFFu32).filter_map(char::from_u32) {
            let mut buf = [0; 4];
            let s = c.encode_utf8(&mut buf);
            if let Some(cell) = lead_cell(s.as_bytes(), 0, 4) {
                assert_eq!(cell, (s.len(), cell_width(c, 4)), "{:04x}", c as u32);
            }
        }
    }

    #[test]
    fn ascii_runs_and_cluster_widths() {
        let s = "abcdefghijklmnopqrstuvwxyz\te\u{301}x";
        assert_eq!(count(s), 29);
        assert_eq!(byte_of(s, 27), 27);
        assert_eq!(byte_of(s, 28), 30);
        assert_eq!(screen_col(s, 27, 4), 30);
        assert_eq!(width("e\u{301}", 4), 1);
        assert_eq!(width("\u{65e5}", 4), 2);
        assert_eq!(width("\u{1f468}\u{200d}\u{1f469}", 4), 2);
        assert_eq!(width("\u{1f1ee}\u{1f1f9}", 4), 2);
        assert_eq!(width("\u{301}", 4), 1);
        assert_eq!(count("\r\n"), 1);
    }
}
