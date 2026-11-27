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
    /// Height in rows, status row included, the window keeps when its split is laid out (`winfixheight`).
    pub fixed_h: Option<usize>,
    /// Same for the width (`winfixwidth`).
    pub fixed_w: Option<usize>,
    /// `w:` variables.
    pub vars: super::script::Vars,
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
            fixed_h: None,
            fixed_w: None,
            vars: Default::default(),
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

/// What `:resize` and `Ctrl+W + - _ |` ask for.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) enum Resize {
    To(usize),
    By(isize),
    Max,
}

/// A child of a split, with the rows (`Col`) or columns (`Row`) it asked for through `:resize` or
/// `Ctrl+W +`; without a size it shares what is left.
#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) struct Child {
    pub node: Split,
    pub size: Option<usize>,
}

impl From<Split> for Child {
    fn from(node: Split) -> Self {
        Child { node, size: None }
    }
}

/// Window layout: `Row` children sit side by side (`:vs`), `Col` children are stacked (`:sp`).
/// Children share the space equally, unless they hold a size; side by side ones are separated
/// by a 1-column bar.
#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) enum Split {
    Win(usize),
    Row(Vec<Child>),
    Col(Vec<Child>),
}

/// The height and width a window keeps (`winfixheight`, `winfixwidth`, the command-line window).
pub(super) type Fixed = (Option<usize>, Option<usize>);

/// Extents of the children along an axis of `total` cells: windows that keep a size first, then
/// the explicit sizes (scaled down when they do not fit), the rest shared equally. `min` is the
/// least a child gets; what is left over with every child sized goes to the last one.
fn lengths(total: usize, keeps: &[Option<usize>], asks: &[Option<usize>], min: usize) -> Vec<usize> {
    let n = keeps.len();
    let flexible = keeps.iter().filter(|k| k.is_none()).count();
    let mut out = vec![0; n];
    let mut left = total;
    for (o, k) in out.iter_mut().zip(keeps) {
        if let Some(h) = *k {
            *o = h.min(left.saturating_sub(flexible * min)).max(1);
            left = left.saturating_sub(*o);
        }
    }
    let explicit: Vec<usize> = (0..n).filter(|&i| keeps[i].is_none() && asks[i].is_some()).collect();
    let autos: Vec<usize> = (0..n).filter(|&i| keeps[i].is_none() && asks[i].is_none()).collect();
    let want: usize = explicit.iter().filter_map(|&i| asks[i]).sum();
    let room = left.saturating_sub(autos.len() * min);
    if want <= room {
        for &i in &explicit {
            out[i] = asks[i].unwrap_or(min);
        }
        left -= want;
    } else {
        let mut used = 0;
        for (k, &i) in explicit.iter().enumerate() {
            let a = asks[i].unwrap_or(min);
            out[i] = if k + 1 == explicit.len() { room.saturating_sub(used).max(1) } else { (a * room / want).max(1) };
            used += out[i];
        }
        left = left.saturating_sub(room);
    }
    if let Some((&last, rest)) = autos.split_last() {
        let each = left / autos.len();
        for &i in rest {
            out[i] = each;
        }
        out[last] = left - each * rest.len();
    } else if n > 0 {
        out[n - 1] += left;
    }
    out
}

impl Split {
    #[cfg(test)]
    pub fn row(nodes: Vec<Split>) -> Split {
        Split::Row(nodes.into_iter().map(Child::from).collect())
    }

    pub fn col(nodes: Vec<Split>) -> Split {
        Split::Col(nodes.into_iter().map(Child::from).collect())
    }

    /// Window ids in layout order (`Ctrl+W w`).
    pub fn leaves(&self, out: &mut Vec<usize>) {
        match self {
            Split::Win(id) => out.push(*id),
            Split::Row(v) | Split::Col(v) => v.iter().for_each(|c| c.node.leaves(out)),
        }
    }

