//! Row layout of one line under `wrap`, laid out lazily and kept between frames for the cursor line.
//!
//! A row ends where the next char would not fit, so row starts depend on the whole prefix of the
//! line. `Rows` therefore lays a line out only as far as asked (the rows on screen, the cursor row)
//! and `Layout` keeps the rows of the cursor line across frames: after an edit the rows that end
//! before the first changed byte stay valid and layout resumes from the last of them, so typing in a
//! huge line costs the window around the cursor, not the line.

use piece_tree::Text;

use super::render::cell_width;

/// Row starts of one line at one width, found on demand.
#[derive(Debug)]
pub(super) struct Rows {
    w: usize,
    ts: usize,
    /// (char index, byte offset) of each row start found so far; the first is `(0, 0)`.
    starts: Vec<(usize, usize)>,
    /// Layout state: next byte and char to place, cells used in the current row, and the size of the
    /// next window of the plain loop (see `extend`).
    b: usize,
    i: usize,
    x: usize,
    window: usize,
    done: bool,
}

impl Rows {
    pub fn new(w: usize, ts: usize) -> Self {
        // Without a width limit a line is one row and there is nothing to lay out.
        Self { w, ts, starts: vec![(0, 0)], b: 0, i: 0, x: 0, window: 16, done: w == usize::MAX }
    }

    /// Rows found so far (all of them once `done`).
    pub fn len(&self) -> usize {
        self.starts.len()
    }

    pub fn done(&self) -> bool {
        self.done
    }

    /// Lays out `line` until `stop` accepts the row starts found so far, or the line ends.
    /// Runs of plain ASCII that fit in the row are skipped 64 bytes at a time; anything else is laid
    /// out by a plain per-char loop over a window of bytes. Each failed ASCII check doubles the window
    /// (up to 4 KiB), so dense non-ASCII text costs the plain loop and a run after a lone accent is
    /// found again within 16 bytes.
    pub fn extend(&mut self, line: &str, stop: impl Fn(&[(usize, usize)]) -> bool) {
        let (w, ts, bytes) = (self.w, self.ts, line.as_bytes());
        let (mut b, mut i, mut x, mut window) = (self.b, self.i, self.x, self.window);
        while !self.done {
            if stop(&self.starts) {
                break;
            }
            if b >= bytes.len() {
                self.done = true;
                break;
            }
            let room = w.saturating_sub(x).min(64).min(bytes.len() - b);
            let mut end = b + 1;
            if room > 0 {
                let chunk = &bytes[b..b + room];
                if chunk.is_ascii() && memchr::memchr(b'\t', chunk).is_none() {
                    (x, b, i, window) = (x + room, b + room, i + room, 16);
                    continue;
                }
                end = (b + window).min(bytes.len());
                window = (window * 2).min(4096);
            }
            while !line.is_char_boundary(end) {
                end += 1;
            }
            for (rel, c) in line[b..end].char_indices() {
                let cw = cell_width(c, ts);
                if x > 0 && x.saturating_add(cw) > w {
                    self.starts.push((i, b + rel));
                    x = 0;
                }
                x += cw;
                i += 1;
            }
            b = end;
        }
        (self.b, self.i, self.x, self.window) = (b, i, x, window);
    }

    /// Lays out until the text of rows `0..=k` is known (or the line ended).
    pub fn ensure(&mut self, line: &str, k: usize) {
        self.extend(line, |s| s.len() > k + 1);
    }

    /// Char index and text of row `k`; the row must be known (`ensure`).
    pub fn row<'a>(&self, line: &'a str, k: usize) -> (usize, &'a str) {
        let (c, b) = self.starts[k];
        (c, &line[b..self.starts.get(k + 1).map_or(line.len(), |s| s.1)])
    }

    /// Index of the row holding char `col` (the last row for a `col` past the end), laid out.
    pub fn row_of(&mut self, line: &str, col: usize) -> usize {
        self.extend(line, |s| s.last().is_some_and(|l| l.0 > col));
        self.starts.partition_point(|s| s.0 <= col) - 1
    }

    /// Number of rows of the line, counted up to `cap` (at least 1).
    pub fn height_to(&mut self, line: &str, cap: usize) -> usize {
        self.extend(line, |s| s.len() >= cap);
        self.starts.len().min(cap)
    }

    /// Drops what depends on bytes from `common` on, where the line changed.
    fn retain(&mut self, common: usize) {
        // A row start was decided by the char at it, up to 4 bytes long, and by the chars before it.
        let keep = common.saturating_sub(3);
        while self.starts.len() > 1 && self.starts.last().is_some_and(|s| s.1 >= keep) {
            self.starts.pop();
        }
        let (i, b) = self.starts[self.starts.len() - 1];
        (self.b, self.i, self.x, self.window, self.done) = (b, i, 0, 16, self.w == usize::MAX);
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
    pub fn cached(&mut self, text: &Text, n: usize, w: usize, ts: usize) -> Option<(&str, &mut Rows)> {
        let hit = self.at.as_ref().is_some_and(|(t, l)| *l == n && t.ptr_eq(text));
        let rows = self.rows.as_mut().filter(|r| hit && r.w == w && r.ts == ts)?;
        Some((&self.line, rows))
    }

    /// Makes the cached rows describe `line`, line `n` of `text`, at width `w`: it keeps the rows that
    /// end before the first byte differing from the text they came from, and returns the cached copy
    /// with its rows.
    pub fn sync(&mut self, line: &str, text: &Text, n: usize, w: usize, ts: usize) -> (&str, &mut Rows) {
        let rows = match self.rows.take() {
            Some(mut r) if r.w == w && r.ts == ts => {
                if self.line != line {
                    let mut common = common_prefix(self.line.as_bytes(), line.as_bytes());
                    while !(self.line.is_char_boundary(common) && line.is_char_boundary(common)) {
                        common -= 1;
                    }
                    r.retain(common);
                    self.line.truncate(common);
                    self.line.push_str(&line[common..]);
                }
                r
            }
            _ => {
                line.clone_into(&mut self.line);
                Rows::new(w, ts)
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
    pub fn cached(&mut self, text: &Text, n: usize, w: usize, ts: usize) -> Option<(&str, &mut Rows)> {
        let i = self.slots.iter_mut().position(|l| l.cached(text, n, w, ts).is_some())?;
        let slot = self.slots.remove(i);
        self.slots.push(slot);
        self.slots.last_mut()?.cached(text, n, w, ts)
    }

    /// Slot of line `n` (an older version of it, or the least recently used one), synced to `line`.
    pub fn sync(&mut self, line: &str, text: &Text, n: usize, w: usize, ts: usize) -> (&str, &mut Rows) {
        let slot = match self.slots.iter().position(|l| l.at.as_ref().is_some_and(|(_, l)| *l == n)) {
            Some(i) => self.slots.remove(i),
            None if self.slots.len() == Self::SLOTS => self.slots.remove(0),
            None => Layout::default(),
        };
        self.slots.push(slot);
        self.slots.last_mut().expect("just pushed").sync(line, text, n, w, ts)
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

/// Rows of `line` at text width `w`: char index and text of each. A char never splits (a wide one that
/// does not fit starts the next row), and an empty line is one row.
#[cfg(test)]
pub(super) fn segments(line: &str, w: usize, ts: usize) -> Vec<(usize, &str)> {
    let mut rows = Rows::new(w, ts);
    rows.extend(line, |_| false);
    (0..rows.len()).map(|k| rows.row(line, k)).collect()
}
