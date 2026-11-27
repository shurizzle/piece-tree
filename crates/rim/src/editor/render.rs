//! Screen layout (`Frame`) and drawing with crossterm.

use std::{
    io::{self, Write},
    mem,
    ops::Range,
    rc::Rc,
    time::{Duration, Instant},
};

use crossterm::{
    cursor::{self, SetCursorStyle},
    queue,
    style::{Attribute, Color, Print, SetAttribute, SetBackgroundColor, SetForegroundColor},
    terminal::{self, ClearType},
};
use unicode_width::UnicodeWidthChar;

use super::{
    Editor, Mode, VKind, graphemes,
    highlight::{self as hl, Attrs},
    layout::{LONG_LINE, Rows},
    messages::Level,
    registers::osc52,
    search, sorted,
    windows::Rect,
};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Style {
    Plain,
    /// Line number of the cursor line (`CursorLineNr`).
    CurrentNumber,
    /// Other line numbers (`LineNr`).
    Number,
    /// Visual selection (`Visual`).
    Reverse,
    /// Search match, hlsearch and incsearch (`Search`).
    Match,
    /// Syntax highlight: what the capture's group draws.
    Syntax(hl::Style),
    /// Status row of the current window (`StatusLine`), of another one (`StatusLineNC`), and the `│` between windows (`VertSplit`).
    Status,
    StatusNc,
    Split,
    /// Message row: errors (`ErrorMsg`), warnings (`WarningMsg`), the mode (`ModeMsg`) and the hit-enter prompt (`MoreMsg`).
    ErrorMsg,
    WarningMsg,
    ModeMsg,
    MoreMsg,
    /// The completion menu: its items, the selected one, the scroll bar and its thumb (`Pmenu`, `PmenuSel`, `PmenuSbar`, `PmenuThumb`), and the one-row menu's selection (`WildMenu`).
    Pmenu,
    PmenuSel,
    PmenuSbar,
    PmenuThumb,
    WildMenu,
}

#[derive(Debug)]
pub struct Span {
    pub style: Style,
    pub text: String,
}

/// One screen: text rows then the status row, cursor cell and shape.
pub struct Frame {
    pub rows: Vec<Vec<Span>>,
    pub cursor: (usize, usize),
    pub bar: bool,
    /// Rows drawn on the cursor line background (`cursorline`); padded to the full width so the
    /// background spans them.
    pub cursor_line: Option<Range<usize>>,
    /// Columns of the current window, where `cursor_line` applies.
    pub cursor_cols: Range<usize>,
    /// The interface groups of `:highlight`, resolved.
    pub ui: hl::Ui,
    /// Text to copy to the system clipboard (OSC 52).
    pub clipboard: Option<String>,
}

/// Rows of one window, its cursor cell and the rows of its cursor line.
struct Pane {
    rows: Vec<Vec<Span>>,
    cursor: (usize, usize),
    cursor_rows: Range<usize>,
}

impl Editor {
    /// Cluster range of `line` inside the Visual selection; `len` stands for the line break.
    fn selection(&self, line: usize) -> Range<usize> {
        if let (Mode::Confirm, Some(c)) = (&self.mode, &self.confirm) {
            let (a, b) = (self.pos_of(c.cur.start), self.pos_of(c.cur.end));
            if line < a.0 || line > b.0 {
                return 0..0;
            }
            let start = if line == a.0 { a.1 } else { 0 };
            return start..if line == b.0 { b.1 } else { self.line_chars(line) + 1 };
        }
        let Mode::Visual(kind) = self.mode else { return 0..0 };
        let (a, b) = sorted(self.anchor, (self.win.line, self.win.col));
        if line < a.0 || line > b.0 {
            return 0..0;
        }
        let len = self.line_chars(line);
        match kind {
            VKind::Line => 0..len + 1,
            VKind::Block => self.block_range(line),
            VKind::Char => {
                let start = if line == a.0 { a.1 } else { 0 };
                let end = if line == b.0 { b.1 + 1 } else { len + 1 };
                start..end
            }
        }
    }

    /// Pattern to highlight: the one being typed (incsearch), else the last search (hlsearch).
    fn highlight(&self) -> Option<Rc<piece_tree::Regex>> {
        match &self.mode {
            Mode::Search(_) => self.inc_search.as_ref().map(|s| s.re.clone()),
            _ if self.hl && self.buf.opts.hlsearch => self.last_search.as_ref().map(|s| s.re.clone()),
            _ => None,
        }
    }

    /// Highlighted ranges per line of `lines` (`search::visible_matches`), kept while the text, the
    /// pattern and the lines stay the same: scrolling aside, most frames only move the cursor.
    fn matches_in(&self, re: &Rc<piece_tree::Regex>, lines: Range<usize>) -> Rc<Vec<Vec<Range<usize>>>> {
        let text = self.buf.doc.text();
        let mut cache = self.win.match_cache.borrow_mut();
        if let Some((t, r, l, m)) = &*cache
            && t.ptr_eq(text)
            && Rc::ptr_eq(r, re)
            && *l == lines
        {
            return m.clone();
        }
        let m = Rc::new(search::visible_matches(text, re, lines.clone()));
        *cache = Some((text.clone(), re.clone(), lines, m.clone()));
        m
    }

