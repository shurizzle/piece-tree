//! The command line (`:`, `/`, `?`): editing at a cursor, history, completion, `Ctrl+R`.

use std::mem;

use crossterm::event::{KeyCode, KeyEvent, KeyModifiers};

use super::{Editor, LIST_MAX, Mode, class, digraphs, graphemes, literal, search};

/// Where the result of the expression typed on the `=` line goes.
pub(super) enum ExprFrom {
    /// The command line or search it was started from, and the cursor in it.
    Line { mode: Mode, pos: usize },
    /// An insert session (`Ctrl+R =`); the number of keys it had recorded before.
    Insert { keys: usize },
    /// The register of the next Normal command (`"=`).
    Normal,
}

/// Start of the word before `pos` (`Ctrl+W`): the blanks, then a run of one class.
fn word_before(s: &str, pos: usize) -> usize {
    let class_at = |p: usize| s[p..].chars().next().map_or(0, class);
    let mut p = pos;
    while p > 0 && class_at(graphemes::prev(s, p)) == 0 {
        p = graphemes::prev(s, p);
    }
    if p > 0 {
        let cls = class_at(graphemes::prev(s, p));
        while p > 0 && class_at(graphemes::prev(s, p)) == cls {
            p = graphemes::prev(s, p);
        }
    }
    p
}

/// Start of the blank-separated word before `pos` (`S-Left`).
fn big_before(s: &str, pos: usize) -> usize {
    let blank = |p: usize| s[p..].chars().next().is_none_or(char::is_whitespace);
    let mut p = pos;
    while p > 0 && blank(graphemes::prev(s, p)) {
        p = graphemes::prev(s, p);
    }
    while p > 0 && !blank(graphemes::prev(s, p)) {
        p = graphemes::prev(s, p);
    }
    p
}

/// Start of the blank-separated word after `pos` (`S-Right`).
fn big_after(s: &str, pos: usize) -> usize {
    let blank = |p: usize| s[p..].chars().next().is_none_or(char::is_whitespace);
    let mut p = pos;
    while p < s.len() && !blank(p) {
        p = graphemes::next(s, p);
    }
    while p < s.len() && blank(p) {
        p = graphemes::next(s, p);
    }
    p
}

impl Editor {
    /// Starts typing a command or search line: the cursor is at the end of `mode`'s text.
    pub(super) fn enter_line(&mut self, mode: Mode) {
        self.line_pos = match &mode {
            Mode::Command(s) | Mode::Search(s) | Mode::Expr(s) => s.len(),
            _ => 0,
        };
        self.mode = mode;
        (self.line_over, self.line_pending, self.hist_at, self.wild) = (false, None, None, None);
    }

    /// The text of the command or search line being typed.
    pub(super) fn line_buf(&mut self) -> &mut String {
        let (Mode::Command(buf) | Mode::Search(buf) | Mode::Expr(buf)) = &mut self.mode else {
            unreachable!("line_buf outside command or search mode")
        };
        buf
    }

    /// The history the line being typed uses: `:` 0, `/` and `?` 1, `=` 2.
    fn history_of_line(&self) -> usize {
        match self.mode {
            Mode::Search(_) => 1,
            Mode::Expr(_) => 2,
            _ => 0,
        }
    }

    /// Leaves the line without running it.
    fn line_leave(&mut self) {
        if matches!(self.mode, Mode::Expr(_)) {
            self.expr_restore(None);
        } else {
            self.mode = Mode::Normal;
        }
    }

    /// Starts the `=` line, to put its value where `from` says.
    pub(super) fn start_expr(&mut self, from: ExprFrom) {
        self.expr_from = Some(match from {
            ExprFrom::Line { .. } => {
                let pos = self.line_pos;
                ExprFrom::Line { mode: mem::replace(&mut self.mode, Mode::Normal), pos }
            }
            ExprFrom::Insert { .. } => ExprFrom::Insert { keys: self.insert_keys.len().saturating_sub(2) },
            ExprFrom::Normal => ExprFrom::Normal,
        });
        self.enter_line(Mode::Expr(String::new()));
    }

