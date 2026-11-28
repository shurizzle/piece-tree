//! Row layout of one line under `wrap`, laid out lazily and kept between frames for the cursor line.
//!
//! A row ends where the next cluster would not fit, so row starts depend on the whole prefix of the
//! line. `Rows` therefore lays a line out only as far as asked (the rows on screen, the cursor row)
//! and `Layout` keeps the rows of the cursor line across frames: after an edit the rows that end
//! before the first changed byte stay valid and layout resumes from the last of them, so typing in a
//! huge line costs the window around the cursor, not the line.

use piece_tree::Text;

use std::rc::Rc;

use super::graphemes::{self, Tabs};

/// Where a row of a line starts: the first cluster with a cell in it.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) struct RowStart {
    /// Index and byte of that cluster, and the virtual column it starts at (its filler, if any, included).
    pub col: usize,
    pub b: usize,
    pub vcol: usize,
    /// Byte where the row before this one ends: after the last cluster with a cell in it, which is this
    /// row's first one when a Tab or a wide char with its filler goes over the edge.
    prev_end: usize,
}

/// Row starts of one line at one width, found on demand. The virtual column runs on over the whole line
/// as in Neovim, so row `k` shows the cells `k * w..(k + 1) * w`: a Tab goes over the edge into the next
/// row, and a wide char that would start in the last cell of a row leaves it as a filler and is drawn
/// on the next one (`charsize_fast_impl`).
#[derive(Debug)]
pub(super) struct Rows {
    w: usize,
    ts: usize,
    vts: Rc<[usize]>,
    /// The first is the start of the line.
    starts: Vec<RowStart>,
    /// Layout state: next byte and cluster to place, its virtual column, and the size of the next window of the
    /// plain loop (see `extend`).
    b: usize,
    i: usize,
    x: usize,
    window: usize,
    done: bool,
}

impl Rows {
    pub fn new(w: usize, tabs: Tabs) -> Self {
        // Without a width limit a line is one row and there is nothing to lay out.
        Self { w, ts: tabs.ts, vts: tabs.vts.into(), starts: vec![RowStart { col: 0, b: 0, vcol: 0, prev_end: 0 }], b: 0, i: 0, x: 0, window: 16, done: w == usize::MAX }
    }

    /// Rows found so far (all of them once `done`).
    pub fn len(&self) -> usize {
        self.starts.len()
    }

    pub fn done(&self) -> bool {
        self.done
    }

    /// Lays out `line` until `stop` accepts the row starts found so far, or the line ends.
    /// Runs of plain ASCII are skipped 64 bytes at a time; anything else is laid out by a plain per-cluster
    /// loop over a window of bytes. Each failed ASCII check doubles the window (up to 4 KiB), so dense
    /// non-ASCII text costs the plain loop and a run after a lone accent is found again within 16 bytes.
    pub fn extend(&mut self, line: &str, stop: impl Fn(&[RowStart]) -> bool) {
        let (w, vts, bytes) = (self.w, Rc::clone(&self.vts), line.as_bytes());
        let tabs = Tabs { ts: self.ts, vts: &vts };
        let (mut b, mut i, mut x, mut window) = (self.b, self.i, self.x, self.window);
        while !self.done {
            if stop(&self.starts) {
                break;
            }
            if b >= bytes.len() {
                self.done = true;
                break;
            }
            let room = bytes.len() - b;
            let mut end = b + 1;
            let room = room.min(64);
            let chunk = &bytes[b..b + room];
            if chunk.is_ascii() && memchr::memchr2(b'\t', b'\r', chunk).is_none() {
                // The last byte may start a cluster with a non-ASCII char after it (`e` + U+0301).
                let room = if bytes.get(b + room).is_none_or(u8::is_ascii) { room } else { room - 1 };
                if room > 0 {
                    // Every byte is a cell: a row starts at each multiple of `w` inside the chunk.
                    while let Some(d) = (self.starts.len().checked_mul(w)).and_then(|bound| bound.checked_sub(x)).filter(|&d| d < room) {
                        self.starts.push(RowStart { col: i + d, b: b + d, vcol: x + d, prev_end: b + d });
                    }
                    (x, b, i, window) = (x + room, b + room, i + room, 16);
                    continue;
                }
            }
            end = end.max((b + window).min(bytes.len()));
            window = (window * 2).min(4096);
            // Whole clusters: the last one may end past `end`.
            for c in graphemes::cells(line, b, x, tabs, w, end) {
                if c.a >= end {
                    break;
                }
                let (r0, r1) = (c.vcol / w, (c.end() - 1) / w);
                for m in self.starts.len()..=r1 {
                    self.starts.push(RowStart { col: i, b: c.a, vcol: c.vcol, prev_end: if r0 < m { c.e } else { c.a } });
                }
                (b, x, i) = (c.e, c.end(), i + 1);
            }
        }
        (self.b, self.i, self.x, self.window) = (b, i, x, window);
    }

    /// Lays out until the text of rows `0..=k` is known (or the line ended).
    pub fn ensure(&mut self, line: &str, k: usize) {
        self.extend(line, |s| s.len() > k + 1);
    }