    /// Wrap width of the last frame, `usize::MAX` without `wrap` (a line is then one row).
    fn wrap_w(&self) -> usize {
        if self.win.opts.wrap { self.win.text_w } else { usize::MAX }
    }

    /// Runs `f` on line `n` and its rows. The rows of the cursor line and of huge lines are kept between
    /// calls, so only what an edit changed is laid out again; `f` must not ask for rows again.
    pub(super) fn with_rows<R>(&self, n: usize, f: impl FnOnce(&str, &mut Rows) -> R) -> R {
        let (w, ts) = (self.wrap_w(), self.buf.opts.tabstop);
        let text = self.buf.doc.text();
        if w != usize::MAX {
            let mut layouts = self.win.layout.borrow_mut();
            if let Some((line, rows)) = layouts.cached(text, n, w, ts) {
                return f(line, rows);
            }
            let line = text.line(n);
            if n == self.win.line || line.len() >= LONG_LINE {
                let (line, rows) = layouts.sync(&line, text, n, w, ts);
                return f(line, rows);
            }
            drop(layouts);
            return f(&line, &mut Rows::new(w, ts));
        }
        f(&text.line(n), &mut Rows::new(w, ts))
    }

    /// Screen rows of line `n` at the last frame's width, counted up to `cap` (at least 1).
    pub(super) fn height_to(&self, n: usize, cap: usize) -> usize {
        if self.wrap_w() == usize::MAX { 1 } else { self.with_rows(n, |l, r| r.height_to(l, cap)) }
    }

    /// Last line shown whole on the screen (the top line when it alone does not fit).
    pub(super) fn bottom_line(&self) -> usize {
        let last = self.line_count() - 1;
        let (mut used, mut bottom) = (0, self.win.top.min(last));
        for n in self.win.top..=last {
            used += self.height_to(n, self.win.rows + 1).saturating_sub(if n == self.win.top { self.win.top_sub } else { 0 });
            if used > self.win.rows {
                break;
            }
            bottom = n;
        }
        bottom
    }

    /// Screen row of the cursor inside its line and its cell column inside that row.
    pub(super) fn cursor_row(&self) -> (usize, usize) {
        self.with_rows(self.win.line, |line, rows| {
            let k = rows.row_of(line, self.win.col);
            let (start, seg) = rows.row(line, k);
            (k, graphemes::screen_col(seg, self.win.col - start, self.buf.opts.tabstop))
        })
    }

    /// Moves `n` screen rows down or up from row `k` of `line`, stopping at the text edges. Going up
    /// into a line needs its last row, so the whole line is laid out (once; the cursor line is kept).
    pub(super) fn step_rows(&self, mut line: usize, mut k: usize, down: bool, mut n: usize) -> (usize, usize) {
        while n > 0 {
            if down {
                let below = self.height_to(line, k + n + 1) - 1 - k;
                if n <= below {
                    return (line, k + n);
                }
                if line + 1 >= self.line_count() {
                    return (line, k + below);
                }
                (n, line, k) = (n - below - 1, line + 1, 0);
            } else {
                if n <= k {
                    return (line, k - n);
                }
                if line == 0 {
                    return (0, 0);
                }
                (n, line) = (n - k - 1, line - 1);
                k = self.height_to(line, usize::MAX) - 1;
            }
        }
        (line, k)
    }

    /// Cluster index in row `k` of `line` at cell column `x`; a row that is not the last never ends past its last cluster.
    pub(super) fn col_at(&self, line: usize, k: usize, x: usize) -> usize {
        let ts = self.buf.opts.tabstop;
        self.with_rows(line, |text, rows| {
            rows.ensure(text, k);
            let (start, seg) = rows.row(text, k);
            let (mut cx, mut idx) = (0, 0);
            for g in graphemes::iter(seg) {
                let cw = graphemes::width(g, ts);
                if cx + cw > x {
                    break;
                }
                cx += cw;
                idx += 1;
            }
            let max = if k + 1 < rows.len() { idx.min(graphemes::count(seg).saturating_sub(1)) } else { idx };
            start + max
        })
    }

