//! Messages (the command-line row): the current one, its kind, and the `:messages` history.

use std::{
    collections::VecDeque,
    time::{Duration, Instant},
};

use crossterm::event::{KeyCode, KeyEvent, KeyModifiers};

use crate::string_builder::StringBuilder;

use super::{Editor, graphemes};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Level {
    Info,
    Warning,
    Error,
}

#[derive(Default)]
pub(super) struct Messages {
    cur: Option<(Level, String)>,
    history: VecDeque<(Level, String)>,
    /// Messages shown so far: a command tells whether it reported something by comparing it.
    pub seq: u64,
    /// The message is the startup hint: not kept in the history, gone at the first key.
    pub hint: bool,
    /// The message does not fit one row: the next key only dismisses it (vim's hit-enter prompt).
    pub hit_enter: bool,
    /// Enter, Space and Esc only dismiss it (`hit-enter` of `messagesopt`); otherwise any key also runs.
    pub prompt: bool,
    /// The first line shown by the pager (`more`) while the message is taller than the screen, the lines of a page, and all of them.
    pub pager: Option<usize>,
    pub page: usize,
    pub total: usize,
    /// Without `hit-enter`, when a message of several rows goes away by itself (`wait:N`).
    pub deadline: Option<Instant>,
    /// Times the message was cleared.
    pub cleared: u64,
    /// A command line from the user is running (`msg_scroll` set by the outermost `do_cmdline`): messages
    /// go below each other instead of replacing the one before.
    pub scroll: bool,
    /// The level of each line of the message: each message of a command line has its own colour.
    pub levels: Vec<Level>,
    /// The column the cursor is at when a typed command line starts running (after its text), and the column a
    /// redirection is at: `:redir` pads to the first when output starts without a new line (`:echon`).
    pub start_col: usize,
    pub redir_col: usize,
    /// `msg_col` left by a message written under `:silent` (`redir_write` sets it to `redir_col`): the next message pads to it.
    pub silent_col: usize,
    /// The message being captured was written under `:silent`.
    pub silent: bool,
    /// The text is a `:let` listing: under `:silent` `msg_advance` only sets `msg_col`, so the blanks that align the values are
    /// padding of `redir_write`.
    pub listing: bool,
    /// Something was shown since the command line started (`msg_didout`): the next message starts a new row.
    pub didout: bool,
    /// Everything shown while capturing, as `:redir` collects it (tests compare it with Neovim's).
    pub redir: Option<String>,
    /// `:redir => var`: the name and what was shown since it started (`redir_ga`).
    pub var_redir: Option<(String, String)>,
    /// `:redir > file`: the file; `:redir @r`: the register, whether it appends, and what was shown (written when it ends).
    pub file_redir: Option<std::fs::File>,
    pub reg_redir: Option<(char, bool, String)>,
    /// `capture_ga`: what `execute()` collects; only the innermost one gets the text.
    pub cap: Option<String>,
}

/// `utf_printable`: false for the chars from U+0100 that Neovim does not draw (soft hyphens of scripts, zero width
/// marks, bidi controls, the byte order mark...).
pub(super) fn utf_printable(c: u32) -> bool {
    const NONPRINT: [(u32, u32); 9] = [(0x070f, 0x070f), (0x180b, 0x180e), (0x200b, 0x200f), (0x202a, 0x202e), (0x2060, 0x206f), (0xd800, 0xdfff), (0xfeff, 0xfeff), (0xfff9, 0xfffb), (0xfffe, 0xffff)];
    c < 0x100 || !NONPRINT.iter().any(|&(lo, hi)| (lo..=hi).contains(&c))
}

/// `vim_strsize`: the cells of `s`, a grapheme cluster at a time.
fn cells(s: &str) -> usize {
    graphemes::iter(s).map(|g| graphemes::width(g, 1)).sum()
}

