//! Windows (`:sp`, `:vs`, `Ctrl+W`): views of buffers laid out by a tree of splits.

use std::{cell::RefCell, mem};

use super::{Editor, MatchCache, Mode, buffers::{Buffer, Mark}, ex, layout, options::WinOpts};

/// One view of a buffer: cursor and scroll state.
pub(super) struct Window {
    pub id: usize,
    /// `w_arg_idx`: the entry of the argument list this window is at.
    pub arg_idx: usize,
    /// `w_alt_fnum`: the alternate buffer of this window (`#`, `Ctrl+^`).
    pub alt: Option<usize>,
    /// Id of the buffer shown.
    pub buf: usize,
    /// Cursor line and column, in chars.
    pub line: usize,
    pub col: usize,
    /// `w_curswant`: the virtual column (screen cells) kept across vertical moves; `usize::MAX` after `$`. Only
    /// meaningful while `want_set` is false.
    pub want_col: usize,
    /// `w_set_curswant`: the cursor moved, so `want_col` is taken from it before the next command (`Editor::update_curswant`).
    pub want_set: bool,
    pub top: usize,
    /// Screen rows of line `top` scrolled off the top (a cursor line taller than the screen).
    pub top_sub: usize,
    pub left: usize,
    pub rows: usize,
    /// Text width of the last frame: the wrap width of `gj`/`gk`, `Ctrl-D`/`Ctrl-U`, `H`/`M`/`L`
    /// (`usize::MAX` before the first frame).
    pub text_w: usize,
    /// Rows of the cursor line and of recent huge lines, kept between frames (`wrap`).
    pub layout: RefCell<layout::Layouts>,
    /// Highlight matches of the last frame: text version, pattern, lines, result.
    pub match_cache: RefCell<Option<MatchCache>>,
    /// Cursor byte offset while the window is parked, shifted by the edits made in other windows;
    /// `line`/`col` are recomputed from it when the window comes back.
    pub off: Mark,
    /// Jump list (`Ctrl+O`/`Ctrl+I`): buffer id and byte offset of each position jumped from,
    /// oldest first, shifted by edits; `jump_idx` is the entry the next `Ctrl+O` goes back from
    /// (`jumps.len()` when not moving through the list).
    pub jumps: Vec<(usize, Mark)>,
    pub jump_idx: usize,
    /// Window-local options (`w_onebuf_opt`): what the window shows now, and (`all_opts`, `w_allbuf_opt`) the values a buffer
    /// that was never in this window gets. `:set` writes both, a modeline the first one only.
    pub opts: WinOpts,
    pub all_opts: WinOpts,
    /// Height in rows, status row included, the window keeps when its split is laid out (`winfixheight`).
    pub fixed_h: Option<usize>,
    /// Same for the width (`winfixwidth`).
    pub fixed_w: Option<usize>,
    /// `w:` variables.
    pub vars: super::script::Vars,
    /// `w_wcol`, `w_wrow`: the cell the cursor was in the window the last time Neovim worked it out (`curs_columns`): at a redraw, and
    /// when the window changes its height.
    pub wcol: usize,
    pub wrow: usize,
    /// `w_fraction`, `w_prev_fraction_row`: where in the window the cursor is, to keep it there when the height changes.
    pub fraction: usize,
    pub prev_fraction_row: Option<usize>,
}

const FRACTION_MULT: usize = 16384;

impl Window {
    pub fn new(id: usize, buf: usize) -> Self {
        Self {
            id,
            arg_idx: 0,
            alt: None,
            buf,
            line: 0,
            col: 0,
            want_col: 0,
            want_set: true,
            top: 0,
            top_sub: 0,
            left: 0,
            rows: 1,
            text_w: usize::MAX,
            layout: RefCell::default(),
            match_cache: RefCell::default(),
            off: Mark { line: 0, col: 0 },
            jumps: Vec::new(),
            jump_idx: 0,
            opts: WinOpts::default(),
            all_opts: WinOpts::default(),
            fixed_h: None,
            fixed_w: None,
            vars: Default::default(),
            wcol: 0,
            wrow: 0,
            fraction: 0,
            prev_fraction_row: None,
        }
    }

