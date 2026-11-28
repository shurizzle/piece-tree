//! The mouse (`mouse`, `mousescroll`): clicks and drags in windows, on status rows and bars between
//! windows, the wheel, double and triple clicks, and the completion menu.

use std::time::{Duration, Instant};

use crossterm::event::{MouseButton, MouseEvent, MouseEventKind};

use super::{
    Editor, Mode, Pos, VKind, graphemes,
    objects::Obj,
    render::gutter_width,
    windows::Rect,
};

/// Clicks this close in time, on one cell, count as a double (triple) click.
const MULTI_CLICK: Duration = Duration::from_millis(500);

/// What a pressed button is doing while it moves.
#[derive(Clone, Copy, Debug)]
pub(super) enum Drag {
    /// Selecting in a window: its text area and where the press was.
    Select { id: usize, rect: Rect, anchor: Pos },
    /// Moving the status row of a window (its height), or the bar to the right of it (its width).
    Height(usize),
    Width(usize),
}

/// Whether `flags` (`mouse`) let the mouse work in the mode `mode` stands for (`a` is all).
pub(super) fn allows(flags: &str, mode: char) -> bool {
    flags.contains('a') || flags.contains(mode)
}

/// `mousescroll`: `ver:N,hor:N`, either alone.
pub(super) fn parse_scroll(s: &str) -> Option<(usize, usize)> {
    let (mut ver, mut hor) = (3, 6);
    for item in s.split(',') {
        let (k, n) = item.split_once(':')?;
        let n: usize = n.parse().ok()?;
        match k {
            "ver" => ver = n,
            "hor" => hor = n,
            _ => return None,
        }
    }
    Some((ver, hor))
}

/// The cluster of `seg` (laid out from virtual column `vcol0`) drawn at virtual column `cell` (past the end of it: the
/// cluster count).
fn col_at_cell(seg: &str, vcol0: usize, cell: usize, tabs: graphemes::Tabs, w: usize) -> usize {
    graphemes::col_at_vcol(seg, vcol0, tabs, w, cell)
}

impl Editor {
    pub fn mouse_enabled(&self) -> bool {
        !self.buf.opts.mouse.is_empty()
    }

    fn mouse_allows(&self, mode: char) -> bool {
        allows(&self.buf.opts.mouse, mode)
    }

    /// Text rows of a window of area `r` (without its status row).
    fn text_rows(&self, r: Rect, windows: usize) -> usize {
        if self.has_status(windows) { r.h.saturating_sub(1).max(1) } else { r.h }
    }

    /// The line and cluster at `x` cells from the left of the current window and `row` rows from
    /// its top.
    fn pos_at(&self, x: usize, row: usize) -> Pos {
        let gutter = if self.win.opts.number || self.win.opts.relativenumber { gutter_width(self.line_count()) } else { 0 };
        let cell = x.saturating_sub(gutter);
        let tabs = self.buf.opts.tabs();
        let (line, k) = self.step_rows(self.win.top, self.win.top_sub, true, row);
        if self.win.opts.wrap {
            let col = self.with_rows(line, |text, rows| {
                let (start, seg) = rows.row(text, k);
                let w = self.wrap_w();
                start + col_at_cell(seg, rows.row_vcol(k), k * w + cell, tabs, w)
            });
            (line, col)
        } else {
            let text = self.buf.doc.text().line(line);
            (line, col_at_cell(&text, 0, cell + self.win.left, tabs, usize::MAX))
        }
    }

    /// A mouse event; `now` is when it came (for double clicks).
    pub fn mouse(&mut self, ev: MouseEvent, now: Instant) {
        if self.msgs.hint {
            self.msgs.clear();
        }
        let (x, y) = (usize::from(ev.column), usize::from(ev.row));
        match ev.kind {
            MouseEventKind::Down(MouseButton::Left) => self.mouse_down(x, y, now),
            MouseEventKind::Drag(MouseButton::Left) => self.mouse_drag(x, y),
            MouseEventKind::Up(MouseButton::Left) => self.drag = None,
            MouseEventKind::ScrollUp | MouseEventKind::ScrollDown | MouseEventKind::ScrollLeft | MouseEventKind::ScrollRight => self.mouse_scroll(ev.kind, x, y),
            _ => {}
        }
    }