    /// Back from the `=` line: `result` goes in (none: Esc).
    fn expr_restore(&mut self, result: Option<String>) {
        match self.expr_from.take() {
            Some(ExprFrom::Line { mode, pos }) => {
                self.mode = mode;
                self.line_pos = pos;
                if let Some(t) = result {
                    self.line_insert(&t.replace('\n', "\r"));
                }
                self.line_changed(matches!(self.mode, Mode::Search(_)));
            }
            Some(ExprFrom::Insert { keys }) => {
                self.mode = Mode::Insert;
                if let Some(t) = result {
                    // A repeated insert (`3i`) types the value, not the expression.
                    self.insert_keys.truncate(keys);
                    self.insert_keys.extend(t.chars().map(|c| if c == '\n' { KeyCode::Enter.into() } else { KeyEvent::from(KeyCode::Char(c)) }));
                    self.insert(&t);
                }
            }
            Some(ExprFrom::Normal) => {
                self.mode = Mode::Normal;
                match result {
                    Some(t) => {
                        self.regs.set_expr(t);
                        self.pending.push('=');
                    }
                    None => self.pending.clear(),
                }
            }
            None => self.mode = Mode::Normal,
        }
    }

    /// Enter on the `=` line: evaluates, keeps the line in the history, and uses the value.
    fn run_expr(&mut self, src: &str) {
        self.push_history(2, src);
        match self.eval_text(src) {
            Ok(t) => self.expr_restore(Some(t)),
            Err(e) => {
                self.expr_restore(None);
                self.error(e);
            }
        }
    }

    /// Replaces the text of the line; the cursor goes to its end.
    pub(super) fn line_set(&mut self, text: String) {
        self.line_pos = text.len();
        *self.line_buf() = text;
    }

    /// Types `s` at the cursor, over the clusters it covers in overstrike mode.
    fn line_insert(&mut self, s: &str) {
        let (at, over) = (self.line_pos, self.line_over);
        let buf = self.line_buf();
        if over {
            for _ in graphemes::iter(s) {
                if at < buf.len() {
                    let end = graphemes::next(buf, at);
                    buf.replace_range(at..end, "");
                }
            }
        }
        buf.insert_str(at, s);
        self.line_pos = at + s.len();
    }

    /// Removes `range` of the line text; the cursor goes to its start.
    fn line_cut(&mut self, range: std::ops::Range<usize>) {
        self.line_pos = range.start;
        self.line_buf().replace_range(range, "");
    }

    /// Adds a command line or search to its history (no repeat of the last one).
    fn push_history(&mut self, which: usize, line: &str) {
        let h = &mut self.history[which];
        if !line.is_empty() && h.last().is_none_or(|l| l != line) {
            h.push(line.to_string());
            if h.len() > LIST_MAX {
                h.remove(0);
            }
        }
    }

    /// Up/Down (entries starting with what was typed), S-Up/S-Down/PageUp/PageDown and `Ctrl+P`/`Ctrl+N` (any entry).
    fn line_history(&mut self, key: KeyEvent) {
        let up = matches!(key.code, KeyCode::Up | KeyCode::PageUp | KeyCode::Char('p'));
        let prefixed = matches!(key.code, KeyCode::Up | KeyCode::Down) && !key.modifiers.contains(KeyModifiers::SHIFT);
        let shown = self.line_buf().clone();
        let h = &self.history[self.history_of_line()];
        let (at, typed) = self.hist_at.take().unwrap_or((h.len(), shown));
        let filter = if prefixed { typed.as_str() } else { "" };
        let found = if up {
            h[..at].iter().rposition(|l| l.starts_with(filter))
        } else {
            h.iter().skip(at + 1).position(|l| l.starts_with(filter)).map(|i| i + at + 1)
        };
        let (at, line) = match found {
            Some(i) => (i, h[i].clone()),
            // Past the newest entry: what was typed.
            None if !up => (h.len(), typed.clone()),
            None => (at, if at < h.len() { h[at].clone() } else { typed.clone() }),
        };
        self.line_set(line);
        self.hist_at = Some((at, typed));
    }