    pub fn contains(&self, win: usize) -> bool {
        let mut ids = Vec::new();
        self.leaves(&mut ids);
        ids.contains(&win)
    }

    /// Puts window `new` before window `at`, side by side when `row`.
    pub fn insert(&mut self, at: usize, new: usize, row: bool) -> bool {
        let same = matches!(self, Split::Row(_)) == row;
        match self {
            Split::Win(id) if *id == at => {
                let pair = vec![Split::Win(new).into(), Split::Win(at).into()];
                *self = if row { Split::Row(pair) } else { Split::Col(pair) };
                true
            }
            Split::Win(_) => false,
            Split::Row(v) | Split::Col(v) => {
                if same && let Some(i) = v.iter().position(|c| c.node == Split::Win(at)) {
                    v.insert(i, Split::Win(new).into());
                    return true;
                }
                v.iter_mut().any(|c| c.node.insert(at, new, row))
            }
        }
    }

    /// Removes window `id`; a split left with one child becomes that child. The root window
    /// alone is never removed.
    /// With `give` (the layout on screen, when `equalalways` is off) the sizes stay and the next
    /// sibling (the previous one for the last) takes the room of the window.
    pub fn remove(&mut self, id: usize, give: Option<&[(usize, Rect)]>) -> bool {
        let row = matches!(self, Split::Row(_));
        let (Split::Row(v) | Split::Col(v)) = self else { return false };
        if let Some(i) = v.iter().position(|c| c.node == Split::Win(id)) {
            if let Some(rects) = give {
                let mut ext: Vec<usize> = v.iter().map(|c| c.node.extent(rects, row)).collect();
                let to = if i + 1 < v.len() { i + 1 } else { i - 1 };
                ext[to] += ext[i] + usize::from(row);
                v.remove(i);
                ext.remove(i);
                for (c, e) in v.iter_mut().zip(ext) {
                    c.size = Some(e);
                }
            } else {
                v.remove(i);
            }
        } else if !v.iter_mut().any(|c| c.node.remove(id, give)) {
            return false;
        }
        if v.len() == 1 {
            *self = v.pop().expect("one child").node;
        }
        true
    }

    /// Each window's area inside `r`; `fixed` gives the size a window keeps, if any.
    pub fn rects(&self, r: Rect, fixed: &dyn Fn(usize) -> Fixed, mins: (usize, usize), out: &mut Vec<(usize, Rect)>) {
        let (Split::Row(v) | Split::Col(v)) = self else {
            if let Split::Win(id) = self {
                out.push((*id, r));
            }
            return;
        };
        let row = matches!(self, Split::Row(_));
        let n = v.len();
        let keeps: Vec<Option<usize>> = v
            .iter()
            .map(|c| match c.node {
                Split::Win(id) => if row { fixed(id).1 } else { fixed(id).0 },
                _ => None,
            })
            .collect();
        let asks: Vec<Option<usize>> = v.iter().map(|c| c.size).collect();
        if row {
            let lens = lengths(r.w.saturating_sub(n - 1), &keeps, &asks, mins.1);
            let mut x = r.x;
            for (c, w) in v.iter().zip(lens) {
                c.node.rects(Rect { x, w, ..r }, fixed, mins, out);
                x += w + 1;
            }
        } else {
            let lens = lengths(r.h, &keeps, &asks, mins.0);
            let mut y = r.y;
            for (c, h) in v.iter().zip(lens) {
                c.node.rects(Rect { y, h, ..r }, fixed, mins, out);
                y += h;
            }
        }
    }

