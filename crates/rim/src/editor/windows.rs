//! Windows (`:sp`, `:vs`, `Ctrl+W`): views of buffers laid out by a tree of splits.

use std::{cell::RefCell, mem};

use super::{Editor, MatchCache, Mode, Pos, layout};

/// One view of a buffer: cursor and scroll state.
pub(super) struct Window {
    pub id: usize,
    /// Id of the buffer shown.
    pub buf: usize,
    /// Cursor line and column, in chars.
    pub line: usize,
    pub col: usize,
    /// Column kept across vertical moves; `usize::MAX` after `$`.
    pub want_col: usize,
    pub top: usize,
    /// Screen rows of line `top` scrolled off the top (a cursor line taller than the screen).
    pub top_sub: usize,
    pub left: usize,
    pub rows: usize,
    /// Text width of the last frame: the wrap width of `gj`/`gk`, `Ctrl-D`/`Ctrl-U`, `H`/`M`/`L`
    /// (`usize::MAX` before the first frame).
    pub text_w: usize,
    /// Screen column kept by consecutive `gj`/`gk`, valid while the cursor stays at the position stored.
    pub want_x: Option<(usize, Pos)>,
    /// Rows of the cursor line and of recent huge lines, kept between frames (`wrap`).
    pub layout: RefCell<layout::Layouts>,
    /// Highlight matches of the last frame: text version, pattern, lines, result.
    pub match_cache: RefCell<Option<MatchCache>>,
    /// Cursor byte offset while the window is parked, shifted by the edits made in other windows;
    /// `line`/`col` are recomputed from it when the window comes back.
    pub off: usize,
    /// Jump list (`Ctrl+O`/`Ctrl+I`): buffer id and byte offset of each position jumped from,
    /// oldest first, shifted by edits; `jump_idx` is the entry the next `Ctrl+O` goes back from
    /// (`jumps.len()` when not moving through the list).
    pub jumps: Vec<(usize, usize)>,
    pub jump_idx: usize,
}

impl Window {
    pub fn new(id: usize, buf: usize) -> Self {
        Self {
            id,
            buf,
            line: 0,
            col: 0,
            want_col: 0,
            top: 0,
            top_sub: 0,
            left: 0,
            rows: 1,
            text_w: usize::MAX,
            want_x: None,
            layout: RefCell::default(),
            match_cache: RefCell::default(),
            off: 0,
            jumps: Vec::new(),
            jump_idx: 0,
        }
    }

    /// Scroll and column memory, dropped when the window shows another buffer.
    pub fn reset_view(&mut self) {
        (self.top, self.top_sub, self.left, self.want_col, self.want_x) = (0, 0, 0, 0, None);
    }
}

/// Screen area of a window, its status row included.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) struct Rect {
    pub x: usize,
    pub y: usize,
    pub w: usize,
    pub h: usize,
}

/// Window layout: `Row` children sit side by side (`:vs`), `Col` children are stacked (`:sp`).
/// Children share the space equally; side by side ones are separated by a 1-column bar.
#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) enum Split {
    Win(usize),
    Row(Vec<Split>),
    Col(Vec<Split>),
}

impl Split {
    /// Window ids in layout order (`Ctrl+W w`).
    pub fn leaves(&self, out: &mut Vec<usize>) {
        match self {
            Split::Win(id) => out.push(*id),
            Split::Row(v) | Split::Col(v) => v.iter().for_each(|c| c.leaves(out)),
        }
    }

    /// Puts window `new` before window `at`, side by side when `row`.
    pub fn insert(&mut self, at: usize, new: usize, row: bool) -> bool {
        let same = matches!(self, Split::Row(_)) == row;
        match self {
            Split::Win(id) if *id == at => {
                let pair = vec![Split::Win(new), Split::Win(at)];
                *self = if row { Split::Row(pair) } else { Split::Col(pair) };
                true
            }
            Split::Win(_) => false,
            Split::Row(v) | Split::Col(v) => {
                if same && let Some(i) = v.iter().position(|c| *c == Split::Win(at)) {
                    v.insert(i, Split::Win(new));
                    return true;
                }
                v.iter_mut().any(|c| c.insert(at, new, row))
            }
        }
    }

    /// Removes window `id`; a split left with one child becomes that child. The root window
    /// alone is never removed.
    pub fn remove(&mut self, id: usize) -> bool {
        let (Split::Row(v) | Split::Col(v)) = self else { return false };
        if let Some(i) = v.iter().position(|c| *c == Split::Win(id)) {
            v.remove(i);
        } else if !v.iter_mut().any(|c| c.remove(id)) {
            return false;
        }
        if v.len() == 1 {
            *self = v.pop().expect("one child");
        }
        true
    }