    /// Lays out the current window's `w`×`h` text rows and scrolls to keep the cursor visible;
    /// `active` draws the selection and the cursor line.
    fn window_rows(&mut self, w: usize, h: usize, active: bool) -> Pane {
        let w = w.max(1);
        self.win.rows = h.max(1);
        let ts = self.buf.opts.tabstop;

        let text = self.buf.doc.text().clone();
        let wrap = self.win.opts.wrap;
        let (nu, rnu) = (self.win.opts.number, self.win.opts.relativenumber);
        let gutter = if nu || rnu { gutter_width(self.line_count()) } else { 0 };
        let text_w = w.saturating_sub(gutter).max(1);
        self.win.text_w = text_w;

        // Heights are capped: only whether a line fits matters, and a line is laid out no further.
        // The top line also counts the rows scrolled off its top.
        let cap = self.win.rows + 1;
        let (mut top, mut top_sub) = (self.win.top, self.win.top_sub);
        // scrolloff: lines kept above and below the cursor line, at most half the screen.
        let so = self.scrolloff();
        let below = (self.win.line + so).min(text.line_count() - 1);
        if self.win.line < top + so {
            (top, top_sub) = (self.win.line.saturating_sub(so).min(top), 0);
        } else {
            // Every line takes at least one row, so `top` cannot be above this; then drop rows until
            // the cursor line and the `scrolloff` lines below it fit.
            let t = top.max((below + 1).saturating_sub(self.win.rows));
            if t != top {
                (top, top_sub) = (t, 0);
            }
            let mut used = (top..=below).map(|n| self.height_to(n, cap + if n == top { top_sub } else { 0 })).sum::<usize>();
            used = used.saturating_sub(top_sub);
            while used > self.win.rows && top < self.win.line {
                used -= self.height_to(top, cap + top_sub).saturating_sub(top_sub);
                (top, top_sub) = (top + 1, 0);
            }
        }
        let (kc, cx) = self.cursor_row();
        if top == self.win.line {
            // A cursor line taller than the screen scrolls by rows inside itself, but not past its end.
            if kc < top_sub {
                top_sub = kc;
            } else if kc >= top_sub + self.win.rows {
                top_sub = kc + 1 - self.win.rows;
            }
            top_sub = top_sub.min(self.height_to(self.win.line, top_sub + self.win.rows).saturating_sub(self.win.rows));
        }
        (self.win.top, self.win.top_sub) = (top, top_sub);
        if wrap {
            self.win.left = 0;
        } else {
            let line = text.line(self.win.line);
            let b = graphemes::byte_of(&line, self.win.col);
            let cw = if b < line.len() { graphemes::width(&line[b..graphemes::next(&line, b)], ts) } else { 1 };
            if cx < self.win.left {
                self.win.left = cx;
            } else if cx + cw > self.win.left + text_w {
                self.win.left = (cx + cw).saturating_sub(text_w);
            }
        }

        let hl = self.highlight();
        let visible = self.win.top..(self.win.top + self.win.rows).min(text.line_count());
        let syntax = self.syntax_lines(visible.clone());
        let matches = hl.map_or_else(Default::default, |re| self.matches_in(&re, visible));
        let mut rows: Vec<Vec<Span>> = Vec::new();
        let mut cursor = (0, 0);
        let mut cursor_rows = 0..0;
        let mut n = self.win.top;
        while rows.len() < self.win.rows {
            if n >= text.line_count() {
                rows.push(Vec::new());
                continue;
            }
            let skip = if n == self.win.top { self.win.top_sub } else { 0 };
            let want = self.win.rows - rows.len();
            let sel = if active { self.selection(n) } else { 0..0 };
            let matches = matches.get(n - self.win.top).map_or(&[][..], Vec::as_slice);
            let syntax = syntax.get(n - self.win.top).map_or(&[][..], Vec::as_slice);
            let style_at = |i: usize| {
                if sel.contains(&i) {
                    Style::Reverse
                } else if matches.get(matches.partition_point(|r| r.end <= i)).is_some_and(|r| r.start <= i) {
                    Style::Match
                } else {
                    syntax.get(i).copied().flatten().map_or(Style::Plain, Style::Syntax)
                }
            };
            let first_row = rows.len();
            self.with_rows(n, |s, r| {
                r.ensure(s, skip + want - 1);
                if n == self.win.line {
                    let x = if wrap { cx.min(text_w - 1) } else { cx - self.win.left };
                    cursor = (gutter + x, (rows.len() + kc.saturating_sub(skip)).min(self.win.rows - 1));
                }
                for k in skip..(skip + want).min(r.len()) {
                    let (start, seg) = r.row(s, k);
                    let mut spans = Vec::new();
                    if gutter > 0 {
                        if k == 0 {
                            let style = if n == self.win.line { Style::CurrentNumber } else { Style::Number };
                            let number = format!("{:>width$} ", line_number(n, self.win.line, nu, rnu), width = gutter - 1);
                            spans.push(Span { style, text: number });
                        } else {
                            spans.push(Span { style: Style::Plain, text: " ".repeat(gutter) });
                        }
                    }
                    let last = r.done() && k + 1 == r.len();
                    spans.extend(row_spans(seg, |i| style_at(start + i), self.win.left, text_w, ts, last, self.win.opts.list));
                    if active && n == self.win.line && self.win.opts.cursorline {
                        // Explicit padding: erasing with a background color is not portable (no BCE everywhere).
                        let used: usize = spans.iter().map(|s| str_width(&s.text)).sum();
                        if used < w {
                            spans.push(Span { style: Style::Plain, text: " ".repeat(w - used) });
                        }
                    }
                    rows.push(spans);
                }
            });
            if n == self.win.line {
                cursor_rows = first_row..rows.len();
            }
            n += 1;
        }

        Pane { rows, cursor, cursor_rows }
    }

    /// Status row of the current window when there are several.
    fn window_status(&self) -> String {
        format!(
            " {}{} | Ln {}, Col {} | {}",
            self.buf.name(),
            if self.is_dirty() { " [+]" } else { "" },
            self.win.line + 1,
            self.win.col + 1,
            self.buf.doc.eol(),
        )
    }