    /// After `insert(at, new, row)` without `equalalways`: the new window takes half of what `at`
    /// had (`rects` is the layout before), the other windows keep their size.
    pub fn halve(&mut self, at: usize, new: usize, rects: &[(usize, Rect)], row: bool, mins: (usize, usize)) -> bool {
        let is_row = matches!(self, Split::Row(_));
        let (Split::Row(v) | Split::Col(v)) = self else { return false };
        if is_row == row
            && let Some(i) = v.iter().position(|c| c.node == Split::Win(new))
            && v.get(i + 1).is_some_and(|c| c.node == Split::Win(at))
        {
            let mut ext: Vec<usize> = v.iter().map(|c| if c.node == Split::Win(new) { 0 } else { c.node.extent(rects, row) }).collect();
            let old = ext[i + 1];
            let min = if row { mins.1 } else { mins.0 };
            // A side by side window pays a column for the bar between the two.
            let room = old.saturating_sub(usize::from(row));
            let half = (room / 2).max(min.min(room)).max(1);
            ext[i] = half;
            ext[i + 1] = room.saturating_sub(half).max(1);
            for (c, e) in v.iter_mut().zip(ext) {
                c.size = Some(e);
            }
            return true;
        }
        v.iter_mut().any(|c| c.node.halve(at, new, rects, row, mins))
    }

    /// Rows or columns the leaves of this node cover on screen.
    fn extent(&self, rects: &[(usize, Rect)], width: bool) -> usize {
        let mut ids = Vec::new();
        self.leaves(&mut ids);
        let spans = rects.iter().filter(|(id, _)| ids.contains(id)).map(|(_, r)| if width { (r.x, r.x + r.w) } else { (r.y, r.y + r.h) });
        let (lo, hi) = spans.fold((usize::MAX, 0), |(lo, hi), (a, b)| (lo.min(a), hi.max(b)));
        hi.saturating_sub(lo)
    }

    /// Gives window `win` `target` rows (`width` false) or columns, taking them from its
    /// neighbours in that direction (the following ones first) or leaving them to the next one,
    /// like vim; `rects` is the layout on screen. False when nothing changed.
    pub fn resize(&mut self, win: usize, rects: &[(usize, Rect)], mins: (usize, usize), width: bool, target: usize) -> bool {
        self.resize_in(win, rects, mins, width, target).unwrap_or(false)
    }

    fn resize_in(&mut self, win: usize, rects: &[(usize, Rect)], mins: (usize, usize), width: bool, target: usize) -> Option<bool> {
        let (v, row) = match self {
            Split::Row(v) => (v, true),
            Split::Col(v) => (v, false),
            Split::Win(_) => return None,
        };
        let i = v.iter().position(|c| c.node.contains(win))?;
        if let Some(done) = v[i].node.resize_in(win, rects, mins, width, target) {
            return Some(done);
        }
        if row != width {
            return None;
        }
        let min = if width { mins.1 } else { mins.0 };
        let n = v.len();
        let ext: Vec<usize> = v.iter().map(|c| c.node.extent(rects, width)).collect();
        let total: usize = ext.iter().sum();
        let want = target.min(total.saturating_sub((n - 1) * min)).max(min);
        let mut sz = ext.clone();
        if want > sz[i] {
            let mut need = want - sz[i];
            for j in (i + 1..n).chain((0..i).rev()) {
                let give = sz[j].saturating_sub(min).min(need);
                sz[j] -= give;
                need -= give;
            }
            sz[i] = want - need;
        } else if want < sz[i] {
            let to = if i + 1 < n { i + 1 } else { i - 1 };
            sz[to] += sz[i] - want;
            sz[i] = want;
        }
        let changed = sz != ext;
        for (c, s) in v.iter_mut().zip(sz) {
            c.size = Some(s);
        }
        Some(changed)
    }

