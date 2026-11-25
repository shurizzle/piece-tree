//! Screen layout (`Frame`) and drawing with crossterm.

use std::{
    io::{self, Write},
    ops::Range,
};

use crossterm::{
    cursor::{self, SetCursorStyle},
    queue,
    style::{Attribute, Color, Print, SetAttribute, SetBackgroundColor, SetForegroundColor},
    terminal::{self, ClearType},
};
use unicode_width::UnicodeWidthChar;

use super::{Editor, Mode, VKind, options::Palette, registers::osc52, search, sorted};

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
    /// Row drawn on the cursor line background (`cursorline`); padded to the full width so the
    /// background spans it.
    pub cursor_line: Option<usize>,
    pub palette: Palette,
    /// Text to copy to the system clipboard (OSC 52).
    pub clipboard: Option<String>,
}

impl Editor {
    /// Char range of `line` inside the Visual selection; `len` stands for the line break.
    fn selection(&self, line: usize) -> Range<usize> {
        let Mode::Visual(kind) = self.mode else { return 0..0 };
        let (a, b) = sorted(self.anchor, (self.line, self.col));
        if line < a.0 || line > b.0 {
            return 0..0;
        }
        let len = self.line_chars(line);
        match kind {
            VKind::Line => 0..len + 1,
            VKind::Block => {
                let (c0, c1) = self.block_cols();
                if self.want_col == usize::MAX { c0..len.max(c0) } else { c0..c1 + 1 }
            }
            VKind::Char => {
                let start = if line == a.0 { a.1 } else { 0 };
                let end = if line == b.0 { b.1 + 1 } else { len + 1 };
                start..end
            }
        }
    }

    /// Pattern to highlight: the one being typed (incsearch), else the last search (hlsearch).
    fn highlight(&self) -> Option<(String, bool)> {
        match &self.mode {
            Mode::Search(p) => (!p.is_empty()).then(|| (p.clone(), false)),
            _ if self.hl => self.last_search.as_ref().map(|s| (s.pat.clone(), s.word)),
            _ => None,
        }
    }

    /// Lays out a `w`×`h` screen and scrolls to keep the cursor visible.
    pub fn frame(&mut self, w: usize, h: usize) -> Frame {
        let w = w.max(1);
        self.rows = h.saturating_sub(1).max(1);
        let ts = self.opts.tabstop;

        if self.line < self.top {
            self.top = self.line;
        } else if self.line >= self.top + self.rows {
            self.top = self.line + 1 - self.rows;
        }
        let (nu, rnu) = (self.opts.number, self.opts.relativenumber);
        let gutter = if nu || rnu { gutter_width(self.line_count()) } else { 0 };
        let text_w = w.saturating_sub(gutter).max(1);
        let line = self.doc.text().line(self.line);
        let cx = screen_col(&line, self.col, ts);
        let cw = line.chars().nth(self.col).map_or(1, |c| cell_width(c, ts).max(1));
        if cx < self.left {
            self.left = cx;
        } else if cx + cw > self.left + text_w {
            self.left = (cx + cw).saturating_sub(text_w);
        }

        let hl = self.highlight();
        let text = self.doc.text();
        let mut rows: Vec<Vec<Span>> = (self.top..self.top + self.rows)
            .map(|n| {
                if n >= text.line_count() {
                    return Vec::new();
                }
                let mut spans = Vec::new();
                if gutter > 0 {
                    let style = if n == self.line { Style::CurrentNumber } else { Style::Number };
                    let number = format!("{:>width$} ", line_number(n, self.line, nu, rnu), width = gutter - 1);
                    spans.push(Span { style, text: number });
                }
                let s = text.line(n);
                let sel = self.selection(n);
                let matches = hl.as_ref().map_or_else(Vec::new, |(p, word)| {
                    search::line_matches(&s, p, |l, r| !*word || search::is_whole_word(l, r))
                });
                let style_at = |i: usize| {
                    if sel.contains(&i) {
                        Style::Reverse
                    } else if matches.iter().any(|r| r.contains(&i)) {
                        Style::Match
                    } else {
                        Style::Plain
                    }
                };
                spans.extend(row_spans(&s, style_at, self.left, text_w, ts));
                if n == self.line && self.opts.cursorline {
                    // Explicit padding: erasing with a background color is not portable (no BCE everywhere).
                    let used: usize = spans.iter().flat_map(|s| s.text.chars()).map(|c| cell_width(c, ts)).sum();
                    spans.push(Span { style: Style::Plain, text: " ".repeat(w.saturating_sub(used)) });
                }
                spans
            })
            .collect();

        let input = match &self.mode {
            Mode::Command(s) => Some(format!(":{s}")),
            Mode::Search(s) => Some(format!("/{s}")),
            _ => None,
        };
        let (status, cursor, bar) = if let Some(input) = input {
            let x = str_width(&input).min(w - 1);
            (Span { style: Style::Plain, text: fit(&input, w) }, (x, self.rows), true)
        } else {
            let mode = match self.mode {
                Mode::Insert => "INSERT",
                Mode::Visual(VKind::Char) => "VISUAL",
                Mode::Visual(VKind::Line) => "V-LINE",
                Mode::Visual(VKind::Block) => "V-BLOCK",
                _ => "NORMAL",
            };
            let status = format!(
                " {mode} | {}{} | Ln {}, Col {} | {} | {} {}{}",
                self.path.display(),
                if self.is_dirty() { " [+]" } else { "" },
                self.line + 1,
                self.col + 1,
                self.doc.eol(),
                self.pending,
                self.recording.map_or_else(String::new, |r| format!("recording @{r} ")),
                self.msg,
            );
            let cursor = (gutter + cx - self.left, self.line - self.top);
            (Span { style: Style::Reverse, text: fit(&status, w) }, cursor, self.mode == Mode::Insert)
        };
        rows.push(vec![status]);
        Frame {
            rows,
            cursor,
            bar,
            cursor_line: self.opts.cursorline.then_some(self.line - self.top),
            palette: self.opts.palette(),
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
        for s in spans {
            let (attr, fg, bg) = match s.style {
                Style::Plain => (Attribute::Reset, None, None),
                Style::CurrentNumber => (Attribute::Bold, Some(p.current_number_fg), None),
                Style::Number => (Attribute::Reset, Some(p.number_fg), None),
                Style::Reverse => (Attribute::Reverse, None, None),
                Style::Match => (Attribute::Reset, Some(p.match_fg), Some(p.match_bg)),
            };
            let bg = bg.or((Some(y) == f.cursor_line).then_some(p.cursorline_bg));
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
        c if c.is_control() => 1,
        c => c.width().unwrap_or(1),
    }
}

pub(super) fn screen_col(s: &str, col: usize, ts: usize) -> usize {
    s.chars().take(col).map(|c| cell_width(c, ts)).sum()
}

/// Cells of `line` between screen columns `left` and `left + width`, styled per char.
/// Tabs expand to spaces, control chars show as `?`, and a wide char cut by the edge shows as spaces.
fn row_spans(line: &str, style_at: impl Fn(usize) -> Style, left: usize, width: usize, ts: usize) -> Vec<Span> {
    let mut spans: Vec<Span> = Vec::new();
    // A selected line break shows as one cell.
    let tail = (style_at(line.chars().count()) == Style::Reverse).then_some(' ');
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