    /// Scroll and column memory, dropped when the window shows another buffer.
    pub fn reset_view(&mut self) {
        (self.top, self.top_sub, self.left, self.want_col, self.want_set) = (0, 0, 0, 0, true);
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

    /// `frame2win`: the first window of the frame.
    pub fn first_leaf(&self) -> usize {
        match self {
            Split::Win(id) => *id,
            Split::Row(v) | Split::Col(v) => v[0].node.first_leaf(),
        }
    }

    /// `frame_fixed_height`: a column is fixed when every child is, a row when one is.
    fn fixed_h(&self, f: &dyn Fn(usize) -> Fixed) -> bool {
        match self {
            Split::Win(id) => f(*id).0.is_some(),
            Split::Row(v) => v.iter().any(|c| c.node.fixed_h(f)),
            Split::Col(v) => v.iter().all(|c| c.node.fixed_h(f)),
        }
    }

    /// `frame_fixed_width`.
    fn fixed_w(&self, f: &dyn Fn(usize) -> Fixed) -> bool {
        match self {
            Split::Win(id) => f(*id).1.is_some(),
            Split::Col(v) => v.iter().any(|c| c.node.fixed_w(f)),
            Split::Row(v) => v.iter().all(|c| c.node.fixed_w(f)),
        }
    }

    /// `win_altframe`: the first window of the frame that gets the room of window `id` when it closes, and becomes the current
    /// window then. The next frame by default, the previous one with 'splitbelow' (in a column) or 'splitright' (in a row), or
    /// when the next one keeps its size and the previous one does not.
    pub fn altframe(&self, id: usize, splitbelow: bool, splitright: bool, f: &dyn Fn(usize) -> Fixed) -> Option<usize> {
        let row = matches!(self, Split::Row(_));
        let (Split::Row(v) | Split::Col(v)) = self else { return None };
        if let Some(i) = v.iter().position(|c| c.node == Split::Win(id)) {
            let t = if i == 0 {
                1
            } else if i + 1 == v.len() {
                i - 1
            } else {
                let (mut t, mut o) = (i + 1, i - 1);
                if (!row && splitbelow) || (row && splitright) {
                    std::mem::swap(&mut t, &mut o);
                }
                let fixed = if row { v[t].node.fixed_w(f) && !v[o].node.fixed_w(f) } else { v[t].node.fixed_h(f) && !v[o].node.fixed_h(f) };
                if fixed { o } else { t }
            };
            return Some(v[t].node.first_leaf());
        }
        v.iter().find_map(|c| c.node.altframe(id, splitbelow, splitright, f))
    }

    /// The frames from the root down to window `id`: each one's children, the index of the one on the way, and whether it is a row.
    fn ancestors<'a>(&'a self, id: usize, out: &mut Vec<(&'a [Child], usize, bool)>) -> bool {
        let (Split::Row(v) | Split::Col(v)) = self else { return false };
        let row = matches!(self, Split::Row(_));
        for (i, c) in v.iter().enumerate() {
            out.push((v, i, row));
            if c.node == Split::Win(id) || c.node.ancestors(id, out) {
                return true;
            }
            out.pop();
        }
        false
    }

    /// `win_vert_neighbor` (`vertical`) and `win_horz_neighbor`: the window `count` frames up or down (left or right) of `from`;
    /// where a frame holds a row of windows (a column) the one at the cursor cell `at` is taken.
    pub fn neighbor_of(&self, from: usize, vertical: bool, backward: bool, count: usize, rects: &[(usize, Rect)], at: (usize, usize)) -> usize {
        let rect = |id: usize| rects.iter().find(|(i, _)| *i == id).map(|(_, r)| *r);
        let mut found = from;
        for _ in 0..count {
            let mut anc = Vec::new();
            self.ancestors(found, &mut anc);
            // Up the tree to a frame with a neighbour on the right axis.
            let mut next: Option<&Split> = None;
            while let Some(&(v, i, row)) = anc.last() {
                let n = if backward { i.checked_sub(1).map(|j| &v[j].node) } else { v.get(i + 1).map(|c| &c.node) };
                if row != vertical && n.is_some() {
                    next = n;
                    break;
                }
                anc.pop();
            }
            let Some(mut nfr) = next else { return found };
            // Down to a window.
            loop {
                let (Split::Row(v) | Split::Col(v)) = nfr else {
                    if let Split::Win(w) = nfr {
                        found = *w;
                    }
                    break;
                };
                let row = matches!(nfr, Split::Row(_));
                let mut k = 0;
                // The frame at the cursor column (going vertically through a row) or row (horizontally through a column).
                if vertical == row {
                    while k + 1 < v.len() {
                        let first = v[k].node.first_leaf();
                        let Some(r) = rect(first) else { break };
                        let end = if vertical { r.x + v[k].node.extent(rects, true) + 1 } else { r.y + v[k].node.extent(rects, false) };
                        if end <= if vertical { at.0 } else { at.1 } {
                            k += 1;
                        } else {
                            break;
                        }
                    }
                }
                if vertical != row && backward {
                    k = v.len() - 1;
                }
                nfr = &v[k].node;
            }
        }
        found
    }

    pub fn contains(&self, win: usize) -> bool {
        let mut ids = Vec::new();
        self.leaves(&mut ids);
        ids.contains(&win)
    }

    /// Puts window `new` before window `at` (after it with `after`: 'splitbelow', 'splitright'), side by side when `row`.
    pub fn insert(&mut self, at: usize, new: usize, row: bool, after: bool) -> bool {
        let same = matches!(self, Split::Row(_)) == row;
        match self {
            Split::Win(id) if *id == at => {
                let pair = if after { vec![Split::Win(at).into(), Split::Win(new).into()] } else { vec![Split::Win(new).into(), Split::Win(at).into()] };
                *self = if row { Split::Row(pair) } else { Split::Col(pair) };
                true
            }
            Split::Win(_) => false,
            Split::Row(v) | Split::Col(v) => {
                if same && let Some(i) = v.iter().position(|c| c.node == Split::Win(at)) {
                    v.insert(i + usize::from(after), Split::Win(new).into());
                    return true;
                }
                v.iter_mut().any(|c| c.node.insert(at, new, row, after))
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
        self.flatten();
        true
    }

    /// A split that holds a split of its own direction takes its children (a frame whose only child went is replaced by it, and
    /// two nested columns are one: `winframe_remove`).
    fn flatten(&mut self) {
        let row = matches!(self, Split::Row(_));
        let (Split::Row(v) | Split::Col(v)) = self else { return };
        let mut out = Vec::with_capacity(v.len());
        for mut c in std::mem::take(v) {
            c.node.flatten();
            match c.node {
                Split::Row(inner) if row => out.extend(inner),
                Split::Col(inner) if !row => out.extend(inner),
                _ => out.push(c),
            }
        }
        *v = out;
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
            && let Some(j) = [i + 1, i.wrapping_sub(1)].into_iter().find(|&j| v.get(j).is_some_and(|c| c.node == Split::Win(at)))
        {
            let mut ext: Vec<usize> = v.iter().map(|c| if c.node == Split::Win(new) { 0 } else { c.node.extent(rects, row) }).collect();
            let old = ext[j];
            let min = if row { mins.1 } else { mins.0 };
            // A side by side window pays a column for the bar between the two.
            let room = old.saturating_sub(usize::from(row));
            let half = (room / 2).max(min.min(room)).max(1);
            ext[i] = half;
            ext[j] = room.saturating_sub(half).max(1);
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
        self.win.off = self.mark_at(self.offset());
        let i = self.windows.iter().position(|w| w.id == id).expect("a known window");
        mem::swap(&mut self.win, &mut self.windows[i]);
        if self.win.buf != self.buf.id {
            let j = self.buffers.iter().position(|b| b.id == self.win.buf).expect("a window shows a known buffer");
            self.clock += 1;
            self.buf.used = self.clock;
            mem::swap(&mut self.buf, &mut self.buffers[j]);
        }
        // `:e!` replaces the text without edits to map `off` through: clamp it to a char boundary.
        (self.win.line, self.win.col) = self.pos_of(self.mark_offset(self.win.off));
        self.win.top = self.win.top.min(self.line_count() - 1);
        // Insert mode keeps a cursor past the line end (drawing the other windows swaps back).
        if self.mode != Mode::Insert {
            self.clamp_normal();
        }
    }

    /// Where the cursor of the current window is on the screen (`w_wincol + w_wcol`, `w_winrow + w_wrow`): the values of the last
    /// `curs_columns`, which a redraw and a change of the height of the window make (a script that only moves the cursor does not).
    fn win_cursor_cell(&self) -> (usize, usize) {
        let rects = self.win_rects();
        let (x, y) = rects.iter().find(|(id, _)| *id == self.win.id).map_or((0, 0), |(_, r)| (r.x, r.y));
        (x + self.win.wcol, y + self.win.wrow)
    }

    /// `curs_columns(curwin)` for a window of `w` x `h` cells: the cell of the cursor (the window scrolls to show it).
    fn curs_columns_at(&mut self, w: usize, h: usize) {
        let pane = self.window_rows(w, h.max(1), true);
        (self.win.wcol, self.win.wrow) = pane.cursor;
    }

    /// `:redraw`: the current window is drawn, so its cursor cell is known.
    pub(super) fn redraw_cmd(&mut self) {
        let rects = self.win_rects();
        let Some(&(_, r)) = rects.iter().find(|(id, _)| *id == self.win.id) else { return };
        let h = r.h.saturating_sub(usize::from(self.has_status(rects.len())));
        self.curs_columns_at(r.w, h);
    }

    /// `win_set_inner_size` for every window whose size is not what it was in `before` (rects, and whether they had a status row):
    /// the cursor cell is worked out for the current window and the others keep their place by `w_fraction` (`scroll_to_fraction`).
    pub(super) fn layout_changed(&mut self, before: &[(usize, Rect)], before_status: bool) {
        let after = self.win_rects();
        let (st0, st1) = (usize::from(before_status), usize::from(self.has_status(after.len())));
        for &(id, r) in &after {
            let h = r.h.saturating_sub(st1);
            let (h0, w0) = before.iter().find(|(b, _)| *b == id).map_or((0, r.w), |(_, b)| (b.h.saturating_sub(st0), b.w));
            if h != h0 || r.w != w0 {
                self.with_window(id, |e| e.win_set_inner_size(id, (w0, h0), (r.w, h)));
            }
        }
    }

    /// `win_set_inner_size` of the current window (`old` and `new` are width and height).
    fn win_set_inner_size(&mut self, id: usize, old: (usize, usize), new: (usize, usize)) {
        let _ = id;
        let (cur, (w0, h0), (w, h)) = (self.is_curwin_during_layout(), old, new);
        if h != h0 {
            if h > 0 {
                if cur && h0 > 0 {
                    // `validate_cursor(curwin)`: with the size it has.
                    self.curs_columns_at(w0, h0);
                }
                if Some(self.win.wrow) != self.win.prev_fraction_row {
                    self.set_fraction(h0);
                }
                self.scroll_to_fraction(cur, w, h, h0);
            }
        } else if w != w0 && cur {
            self.curs_columns_at(w, h);
        }
    }

    /// Whether the window `with_window` brought in is the one that was current when the layout changed.
    fn is_curwin_during_layout(&self) -> bool {
        self.layout_cur == Some(self.win.id)
    }

    /// `set_fraction`: where the cursor is in a window of `h0` rows, in 16384ths.
    fn set_fraction(&mut self, h0: usize) {
        if h0 > 1 {
            self.win.fraction = (self.win.wrow * FRACTION_MULT + FRACTION_MULT / 2) / h0;
        }
    }

    /// `scroll_to_fraction`: the top line that keeps the cursor at the same place of a window that has `h` rows now.
    fn scroll_to_fraction(&mut self, cur: bool, w: usize, h: usize, prev_h: usize) {
        let gutter = if self.win.opts.number || self.win.opts.relativenumber { super::render::gutter_width(self.line_count()) } else { 0 };
        (self.win.text_w, self.win.rows) = (w.saturating_sub(gutter).max(1), h);
        if h < self.line_count() || self.win.top > 0 {
            let mult = FRACTION_MULT as i64;
            let (line1, h_i) = ((self.win.line + 1) as i64, h as i64);
            let mut wrow = (self.win.fraction as i64 * h_i - 1) / mult;
            let line_size0 = self.cursor_row().0 as i64;
            let mut sline = wrow - line_size0;
            if sline >= 0 {
                // The whole cursor line is to be seen, when it can be.
                let rows = self.height_to(self.win.line, usize::MAX / 2) as i64;
                if sline > h_i - rows {
                    sline = h_i - rows;
                    wrow -= rows - line_size0;
                }
            }
            let mut lnum = line1;
            if sline < 0 {
                // The cursor line is the first one of the window.
                wrow = line_size0;
            } else if sline > 0 {
                let mut line_size = line_size0;
                while sline > 0 && lnum > 1 {
                    lnum -= 1;
                    line_size = self.height_to(lnum as usize - 1, usize::MAX / 2) as i64;
                    sline -= line_size;
                }
                if sline < 0 {
                    lnum += 1;
                    wrow -= line_size + sline;
                } else if sline > 0 {
                    lnum = 1;
                    wrow -= sline;
                }
            }
            self.win.top = (lnum - 1).max(0) as usize;
            self.win.top_sub = 0;
            self.win.wrow = wrow.max(0) as usize;
        }
        if cur {
            self.curs_columns_at(w, h);
        }
        if prev_h > 0 {
            self.win.prev_fraction_row = Some(self.win.wrow);
        }
    }

    /// `win_vert_neighbor` and `win_horz_neighbor` of window `from` for the key `c` (`h`, `j`, `k`, `l`) and a count.
    pub(super) fn win_neighbor(&mut self, from: usize, c: char, count: usize) -> usize {
        let rects = self.win_rects();
        let at = self.win_cursor_cell();
        self.split.neighbor_of(from, matches!(c, 'j' | 'k'), matches!(c, 'k' | 'h'), count, &rects, at)
    }

    /// `win_enter(id)`: window `id` becomes the current one; the one left is `prevwin` (`Ctrl+W p`, `winnr('#')`).
    pub(super) fn win_enter(&mut self, id: usize) {
        if id != self.win.id {
            self.prevwin = Some(self.win.id);
            self.park_and_take(id);
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
        // `win_copy_options`
        (w.opts, w.all_opts) = (self.win.opts.clone(), self.win.all_opts.clone());
        // `copy_winopt` leaves 'winfixheight' and 'winfixwidth' out: a new window keeps its size to nobody.
        for o in [&mut w.opts, &mut w.all_opts] {
            (o.winfixheight, o.winfixwidth) = (false, false);
        }
        // `win_init`: the new window has the alternate file of the old one.
        w.alt = self.win.alt;
        (w.line, w.col, w.want_col, w.want_set, w.top, w.off) = (self.win.line, self.win.col, self.win.want_col, self.win.want_set, self.win.top, self.mark_at(self.offset()));
        let before = self.win_rects();
        let before_status = self.has_status(before.len());
        // `win_init`: the new window starts as the old one was.
        (w.wrow, w.fraction, w.prev_fraction_row) = (self.win.wrow, self.win.fraction, self.win.prev_fraction_row);
        let after = if row { self.buf.opts.splitright } else { self.buf.opts.splitbelow };
        assert!(self.split.insert(self.win.id, w.id, row, after), "the current window is in the layout");
        if self.buf.opts.equalalways || !self.screen_drawn {
            self.split.equalize();
        } else {
            let mins = self.win_mins();
            self.split.halve(self.win.id, w.id, &before, row, mins);
        }
        self.windows.push(w);
        self.layout_cur = Some(self.win.id);
        self.layout_changed(&before, before_status);
        self.layout_cur = None;
        self.win_enter(self.next_win);
    }

    /// The window a count or a window number names (`:close 2`, `:2hide`): in layout order, one too large is the last window.
    pub(super) fn window_by_number(&self, n: Option<usize>) -> usize {
        let ids = self.window_ids();
        n.map_or(self.win.id, |n| ids[(n.max(1) - 1).min(ids.len() - 1)])
    }

    /// `win_close(win, free_buf, ..)`: the window goes; with `free_buf` its buffer is unloaded when no window shows it any more.
    pub(super) fn win_close(&mut self, id: usize, free_buf: bool) -> Result<(), String> {
        let ids = self.window_ids();
        if ids.len() == 1 {
            return Err("E444: Cannot close last window".into());
        }
        let gone = id;
        let (before, before_status) = (self.win_rects(), self.has_status(ids.len()));
        let was_cur = self.win.id;
        let buf = if gone == self.win.id {
            if self.cmdwin.as_ref().is_some_and(|c| c.win == gone) {
                self.close_cmdwin();
                return Ok(());
            }
            let fixed = |id: usize| self.fixed_size(id);
            let next = self.split.altframe(gone, self.buf.opts.splitbelow, self.buf.opts.splitright, &fixed).expect("another window gets the room");
            let buf = self.buf.id;
            // `close_buffer`: the options of the window are kept for the buffer it showed, and a cursor in line 1 is not a position.
            let lnum = if self.win.line == 0 { 0 } else { self.win.line + 1 };
            self.save_winopts(buf, gone, self.win.opts.clone(), (lnum, self.win.col));
            self.park_and_take(next);
            buf
        } else {
            let Some(w) = self.windows.iter().find(|w| w.id == gone) else { return Ok(()) };
            let (buf, opts, lnum, col) = (w.buf, w.opts.clone(), if w.line == 0 { 0 } else { w.line + 1 }, w.col);
            self.save_winopts(buf, gone, opts, (lnum, col));
            buf
        };
        let rects = self.win_rects();
        if self.buf.opts.equalalways || !self.screen_drawn {
            self.split.remove(gone, None);
            self.split.equalize();
        } else {
            self.split.remove(gone, Some(&rects));
        }
        self.windows.retain(|w| w.id != gone);
        self.free_window(gone);
        // The windows that got the room of the closed one change their height.
        self.layout_cur = Some(if gone == was_cur { self.win.id } else { was_cur });
        self.layout_changed(&before, before_status);
        self.layout_cur = None;
        // `win_free`: no window is the previous one when it is gone.
        if self.prevwin == Some(gone) {
            self.prevwin = None;
        }
        self.unload_if_unused(buf, free_buf);
        Ok(())
    }

    /// `ex_close` and `ex_win_close`: close the window `wnr` names (the current one without it). A buffer that would be lost is
    /// refused (`E37`) unless it is hidden or `forceit`.
    pub(super) fn ex_close(&mut self, forceit: bool, wnr: Option<usize>) -> Result<(), String> {
        if self.cmdwin.is_some() {
            self.close_cmdwin();
            return Ok(());
        }
        let id = self.window_by_number(wnr);
        let buf = if id == self.win.id { self.buf.id } else { self.windows.iter().find(|w| w.id == id).map_or(self.buf.id, |w| w.buf) };
        let nwindows = usize::from(self.win.buf == buf) + self.windows.iter().filter(|w| w.buf == buf).count();
        let need_hide = self.buffer(buf).is_some_and(Buffer::is_dirty) && nwindows <= 1;
        if need_hide && !self.buf_hide() && !forceit {
            self.error(ex::DIRTY);
            return Ok(());
        }
        let free = !need_hide && !self.buf_hide();
        if let Err(m) = self.win_close(id, free) {
            self.error(m);
        }
        Ok(())
    }

    /// `ex_hide`: the window goes, its buffer is not unloaded.
    pub(super) fn ex_hide(&mut self, wnr: Option<usize>) {
        let id = self.window_by_number(wnr);
        if let Err(m) = self.win_close(id, false) {
            self.error(m);
        }
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
        let before_status = self.has_status(rects.len());
        self.split.resize(self.win.id, &rects, self.win_mins(), width, target);
        self.layout_cur = Some(self.win.id);
        self.layout_changed(&rects, before_status);
        self.layout_cur = None;
    }

    /// `'winfixheight'` and `'winfixwidth'` of the windows against the size they keep (`Window::fixed_h`, `fixed_w`: the size the
    /// layout gives them from then on, taken from `rects` when the option turns on). A size that goes with the option goes when it
    /// turns off; the command-line window has one of its own.
    pub(super) fn sync_winfix(&mut self, rects: &[(usize, Rect)]) {
        let cmdwin = self.cmdwin.as_ref().map(|c| c.win);
        for w in std::iter::once(&mut self.win).chain(self.windows.iter_mut()) {
            let Some((_, r)) = rects.iter().find(|(id, _)| *id == w.id) else { continue };
            let own = cmdwin == Some(w.id);
            if w.opts.winfixheight {
                w.fixed_h = w.fixed_h.or(Some(r.h));
            } else if !own {
                w.fixed_h = None;
            }
            if w.opts.winfixwidth {
                w.fixed_w = w.fixed_w.or(Some(r.w));
            } else {
                w.fixed_w = None;
            }
        }
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
            n if n <= 0 => false,
            1 => windows > 1,
            _ => true,
        }
    }

    /// `close_others(message, forceit)` (`:only`, `Ctrl+W o`): every other window goes, except one whose buffer is changed and
    /// would be lost (not hidden, in no other window, no `!`).
    pub(super) fn only_window(&mut self, forceit: bool, message: bool) {
        if self.window_ids().len() == 1 {
            if message {
                self.info("Already only one window");
            }
            return;
        }
        for id in self.window_ids() {
            if id == self.win.id {
                continue;
            }
            let Some(buf) = self.windows.iter().find(|w| w.id == id).map(|w| w.buf) else { continue };
            let nwindows = usize::from(self.win.buf == buf) + self.windows.iter().filter(|w| w.buf == buf).count();
            let changed = self.buffer(buf).is_some_and(Buffer::is_dirty);
            // `can_abandon`, and a window that cannot be left stays when its buffer is changed.
            if !(self.buf_hide() || !changed || nwindows > 1 || forceit) && changed {
                continue;
            }
            let free = !self.buf_hide() && !changed;
            let _ = self.win_close(id, free);
        }
        if message && self.window_ids().len() > 1 {
            self.error("E445: Other window contains changes");
        }
    }

    /// `Ctrl+W` followed by `c`; `n` is the count.
    pub(super) fn window_cmd(&mut self, c: char, count: Option<usize>) {
        let n = count.unwrap_or(1);
        if !matches!(c, 'c' | '+' | '-' | '_' | '|' | '<' | '>' | '=') && self.cmdwin_refuses() {
            return;
        }
        let moved = matches!(c, 'h' | 'j' | 'k' | 'l' | 'w' | 'W' | 't' | 'b' | 'p');
        let res: Result<(), String> = match c {
            'h' | 'j' | 'k' | 'l' => {
                // `win_goto_ver`/`win_goto_hor`: `win_vert_neighbor`, `win_horz_neighbor`.
                let id = self.win_neighbor(self.win.id, c, n);
                self.win_enter(id);
                Ok(())
            }
            'p' => {
                // `win_goto_prev`: back to the window left last; nothing when there is none.
                match self.prevwin.filter(|&p| self.window_ids().contains(&p)) {
                    Some(p) => self.win_enter(p),
                    None => self.beep_flush(),
                }
                Ok(())
            }
            'w' | 'W' => {
                // `CTRL-W w` and `W`: the next and the previous window, wrapping; with a count that window.
                let ids = self.window_ids();
                if ids.len() == 1 && count != Some(1) {
                    self.beep_flush();
                } else {
                    let at = ids.iter().position(|&id| id == self.win.id).expect("listed");
                    let id = match count {
                        Some(k) if k > 0 => ids[(k - 1).min(ids.len() - 1)],
                        _ if c == 'W' => ids[(at + ids.len() - 1) % ids.len()],
                        _ => ids[(at + 1) % ids.len()],
                    };
                    self.win_enter(id);
                }
                Ok(())
            }
            't' => {
                let id = self.window_ids()[0];
                self.win_enter(id);
                Ok(())
            }
            'b' => {
                let id = *self.window_ids().last().expect("a window");
                self.win_enter(id);
                Ok(())
            }
            'c' | 'q' | 'o' | 'n' => {
                // `cmd_with_count`: the command with the count in front.
                let name = match c {
                    'c' => "close",
                    'q' => "quit",
                    'o' => "only",
                    _ => "new",
                };
                let text = format!("{}{name}", count.map_or(String::new(), |k| k.to_string()));
                self.command(&text);
                Ok(())
            }
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
                let (before, before_status) = (self.win_rects(), self.has_status(self.window_ids().len()));
                self.split.equalize();
                self.layout_cur = Some(self.win.id);
                self.layout_changed(&before, before_status);
                self.layout_cur = None;
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
        assert!(s.insert(1, 2, false, false));
        assert_eq!(s, Split::col(vec![Split::Win(2), Split::Win(1)]));
        assert!(s.insert(2, 3, false, false), "same direction: a sibling");
        assert!(s.insert(1, 4, true, false), "other direction: the leaf becomes a row");
        assert!(!s.insert(9, 5, true, false));
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
    fn neighbours_and_the_frame_that_gets_the_room() {
        // Row of 1 and a column of 2 over 3: the cursor column decides which of the windows above a window is reached.
        let s = Split::col(vec![Split::row(vec![Split::Win(1), Split::Win(2)]), Split::Win(3)]);
        let r = rects(&s, 21, 11);
        assert_eq!(s.neighbor_of(3, true, true, 1, &r, (0, 8)), 1);
        assert_eq!(s.neighbor_of(3, true, true, 1, &r, (15, 8)), 2);
        assert_eq!(s.neighbor_of(1, true, false, 1, &r, (0, 0)), 3);
        assert_eq!(s.neighbor_of(1, false, false, 1, &r, (0, 0)), 2);
        assert_eq!(s.neighbor_of(1, false, true, 1, &r, (0, 0)), 1, "no window on the left: stays");
        assert_eq!(s.neighbor_of(3, true, true, 2, &r, (0, 8)), 1, "a second step has nothing above");
        // The next frame gets the room of the one closed, the previous one at the end or with 'splitbelow'.
        let none = |_: usize| (None, None);
        let c = Split::col(vec![Split::Win(1), Split::Win(2), Split::Win(3)]);
        assert_eq!(c.altframe(1, false, false, &none), Some(2));
        assert_eq!(c.altframe(2, false, false, &none), Some(3));
        assert_eq!(c.altframe(2, true, false, &none), Some(1));
        assert_eq!(c.altframe(3, false, false, &none), Some(2));
        let rw = Split::row(vec![Split::Win(1), Split::Win(2), Split::Win(3)]);
        assert_eq!(rw.altframe(2, true, true, &none), Some(1));
        assert_eq!(rw.altframe(2, true, false, &none), Some(3));
        // A window that keeps its height does not take the room when the other one can.
        let keep = |id: usize| if id == 3 { (Some(3), None) } else { (None, None) };
        assert_eq!(c.altframe(2, false, false, &keep), Some(1));
    }
}