    /// The key after `Ctrl+R` (a register, or `Ctrl+W`/`Ctrl+A`/`Ctrl+L`: the word, WORD or line
    /// under the cursor of the text) or after `Ctrl+V` (the key itself).
    fn line_pending_key(&mut self, pending: char, key: KeyEvent) {
        let ctrl = key.modifiers.contains(KeyModifiers::CONTROL);
        let text = match (pending, key.code) {
            ('r', KeyCode::Char('w')) if ctrl => self.word_under_cursor().map(|w| w.0),
            ('r', KeyCode::Char('a')) if ctrl => {
                let line = self.buf.doc.text().line(self.win.line).into_owned();
                let b = self.line_byte(self.win.line, self.win.col);
                line[b..].find(|c: char| !c.is_whitespace()).map(|i| {
                    let mut start = b + i;
                    while start > 0 && !line[..start].ends_with(char::is_whitespace) {
                        start = graphemes::prev(&line, start);
                    }
                    let end = line[b + i..].find(char::is_whitespace).map_or(line.len(), |j| b + i + j);
                    line[start..end].to_string()
                })
            }
            ('r', KeyCode::Char('=')) if !ctrl => {
                self.start_expr(ExprFrom::Line { mode: Mode::Normal, pos: 0 });
                return;
            }
            ('r', KeyCode::Char('l')) if ctrl => Some(self.buf.doc.text().line(self.win.line).into_owned()),
            // `Ctrl+R Ctrl+R` and `Ctrl+R Ctrl+O` insert the register as is, which is what a plain one does.
            ('r', KeyCode::Char('r' | 'o')) if ctrl => {
                self.line_pending = Some('r');
                return;
            }
            ('r', KeyCode::Char(c)) if !ctrl => self.reg(c).map(|r| r.text.strip_suffix('\n').unwrap_or(&r.text).replace('\n', "\r")),
            ('v', KeyCode::Char(c @ 'a'..='z')) if ctrl => Some(char::from(c as u8 - b'a' + 1).to_string()),
            ('v', KeyCode::Char(c)) if !ctrl && literal::Lit::begin(c).is_some() => {
                (self.lit, self.line_pending) = (literal::Lit::begin(c), Some('l'));
                return;
            }
            ('v', KeyCode::Char(c)) => Some(c.to_string()),
            ('k', KeyCode::Char(c)) if !ctrl => {
                (self.dig_first, self.line_pending) = (Some(c), Some('K'));
                return;
            }
            ('K', KeyCode::Char(c)) if !ctrl => self.dig_first.take().map(|a| digraphs::typed(&self.user_digraphs, a, c).to_string()),
            ('v', KeyCode::Tab) => Some("\t".into()),
            ('v', KeyCode::Esc) => Some("\x1b".into()),
            ('v', KeyCode::Enter) => Some("\r".into()),
            _ => None,
        };
        if let Some(t) = text {
            self.line_insert(&t);
        }
    }

    /// A key while the digits of a `Ctrl+V` code are typed; false when it ends the code without
    /// being a part of it.
    fn line_lit_key(&mut self, key: KeyEvent) -> bool {
        let Some(mut lit) = self.lit.take() else { return false };
        let plain = match key.code {
            KeyCode::Char(c) if !key.modifiers.intersects(KeyModifiers::CONTROL | KeyModifiers::ALT) => Some(c),
            _ => None,
        };
        let step = plain.map_or(literal::Push::End, |c| lit.push(c));
        if step == literal::Push::More {
            (self.lit, self.line_pending) = (Some(lit), Some('l'));
            return true;
        }
        if let Some(c) = lit.finish() {
            self.line_insert(c.encode_utf8(&mut [0; 4]));
        }
        step == literal::Push::Full
    }