/// `trunc_string`: `s` cut to `room_in` cells, its middle replaced by `...`; the start and the end are whole clusters.
fn trunc_string(s: &str, room_in: usize) -> String {
    let room = room_in.saturating_sub(3);
    let half = room / 2;
    // First part: start of the string.
    let (mut len, mut e) = (0, 0);
    for g in graphemes::iter(s) {
        let n = graphemes::width(g, 1);
        if len >= half || len + n > half {
            break;
        }
        len += n;
        e += g.len();
    }
    if e == s.len() {
        // The text fits without truncating.
        return s.to_string();
    }
    // Last part: end of the string.
    let mut i = s.len();
    let mut at = s.len();
    for g in graphemes::iter(s).collect::<Vec<_>>().into_iter().rev() {
        let start = at - g.len();
        let n = graphemes::width(g, 1);
        if len + n > room || start == 0 {
            break;
        }
        len += n;
        i = start;
        at = start;
    }
    if i <= e + 3 { s.to_string() } else { format!("{}...{}", &s[..e], &s[i..]) }
}

/// What `msg_outtrans_len` shows (charset.c `transchar_nonprint`/`transchar_hex`): a control char as
/// `^X` (DEL `^?`), a C1 control as `<xx>`. With `multiline` (`msg_multiline`) newline, tab and
/// carriage return stay as they are and BELL is dropped (Neovim beeps). A char from U+0100 that `utf_printable` refuses
/// (`<200b>`) is shown as its hex code.
pub(super) fn trans_in<II: IntoIterator<Item = char>, B: StringBuilder>(out: &mut B, text: II, multiline: bool) {
    for c in text.into_iter() {
        match c {
            '\n' | '\t' | '\r' if multiline => out.push(c),
            '\x07' if multiline => {}
            // A newline is a NUL in Neovim's strings: `^@`.
            '\n' => out.push_str("^@"),
            '\0'..='\x1f' | '\x7f' => {
                out.push('^');
                out.push((c as u8 ^ 0x40) as char);
            }
            '\u{80}'..='\u{9f}' => { let _ =  write!(out, "<{:02x}>", c as u32); },
            c if !utf_printable(c as u32) => { let _ = write!(out, "<{:04x}>", c as u32); },
            c => out.push(c),
        }
    }
}

pub(super) fn trans(text: &str, multiline: bool) -> String {
    let mut out = String::with_capacity(text.len());
    trans_in(&mut out, text.chars(), multiline);
    out
}

impl Messages {
    /// Shows `text`, keeping at most `keep` messages (`messagesopt` `history`).
    pub fn show(&mut self, level: Level, text: String, keep: usize) {
        self.show_with(level, text, keep, true);
    }

    /// `show`, remembered in the history only when `remember` (`:echo` is not, `:echomsg` is).
    pub fn show_with(&mut self, level: Level, text: String, keep: usize, remember: bool) {
        let history = remember.then(|| text.clone());
        self.show_as(level, text, history, keep);
    }

    /// `show_with`, the history getting `history` (`:echomsg` remembers the text as given, the row
    /// shows it translated).
    pub fn show_as(&mut self, level: Level, text: String, history: Option<String>, keep: usize) {
        // `msg_start` with `msg_scroll`: a message after another one starts on the next row, and keeps its
        // own colour.
        let own = level;
        let joined = self.scroll && self.didout && !text.is_empty();
        let n = text.split('\n').count();
        let text = if joined {
            self.levels.extend(std::iter::repeat_n(own, n));
            format!("{}\n{text}", self.text())
        } else {
            self.levels = vec![own; n];
            text
        };
        let level = self.levels[0];
        self.didout = self.scroll && (self.didout || !text.is_empty());
        self.seq += 1;
        self.hint = false;
        self.deadline = None;
        self.pager = None;
        self.hit_enter = text.contains('\n');
        if let Some(h) = history.filter(|h| !h.is_empty()) {
            self.history.push_back((own, h));
            while self.history.len() > keep {
                self.history.pop_front();
            }
        }
        self.cur = Some((level, text));
    }