    /// Cluster index and text of row `k`; the row must be known (`ensure`).
    pub fn row<'a>(&self, line: &'a str, k: usize) -> (usize, &'a str) {
        let s = self.starts[k];
        (s.col, &line[s.b..self.starts.get(k + 1).map_or(line.len(), |n| n.prev_end)])
    }

    /// Virtual column of the first cluster of row `k`.
    pub fn row_vcol(&self, k: usize) -> usize {
        self.starts[k].vcol
    }

    /// Index of the row showing virtual column `vcol` (the last row when the line ends before it), laid out.
    pub fn row_of(&mut self, line: &str, vcol: usize) -> usize {
        let k = if self.w == usize::MAX { 0 } else { vcol / self.w };
        self.ensure(line, k);
        k.min(self.starts.len() - 1)
    }

    /// Number of rows of the line, counted up to `cap` (at least 1).
    pub fn height_to(&mut self, line: &str, cap: usize) -> usize {
        self.extend(line, |s| s.len() >= cap);
        self.starts.len().min(cap)
    }

    /// Drops what depends on bytes from `keep` on: `keep` is the start of the cluster the change
    /// may extend, and a row start was decided by the cluster at it and the clusters before it.
    fn retain(&mut self, keep: usize) {
        while self.starts.len() > 1 && self.starts.last().is_some_and(|s| s.b >= keep) {
            self.starts.pop();
        }
        let s = self.starts[self.starts.len() - 1];
        (self.b, self.i, self.x, self.window, self.done) = (s.b, s.col, s.vcol, 16, self.w == usize::MAX);
    }
}

/// The rows of the cursor line and the text they were laid out from.
#[derive(Default)]
pub(super) struct Layout {
    line: String,
    rows: Option<Rows>,
    /// The version of the text and the line `line` was read from. The clone keeps that version alive,
    /// so a later version that is `ptr_eq` to it is the same text without comparing any bytes.
    at: Option<(Text, usize)>,
}

impl Layout {
    /// The cached rows, when they already describe line `n` of `text` at width `w`.
    pub fn cached(&mut self, text: &Text, n: usize, w: usize, tabs: Tabs) -> Option<(&str, &mut Rows)> {
        let hit = self.at.as_ref().is_some_and(|(t, l)| *l == n && t.ptr_eq(text));
        let rows = self.rows.as_mut().filter(|r| hit && r.w == w && r.ts == tabs.ts && *r.vts == *tabs.vts)?;
        Some((&self.line, rows))
    }

    /// Makes the cached rows describe `line`, line `n` of `text`, at width `w`: it keeps the rows that
    /// end before the first byte differing from the text they came from, and returns the cached copy
    /// with its rows.
    pub fn sync(&mut self, line: &str, text: &Text, n: usize, w: usize, tabs: Tabs) -> (&str, &mut Rows) {
        let rows = match self.rows.take() {
            Some(mut r) if r.w == w && r.ts == tabs.ts && *r.vts == *tabs.vts => {
                if self.line != line {
                    let mut common = common_prefix(self.line.as_bytes(), line.as_bytes());
                    while !(self.line.is_char_boundary(common) && line.is_char_boundary(common)) {
                        common -= 1;
                    }
                    // Boundaries before `common` are the same in both lines; the one at it may not be.
                    r.retain(if common == 0 { 0 } else { graphemes::prev(&self.line, common) });
                    self.line.truncate(common);
                    self.line.push_str(&line[common..]);
                }
                r
            }
            _ => {
                line.clone_into(&mut self.line);
                Rows::new(w, tabs)
            }
        };
        self.at = Some((text.clone(), n));
        (&self.line, self.rows.insert(rows))
    }
}

/// Lines at least this long (bytes) keep their rows between frames even when they are not the cursor
/// line: laying one out again costs more than remembering it (`gk` into a huge line, then back).
pub(super) const LONG_LINE: usize = 8192;

/// A few cached lines, the most recently used last.
#[derive(Default)]
pub(super) struct Layouts {
    slots: Vec<Layout>,
}

impl Layouts {
    const SLOTS: usize = 4;

    /// The cached rows, when some slot already describes line `n` of `text` at width `w`.
    pub fn cached(&mut self, text: &Text, n: usize, w: usize, tabs: Tabs) -> Option<(&str, &mut Rows)> {
        let i = self.slots.iter_mut().position(|l| l.cached(text, n, w, tabs).is_some())?;
        let slot = self.slots.remove(i);
        self.slots.push(slot);
        self.slots.last_mut()?.cached(text, n, w, tabs)
    }

    /// Slot of line `n` (an older version of it, or the least recently used one), synced to `line`.
    pub fn sync(&mut self, line: &str, text: &Text, n: usize, w: usize, tabs: Tabs) -> (&str, &mut Rows) {
        let slot = match self.slots.iter().position(|l| l.at.as_ref().is_some_and(|(_, l)| *l == n)) {
            Some(i) => self.slots.remove(i),
            None if self.slots.len() == Self::SLOTS => self.slots.remove(0),
            None => Layout::default(),
        };
        self.slots.push(slot);
        self.slots.last_mut().expect("just pushed").sync(line, text, n, w, tabs)
    }
}

/// Length of the common prefix of `a` and `b`, comparing in blocks (`memcmp`) before bytes.
fn common_prefix(a: &[u8], b: &[u8]) -> usize {
    let n = a.len().min(b.len());
    let mut i = 0;
    while i < n {
        let end = (i + 4096).min(n);
        if a[i..end] != b[i..end] {
            return i + a[i..end].iter().zip(&b[i..end]).take_while(|(x, y)| x == y).count();
        }
        i = end;
    }
    n
}

/// Rows of `line` at text width `w`: cluster index and text of each (a Tab over the edge is in both rows), and an
/// empty line is one row.
#[cfg(test)]
pub(super) fn segments<'a>(line: &'a str, w: usize, tabs: Tabs) -> Vec<(usize, &'a str)> {
    let mut rows = Rows::new(w, tabs);
    rows.extend(line, |_| false);
    (0..rows.len()).map(|k| rows.row(line, k)).collect()
}