    /// What is under the cell: a window's text, its status row, or the bar after it.
    fn locate(&self, x: usize, y: usize) -> Option<(usize, Rect, Part)> {
        let rects = self.win_rects();
        let n = rects.len();
        let status = self.has_status(n);
        for &(id, r) in &rects {
            let text = self.text_rows(r, n);
            if (r.x..r.x + r.w).contains(&x) {
                if (r.y..r.y + text).contains(&y) {
                    return Some((id, r, Part::Text));
                }
                if status && y == r.y + r.h - 1 {
                    return Some((id, r, Part::Status));
                }
            }
            if x == r.x + r.w && (r.y..r.y + r.h).contains(&y) && rects.iter().any(|(_, o)| o.x > r.x + r.w - 1 && o.x == x + 1) {
                return Some((id, r, Part::Bar));
            }
        }
        None
    }

    fn mouse_down(&mut self, x: usize, y: usize, now: Instant) {
        // A message waiting for a key (hit-enter, the pager): a click answers it.
        if self.msgs.hit_enter {
            if self.mouse_allows('r') {
                self.msgs.clear();
            }
            return;
        }
        match self.mode {
            Mode::Command(_) if self.mouse_allows('c') => return self.mouse_menu_or_line(x, y),
            Mode::Normal | Mode::Visual(_) | Mode::Insert => {}
            _ => return,
        }
        let flag = match self.mode {
            Mode::Insert => 'i',
            Mode::Visual(_) => 'v',
            _ => 'n',
        };
        if !self.mouse_allows(flag) {
            return;
        }
        match self.locate(x, y) {
            Some((id, r, Part::Text)) => self.click_text(id, r, x, y, now),
            Some((id, _, Part::Status)) => self.drag = Some(Drag::Height(id)),
            Some((id, _, Part::Bar)) => self.drag = Some(Drag::Width(id)),
            None => {}
        }
    }

    fn click_text(&mut self, id: usize, r: Rect, x: usize, y: usize, now: Instant) {
        let count = match self.click {
            Some((t, cx, cy, n)) if (cx, cy) == (x, y) && now.duration_since(t) < MULTI_CLICK => n % 3 + 1,
            _ => 1,
        };
        self.click = Some((now, x, y, count));
        if matches!(self.mode, Mode::Visual(_)) {
            self.mode = Mode::Normal;
        }
        if id != self.win.id {
            self.win_enter(id);
            self.enforce_win_size();
        }
        let (line, col) = self.pos_at(x - r.x, y - r.y);
        (self.win.line, self.win.col, self.win.want_set) = (line, col, true);
        if self.mode == Mode::Insert {
            self.win.col = col.min(self.line_chars(line));
        } else {
            self.clamp_normal();
        }
        let pos = (self.win.line, self.win.col);
        match count {
            2 if self.mode != Mode::Insert => {
                if let Some(Obj::Chars(range)) = self.text_object(false, 'w', 1) {
                    self.anchor = self.pos_of(range.start);
                    (self.win.line, self.win.col) = self.pos_of(range.end.saturating_sub(1).max(range.start));
                    self.win.want_set = true;
                    self.mode = Mode::Visual(VKind::Char);
                }
            }
            3 if self.mode != Mode::Insert => {
                self.anchor = (pos.0, 0);
                self.mode = Mode::Visual(VKind::Line);
            }
            _ => {}
        }
        self.drag = Some(Drag::Select { id, rect: r, anchor: if count == 1 { pos } else { self.anchor } });
    }