    /// The startup hint: shown, not remembered.
    pub fn show_hint(&mut self, text: &str) {
        self.levels.clear();
        self.cur = Some((Level::Info, text.into()));
        self.hint = true;
    }

    /// `redirecting()`: something collects what is shown.
    pub fn redirecting(&self) -> bool {
        self.redir.is_some() || self.var_redir.is_some() || self.file_redir.is_some() || self.reg_redir.is_some() || self.cap.is_some()
    }

    /// Adds a message to the capture: each starts on a new line, unless `append`.
    pub fn capture(&mut self, text: &str, append: bool) {
        if !self.redirecting() {
            return;
        }
        // What a redirection to a file would get; a redirection to a variable gets the same text.
        // `redir_write`: a file redirection gets nothing while `execute()` captures (variables and registers do).
        let capturing = self.cap.is_some();
        let mut r = if capturing { None } else { self.redir.take() };
        let mut local = String::new();
        let sink = r.as_mut().unwrap_or(&mut local);
        let start = sink.len();
        // The blanks of the padding loop of `redir_write` go to the file too while `execute()` captures; the text does not.
        let mut pads = 0;
        if append {
            // `redir_write`: output not at the start of a line goes to the column of the cursor,
            // a typed command line is left after its own text.
            if !text.starts_with(['\n', '\r']) {
                let pad = self.start_col.saturating_sub(self.redir_col);
                sink.push_str(&" ".repeat(pad));
                self.redir_col += pad;
                pads += pad;
            }
        } else {
            sink.push('\n');
            self.redir_col = 0;
            // `msg_start` only writes the newline: under `:silent` that also moves `msg_col` (to 0), when an error switched
            // the messages on it is where the silent message before left it.
            if !self.silent && !text.starts_with(['\n', '\r']) {
                sink.push_str(&" ".repeat(self.silent_col));
                self.redir_col = self.silent_col;
                pads += self.silent_col;
            }
        }
        self.start_col = 0;
        if self.listing && self.silent {
            // The blanks after the one that follows the name.
            pads += text.lines().map(|l| l.split_once(' ').map_or(0, |(_, r)| r.len() - r.trim_start_matches(' ').len())).sum::<usize>();
        }
        sink.push_str(text);
        match text.rfind(['\n', '\r']) {
            Some(i) => self.redir_col = text[i + 1..].chars().count(),
            None => self.redir_col += text.chars().count(),
        }
        self.silent_col = if self.silent { self.redir_col } else { 0 };
        let added = sink[start..].to_string();
        if let Some(c) = &mut self.cap {
            c.push_str(&added);
        }
        if let Some((_, buf)) = &mut self.var_redir {
            buf.push_str(&added);
        }
        if let Some((_, _, buf)) = &mut self.reg_redir {
            buf.push_str(&added);
        }
        if let Some(f) = self.file_redir.as_mut().filter(|_| !capturing) {
            // A write that fails is not reported, as `redir_write` ignores it.
            let _ = std::io::Write::write_all(f, added.as_bytes());
        }
        if capturing && pads > 0 {
            let blanks = " ".repeat(pads);
            if let Some(r) = &mut self.redir {
                r.push_str(&blanks);
            }
            if let Some(f) = &mut self.file_redir {
                let _ = std::io::Write::write_all(f, blanks.as_bytes());
            }
        }
        if !capturing {
            self.redir = r;
        }
    }

    /// `:echon`: continues the message of this command line; the first one just shows.
    pub fn append(&mut self, level: Level, text: &str, keep: usize) {
        if self.scroll && self.didout {
            let joined = format!("{}{text}", self.text());
            self.hit_enter = joined.contains('\n');
            self.seq += 1;
            self.levels.extend(std::iter::repeat_n(level, text.matches('\n').count()));
            self.cur = Some((self.levels[0], joined));
        } else {
            self.show_with(level, text.to_string(), keep, false);
        }
    }

