//! Buffers (`:e`, `:b`, `:ls`, `:bd`, `Ctrl+^`) and `:w` on a background thread.

use std::{
    cell::RefCell,
    collections::HashMap,
    fs, io, mem,
    path::{Path, PathBuf},
    thread::{self, JoinHandle},
};

use piece_tree::{Document, LineEnding, Text};

use super::{Editor, ex, graphemes::LineIndex, options::Options, read_doc};

/// Long lines whose cluster index a buffer keeps.
pub(super) const INDEXES: usize = 4;

/// One file being edited: its text and history, its marks and options.
pub(super) struct Buffer {
    /// Number shown by `:ls` and taken by `:b N`, never reused.
    pub id: usize,
    pub doc: Document,
    pub path: PathBuf,
    /// Version and line ending last written to disk; dirty is a pointer comparison.
    pub saved: Text,
    pub saved_eol: LineEnding,
    /// `a`–`z` and `'` (position before the last jump), as byte offsets shifted by edits.
    pub marks: HashMap<char, usize>,
    /// Cluster indexes of recently used long lines, the most recent last (`Editor::with_index`).
    pub cols: RefCell<Vec<LineIndex>>,
    // shortcut: every option is buffer-local (window-local wrap/number are not split out), when a window-local option is needed
    pub opts: Options,
    /// Cursor byte offset when the buffer last left a window, where `:b` puts it back.
    pub last: usize,
    /// Change list (`g;`/`g,`): offsets of recent changes, oldest first, shifted by edits;
    /// `change_idx` is where the next `g;` goes back from (`changes.len()` after a new change).
    pub changes: Vec<usize>,
    pub change_idx: usize,
    /// Last Visual selection (`gv`): kind, anchor and cursor offsets, shifted by edits.
    pub last_visual: Option<(super::VKind, usize, usize)>,
}

impl Buffer {
    pub fn new(id: usize, doc: Document, path: PathBuf, opts: Options) -> Self {
        Self {
            id,
            saved: doc.text().clone(),
            saved_eol: doc.eol(),
            doc,
            path,
            marks: HashMap::new(),
            cols: RefCell::default(),
            opts,
            last: 0,
            changes: Vec::new(),
            change_idx: 0,
            last_visual: None,
        }
    }

    pub fn is_dirty(&self) -> bool {
        !self.doc.text().ptr_eq(&self.saved) || self.doc.eol() != self.saved_eol
    }
}

/// A `:w` running on a thread: it writes a clone of the text (a snapshot) while editing goes on.
pub(super) struct Saving {
    buf: usize,
    path: PathBuf,
    text: Text,
    eol: LineEnding,
    handle: JoinHandle<io::Result<()>>,
}

fn writing_msg(path: &Path) -> String {
    format!("\"{}\" writing...", path.display())
}

fn same_file(a: &Path, b: &Path) -> bool {
    a == b || fs::canonicalize(a).is_ok_and(|a| fs::canonicalize(b).is_ok_and(|b| a == b))
}

impl Editor {
    pub(super) fn buffer(&self, id: usize) -> Option<&Buffer> {
        if self.buf.id == id { Some(&self.buf) } else { self.buffers.iter().find(|b| b.id == id) }
    }

    fn buffer_mut(&mut self, id: usize) -> Option<&mut Buffer> {
        if self.buf.id == id { Some(&mut self.buf) } else { self.buffers.iter_mut().find(|b| b.id == id) }
    }

    /// Every buffer, by id.
    fn all_buffers(&self) -> Vec<&Buffer> {
        let mut all: Vec<_> = self.buffers.iter().chain([&self.buf]).collect();
        all.sort_by_key(|b| b.id);
        all
    }

    /// Shows buffer `id` in the current window, its cursor where it was left.
    pub(super) fn switch_buffer(&mut self, id: usize) {
        if id == self.buf.id {
            return;
        }
        let i = self.buffers.iter().position(|b| b.id == id).expect("switch to a known buffer");
        self.buf.last = self.offset();
        mem::swap(&mut self.buf, &mut self.buffers[i]);
        self.alt = Some(self.buffers[i].id);
        self.win.buf = id;
        self.win.reset_view();
        (self.win.line, self.win.col) = self.pos_of(self.buf.doc.text().floor_char_boundary(self.buf.last));
        self.clamp_normal();
    }

    /// `:e file`: switches to the buffer of `file`, or loads it into a new one.
    pub(super) fn edit_file(&mut self, file: &str) -> Result<(), String> {
        let path = PathBuf::from(file);
        if let Some(id) = self.all_buffers().iter().find(|b| same_file(&b.path, &path)).map(|b| b.id) {
            self.switch_buffer(id);
            return Ok(());
        }
        let doc = read_doc(&path).map_err(|e| format!("\"{file}\": {e}"))?;
        self.next_buf += 1;
        self.buffers.push(Buffer::new(self.next_buf, doc, path, self.buf.opts));
        self.switch_buffer(self.next_buf);
        self.msg = self.file_info();
        Ok(())
    }

    /// Loads `path` into a new buffer without showing it (`rim a b`); a file already loaded is skipped.
    pub fn open_more(&mut self, path: PathBuf) -> io::Result<()> {
        if self.all_buffers().iter().any(|b| same_file(&b.path, &path)) {
            return Ok(());
        }
        let doc = read_doc(&path)?;
        self.next_buf += 1;
        self.buffers.push(Buffer::new(self.next_buf, doc, path, self.buf.opts));
        Ok(())
    }