    fn mouse_drag(&mut self, x: usize, y: usize) {
        match self.drag {
            Some(Drag::Select { id, rect, anchor }) if self.win.id == id => {
                let text = self.text_rows(rect, self.window_ids().len());
                let (cx, cy) = (x.clamp(rect.x, rect.x + rect.w - 1), y.clamp(rect.y, rect.y + text - 1));
                let (mut line, col) = self.pos_at(cx - rect.x, cy - rect.y);
                // Past the top or bottom edge the selection goes on a line.
                if y < rect.y {
                    line = line.saturating_sub(1);
                } else if y >= rect.y + text {
                    line = (line + 1).min(self.line_count() - 1);
                }
                let col = col.min(self.line_chars(line));
                if self.mode == Mode::Normal && (line, col) != anchor && self.mouse_allows('n') {
                    (self.anchor, self.mode) = (anchor, Mode::Visual(VKind::Char));
                }
                if matches!(self.mode, Mode::Visual(_)) {
                    (self.win.line, self.win.col, self.win.want_set) = (line, col, true);
                }
            }
            Some(Drag::Height(id)) => {
                if let Some(&(_, r)) = self.win_rects().iter().find(|(i, _)| *i == id) {
                    self.resize_win(id, false, (y + 1).saturating_sub(r.y));
                }
            }
            Some(Drag::Width(id)) => {
                if let Some(&(_, r)) = self.win_rects().iter().find(|(i, _)| *i == id) {
                    self.resize_win(id, true, x.saturating_sub(r.x));
                }
            }
            _ => {}
        }
    }

    /// Resizes window `id` to `target` rows (`width` false) or columns.
    fn resize_win(&mut self, id: usize, width: bool, target: usize) {
        let rects = self.win_rects();
        let before_status = self.has_status(rects.len());
        self.split.resize(id, &rects, self.win_mins(), width, target);
        self.layout_cur = Some(self.win.id);
        self.layout_changed(&rects, before_status);
        self.layout_cur = None;
    }

    fn mouse_scroll(&mut self, kind: MouseEventKind, x: usize, y: usize) {
        // The wheel over the completion menu moves its selection.
        if self.wild.as_ref().is_some_and(|w| w.menu) {
            if self.mouse_allows('c') && self.menu_hit.iter().any(|h| h.0 == y && (h.1..h.2).contains(&x)) {
                self.wild_cycle(kind == MouseEventKind::ScrollUp);
                self.wild_apply();
            }
            return;
        }
        let flag = match self.mode {
            Mode::Insert => 'i',
            Mode::Visual(_) => 'v',
            Mode::Normal => 'n',
            _ => return,
        };
        if !self.mouse_allows(flag) {
            return;
        }
        let Some((id, _, _)) = self.locate(x, y) else { return };
        let (ver, hor) = parse_scroll(&self.buf.opts.mousescroll).unwrap_or((3, 6));
        self.with_window(id, |e| match kind {
            MouseEventKind::ScrollUp => e.scroll(false, ver, false),
            MouseEventKind::ScrollDown => e.scroll(true, ver, false),
            _ if e.win.opts.wrap => {}
            k => {
                let left = if k == MouseEventKind::ScrollLeft { e.win.left.saturating_sub(hor) } else { e.win.left + hor };
                e.win.left = left;
                // The cursor stays in view: on the first or the last column that shows.
                let tabs = e.buf.opts.tabs();
                let text = e.buf.doc.text().line(e.win.line);
                let cell = graphemes::screen_col(&text, e.win.col, tabs, usize::MAX);
                let width = e.win.text_w;
                if cell < left {
                    e.win.col = col_at_cell(&text, 0, left, tabs, usize::MAX);
                } else if cell >= left + width {
                    e.win.col = col_at_cell(&text, 0, (left + width).saturating_sub(1), tabs, usize::MAX);
                }
            }
        });
    }

    /// A click in command-line mode: on a menu item it completes with it, in the line it puts the cursor there.
    fn mouse_menu_or_line(&mut self, x: usize, y: usize) {
        if self.wild.as_ref().is_some_and(|w| w.menu)
            && let Some(&(_, _, _, idx)) = self.menu_hit.iter().find(|h| h.0 == y && (h.1..h.2).contains(&x))
        {
            if let Some(w) = &mut self.wild {
                w.sel = Some(idx);
            }
            self.wild_apply();
            self.wild = None;
            return;
        }
        // The cursor goes where it was clicked, in the line (its first row when it wraps).
        if y >= self.screen.h {
            self.wild = None;
            let line = self.line_buf().clone();
            let (mut at, mut cell) = (0, 1);
            for g in graphemes::iter(&line) {
                let w = graphemes::width(g, 1);
                if cell + w > x {
                    break;
                }
                cell += w;
                at += g.len();
            }
            self.line_pos = at;
        }
    }
}

/// The part of a window a cell belongs to.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum Part {
    Text,
    Status,
    Bar,
}