    // shortcut: a split or a close evens every size out (vim's `equalalways`), when it needs to be an option
    /// Every child back to its equal share (`Ctrl+W =`, a new or closed window).
    pub fn equalize(&mut self) {
        if let Split::Row(v) | Split::Col(v) = self {
            for c in v {
                c.size = None;
                c.node.equalize();
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

    /// The height and width window `id` keeps, if any.
    pub(super) fn fixed_size(&self, id: usize) -> Fixed {
        let w = if self.win.id == id { Some(&self.win) } else { self.windows.iter().find(|w| w.id == id) };
        w.map_or((None, None), |w| (w.fixed_h, w.fixed_w))
    }

    /// The windows on screen as the last frame laid them out.
    pub(super) fn win_rects(&self) -> Vec<(usize, Rect)> {
        let mut rects = Vec::new();
        self.split.rects(self.screen, &|id| self.fixed_size(id), self.win_mins(), &mut rects);
        rects
    }

    /// The least rows (status row included) and columns a window gets (`winminheight`, `winminwidth`).
    pub(super) fn win_mins(&self) -> (usize, usize) {
        let o = &self.buf.opts;
        (o.winminheight.max(1) + usize::from(self.has_status(self.window_ids().len())), o.winminwidth.max(1))
    }

    /// Parks the current window and brings back `id`, with its buffer.
    pub(super) fn park_and_take(&mut self, id: usize) {
        self.win.off = self.offset();
        let i = self.windows.iter().position(|w| w.id == id).expect("a known window");
        mem::swap(&mut self.win, &mut self.windows[i]);
        if self.win.buf != self.buf.id {
            let j = self.buffers.iter().position(|b| b.id == self.win.buf).expect("a window shows a known buffer");
            self.clock += 1;
            self.buf.used = self.clock;
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
        if id == self.win.id {
            return f(self);
        }
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
        let before = self.win_rects();
        assert!(self.split.insert(self.win.id, w.id, row), "the current window is in the layout");
        if self.buf.opts.equalalways || !self.screen_drawn {
            self.split.equalize();
        } else {
            let mins = self.win_mins();
            self.split.halve(self.win.id, w.id, &before, row, mins);
        }
        self.windows.push(w);
        self.park_and_take(self.next_win);
    }

    /// `Ctrl+W c` and `:q` with more windows: the window goes, its buffer stays.
    pub(super) fn close_window(&mut self) -> Result<(), String> {
        if self.cmdwin.as_ref().is_some_and(|c| c.win == self.win.id) {
            self.close_cmdwin();
            return Ok(());
        }
        let ids = self.window_ids();
        if ids.len() == 1 {
            return Err("Cannot close last window".into());
        }
        let at = ids.iter().position(|&id| id == self.win.id).expect("listed");
        let next = if at + 1 < ids.len() { ids[at + 1] } else { ids[at - 1] };
        let gone = self.win.id;
        self.park_and_take(next);
        let rects = self.win_rects();
        if self.buf.opts.equalalways || !self.screen_drawn {
            self.split.remove(gone, None);
            self.split.equalize();
        } else {
            self.split.remove(gone, Some(&rects));
        }
        self.windows.retain(|w| w.id != gone);
        Ok(())
    }

    /// Changes the height (`width` false) or width of the current window; the neighbours give or
    /// take the difference. A given height or width leaves out the status row, like vim's.
    pub(super) fn resize_window(&mut self, width: bool, how: Resize) {
        if !self.screen_drawn {
            return;
        }
        let rects = self.win_rects();
        let Some(&(_, r)) = rects.iter().find(|(id, _)| *id == self.win.id) else { return };
        let status = usize::from(!width && self.has_status(rects.len()));
        let cur = if width { r.w } else { r.h };
        let target = match how {
            Resize::To(n) => n.saturating_add(status),
            Resize::By(d) => (cur as isize).saturating_add(d).max(1) as usize,
            Resize::Max => usize::MAX,
        };
        self.split.resize(self.win.id, &rects, self.win_mins(), width, target);
    }

    /// `:set [no|inv]winfixheight` and `winfixwidth` (`wfh`, `wfw`) of the current window: it keeps
    /// the size it has now. Returns what `name?` shows, or none when `tok` is another option.
    pub(super) fn window_option(&mut self, tok: &str) -> Option<String> {
        let query = tok.ends_with('?');
        let bare = tok.trim_end_matches(['?', '!']);
        let (name, mode) = if let Some(n) = bare.strip_prefix("no") {
            (n, Some(false))
        } else if let Some(n) = bare.strip_prefix("inv") {
            (n, None)
        } else {
            (bare, Some(true))
        };
        let width = match name {
            "winfixheight" | "wfh" => false,
            "winfixwidth" | "wfw" => true,
            _ => return None,
        };
        let rects = self.win_rects();
        let size = rects.iter().find(|(id, _)| *id == self.win.id).map(|(_, r)| if width { r.w } else { r.h });
        let slot = if width { &mut self.win.fixed_w } else { &mut self.win.fixed_h };
        if !query {
            let on = if tok.ends_with('!') { slot.is_none() } else { mode.unwrap_or(slot.is_none()) };
            *slot = if on { size.or(*slot) } else { None };
        }
        let long = if width { "winfixwidth" } else { "winfixheight" };
        Some(if slot.is_some() { long.into() } else { format!("no{long}") })
    }

    /// `:set cmdwinheight=N` resizes an open command-line window.
    pub(super) fn sync_cmdwin_height(&mut self) {
        let Some(c) = &self.cmdwin else { return };
        let rows = self.buf.opts.cmdwinheight + usize::from(self.buf.opts.laststatus != 0);
        let id = c.win;
        let w = if self.win.id == id { Some(&mut self.win) } else { self.windows.iter_mut().find(|w| w.id == id) };
        if let Some(w) = w {
            w.fixed_h = Some(rows);
        }
    }

    /// The current window gets at least `winheight` rows and `winwidth` columns when others can give
    /// them (vim does it when a window is entered).
    pub(super) fn enforce_win_size(&mut self) {
        if !self.screen_drawn || self.window_ids().len() < 2 {
            return;
        }
        let (rows, cols) = (self.buf.opts.winheight, self.buf.opts.winwidth);
        let status = usize::from(self.has_status(self.window_ids().len()));
        let size = |e: &Self| e.win_rects().iter().find(|(id, _)| *id == e.win.id).map(|(_, r)| (r.h, r.w));
        if size(self).is_some_and(|(h, _)| h < rows + status) {
            self.resize_window(false, Resize::To(rows));
        }
        if size(self).is_some_and(|(_, w)| w < cols) {
            self.resize_window(true, Resize::To(cols));
        }
    }

    /// Whether windows have a status row, with `windows` of them (`laststatus`).
    pub(super) fn has_status(&self, windows: usize) -> bool {
        match self.buf.opts.laststatus {
            0 => false,
            1 => windows > 1,
            _ => true,
        }
    }

    /// `Ctrl+W o`.
    pub(super) fn only_window(&mut self) {
        self.windows.clear();
        self.split = Split::Win(self.win.id);
    }

    /// `Ctrl+W` followed by `c`; `n` is the count.
    pub(super) fn window_cmd(&mut self, c: char, count: Option<usize>) {
        let n = count.unwrap_or(1);
        if !matches!(c, 'c' | '+' | '-' | '_' | '|' | '<' | '>' | '=') && self.cmdwin_refuses() {
            return;
        }
        let moved = matches!(c, 'h' | 'j' | 'k' | 'l' | 'w');
        let res = match c {
            'h' | 'j' | 'k' | 'l' => {
                let rects = self.win_rects();
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
            '+' | '-' => {
                self.resize_window(false, Resize::By(if c == '+' { n as isize } else { -(n as isize) }));
                Ok(())
            }
            '>' | '<' => {
                self.resize_window(true, Resize::By(if c == '>' { n as isize } else { -(n as isize) }));
                Ok(())
            }
            '_' | '|' => {
                self.resize_window(c == '|', count.map_or(Resize::Max, Resize::To));
                Ok(())
            }
            '=' => {
                self.split.equalize();
                Ok(())
            }
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
            self.error(e);
        }
        if moved {
            self.enforce_win_size();
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn rects(s: &Split, w: usize, h: usize) -> Vec<(usize, Rect)> {
        let mut out = Vec::new();
        s.rects(Rect { x: 0, y: 0, w, h }, &|_| (None, None), (2, 1), &mut out);
        out
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn insert_remove_and_leaves() {
        let mut s = Split::Win(1);
        assert!(s.insert(1, 2, false));
        assert_eq!(s, Split::col(vec![Split::Win(2), Split::Win(1)]));
        assert!(s.insert(2, 3, false), "same direction: a sibling");
        assert!(s.insert(1, 4, true), "other direction: the leaf becomes a row");
        assert!(!s.insert(9, 5, true));
        assert_eq!(s, Split::col(vec![Split::Win(3), Split::Win(2), Split::row(vec![Split::Win(4), Split::Win(1)])]));
        let mut ids = Vec::new();
        s.leaves(&mut ids);
        assert_eq!(ids, [3, 2, 4, 1]);
        assert!(s.remove(4, None), "a row left with one child collapses");
        assert_eq!(s, Split::col(vec![Split::Win(3), Split::Win(2), Split::Win(1)]));
        assert!(!s.remove(9, None));
        assert!(s.remove(3, None) && s.remove(2, None));
        assert_eq!(s, Split::Win(1));
        assert!(!s.remove(1, None), "the last window stays");
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn rects_share_space_and_leave_separators() {
        let s = Split::row(vec![Split::Win(1), Split::col(vec![Split::Win(2), Split::Win(3)])]);
        assert_eq!(
            rects(&s, 21, 11),
            [
                (1, Rect { x: 0, y: 0, w: 10, h: 11 }),
                (2, Rect { x: 11, y: 0, w: 10, h: 5 }),
                (3, Rect { x: 11, y: 5, w: 10, h: 6 }),
            ]
        );
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn neighbor_by_direction_and_cursor() {
        // 1 | 2
        //   | 3
        let r = rects(&Split::row(vec![Split::Win(1), Split::col(vec![Split::Win(2), Split::Win(3)])]), 21, 10);
        assert_eq!(neighbor(&r, 1, 'l', (3, 1)), Some(2));
        assert_eq!(neighbor(&r, 1, 'l', (3, 7)), Some(3), "the row of the cursor picks");
        assert_eq!(neighbor(&r, 2, 'j', (12, 1)), Some(3));
        assert_eq!(neighbor(&r, 3, 'k', (12, 6)), Some(2));
        assert_eq!(neighbor(&r, 3, 'h', (12, 6)), Some(1));
        assert_eq!(neighbor(&r, 1, 'h', (3, 1)), None);
        assert_eq!(neighbor(&r, 1, 'x', (3, 1)), None);
        assert_eq!(neighbor(&r, 9, 'l', (3, 1)), None);
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn fixed_heights_are_kept_and_cut_to_leave_room() {
        let heights = |s: &Split, h: usize, fixed: &dyn Fn(usize) -> Fixed| {
            let mut out = Vec::new();
            s.rects(Rect { x: 0, y: 0, w: 10, h }, fixed, (2, 1), &mut out);
            out.iter().map(|(id, r)| (*id, r.y, r.h)).collect::<Vec<_>>()
        };
        let col = Split::col(vec![Split::Win(1), Split::Win(2), Split::Win(3)]);
        let two = |id| ((id == 2).then_some(4), None);
        assert_eq!(heights(&col, 20, &two), [(1, 0, 8), (2, 8, 4), (3, 12, 8)]);
        assert_eq!(heights(&col, 21, &two), [(1, 0, 8), (2, 8, 4), (3, 12, 9)], "the last flexible one takes the rest");
        // Too tall for the screen: the others keep two rows each.
        assert_eq!(heights(&col, 9, &|id| ((id == 2).then_some(50), None)), [(1, 0, 2), (2, 2, 5), (3, 7, 2)]);
        // Only fixed windows: the last takes what is left.
        assert_eq!(heights(&col, 20, &|_| (Some(3), None)), [(1, 0, 3), (2, 3, 3), (3, 6, 14)]);
        // Rows are never fixed, and a fixed window inside a row is flexible.
        let row = Split::row(vec![Split::Win(1), Split::Win(2)]);
        assert_eq!(heights(&row, 10, &two), [(1, 0, 10), (2, 0, 10)]);
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn resize_takes_from_the_following_neighbours_first() {
        let layout = |s: &Split, w: usize| rects(s, w, 30);
        let heights = |s: &Split| layout(s, 10).iter().map(|(_, r)| r.h).collect::<Vec<_>>();
        let mut s = Split::col(vec![Split::Win(1), Split::Win(2), Split::Win(3)]);
        assert_eq!(heights(&s), [10, 10, 10]);
        // Bigger: the window after it gives, then the ones before.
        assert!(s.resize(1, &layout(&s, 10), (2, 1), false, 15));
        assert_eq!(heights(&s), [15, 5, 10]);
        assert!(s.resize(2, &layout(&s, 10), (2, 1), false, 20));
        assert_eq!(heights(&s), [8, 20, 2]);
        // Smaller: the next window gets the rows, the previous one for the last window.
        assert!(s.resize(2, &layout(&s, 10), (2, 1), false, 3));
        assert_eq!(heights(&s), [8, 3, 19]);
        assert!(s.resize(3, &layout(&s, 10), (2, 1), false, 4));
        assert_eq!(heights(&s), [8, 18, 4]);
        // The most possible leaves two rows (text and status) to each other window.
        assert!(s.resize(1, &layout(&s, 10), (2, 1), false, usize::MAX));
        assert_eq!(heights(&s), [26, 2, 2]);
        assert!(!s.resize(1, &layout(&s, 10), (2, 1), false, 26), "nothing to change");
        assert!(!s.resize(9, &layout(&s, 10), (2, 1), false, 5), "unknown window");
        s.equalize();
        assert_eq!(heights(&s), [10, 10, 10]);
        // Widths, in a row holding a column: the column is the child of the row.
        let mut s = Split::row(vec![Split::Win(1), Split::col(vec![Split::Win(2), Split::Win(3)])]);
        assert!(s.resize(1, &layout(&s, 21), (2, 1), true, 14));
        assert_eq!(layout(&s, 21).iter().map(|(_, r)| r.w).collect::<Vec<_>>(), [14, 6, 6]);
        assert!(s.resize(3, &layout(&s, 21), (2, 1), true, 9), "a window of the column asks the row");
        assert_eq!(layout(&s, 21).iter().map(|(_, r)| r.w).collect::<Vec<_>>(), [11, 9, 9]);
        // Heights inside the column go to the column.
        assert!(s.resize(2, &layout(&s, 21), (2, 1), false, 20));
        assert_eq!(layout(&s, 21).iter().map(|(_, r)| r.h).collect::<Vec<_>>(), [30, 20, 10]);
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn sizes_that_do_not_fit_are_scaled_down() {
        let ask = |id, size| Child { node: Split::Win(id), size };
        let s = Split::Col(vec![ask(1, Some(20)), ask(2, Some(20)), ask(3, None)]);
        assert_eq!(rects(&s, 10, 30).iter().map(|(_, r)| r.h).collect::<Vec<_>>(), [14, 14, 2]);
        // All sized, leaving room over: the last one takes it.
        let s = Split::Col(vec![ask(1, Some(5)), ask(2, Some(5))]);
        assert_eq!(rects(&s, 10, 30).iter().map(|(_, r)| r.h).collect::<Vec<_>>(), [5, 25]);
    }
}