    /// `:bn` (`step` 1) and `:bp` (-1), `n` times, wrapping around.
    pub(super) fn cycle_buffer(&mut self, step: isize, n: usize) {
        let ids: Vec<usize> = self.all_buffers().iter().map(|b| b.id).collect();
        let at = ids.iter().position(|&id| id == self.buf.id).expect("the current buffer is listed") as isize;
        let k = ids.len() as isize;
        self.switch_buffer(ids[(at + step * (n % ids.len()) as isize).rem_euclid(k) as usize]);
    }

    /// `:b N`.
    pub(super) fn goto_buffer(&mut self, arg: &str) -> Result<(), String> {
        let id = arg.parse().map_err(|_| format!("Invalid buffer number: {arg}"))?;
        if self.buffer(id).is_none() {
            return Err(format!("Buffer {id} does not exist"));
        }
        self.switch_buffer(id);
        Ok(())
    }

    /// `Ctrl+^`.
    pub(super) fn alternate_buffer(&mut self) {
        match self.alt.filter(|&id| self.buffer(id).is_some()) {
            Some(id) => self.switch_buffer(id),
            None => self.msg = "No alternate file".into(),
        }
    }

    /// `:ls`: `id`, `%a` (current) or `#` (alternate), name, `+` when modified, cursor line.
    pub(super) fn list_buffers(&self) -> String {
        self.all_buffers()
            .iter()
            .map(|b| {
                let flag = if b.id == self.buf.id {
                    "%a"
                } else if Some(b.id) == self.alt {
                    "# "
                } else {
                    "  "
                };
                let line = if b.id == self.buf.id { self.win.line } else { b.doc.text().offset_to_line(b.last.min(b.doc.text().len())) };
                format!("{:>3} {flag} {}\"{}\" line {}", b.id, if b.is_dirty() { "+ " } else { "" }, b.path.display(), line + 1)
            })
            .collect::<Vec<_>>()
            .join(" | ")
    }

    /// `:bd[!] [N]`: windows showing the buffer move to the alternate (or next) one.
    pub(super) fn delete_buffer(&mut self, bang: bool, arg: &str) -> Result<(), String> {
        let id = if arg.is_empty() { self.buf.id } else { arg.parse().map_err(|_| format!("Invalid buffer number: {arg}"))? };
        // A `:w` still running makes its buffer clean when it ends.
        self.wait_saves();
        let b = self.buffer(id).ok_or_else(|| format!("Buffer {id} does not exist"))?;
        if !bang && b.is_dirty() {
            return Err(format!("No write since last change for buffer {id} (add ! to override)"));
        }
        // shortcut: the last buffer cannot be deleted, when an unnamed empty buffer exists
        if self.buffers.is_empty() {
            return Err("Cannot delete the last buffer".into());
        }
        let ids: Vec<usize> = self.all_buffers().iter().map(|b| b.id).filter(|&b| b != id).collect();
        let other = self.alt.filter(|a| ids.contains(a)).unwrap_or(ids[0]);
        if self.buf.id == id {
            self.switch_buffer(other);
        }
        let last = self.buffer(other).expect("listed").last;
        for w in self.windows.iter_mut().filter(|w| w.buf == id) {
            (w.buf, w.off) = (other, last);
            w.reset_view();
        }
        self.buffers.retain(|b| b.id != id);
        if self.alt == Some(id) {
            self.alt = None;
        }
        Ok(())
    }

    /// The first modified buffer, current one first.
    pub(super) fn dirty_buffer(&self) -> Option<&Buffer> {
        [&self.buf].into_iter().chain(&self.buffers).find(|b| b.is_dirty())
    }

    /// Starts writing buffer `id` on a thread, after any running write of the same file; with
    /// `wait`, also waits for it. Returns false when a write that was waited for failed.
    pub(super) fn save_buffer(&mut self, id: usize, wait: bool) -> bool {
        let b = self.buffer(id).expect("save a known buffer");
        let (path, text, eol) = (b.path.clone(), b.doc.text().clone(), b.doc.eol());
        let mut ok = self.wait_saves_where(|s| same_file(&s.path, &path));
        let handle = {
            let (path, text) = (path.clone(), text.clone());
            thread::spawn(move || ex::write_atomic(&path, &text, eol))
        };
        self.msg = writing_msg(&path);
        self.saves.push(Saving { buf: id, path, text, eol, handle });
        if wait {
            ok &= self.wait_saves_where(|s| s.buf == id);
        }
        ok
    }

    pub fn saving(&self) -> bool {
        !self.saves.is_empty()
    }

    /// Applies the writes that ended (called by `main` while `saving`, and after every key).
    pub fn poll_saves(&mut self) {
        self.wait_saves_where(|s| s.handle.is_finished());
    }

    /// Waits for every running write (before quitting).
    pub(super) fn wait_saves(&mut self) -> bool {
        self.wait_saves_where(|_| true)
    }

    /// Joins the writes matching `pick`: a buffer whose write succeeded becomes clean at the
    /// version written, so edits made meanwhile keep it modified. False if one failed.
    fn wait_saves_where(&mut self, pick: impl Fn(&Saving) -> bool) -> bool {
        let mut ok = true;
        let (done, running) = mem::take(&mut self.saves).into_iter().partition(|s| pick(s));
        self.saves = running;
        for s in done {
            match s.handle.join().expect("the save thread does not panic") {
                Ok(()) => {
                    // Success does not cover what a later command reported; a failure does.
                    if self.msg.is_empty() || self.msg == writing_msg(&s.path) {
                        self.msg = format!("\"{}\" written ({})", s.path.display(), s.eol);
                    }
                    if let Some(b) = self.buffer_mut(s.buf).filter(|b| b.path == s.path) {
                        (b.saved, b.saved_eol) = (s.text, s.eol);
                    }
                }
                Err(e) => {
                    self.msg = format!("Save failed: {e}");
                    ok = false;
                }
            }
        }
        ok
    }
}