    /// Lays out a `w`×`h` screen: the windows, then the status or command row.
    pub fn frame(&mut self, w: usize, h: usize) -> Frame {
        let w = w.max(1);
        let area = Rect { x: 0, y: 0, w, h: h.saturating_sub(1).max(1) };
        self.screen = area;
        self.cols = w;
        self.screen_drawn = true;
        let mut rects = Vec::new();
        self.split.rects(area, &|id| self.fixed_size(id), self.win_mins(), &mut rects);
        let single = rects.len() == 1;
        // `laststatus`: a status row per window, never, only with several windows, or always.
        let has_status = self.has_status(rects.len());
        // Each screen row: segments by column, each exactly as wide as its window.
        let mut grid: Vec<Vec<(usize, Vec<Span>)>> = (0..area.h).map(|_| Vec::new()).collect();
        let mut put = |x: usize, y: usize, spans: Vec<Span>| {
            if let Some(row) = grid.get_mut(y) {
                row.push((x, spans));
            }
        };
        let (mut cursor, mut cursor_rows, mut cursor_cols) = ((0, 0), 0..0, 0..w);
        for (id, r) in rects {
            let text_h = if has_status { r.h.saturating_sub(1).max(1) } else { r.h };
            let active = id == self.win.id;
            let (pane, status) = if active {
                (self.window_rows(r.w, text_h, true), self.window_status())
            } else {
                self.with_window(id, |e| (e.window_rows(r.w, text_h, false), e.window_status()))
            };
            if active {
                cursor = (r.x + pane.cursor.0, r.y + pane.cursor.1);
                cursor_rows = r.y + pane.cursor_rows.start..r.y + pane.cursor_rows.end;
                cursor_cols = r.x..r.x + r.w;
            }
            for (i, mut spans) in pane.rows.into_iter().enumerate() {
                // One window needs no padding: rows are cleared to their end.
                if !single {
                    let used: usize = spans.iter().map(|s| str_width(&s.text)).sum();
                    if used < r.w {
                        spans.push(Span { style: Style::Plain, text: " ".repeat(r.w - used) });
                    }
                }
                put(r.x, r.y + i, spans);
            }
            if has_status {
                let style = if active { Style::Status } else { Style::StatusNc };
                put(r.x, r.y + text_h, vec![Span { style, text: fit(&status, r.w) }]);
            }
            if r.x + r.w < w {
                for y in r.y..r.y + r.h {
                    put(r.x + r.w, y, vec![Span { style: Style::Split, text: "│".into() }]);
                }
            }
        }
        self.cursor_cell = cursor;
        let mut rows: Vec<Vec<Span>> = grid
            .into_iter()
            .map(|mut segs| {
                segs.sort_by_key(|(x, _)| *x);
                segs.into_iter().flat_map(|(_, s)| s).collect()
            })
            .collect();
        let input = match &self.mode {
            // The lines of a here document have no `:` (`getexline` with no first character).
            Mode::Command(s) if self.scripts.pending_here.is_some() || self.scripts.pending_func.is_some() || self.scripts.pending_append.is_some() => Some((s.clone(), self.line_pos)),
            Mode::Command(s) => Some((format!(":{s}"), 1 + self.line_pos)),
            Mode::Search(s) => Some((format!("{}{s}", if self.search_back { '?' } else { '/' }), 1 + self.line_pos)),
            Mode::Expr(s) => Some((format!("={s}"), 1 + self.line_pos)),
            _ => None,
        };
        let (cmd_rows, cursor, bar) = if let Some((input, upto)) = input {
            // The line wraps onto the rows above the last one, which the windows give up.
            let (row, x) = wrap_cursor(&input[..upto], w);
            let mut lines = wrap(&input, w);
            lines.resize(lines.len().max(row + 1), String::new());
            let n = lines.len();
            let cmd_rows: Vec<Vec<Span>> = lines.into_iter().map(|text| vec![Span { style: Style::Plain, text }]).collect();
            (cmd_rows, (x, area.h + 1 - n + row), true)
        } else {
            (vec![self.message_row(w, has_status)], cursor, self.mode == Mode::Insert)
        };
        rows.truncate(rows.len().saturating_sub(cmd_rows.len() - 1));
        let cmd_start = rows.len();
        rows.extend(cmd_rows);
        for (y, x, spans) in self.wild_draw(w, cmd_start) {
            overlay(&mut rows[y], x, spans);
        }
        let (mut cursor, mut bar) = (cursor, bar);
        // A message of several rows (or one wider than the screen) covers the bottom of the screen
        // and waits for a key, like vim's hit-enter prompt.
        let lines: Vec<(String, Style)> = if self.msgs.text().is_empty() {
            Vec::new()
        } else {
            self.msgs.text().split('\n').enumerate().flat_map(|(i, part)| {
                let style = msg_style(self.msgs.line_level(i));
                wrap(&msg_cells(part), w).into_iter().map(move |l| (l, style))
            }).collect()
        };
        if lines.len() > 1 && !self.msgs.hint && !matches!(self.mode, Mode::Command(_) | Mode::Search(_) | Mode::Expr(_) | Mode::Confirm) {
            (self.msgs.hit_enter, self.msgs.prompt) = (true, self.buf.opts.msg_hit_enter);
            let total = rows.len();
            if self.buf.opts.more && lines.len() + 1 > total {
                // Taller than the screen: a pager shows a page at a time (keys in `Editor::pager_key`).
                let page = total - 1;
                let top = self.msgs.pager.unwrap_or(0).min(lines.len() - page);
                (self.msgs.pager, self.msgs.page, self.msgs.total, self.msgs.prompt) = (Some(top), page, lines.len(), true);
                rows.clear();
                rows.extend(lines[top..top + page].iter().map(|(l, style)| vec![Span { style: *style, text: l.clone() }]));
                let prompt = if top + page >= lines.len() { "Press ENTER or type command to continue" } else { "-- More --" };
                rows.push(vec![Span { style: Style::MoreMsg, text: fit(prompt, w) }]);
                (cursor, bar) = ((str_width(prompt).min(w - 1), rows.len() - 1), false);
            } else {
                self.msgs.pager = None;
                // shortcut: with `nomore` output taller than the screen shows its last rows, when someone needs them cut differently
                rows.pop();
                let prompt = usize::from(self.msgs.prompt);
                let keep = (rows.len() + 1 - prompt).min(lines.len());
                rows.truncate((rows.len() + 1).saturating_sub(keep + prompt));
                rows.extend(lines[lines.len() - keep..].iter().map(|(l, style)| vec![Span { style: *style, text: l.clone() }]));
                if !self.msgs.prompt {
                    let wait = self.buf.opts.msg_wait.unwrap_or(0);
                    self.msgs.deadline.get_or_insert_with(|| Instant::now() + Duration::from_millis(wait as u64));
                } else {
                    let prompt = "Press ENTER or type command to continue";
                    rows.push(vec![Span { style: Style::MoreMsg, text: fit(prompt, w) }]);
                    (cursor, bar) = ((str_width(prompt).min(w - 1), rows.len() - 1), false);
                }
            }
        }
        Frame {
            rows,
            cursor,
            bar,
            cursor_line: self.win.opts.cursorline.then_some(cursor_rows),
            cursor_cols,
            ui: hl::Ui::new(&self.hl_groups, self.buf.opts.env()),
            clipboard: self.regs.clipboard.take(),
        }
    }