    pub fn clear(&mut self) {
        self.didout = false;
        self.cleared += 1;
        self.levels.clear();
        self.cur = None;
        self.hit_enter = false;
        self.deadline = None;
        self.pager = None;
    }

    pub fn text(&self) -> &str {
        self.cur.as_ref().map_or("", |(_, t)| t)
    }

    pub fn level(&self) -> Level {
        self.cur.as_ref().map_or(Level::Info, |&(l, _)| l)
    }

    /// The level of line `i` of the message.
    pub fn line_level(&self, i: usize) -> Level {
        self.levels.get(i).copied().unwrap_or_else(|| self.level())
    }

    /// The history, oldest first, one message per entry.
    pub fn list(&self) -> String {
        self.history.iter().map(|(_, t)| trans(t, true)).collect::<Vec<_>>().join("\n")
    }

    pub fn clear_history(&mut self) {
        self.history.clear();
    }
}

impl Editor {
    /// `Messages::capture` for what is written now, knowing whether `:silent` is on.
    pub(super) fn capture_msg(&mut self, text: &str, append: bool) {
        self.msgs.silent = self.scripts.msg_silent != 0;
        self.msgs.capture(text, append);
    }

    /// `:echo`: shown like an info message, kept out of `:messages`.
    pub(super) fn show_echo(&mut self, text: String) {
        let keep = self.buf.opts.msg_history;
        if self.scripts.msg_silent > 0 {
            return;
        }
        self.msgs.show_with(Level::Info, text, keep, false);
    }

    pub(super) fn info(&mut self, text: impl Into<String>) {
        let text = self.msg_strtrunc(text.into());
        self.info_whole(text);
    }

    /// `info` without `msg_strtrunc`: a message the user asked for whole (`g Ctrl+G` empties `'shortmess'` for it).
    pub(super) fn info_whole(&mut self, text: String) {
        let keep = self.buf.opts.msg_history;
        if !text.is_empty() {
            self.capture_msg(&text, false);
        }
        // `:silent`: nothing is shown (a redirection still gets it, Neovim's does not: a difference).
        if self.scripts.msg_silent == 0 {
            self.msgs.show(Level::Info, text, keep);
        }
    }

    /// `comp_col`: the column where the showcmd starts, and the ruler before it when there is no status line
    /// (rim's ruler is the one of the message row).
    fn sc_col(&self) -> usize {
        let mut leaves = Vec::new();
        self.split.leaves(&mut leaves);
        let status = self.has_status(leaves.len());
        let mut sc = if status { 0 } else { 18 };
        if self.buf.opts.showcmd {
            sc += if status { 11 } else { 10 };
        }
        self.cols.saturating_sub(sc)
    }

    /// `msg_strtrunc`: a message that does not fit the row is cut in the middle (`...`) when `'shortmess'` has `T`, so that
    /// it does not scroll. Only a message shown with nothing before it in the command line (`msg_scroll` is off: a Normal
    /// mode command) and with no newline in it; the width is counted in grapheme clusters.
    pub(super) fn msg_strtrunc(&self, s: String) -> String {
        if self.msgs.scroll || self.scripts.msg_silent != 0 || !self.buf.opts.shortmess('T') || s.contains('\n') {
            return s;
        }
        let room = self.sc_col().saturating_sub(1);
        if room > 0 && cells(&s) > room { trunc_string(&s, room) } else { s }
    }

    /// `msg_may_trunc`: a file message that does not fit the row loses its start (`<`) when `'shortmess'` has `t`.
    pub(super) fn msg_may_trunc(&self, s: String) -> String {
        let room = self.sc_col().saturating_sub(1);
        if room == 0 || !self.buf.opts.shortmess('t') || s.len() <= room {
            return s;
        }
        let mut size = cells(&s);
        if size <= room {
            return s;
        }
        let mut cut = 0;
        for g in graphemes::iter(&s) {
            if size < room {
                break;
            }
            size -= graphemes::width(g, 1);
            cut += g.len();
        }
        format!("<{}", &s[cut..])
    }

