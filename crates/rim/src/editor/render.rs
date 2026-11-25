//! Screen layout (`Frame`) and drawing with crossterm.

use std::{
    io::{self, Write},
    ops::Range,
    rc::Rc,
};

use crossterm::{
    cursor::{self, SetCursorStyle},
    queue,
    style::{Attribute, Color, Print, SetAttribute, SetBackgroundColor, SetForegroundColor},
    terminal::{self, ClearType},
};
use unicode_width::UnicodeWidthChar;

use super::{Editor, Mode, VKind, windows::Rect, layout::{LONG_LINE, Rows}, options::Palette, registers::osc52, search, sorted};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Style {
    Plain,
    /// Line number of the cursor line.
    CurrentNumber,
    /// Other line numbers.
    Number,
    /// Visual selection.
    Reverse,
    /// Search match (hlsearch, incsearch).
    Match,
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
    pub palette: Palette,
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
    /// Char range of `line` inside the Visual selection; `len` stands for the line break.
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
            VKind::Block => {
                let (c0, c1) = self.block_cols();
                if self.win.want_col == usize::MAX { c0..len.max(c0) } else { c0..c1 + 1 }
            }
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
            _ if self.hl => self.last_search.as_ref().map(|s| s.re.clone()),
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
        if self.buf.opts.wrap { self.win.text_w } else { usize::MAX }
    }

    /// Runs `f` on line `n` and its rows. The rows of the cursor line and of huge lines are kept between
    /// calls, so only what an edit changed is laid out again; `f` must not ask for rows again.
    fn with_rows<R>(&self, n: usize, f: impl FnOnce(&str, &mut Rows) -> R) -> R {
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
            (k, screen_col(seg, self.win.col - start, self.buf.opts.tabstop))
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

    /// Char index in row `k` of `line` at cell column `x`; a row that is not the last never ends past its last char.
    pub(super) fn col_at(&self, line: usize, k: usize, x: usize) -> usize {
        let ts = self.buf.opts.tabstop;
        self.with_rows(line, |text, rows| {
            rows.ensure(text, k);
            let (start, seg) = rows.row(text, k);
            let (mut cx, mut idx) = (0, 0);
            for c in seg.chars() {
                let cw = cell_width(c, ts);
                if cx + cw > x {
                    break;
                }
                cx += cw;
                idx += 1;
            }
            let max = if k + 1 < rows.len() { idx.min(str_indices::chars::count(seg).saturating_sub(1)) } else { idx };
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
        let wrap = self.buf.opts.wrap;
        let (nu, rnu) = (self.buf.opts.number, self.buf.opts.relativenumber);
        let gutter = if nu || rnu { gutter_width(self.line_count()) } else { 0 };
        let text_w = w.saturating_sub(gutter).max(1);
        self.win.text_w = text_w;

        // Heights are capped: only whether a line fits matters, and a line is laid out no further.
        // The top line also counts the rows scrolled off its top.
        let cap = self.win.rows + 1;
        let (mut top, mut top_sub) = (self.win.top, self.win.top_sub);
        if self.win.line < top {
            (top, top_sub) = (self.win.line, 0);
        } else {
            // Every line takes at least one row, so `top` cannot be above this; then drop rows until the cursor line fits.
            let t = top.max((self.win.line + 1).saturating_sub(self.win.rows));
            if t != top {
                (top, top_sub) = (t, 0);
            }
            let mut used = (top..=self.win.line).map(|n| self.height_to(n, cap + if n == top { top_sub } else { 0 })).sum::<usize>();
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
            let cw = line[str_indices::chars::to_byte_idx(&line, self.win.col)..].chars().next().map_or(1, |c| cell_width(c, ts).max(1));
            if cx < self.win.left {
                self.win.left = cx;
            } else if cx + cw > self.win.left + text_w {
                self.win.left = (cx + cw).saturating_sub(text_w);
            }
        }

        let hl = self.highlight();
        let visible = self.win.top..(self.win.top + self.win.rows).min(text.line_count());
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
            let style_at = |i: usize| {
                if sel.contains(&i) {
                    Style::Reverse
                } else if matches.get(matches.partition_point(|r| r.end <= i)).is_some_and(|r| r.start <= i) {
                    Style::Match
                } else {
                    Style::Plain
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
                    spans.extend(row_spans(seg, |i| style_at(start + i), self.win.left, text_w, ts, last));
                    if active && n == self.win.line && self.buf.opts.cursorline {
                        // Explicit padding: erasing with a background color is not portable (no BCE everywhere).
                        let used: usize = spans.iter().flat_map(|s| s.text.chars()).map(|c| cell_width(c, ts)).sum();
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
            self.buf.path.display(),
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
        let mut rects = Vec::new();
        self.split.rects(area, &mut rects);
        let single = rects.len() == 1;
        // Each screen row: segments by column, each exactly as wide as its window.
        let mut grid: Vec<Vec<(usize, Vec<Span>)>> = (0..area.h).map(|_| Vec::new()).collect();
        let mut put = |x: usize, y: usize, spans: Vec<Span>| {
            if let Some(row) = grid.get_mut(y) {
                row.push((x, spans));
            }
        };
        let (mut cursor, mut cursor_rows, mut cursor_cols) = ((0, 0), 0..0, 0..w);
        for (id, r) in rects {
            let text_h = if single { r.h } else { r.h.saturating_sub(1).max(1) };
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
                let used: usize = spans.iter().map(|s| str_width(&s.text)).sum();
                // One window needs no padding: rows are cleared to their end.
                if !single && used < r.w {
                    spans.push(Span { style: Style::Plain, text: " ".repeat(r.w - used) });
                }
                put(r.x, r.y + i, spans);
            }
            if !single {
                let style = if active { Style::Reverse } else { Style::Number };
                put(r.x, r.y + text_h, vec![Span { style, text: fit(&status, r.w) }]);
            }
            if r.x + r.w < w {
                for y in r.y..r.y + r.h {
                    put(r.x + r.w, y, vec![Span { style: Style::Number, text: "│".into() }]);
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
            Mode::Command(s) => Some(format!(":{s}")),
            Mode::Search(s) => Some(format!("{}{s}", if self.search_back { '?' } else { '/' })),
            _ => None,
        };
        let (status, cursor, bar) = if let Some(input) = input {
            let x = str_width(&input).min(w - 1);
            (Span { style: Style::Plain, text: fit(&input, w) }, (x, area.h), true)
        } else {
            let mode = match self.mode {
                Mode::Insert => "INSERT",
                Mode::Visual(VKind::Char) => "VISUAL",
                Mode::Visual(VKind::Line) => "V-LINE",
                Mode::Visual(VKind::Block) => "V-BLOCK",
                _ => "NORMAL",
            };
            let pending = format!("{} {}{}", self.pending, self.recording.map_or_else(String::new, |r| format!("recording @{r} ")), self.msg);
            let status = if single {
                format!(
                    " {mode} | {}{} | Ln {}, Col {} | {} | {pending}",
                    self.buf.path.display(),
                    if self.is_dirty() { " [+]" } else { "" },
                    self.win.line + 1,
                    self.win.col + 1,
                    self.buf.doc.eol(),
                )
            } else {
                format!(" {mode} | {pending}")
            };
            (Span { style: Style::Reverse, text: fit(&status, w) }, cursor, self.mode == Mode::Insert)
        };
        rows.push(vec![status]);
        Frame {
            rows,
            cursor,
            bar,
            cursor_line: self.buf.opts.cursorline.then_some(cursor_rows),
            cursor_cols,
            palette: self.buf.opts.palette(),
            clipboard: self.regs.clipboard.take(),
        }
    }

    pub fn render(&mut self, out: &mut impl Write) -> io::Result<()> {
        let (w, h) = terminal::size()?;
        draw(&self.frame(w.into(), h.into()), out)
    }
}

pub(super) fn draw(f: &Frame, out: &mut impl Write) -> io::Result<()> {
    let p = f.palette;
    if let Some(text) = &f.clipboard {
        queue!(out, Print(osc52(text)))?;
    }
    queue!(out, cursor::Hide)?;
    for (y, spans) in f.rows.iter().enumerate() {
        queue!(out, cursor::MoveTo(0, y as u16), terminal::Clear(ClearType::UntilNewLine))?;
        let mut x = 0;
        for s in spans {
            let line_bg = f.cursor_line.as_ref().is_some_and(|r| r.contains(&y)) && f.cursor_cols.contains(&x);
            x += str_width(&s.text);
            let (attr, fg, bg) = match s.style {
                Style::Plain => (Attribute::Reset, None, None),
                Style::CurrentNumber => (Attribute::Bold, Some(p.current_number_fg), None),
                Style::Number => (Attribute::Reset, Some(p.number_fg), None),
                Style::Reverse => (Attribute::Reverse, None, None),
                Style::Match => (Attribute::Reset, Some(p.match_fg), Some(p.match_bg)),
            };
            let bg = bg.or(line_bg.then_some(p.cursorline_bg));
            // `Attribute::Reset` also clears colors, so they are set after it.
            queue!(out, SetAttribute(attr))?;
            if let Some(c) = fg {
                queue!(out, SetForegroundColor(Color::AnsiValue(c)))?;
            }
            if let Some(c) = bg {
                queue!(out, SetBackgroundColor(Color::AnsiValue(c)))?;
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

/// Screen cells of a char: tabs `ts`, control chars 1 (drawn as `?`), others by unicode-width.
// shortcut: widths are per char (unicode-width), so a grapheme cluster takes several cursor positions; segment graphemes if needed.
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

pub(super) fn screen_col(s: &str, col: usize, ts: usize) -> usize {
    s.chars().take(col).map(|c| cell_width(c, ts)).sum()
}

/// Cells of `line` between screen columns `left` and `left + width`, styled per char.
/// Tabs expand to spaces, control chars show as `?`, and a wide char cut by the edge shows as spaces.
fn row_spans(line: &str, style_at: impl Fn(usize) -> Style, left: usize, width: usize, ts: usize, last: bool) -> Vec<Span> {
    let mut spans: Vec<Span> = Vec::new();
    // A selected line break shows as one cell, after the last row of the line.
    let tail = (last && style_at(str_indices::chars::count(line)) == Style::Reverse).then_some(' ');
    let mut x = 0;
    for (i, c) in line.chars().chain(tail).enumerate() {
        let (x0, cw) = (x, cell_width(c, ts));
        x += cw;
        if x0 >= left + width {
            break;
        }
        let (start, end) = (x0.max(left), x.min(left + width));
        let glyph = if cw == 0 {
            if x0 < left {
                continue;
            }
            c.to_string()
        } else if start >= end {
            continue;
        } else if start == x0 && end == x && c != '\t' {
            if c.is_control() { "?".into() } else { c.to_string() }
        } else {
            " ".repeat(end - start)
        };
        let style = style_at(i);
        match spans.last_mut() {
            Some(s) if s.style == style => s.text.push_str(&glyph),
            _ => spans.push(Span { style, text: glyph }),
        }
    }
    spans
}

/// Width of `s` as `fit` draws it.
fn str_width(s: &str) -> usize {
    s.chars().map(|c| if c.is_control() { 1 } else { cell_width(c, 1) }).sum()
}

/// `s` cut or padded to exactly `w` cells; control chars become `?`.
pub(super) fn fit(s: &str, w: usize) -> String {
    let (mut out, mut x) = (String::new(), 0);
    for c in s.chars() {
        let (c, cw) = if c.is_control() { ('?', 1) } else { (c, cell_width(c, 1)) };
        if x + cw > w {
            break;
        }
        x += cw;
        out.push(c);
    }
    out.extend(std::iter::repeat_n(' ', w - x));
    out
}