    /// The message row when no command line is being typed: the message, or the mode and the
    /// recording register, with the pending keys and the cursor position on the right.
    fn message_row(&self, w: usize, has_status: bool) -> Vec<Span> {
        let o = &self.buf.opts;
        let (style, left) = if self.msgs.text().is_empty() {
            let mode = match self.mode {
                Mode::Insert if self.replacing.is_some() => "-- REPLACE --",
                Mode::Insert => "-- INSERT --",
                Mode::Visual(VKind::Char) => "-- VISUAL --",
                Mode::Visual(VKind::Line) => "-- VISUAL LINE --",
                Mode::Visual(VKind::Block) => "-- VISUAL BLOCK --",
                _ => "",
            };
            let rec = self.recording.map_or_else(String::new, |r| format!("recording @{r}"));
            (Style::ModeMsg, if o.showmode { format!("{mode}{rec}") } else { String::new() })
        } else {
            (msg_style(self.msgs.level()), msg_cells(self.msgs.text()))
        };
        let ruler = if has_status { String::new() } else { format!("Ln {}, Col {}", self.win.line + 1, self.win.col + 1) };
        let keys = if o.showcmd { self.pending.as_str() } else { "" };
        let right = if ruler.is_empty() && keys.is_empty() { String::new() } else { format!("{keys:<10} {ruler}") };
        let (lw, rw) = (str_width(&left), str_width(&right));
        let mut spans = Vec::new();
        if lw + 1 + rw <= w && rw > 0 {
            spans.push(Span { style, text: left });
            spans.push(Span { style: Style::Plain, text: " ".repeat(w - lw - rw) });
            spans.push(Span { style: Style::Plain, text: right });
        } else {
            spans.push(Span { style, text: fit(&left, w) });
        }
        spans
    }