    /// Command line (`:`) and search (`/`) input.
    // shortcut: no `Ctrl+K` digraphs, `Ctrl+R =` or codes after `Ctrl+V`, when someone needs them
    pub(super) fn line_key(&mut self, key: KeyEvent) {
        let searching = matches!(self.mode, Mode::Search(_));
        let (ctrl, shift) = (key.modifiers.contains(KeyModifiers::CONTROL), key.modifiers.contains(KeyModifiers::SHIFT));
        let nav = ctrl && matches!(key.code, KeyCode::Char('n' | 'p'));
        // A completion (`Tab`, the menu) takes its keys first; a key typed after `Ctrl+V` is not one.
        if self.line_pending.is_none() && self.wild_key(key) {
            return;
        }
        let history = matches!(key.code, KeyCode::Up | KeyCode::Down | KeyCode::PageUp | KeyCode::PageDown) || nav;
        if !history {
            self.hist_at = None;
        }
        if let Some(p) = self.line_pending.take() {
            self.wild = None;
            // The key that ends a code typed after `Ctrl+V` goes on as an ordinary key.
            if p != 'l' || self.line_lit_key(key) {
                if p != 'l' {
                    self.line_pending_key(p, key);
                }
                return self.line_changed(searching);
            }
        }
        let (pos, len) = (self.line_pos, self.line_buf().len());
        let back = key.code == KeyCode::Backspace || (ctrl && key.code == KeyCode::Char('h'));
        match key.code {
            _ if history => self.line_history(key),
            // `wildchar` is another key when `Tab` is not: it types itself.
            KeyCode::Tab => self.line_insert("\t"),
            KeyCode::Char('d') if ctrl && matches!(self.mode, Mode::Command(_)) => self.wild_list(),
            KeyCode::Char('a') if ctrl && matches!(self.mode, Mode::Command(_)) => self.wild_all(),
            KeyCode::Char('l') if ctrl && matches!(self.mode, Mode::Command(_)) => self.wild_longest(),
            KeyCode::Char('r') if ctrl => self.line_pending = Some('r'),
            KeyCode::Char('v' | 'q') if ctrl => self.line_pending = Some('v'),
            KeyCode::Char('k') if ctrl => self.line_pending = Some('k'),
            KeyCode::Left if ctrl || shift => self.line_pos = big_before(self.line_buf(), pos),
            KeyCode::Right if ctrl || shift => self.line_pos = big_after(self.line_buf(), pos),
            KeyCode::Left if pos > 0 => self.line_pos = graphemes::prev(self.line_buf(), pos),
            KeyCode::Right if pos < len => self.line_pos = graphemes::next(self.line_buf(), pos),
            KeyCode::Home => self.line_pos = 0,
            KeyCode::Char('b') if ctrl => self.line_pos = 0,
            KeyCode::End => self.line_pos = len,
            KeyCode::Char('e') if ctrl => self.line_pos = len,
            KeyCode::Insert => self.line_over = !self.line_over,
            // On an empty line Backspace, `Ctrl+H` and Delete leave the command line.
            _ if len == 0 && (back || key.code == KeyCode::Delete) => self.line_leave(),
            _ if back && pos > 0 => {
                let from = graphemes::prev(self.line_buf(), pos);
                self.line_cut(from..pos);
            }
            KeyCode::Delete if pos < len => {
                let to = graphemes::next(self.line_buf(), pos);
                self.line_cut(pos..to);
            }
            // At the end of the line Delete takes the cluster before the cursor, like Backspace.
            KeyCode::Delete if pos > 0 => {
                let from = graphemes::prev(self.line_buf(), pos);
                self.line_cut(from..pos);
            }
            KeyCode::Char('w') if ctrl => {
                let from = word_before(self.line_buf(), pos);
                self.line_cut(from..pos);
            }
            KeyCode::Char('u') if ctrl => self.line_cut(0..pos),
            KeyCode::Esc => self.line_leave(),
            KeyCode::Char('c') if ctrl => self.line_leave(),
            _ if !matches!(self.mode, Mode::Expr(_)) && super::wild::key_is(&self.buf.opts.cedit, key) => {
                let (text, pos) = (self.line_buf().clone(), self.line_pos);
                self.open_cmdwin(if searching { if self.search_back { '?' } else { '/' } } else { ':' }, &text, pos);
            }
            KeyCode::Enter => self.line_enter(),
            KeyCode::Char('m' | 'j') if ctrl => self.line_enter(),
            KeyCode::Char(c) if !ctrl && !key.modifiers.contains(KeyModifiers::ALT) => self.line_insert(c.encode_utf8(&mut [0; 4])),
            _ => {}
        }
        // The command-line window took over (`Ctrl+F`): its cursor is not the search preview's.
        let in_cmdwin = self.cmdwin.as_ref().is_some_and(|c| c.win == self.win.id);
        if !in_cmdwin && (self.mode != Mode::Normal || !matches!(key.code, KeyCode::Enter | KeyCode::Char('m' | 'j'))) {
            self.line_changed(searching);
        }
    }