    /// `tv_list_watch_fix`: a `:for` over `list` keeps pointing at the item it was going to take when `count` items
    /// at `at` go (`inserted` false) or `count` items come in front of the one at `at`.
    pub(super) fn list_changed(&mut self, list: &super::script::List, at: usize, count: usize, inserted: bool) {
        let addr = dumpster::unsync::Gc::as_ptr(list) as usize;
        self.scripts.for_watch.retain(|(_, w)| w.strong_count() > 0);
        for (a, w) in &self.scripts.for_watch {
            let (true, Some(next)) = (*a == addr, w.upgrade()) else { continue };
            let n = next.get();
            // `usize::MAX`: the loop had taken the last item, nothing more is visited.
            if n == usize::MAX {
                continue;
            }
            next.set(if inserted {
                if n >= at { n + count } else { n }
            } else if n >= at + count {
                n - count
            } else if n >= at {
                // The item that was next is gone: the one after it, or none (NULL) at the end, where nothing added later is visited.
                if at >= list.borrow().len() { usize::MAX } else { at }
            } else {
                n
            });
        }
    }

    /// A List whose items were linked again in another order (`sort()`, `reverse()`): `perm[old]` is the new index of the item
    /// that was at `old`. A `:for` has the next item, which stays the same item.
    pub(super) fn list_permuted(&mut self, list: &super::script::List, perm: &[usize]) {
        let addr = dumpster::unsync::Gc::as_ptr(list) as usize;
        for (a, w) in &self.scripts.for_watch {
            let (true, Some(next)) = (*a == addr, w.upgrade()) else { continue };
            if let Some(&p) = perm.get(next.get()) {
                next.set(p);
            }
        }
    }

    /// `msgmore`: "N more lines" or "N fewer lines" when a change is over `'report'` lines. A `:global` waits for its end.
    pub(super) fn msgmore(&mut self, n: i64) {
        if self.scripts.global_busy {
            return;
        }
        let pn = n.unsigned_abs() as usize;
        // "We don't want to overwrite another important message, but do overwrite a previous "more lines" or "fewer lines" message."
        if self.keep_msg.is_some_and(|(seq, more)| seq == self.msgs.seq && !more) {
            return;
        }
        if pn > self.buf.opts.report {
            let plural = if pn == 1 { "" } else { "s" };
            let text = if n > 0 { format!("{pn} more line{plural}") } else if pn == 1 { "1 line less".to_string() } else { format!("{pn} fewer lines") };
            self.info(text);
            self.keep_msg = Some((self.msgs.seq, true));
        }
    }

    /// What `:s` changed goes to the counters of the command line; outside a `:global` it is reported at once.
    pub(super) fn sub_report(&mut self, nsubs: usize, nlines: usize, count_only: bool) -> bool {
        if !self.scripts.global_busy {
            (self.scripts.sub_nsubs, self.scripts.sub_nlines) = (0, 0);
        }
        self.scripts.sub_nsubs += nsubs;
        self.scripts.sub_nlines += nlines;
        !self.scripts.global_busy && self.do_sub_msg(count_only)
    }