    /// The completion menu or the list of matches, as `(row, column, spans)` to lay over the rows
    /// of the frame; `cmd_start` is the first row of the command line.
    fn wild_draw(&mut self, w: usize, cmd_start: usize) -> Vec<(usize, usize, Vec<Span>)> {
        let o = &self.buf.opts;
        let (pum, pumheight, pumwidth) = (o.wildoptions.split(',').any(|x| x == "pum"), o.pumheight, o.pumwidth);
        self.menu_hit.clear();
        let Mode::Command(line) = &self.mode else { return Vec::new() };
        let Some(wi) = self.wild.as_mut().filter(|wi| (wi.menu || wi.list) && cmd_start > 0) else { return Vec::new() };
        let x_word = 1 + str_width(&line[..wi.start().min(line.len())]);
        let pad = |s: &str, n: usize| {
            let t = fit(s, n);
            format!("{t}{}", " ".repeat(n.saturating_sub(str_width(&t))))
        };
        let n = wi.items.len();
        if wi.list {
            let rows = super::wild::list_rows(&wi.items, w, cmd_start);
            let k = rows.len();
            return rows.into_iter().enumerate().map(|(i, r)| (cmd_start - k + i, 0, vec![Span { style: Style::Plain, text: pad(&r, w) }])).collect();
        }
        if !pum {
            // One row above the command line: the items side by side, the selected one marked.
            let (y, room) = (cmd_start - 1, w.saturating_sub(4));
            let width = |i: usize| str_width(&wi.items[i]) + 2;
            if let Some(s) = wi.sel {
                wi.top = wi.top.min(s);
                while wi.top < s && (wi.top..=s).map(width).sum::<usize>() > room {
                    wi.top += 1;
                }
            }
            let mut hits = Vec::new();
            let mut spans = vec![Span { style: Style::Status, text: if wi.top > 0 { "< ".into() } else { "  ".into() } }];
            let (mut used, mut last) = (0, wi.top);
            for i in wi.top..n {
                if used + width(i) > room && i > wi.top {
                    break;
                }
                let style = if wi.sel == Some(i) { Style::WildMenu } else { Style::Status };
                let item = &wi.items[i];
                let text = if str_width(item) > room { fit(item, room) } else { item.clone() };
                let x0: usize = spans.iter().map(|s| str_width(&s.text)).sum();
                hits.push((y, x0, x0 + str_width(&text), i));
                spans.push(Span { style, text });
                spans.push(Span { style: Style::Status, text: "  ".into() });
                used += width(i);
                last = i + 1;
            }
            let have: usize = spans.iter().map(|s| str_width(&s.text)).sum();
            spans.push(Span { style: Style::Status, text: pad(if last < n { ">" } else { "" }, w.saturating_sub(have)) });
            self.menu_hit = hits;
            return vec![(y, 0, spans)];
        }
        // The popup: above the command line, from the column of the word, scrolled to the selection.
        let h = n.min(if pumheight > 0 { pumheight } else { cmd_start }).min(cmd_start).max(1);
        if let Some(s) = wi.sel {
            if s < wi.top {
                wi.top = s;
            } else if s >= wi.top + h {
                wi.top = s + 1 - h;
            }
        }
        wi.top = wi.top.min(n - h);
        let widest = wi.items.iter().map(|i| str_width(i)).max().unwrap_or(0);
        let bar = n > h;
        let body = (widest + 2).max(pumwidth).min(w.saturating_sub(usize::from(bar)).max(1));
        let width = body + usize::from(bar);
        let x = if x_word + width > w { w.saturating_sub(width) } else { x_word };
        let thumb_len = (h * h / n).max(1);
        let thumb = if n > h { wi.top * (h - thumb_len) / (n - h) } else { 0 };
        let hits: Vec<_> = (0..h).map(|i| (cmd_start - h + i, x, x + body, wi.top + i)).collect();
        self.menu_hit = hits;
        (0..h)
            .map(|i| {
                let idx = wi.top + i;
                let style = if wi.sel == Some(idx) { Style::PmenuSel } else { Style::Pmenu };
                let mut spans = vec![Span { style, text: pad(&format!(" {} ", wi.items[idx]), body) }];
                if bar {
                    let on = (thumb..thumb + thumb_len).contains(&i);
                    spans.push(Span { style: if on { Style::PmenuThumb } else { Style::PmenuSbar }, text: " ".into() });
                }
                (cmd_start - h + i, x, spans)
            })
            .collect()
    }

    pub fn render(&mut self, out: &mut impl Write) -> io::Result<()> {
        let (w, h) = terminal::size()?;
        draw(&self.frame(w.into(), h.into()), out)
    }
}

const ATTRIBUTES: [(Attrs, Attribute); 6] = [
    (Attrs::BOLD, Attribute::Bold),
    (Attrs::ITALIC, Attribute::Italic),
    (Attrs::UNDERLINE, Attribute::Underlined),
    (Attrs::UNDERCURL, Attribute::Undercurled),
    (Attrs::STRIKETHROUGH, Attribute::CrossedOut),
    (Attrs::REVERSE, Attribute::Reverse),
];

fn color(c: hl::Color) -> Color {
    match c {
        hl::Color::Ansi(n) => Color::AnsiValue(n),
        hl::Color::Rgb(r, g, b) => Color::Rgb { r, g, b },
    }
}

pub(super) fn draw(f: &Frame, out: &mut impl Write) -> io::Result<()> {
    let ui = f.ui;
    if let Some(text) = &f.clipboard {
        queue!(out, Print(osc52(text)))?;
    }
    queue!(out, cursor::Hide)?;
    for (y, spans) in f.rows.iter().enumerate() {
        queue!(out, cursor::MoveTo(0, y as u16))?;
        // The cells the row is cleared to take `Normal`'s background.
        if let Some(c) = ui.normal.bg {
            queue!(out, SetBackgroundColor(color(c)))?;
        }
        queue!(out, terminal::Clear(ClearType::UntilNewLine))?;
        let mut x = 0;
        for s in spans {
            let line_bg = f.cursor_line.as_ref().is_some_and(|r| r.contains(&y)) && f.cursor_cols.contains(&x);
            x += str_width(&s.text);
            let st = match s.style {
                Style::Plain => hl::Style::default(),
                Style::CurrentNumber => ui.cursor_line_nr,
                Style::Number => ui.line_nr,
                Style::Reverse => ui.visual,
                Style::Match => ui.search,
                Style::Syntax(st) => st,
                Style::Status => ui.status,
                Style::StatusNc => ui.status_nc,
                Style::Split => ui.split,
                Style::ErrorMsg => ui.error_msg,
                Style::WarningMsg => ui.warning_msg,
                Style::ModeMsg => ui.mode_msg,
                Style::MoreMsg => ui.more_msg,
                Style::Pmenu => ui.pmenu,
                Style::PmenuSel => ui.pmenu_sel,
                Style::PmenuSbar => ui.pmenu_sbar,
                Style::PmenuThumb => ui.pmenu_thumb,
                Style::WildMenu => ui.wild_menu,
            };
            // A span's own background (matches) wins over the cursor line's, which wins over `Normal`'s.
            let fg = st.fg.or(ui.normal.fg);
            let bg = st.bg.or(if line_bg { ui.cursor_line.bg } else { None }).or(ui.normal.bg);
            // `Attribute::Reset` also clears colors, so they are set after it.
            queue!(out, SetAttribute(Attribute::Reset))?;
            for (a, attr) in ATTRIBUTES {
                if st.attrs.has(a) {
                    queue!(out, SetAttribute(attr))?;
                }
            }
            if let Some(c) = fg {
                queue!(out, SetForegroundColor(color(c)))?;
            }
            if let Some(c) = bg {
                queue!(out, SetBackgroundColor(color(c)))?;
            }
            queue!(out, Print(&s.text), SetAttribute(Attribute::Reset))?;
        }
    }
    let shape = if f.bar { SetCursorStyle::SteadyBar } else { SetCursorStyle::SteadyBlock };
    queue!(out, cursor::MoveTo(f.cursor.0 as u16, f.cursor.1 as u16), shape, cursor::Show)?;
    out.flush()
}