    /// Each window's area inside `r`.
    pub fn rects(&self, r: Rect, out: &mut Vec<(usize, Rect)>) {
        match self {
            Split::Win(id) => out.push((*id, r)),
            Split::Row(v) => {
                let n = v.len();
                let each = r.w.saturating_sub(n - 1) / n;
                let mut x = r.x;
                for (i, c) in v.iter().enumerate() {
                    let w = if i + 1 == n { (r.x + r.w).saturating_sub(x) } else { each };
                    c.rects(Rect { x, w, ..r }, out);
                    x += w + 1;
                }
            }
            Split::Col(v) => {
                let n = v.len();
                let mut y = r.y;
                for (i, c) in v.iter().enumerate() {
                    let h = if i + 1 == n { (r.y + r.h).saturating_sub(y) } else { r.h / n };
                    c.rects(Rect { y, h, ..r }, out);
                    y += h;
                }
            }
        }
    }
}

/// The window next to `cur` in direction `dir` (`h`, `j`, `k`, `l`): the closest one across
/// that edge overlapping the screen cell `at` (the cursor) on the other axis.
pub(super) fn neighbor(rects: &[(usize, Rect)], cur: usize, dir: char, at: (usize, usize)) -> Option<usize> {
    let &(_, c) = rects.iter().find(|(id, _)| *id == cur)?;
    let (x, y) = at;
    rects
        .iter()
        .filter(|(id, _)| *id != cur)
        .filter_map(|&(id, r)| {
            let gap = match dir {
                'h' if r.x + r.w <= c.x && (r.y..r.y + r.h).contains(&y) => c.x - (r.x + r.w),
                'l' if r.x >= c.x + c.w && (r.y..r.y + r.h).contains(&y) => r.x - (c.x + c.w),
                'k' if r.y + r.h <= c.y && (r.x..=r.x + r.w).contains(&x) => c.y - (r.y + r.h),
                'j' if r.y >= c.y + c.h && (r.x..=r.x + r.w).contains(&x) => r.y - (c.y + c.h),
                _ => return None,
            };
            Some((gap, id))
        })
        .min()
        .map(|(_, id)| id)
}

impl Editor {
    /// Window ids in layout order.
    pub(super) fn window_ids(&self) -> Vec<usize> {
        let mut ids = Vec::new();
        self.split.leaves(&mut ids);
        ids
    }

    /// Parks the current window and brings back `id`, with its buffer.
    pub(super) fn park_and_take(&mut self, id: usize) {
        self.win.off = self.offset();
        let i = self.windows.iter().position(|w| w.id == id).expect("a known window");
        mem::swap(&mut self.win, &mut self.windows[i]);
        if self.win.buf != self.buf.id {
            let j = self.buffers.iter().position(|b| b.id == self.win.buf).expect("a window shows a known buffer");
            mem::swap(&mut self.buf, &mut self.buffers[j]);
        }
        // `:e!` replaces the text without edits to map `off` through: clamp it to a char boundary.
        (self.win.line, self.win.col) = self.pos_of(self.buf.doc.text().floor_char_boundary(self.win.off));
        self.win.top = self.win.top.min(self.line_count() - 1);
        // Insert mode keeps a cursor past the line end (drawing the other windows swaps back).
        if self.mode != Mode::Insert {
            self.clamp_normal();
        }
    }

    /// Runs `f` with window `id` current, then restores the current window (drawing).
    pub(super) fn with_window<R>(&mut self, id: usize, f: impl FnOnce(&mut Self) -> R) -> R {
        let back = self.win.id;
        self.park_and_take(id);
        let r = f(self);
        self.park_and_take(back);
        r
    }

    /// `:sp`/`:vs`: a new window on the current buffer and cursor, before the current one.
    pub(super) fn split_window(&mut self, row: bool) {
        self.next_win += 1;
        let mut w = Window::new(self.next_win, self.buf.id);
        (w.line, w.col, w.want_col, w.top, w.off) = (self.win.line, self.win.col, self.win.want_col, self.win.top, self.offset());
        assert!(self.split.insert(self.win.id, w.id, row), "the current window is in the layout");
        self.windows.push(w);
        self.park_and_take(self.next_win);
    }

    /// `Ctrl+W c` and `:q` with more windows: the window goes, its buffer stays.
    pub(super) fn close_window(&mut self) -> Result<(), String> {
        let ids = self.window_ids();
        if ids.len() == 1 {
            return Err("Cannot close last window".into());
        }
        let at = ids.iter().position(|&id| id == self.win.id).expect("listed");
        let next = if at + 1 < ids.len() { ids[at + 1] } else { ids[at - 1] };
        let gone = self.win.id;
        self.park_and_take(next);
        self.split.remove(gone);
        self.windows.retain(|w| w.id != gone);
        Ok(())
    }