    /// `do_sub_msg`: "N substitutions on N lines" when over `'report'` (and typed, or on several lines), or
    /// "N matches on N lines" for the `n` flag. False when nothing was said.
    pub(super) fn do_sub_msg(&mut self, count_only: bool) -> bool {
        let (n, l) = (self.scripts.sub_nsubs, self.scripts.sub_nlines);
        let report = self.buf.opts.report;
        let key_typed = self.key_typed;
        if (n > report && (key_typed || l > 1 || report < 1)) || count_only {
            let what = match (count_only, n == 1) {
                (true, true) => "match",
                (true, false) => "matches",
                (false, true) => "substitution",
                (false, false) => "substitutions",
            };
            self.info(format!("{n} {what} on {l} line{}", if l == 1 { "" } else { "s" }));
            // `set_keep_msg`: it is shown again after the redraw.
            self.keep_msg = Some((self.msgs.seq, false));
            return true;
        }
        false
    }

    /// `give_warning`: nothing under `:silent`.
    pub(super) fn warn(&mut self, text: impl Into<String>) {
        if self.scripts.msg_silent > 0 {
            return;
        }
        let keep = self.buf.opts.msg_history;
        let text = text.into();
        self.capture_msg(&text, false);
        self.msgs.show(Level::Warning, text, keep);
    }

    pub(super) fn error(&mut self, text: impl Into<String>) {
        self.error_ml(text, false);
    }

    /// `emsg_multiline`: the text is shown as `msg_outtrans` does (a newline is `^@`), or as `msg_multiline` does
    /// (`:echoerr` keeps newlines) when `multiline`.
    pub(super) fn error_ml(&mut self, text: impl Into<String>, multiline: bool) {
        let text = trans(&text.into(), multiline);
        // `emsg_not_now`
        if self.scripts.emsg_skip > 0 {
            return;
        }
        // Under an active `:try` the message is kept to be thrown as an exception, and not shown.
        let severe = std::mem::take(&mut self.scripts.emsg_severe);
        if self.cause_errthrow(&text, multiline, severe) {
            self.scripts.did_emsg = true;
            self.scripts.emsg_count += 1;
            return;
        }
        // `v:errmsg` gets the message, shown or not (`:silent!`).
        self.vim_vars.borrow_mut().insert("errmsg".to_string().into(), super::script::Value::Str(text.clone().into()));
        self.scripts.called_emsg += 1;
        let keep = self.buf.opts.msg_history;
        // `:silent!`: the error is only written to a redirection, and does not end the line.
        if self.scripts.emsg_silent > 0 {
            let mut lines = self.scripts.error_header_silent();
            lines.push(text);
            // `emsg_noredir` (`execute(.., 'silent!')`): not even a redirection gets it.
            if !self.scripts.emsg_noredir {
                self.capture_msg(&lines.join("\n"), false);
            }
            return;
        }
        let mut lines = self.scripts.error_header();
        lines.push(text);
        let text = lines.join("\n");
        self.scripts.did_emsg = true;
        self.scripts.emsg_count += 1;
        self.scripts.global_error |= self.scripts.global_busy;
        // An error switches the messages back on.
        self.scripts.msg_silent = 0;
        self.capture_msg(&text, false);
        self.msgs.show(Level::Error, text, keep);
        // `emsg` flushes the typeahead.
        self.flush_typeahead = true;
    }

    /// How long `main` waits for a key: `base` (save poll or idle period, if any) or the time left
    /// before a message goes away (`wait:N`), whichever is shorter; `None` waits forever.
    pub fn poll_timeout(&self, base: Option<Duration>) -> Option<Duration> {
        match (base, self.message_wait()) {
            (Some(a), Some(b)) => Some(a.min(b)),
            (a, b) => a.or(b),
        }
    }

    /// No key came within `poll_timeout`: the message expires, else running saves are polled, else
    /// the idle work runs. True when the idle work ran (the editor is idle again).
    pub fn timed_out(&mut self, saving: bool) -> bool {
        if self.expire_message() {
            return false;
        }
        if saving {
            self.poll_saves();
            return false;
        }
        self.idle();
        true
    }

    /// Time left before the message on screen goes away by itself.
    pub fn message_wait(&self) -> Option<Duration> {
        self.msgs.deadline.map(|d| d.saturating_duration_since(Instant::now()))
    }