/// Columns taken by line numbers for a text of `lines` lines: digits plus one space.
pub(super) fn gutter_width(lines: usize) -> usize {
    lines.ilog10() as usize + 2
}

/// vim `number`/`relativenumber`: both → absolute on the cursor line and distances elsewhere
/// (counts for `j`/`k`/`dj` read off the gutter); `number` → absolute; `relativenumber` → distances,
/// `0` on the cursor line. Distances never exceed `line_count`, so `gutter_width` still fits.
pub(super) fn line_number(line: usize, cursor: usize, nu: bool, rnu: bool) -> usize {
    if !rnu || (nu && line == cursor) { line + 1 } else { line.abs_diff(cursor) }
}

/// Screen cells of a char alone: tabs `ts`, control chars 1 (drawn as `?`), others by unicode-width
/// (0 for a combining mark; `graphemes::width` gives a cluster at least 1).
pub(super) fn cell_width(c: char, ts: usize) -> usize {
    match c {
        '\t' => ts,
        // ASCII is one cell, control chars included (drawn as `?`).
        c if c.is_ascii() => 1,
        // The common wide chars (ideographs, kana, Hangul syllables) without the table lookup: it is
        // what a long CJK line pays per char (`wide_fast_path_agrees_with_unicode_width` checks the ranges).
        '\u{4E00}'..='\u{9FFF}' | '\u{3041}'..='\u{3096}' | '\u{30A1}'..='\u{30FA}' | '\u{AC00}'..='\u{D7A3}' => 2,
        c if c.is_control() => 1,
        c => c.width().unwrap_or(1),
    }
}

/// Cells of `line` between screen columns `left` and `left + width`, styled per cluster.
/// Tabs expand to spaces (`>` then spaces with `list`), control chars show as `?`, a cluster of no
/// width (a lone combining mark) is drawn on a space, and a wide cluster cut by the edge shows as
/// spaces.
#[allow(clippy::too_many_arguments)]
fn row_spans(line: &str, style_at: impl Fn(usize) -> Style, left: usize, width: usize, ts: usize, last: bool, list: bool) -> Vec<Span> {
    let mut spans: Vec<Span> = Vec::new();
    let (mut x, mut i) = (0, 0);
    let right = left + width;
    // One cell or cluster at `x` of `cw` cells; false once past the right edge.
    let mut put = |i: usize, x0: usize, cw: usize, glyph: Glyph| {
        let x1 = x0 + cw;
        if x0 >= right {
            return false;
        }
        let (start, end) = (x0.max(left), x1.min(right));
        if start >= end {
            return true;
        }
        let style = style_at(i);
        if spans.last().is_none_or(|s| s.style != style) {
            spans.push(Span { style, text: String::new() });
        }
        let out = &mut spans.last_mut().expect("just pushed").text;
        let whole = start == x0 && end == x1;
        match glyph {
            Glyph::Tab if list => {
                // The tab's first cell is `>`, even when the left edge cuts the tab.
                out.push(if start == x0 { '>' } else { ' ' });
                out.extend(std::iter::repeat_n(' ', end - start - 1));
            }
            Glyph::Char(c) if whole => out.push(if c.is_control() { '?' } else { c }),
            Glyph::Str(g) if whole => match g.chars().next() {
                Some(c) if c.is_control() => out.push('?'),
                Some(c) if g.len() == c.len_utf8() && cell_width(c, ts) == 0 => {
                    out.push(' ');
                    out.push_str(g);
                }
                _ => out.push_str(g),
            },
            _ => out.extend(std::iter::repeat_n(' ', end - start)),
        }
        true
    };
    'line: for (a, e, _, run) in graphemes::spans_in(line, 0, usize::MAX) {
        if run {
            // Chars of a run are clusters of one char: one decode each.
            for c in line[a..e].chars() {
                let (cw, glyph) = if c == '\t' { (ts, Glyph::Tab) } else { (cell_width(c, ts).max(1), Glyph::Char(c)) };
                if !put(i, x, cw, glyph) {
                    break 'line;
                }
                (x, i) = (x + cw, i + 1);
            }
        } else {
            let g = &line[a..e];
            let cw = graphemes::width(g, ts);
            if !put(i, x, cw, Glyph::Str(g)) {
                break;
            }
            (x, i) = (x + cw, i + 1);
        }
    }
    // The line break shows as one cell after the last row of the line when selected, or as `$` with `list`.
    if last && x < right {
        if list {
            put(i, x, 1, Glyph::Str("$"));
        } else if style_at(i) == Style::Reverse {
            put(i, x, 1, Glyph::Char(' '));
        }
    }
    spans
}