    /// `Ctrl+W o`.
    pub(super) fn only_window(&mut self) {
        self.windows.clear();
        self.split = Split::Win(self.win.id);
    }

    /// `Ctrl+W` followed by `c`; `n` is the count.
    pub(super) fn window_cmd(&mut self, c: char, n: usize) {
        let res = match c {
            'h' | 'j' | 'k' | 'l' => {
                let mut rects = Vec::new();
                self.split.rects(self.screen, &mut rects);
                let mut id = self.win.id;
                for _ in 0..n {
                    // The cursor cell stays the reference as the walk goes on, like vim.
                    match neighbor(&rects, id, c, self.cursor_cell) {
                        Some(next) => id = next,
                        None => break,
                    }
                }
                if id != self.win.id {
                    self.park_and_take(id);
                }
                Ok(())
            }
            'w' => {
                let ids = self.window_ids();
                let at = ids.iter().position(|&id| id == self.win.id).expect("listed");
                let id = if n > 1 { ids[(n - 1).min(ids.len() - 1)] } else { ids[(at + 1) % ids.len()] };
                if id != self.win.id {
                    self.park_and_take(id);
                }
                Ok(())
            }
            'c' => self.close_window(),
            'o' => {
                self.only_window();
                Ok(())
            }
            's' => {
                self.split_window(false);
                Ok(())
            }
            'v' => {
                self.split_window(true);
                Ok(())
            }
            _ => Ok(()),
        };
        if let Err(e) = res {
            self.msg = e;
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn rects(s: &Split, w: usize, h: usize) -> Vec<(usize, Rect)> {
        let mut out = Vec::new();
        s.rects(Rect { x: 0, y: 0, w, h }, &mut out);
        out
    }

    #[test]
    fn insert_remove_and_leaves() {
        let mut s = Split::Win(1);
        assert!(s.insert(1, 2, false));
        assert_eq!(s, Split::Col(vec![Split::Win(2), Split::Win(1)]));
        assert!(s.insert(2, 3, false), "same direction: a sibling");
        assert!(s.insert(1, 4, true), "other direction: the leaf becomes a row");
        assert!(!s.insert(9, 5, true));
        assert_eq!(s, Split::Col(vec![Split::Win(3), Split::Win(2), Split::Row(vec![Split::Win(4), Split::Win(1)])]));
        let mut ids = Vec::new();
        s.leaves(&mut ids);
        assert_eq!(ids, [3, 2, 4, 1]);
        assert!(s.remove(4), "a row left with one child collapses");
        assert_eq!(s, Split::Col(vec![Split::Win(3), Split::Win(2), Split::Win(1)]));
        assert!(!s.remove(9));
        assert!(s.remove(3) && s.remove(2));
        assert_eq!(s, Split::Win(1));
        assert!(!s.remove(1), "the last window stays");
    }

    #[test]
    fn rects_share_space_and_leave_separators() {
        let s = Split::Row(vec![Split::Win(1), Split::Col(vec![Split::Win(2), Split::Win(3)])]);
        assert_eq!(
            rects(&s, 21, 11),
            [
                (1, Rect { x: 0, y: 0, w: 10, h: 11 }),
                (2, Rect { x: 11, y: 0, w: 10, h: 5 }),
                (3, Rect { x: 11, y: 5, w: 10, h: 6 }),
            ]
        );
    }

    #[test]
    fn neighbor_by_direction_and_cursor() {
        // 1 | 2
        //   | 3
        let r = rects(&Split::Row(vec![Split::Win(1), Split::Col(vec![Split::Win(2), Split::Win(3)])]), 21, 10);
        assert_eq!(neighbor(&r, 1, 'l', (3, 1)), Some(2));
        assert_eq!(neighbor(&r, 1, 'l', (3, 7)), Some(3), "the row of the cursor picks");
        assert_eq!(neighbor(&r, 2, 'j', (12, 1)), Some(3));
        assert_eq!(neighbor(&r, 3, 'k', (12, 6)), Some(2));
        assert_eq!(neighbor(&r, 3, 'h', (12, 6)), Some(1));
        assert_eq!(neighbor(&r, 1, 'h', (3, 1)), None);
        assert_eq!(neighbor(&r, 1, 'x', (3, 1)), None);
        assert_eq!(neighbor(&r, 9, 'l', (3, 1)), None);
    }
}