    /// Enter: runs the command or the search.
    fn line_enter(&mut self) {
        match mem::replace(&mut self.mode, Mode::Normal) {
            Mode::Command(cmd) => self.run_command(&cmd),
            Mode::Search(typed) => self.run_search(&typed),
            Mode::Expr(src) => self.run_expr(&src),
            _ => unreachable!("line_enter outside command or search mode"),
        }
    }

    /// Runs the command line `cmd` and remembers it.
    pub(super) fn run_command(&mut self, cmd: &str) {
        self.push_history(0, cmd);
        if !self.command(cmd) {
            self.quit = true;
        }
        // `.` does not repeat `:` commands (vim); a confirm session ends the group itself.
        if self.mode != Mode::Confirm {
            self.rec_cmd = None;
            self.end_command();
        }
    }

    /// Runs the search `typed` (pattern and offset) from `search_origin`, in the direction of `search_back`.
    pub(super) fn run_search(&mut self, typed: &str) {
        self.push_history(1, typed);
        (self.win.line, self.win.col) = self.search_origin;
        self.inc_search = None;
        let (pat, off) = search::split_typed(typed, if self.search_back { '?' } else { '/' });
        let offset = match search::Offset::parse(off) {
            Ok(o) => o,
            Err(e) => {
                self.error(e);
                return self.clamp_normal();
            }
        };
        if !pat.is_empty() {
            match self.new_search(pat) {
                Ok(s) => self.last_search = Some(s),
                Err(e) => {
                    self.error(e);
                    return self.clamp_normal();
                }
            }
        }
        // A new `/` or `?` sets the direction and offset of the last search, also
        // when it reuses the pattern (`//e`).
        if let Some(s) = &mut self.last_search {
            (s.back, s.offset) = (self.search_back, offset);
        }
        self.search_landing = None;
        if let Some((to, _)) = self.search_motion(!self.search_back, 1, None) {
            self.move_to('n', to);
        } else if self.last_search.is_none() {
            self.error("No previous search pattern");
        }
        self.clamp_normal();
    }

    /// After a key on the search line: the incsearch preview, or the cursor back where `/` started
    /// once the search was left with Esc.
    pub(super) fn line_changed(&mut self, searching: bool) {
        if !searching {
            return;
        }
        // incsearch: the cursor previews the first match from where `/` started; Esc goes back.
        // A pattern that does not compile yet (`(`) shows nothing.
        (self.win.line, self.win.col) = self.search_origin;
        let delim = if self.search_back { '?' } else { '/' };
        self.inc_search = match &self.mode {
            Mode::Search(typed) if self.buf.opts.incsearch => {
                Some(search::split_typed(typed, delim).0).filter(|p| !p.is_empty()).and_then(|p| self.new_search(p).ok())
            }
            _ => None,
        };
        if let Some(s) = self.inc_search.clone()
            && let Some((m, _)) = self.find_match(&s.re, !self.search_back, self.offset())
        {
            (self.win.line, self.win.col) = self.pos_of(m.start);
        }
    }
}
