//! The command-line window (`Ctrl+F` on the command line, `q:`, `q/`, `q?`): the history of `:`
//! or `/` in a window at the bottom of the screen, to edit with every Normal and Insert command.
//! Enter runs the line under the cursor, `Ctrl+C` goes back to the command line with it.

use crossterm::event::{KeyCode, KeyEvent, KeyModifiers};
use piece_tree::Document;

use super::{
    Editor, Mode,
    graphemes,
    windows::{Split, Window},
};

pub(super) const E11: &str = "E11: Invalid in command-line window; <CR> executes, CTRL-C quits";

/// The command-line window while it is open.
#[derive(Clone)]
pub(super) struct CmdWin {
    /// `:`, `/` or `?`.
    pub kind: char,
    /// Window to go back to, this window and its buffer.
    pub prev_win: usize,
    pub win: usize,
    pub buf: usize,
    /// The layout without the window.
    pub split: Split,
}

impl Editor {
    /// Opens the window on the history of `kind`, with `typed` as its last line and the cursor
    /// at byte `pos` of it. E11 while one is open.
    pub(super) fn open_cmdwin(&mut self, kind: char, typed: &str, pos: usize) {
        if self.cmdwin.is_some() {
            return self.error(E11);
        }
        let hist = &self.history[usize::from(kind != ':')];
        let mut text = hist.join("\n");
        if !hist.is_empty() {
            text.push('\n');
        }
        text.push_str(typed);
        let prev_win = self.win.id;
        // Typing stops: the line is in the window now.
        if kind != ':' {
            self.search_back = kind == '?';
            self.inc_search = None;
            (self.win.line, self.win.col) = self.search_origin;
        }
        self.mode = Mode::Normal;
        let buf = self.new_scratch();
        let b = self.buffers.iter_mut().find(|b| b.id == buf).expect("just added");
        b.doc = Document::from_string(text);
        b.saved = b.doc.text().clone();
        (b.listed, b.opts.nofile, b.title) = (false, true, Some("[Command Line]"));
        self.next_win += 1;
        let win = self.next_win;
        let mut w = Window::new(win, buf);
        // The status row is part of the height, when windows have one.
        // shortcut: the height stays what it was at opening, when windows can be resized
        w.fixed_h = Some(self.buf.opts.cmdwinheight + usize::from(self.buf.opts.laststatus != 0));
        self.windows.push(w);
        let split = self.split.clone();
        self.split = Split::col(vec![split.clone(), Split::Win(win)]);
        self.cmdwin = Some(CmdWin { kind, prev_win, win, buf, split });
        self.park_and_take(win);
        let col = graphemes::col_of(typed, pos.min(typed.len()));
        (self.win.line, self.win.col) = (self.line_count() - 1, col);
        self.win.want_col = col;
        self.clamp_normal();
    }

    /// Closes the window without running anything; the layout and the window before come back.
    pub(super) fn close_cmdwin(&mut self) {
        let Some(c) = self.cmdwin.take() else { return };
        if self.win.id == c.win {
            self.park_and_take(c.prev_win);
        }
        self.split = c.split;
        self.windows.retain(|w| w.id != c.win);
        self.buffers.retain(|b| b.id != c.buf);
    }

    /// E11 when a command that leaves the window was asked for in the command-line window.
    pub(super) fn cmdwin_refuses(&mut self) -> bool {
        let open = self.cmdwin.is_some();
        if open {
            self.error(E11);
        }
        open
    }

    /// Enter and `Ctrl+C` in the window (Normal or Insert mode, nothing pending); true when handled.
    pub(super) fn cmdwin_key(&mut self, key: KeyEvent) -> bool {
        let Some(c) = self.cmdwin.clone() else { return false };
        let ctrl_c = key.code == KeyCode::Char('c') && key.modifiers.contains(KeyModifiers::CONTROL);
        let enter = key.code == KeyCode::Enter && key.modifiers.is_empty();
        if self.win.id != c.win || !matches!(self.mode, Mode::Normal | Mode::Insert) || !self.pending.is_empty() || !(enter || ctrl_c) {
            return false;
        }
        if self.mode == Mode::Insert {
            self.key_inner(KeyCode::Esc.into());
        }
        let line = self.buf.doc.text().line(self.win.line).into_owned();
        self.close_cmdwin();
        self.mode = Mode::Normal;
        if c.kind != ':' {
            (self.search_back, self.search_origin) = (c.kind == '?', (self.win.line, self.win.col));
        }
        match (enter, c.kind) {
            (true, ':') => self.run_command(&line),
            (true, _) => self.run_search(&line),
            // Back to the command line with the line, to go on typing.
            (false, ':') => self.enter_line(Mode::Command(line)),
            (false, _) => {
                self.enter_line(Mode::Search(line));
                self.line_changed(true);
            }
        }
        true
    }

    /// `q:`, `q/` and `q?` in Normal mode.
    pub(super) fn open_cmdwin_from_normal(&mut self, kind: char) {
        if kind != ':' {
            self.search_origin = (self.win.line, self.win.col);
        }
        self.open_cmdwin(kind, "", 0);
    }
}