/// What `row_spans` draws for a cluster.
enum Glyph<'a> {
    Tab,
    Char(char),
    Str(&'a str),
}

/// Width of `s` as `fit` draws it (a tab as one cell, like a control char).
fn str_width(s: &str) -> usize {
    // ASCII, control chars and tabs included, is one cell per byte here.
    if s.is_ascii() { s.len() } else { graphemes::iter(s).map(|g| graphemes::width(g, 1)).sum() }
}

/// The spans of `row` between columns `from` and `to` (a wide cluster cut by an edge becomes spaces).
fn take_cols(row: &[Span], from: usize, to: usize) -> Vec<Span> {
    let (mut out, mut x) = (Vec::new(), 0);
    for s in row {
        let mut text = String::new();
        for g in graphemes::iter(&s.text) {
            let cw = graphemes::width(g, 1);
            let (a, b) = (x.max(from), (x + cw).min(to));
            if a < b {
                if b - a == cw { text.push_str(g) } else { text.push_str(&" ".repeat(b - a)) }
            }
            x += cw;
        }
        if !text.is_empty() {
            out.push(Span { style: s.style, text });
        }
    }
    out
}

/// Puts `spans` over the cells of `row` from column `x`.
fn overlay(row: &mut Vec<Span>, x: usize, spans: Vec<Span>) {
    let w: usize = spans.iter().map(|s| str_width(&s.text)).sum();
    let mut left = take_cols(row, 0, x);
    let have: usize = left.iter().map(|s| str_width(&s.text)).sum();
    if have < x {
        left.push(Span { style: Style::Plain, text: " ".repeat(x - have) });
    }
    let right = take_cols(row, x + w, usize::MAX);
    *row = left.into_iter().chain(spans).chain(right).collect();
}

/// `s` cut or padded to exactly `w` cells; control chars become `?`.
pub(super) fn fit(s: &str, w: usize) -> String {
    let (mut out, mut x) = (String::new(), 0);
    for g in graphemes::iter(s) {
        let cw = graphemes::width(g, 1);
        if x + cw > w {
            break;
        }
        x += cw;
        match g.chars().next() {
            Some(c) if c.is_control() => out.push('?'),
            _ => out.push_str(g),
        }
    }
    out.extend(std::iter::repeat_n(' ', w - x));
    out
}

/// Row and column where the cursor lands after `s` laid out by `wrap` (past a full row it is at the start of the next).
fn wrap_cursor(s: &str, w: usize) -> (usize, usize) {
    let (mut row, mut x) = (0, 0);
    for g in graphemes::iter(s) {
        let cw = graphemes::width(g, 1);
        if x + cw > w && x > 0 {
            (row, x) = (row + 1, 0);
        }
        x += cw;
    }
    if x >= w { (row + 1, 0) } else { (row, x) }
}

/// A line of a message as the screen shows it (`msg_puts_display`): a tab goes to the next multiple of 8
/// columns, a carriage return back to column 0, where the next text overwrites.
fn msg_cells(line: &str) -> String {
    if !line.contains(['\t', '\r']) {
        return line.to_string();
    }
    let mut cells: Vec<char> = Vec::new();
    let mut col = 0;
    for c in line.chars() {
        match c {
            '\t' => {
                let to = (col / 8 + 1) * 8;
                while col < to {
                    if col >= cells.len() {
                        cells.push(' ');
                    }
                    col += 1;
                }
            }
            '\r' => col = 0,
            c => {
                if col < cells.len() {
                    cells[col] = c;
                } else {
                    cells.push(c);
                }
                col += 1;
            }
        }
    }
    cells.into_iter().collect()
}

fn msg_style(level: Level) -> Style {
    match level {
        Level::Info => Style::Plain,
        Level::Warning => Style::WarningMsg,
        Level::Error => Style::ErrorMsg,
    }
}

/// `s` cut into rows of at most `w` columns: at every newline and when a row is full.
fn wrap(s: &str, w: usize) -> Vec<String> {
    let mut out = Vec::new();
    for line in s.split('\n') {
        let (mut row, mut x) = (String::new(), 0);
        for g in graphemes::iter(line) {
            let cw = graphemes::width(g, 1);
            if x + cw > w && !row.is_empty() {
                out.push(mem::take(&mut row));
                x = 0;
            }
            x += cw;
            match g.chars().next() {
                Some(c) if c.is_control() => row.push('?'),
                _ => row.push_str(g),
            }
        }
        out.push(row);
    }
    out
}
