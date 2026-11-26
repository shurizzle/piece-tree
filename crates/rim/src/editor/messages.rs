//! Messages (the command-line row): the current one, its kind, and the `:messages` history.

use std::{
    collections::VecDeque,
    time::{Duration, Instant},
};

use crossterm::event::{KeyCode, KeyEvent, KeyModifiers};

use super::Editor;

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
}

impl Messages {
    /// Shows `text`, keeping at most `keep` messages (`messagesopt` `history`).
    pub fn show(&mut self, level: Level, text: String, keep: usize) {
        self.seq += 1;
        self.hint = false;
        self.deadline = None;
        self.pager = None;
        self.hit_enter = text.contains('\n');
        if !text.is_empty() {
            self.history.push_back((level, text.clone()));
            while self.history.len() > keep {
                self.history.pop_front();
            }
        }
        self.cur = Some((level, text));
    }

    /// The startup hint: shown, not remembered.
    pub fn show_hint(&mut self, text: &str) {
        self.cur = Some((Level::Info, text.into()));
        self.hint = true;
    }

    pub fn clear(&mut self) {
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

    /// The history, oldest first, one message per entry.
    pub fn list(&self) -> String {
        self.history.iter().map(|(_, t)| t.as_str()).collect::<Vec<_>>().join("\n")
    }

    pub fn clear_history(&mut self) {
        self.history.clear();
    }
}

impl Editor {
    pub(super) fn info(&mut self, text: impl Into<String>) {
        let keep = self.buf.opts.msg_history;
        self.msgs.show(Level::Info, text.into(), keep);
    }

    pub(super) fn warn(&mut self, text: impl Into<String>) {
        let keep = self.buf.opts.msg_history;
        self.msgs.show(Level::Warning, text.into(), keep);
    }

    pub(super) fn error(&mut self, text: impl Into<String>) {
        let keep = self.buf.opts.msg_history;
        self.msgs.show(Level::Error, text.into(), keep);
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
                // Shown, not recorded again.
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