    /// Drops the message once its `wait:N` is over; true when it did.
    pub fn expire_message(&mut self) -> bool {
        let over = self.msgs.deadline.is_some_and(|d| Instant::now() >= d);
        if over {
            self.msgs.clear();
        }
        over
    }

    /// A key while the pager shows a message: Space, `f`, PageDown, `Ctrl+F` a page on; `b`, PageUp,
    /// `Ctrl+B` back; `d`/`u` half a page; `j`, Enter, Down and `k`, Up a line; `g`/`G` the ends; `q`,
    /// Esc and `Ctrl+C` stop. On the last page the keys that would go on dismiss it like the hit-enter
    /// prompt; before it other keys are ignored, except `:`. True when the key was used up.
    pub(super) fn pager_key(&mut self, key: KeyEvent) -> bool {
        let Some(top) = self.msgs.pager else { return false };
        let (page, last) = (self.msgs.page, self.msgs.total.saturating_sub(self.msgs.page));
        let ctrl = key.modifiers.contains(KeyModifiers::CONTROL);
        let at_end = top >= last;
        let to = match (key.code, ctrl) {
            (KeyCode::Char(' ' | 'f') | KeyCode::PageDown, false) | (KeyCode::Char('f'), true) if !at_end => Some((top + page).min(last)),
            (KeyCode::Char('d'), _) if !at_end => Some((top + page / 2).min(last)),
            (KeyCode::Char('j') | KeyCode::Enter | KeyCode::Down, false) if !at_end => Some(top + 1),
            (KeyCode::Char('b'), _) | (KeyCode::PageUp, _) => Some(top.saturating_sub(page)),
            (KeyCode::Char('u'), _) => Some(top.saturating_sub(page / 2)),
            (KeyCode::Char('k') | KeyCode::Up, false) => Some(top.saturating_sub(1)),
            (KeyCode::Char('g'), false) => Some(0),
            (KeyCode::Char('G'), false) => Some(last),
            _ => None,
        };
        if let Some(t) = to {
            self.msgs.pager = Some(t);
            return true;
        }
        let stop = matches!(key.code, KeyCode::Esc | KeyCode::Char('q')) && !ctrl || ctrl && key.code == KeyCode::Char('c');
        if stop {
            self.msgs.clear();
            return true;
        }
        if at_end {
            return false;
        }
        if key.code == KeyCode::Char(':') {
            self.msgs.clear();
            return false;
        }
        true
    }

    /// The current message, empty when there is none.
    #[cfg(test)]
    pub(super) fn msg(&self) -> &str {
        self.msgs.text()
    }

    /// `:messages [clear]`.
    pub(super) fn messages_cmd(&mut self, arg: &str) -> Result<(), String> {
        match arg {
            "" => {
                let list = self.msgs.list();
                self.capture_msg(&list, false);
                // Shown, not recorded again.
                self.msgs.levels.clear();
                self.msgs.cur = Some((Level::Info, if list.is_empty() { "No messages".into() } else { list.clone() }));
                self.msgs.hit_enter = list.contains('\n');
                Ok(())
            }
            "clear" => {
                self.msgs.clear_history();
                Ok(())
            }
            _ => Err(format!("Invalid argument: {arg}")),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn history_is_capped_and_hint_is_not_kept() {
        let mut m = Messages::default();
        m.show_hint("hint");
        assert!(m.hint && m.list().is_empty());
        for i in 0..205 {
            m.show(Level::Info, format!("m{i}"), 200);
        }
        assert!(!m.hint);
        assert_eq!(m.list().lines().count(), 200);
        assert_eq!(m.list().lines().next(), Some("m5"));
        assert_eq!((m.text(), m.level()), ("m204", Level::Info));
        m.show(Level::Error, String::new(), 200);
        assert_eq!(m.list().lines().count(), 200);
        m.clear();
        assert_eq!(m.text(), "");
    }
}
