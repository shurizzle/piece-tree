//! Buffers (`:e`, `:b`, `:ls`, `:bd`, `Ctrl+^`) and `:w` on a background thread.

use std::{
    cell::RefCell,
    collections::HashMap,
    fs, io, mem,
    path::{Path, PathBuf},
    thread::{self, JoinHandle},
};

use piece_tree::{Document, LineEnding, Text};

use super::{Editor, ex, graphemes::LineIndex, filetype, options::Options, read_doc};

/// Long lines whose cluster index a buffer keeps.
pub(super) const INDEXES: usize = 4;

/// One file being edited: its text and history, its marks and options.
pub(super) struct Buffer {
    /// Number shown by `:ls` and taken by `:b N`, never reused.
    pub id: usize,
    pub doc: Document,
    /// The file; none for a buffer made by `:enew` or started without one (`[No Name]`).
    pub path: Option<PathBuf>,
    /// When the buffer was last left, as a tick of `Editor::clock` (`wildmode=lastused`).
    pub used: u64,
    /// Name shown instead of `[No Name]` (the command-line window's buffer).
    pub title: Option<&'static str>,
    /// Shown by `:ls` and reached by `:bn`/`:bp`; the command-line window's buffer is not.
    pub listed: bool,
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
    /// Syntax tree of the filetype's grammar (`Editor::sync_syntax`).
    pub syntax: Option<super::syntax::Syntax>,
    /// `b:` variables.
    pub vars: super::script::Vars,
}

impl Buffer {
    pub fn new(id: usize, doc: Document, path: Option<PathBuf>, mut opts: Options) -> Self {
        opts.filetype = path.as_deref().map_or("", filetype::detect).into();
        Self {
            id,
            saved: doc.text().clone(),
            saved_eol: doc.eol(),
            doc,
            path,
            listed: true,
            used: 0,
            title: None,
            marks: HashMap::new(),
            cols: RefCell::default(),
            opts,
            last: 0,
            changes: Vec::new(),
            change_idx: 0,
            last_visual: None,
            syntax: None,
            vars: Default::default(),
        }
    }

    /// A `buftype=nofile` buffer is never modified.
    pub fn is_dirty(&self) -> bool {
        !self.opts.nofile && (!self.doc.text().ptr_eq(&self.saved) || self.doc.eol() != self.saved_eol)
    }

    /// The file name as shown to the user.
    pub fn name(&self) -> String {
        self.path.as_ref().map_or_else(|| self.title.unwrap_or("[No Name]").into(), |p| p.display().to_string())
    }
}

/// A `:w` running on a thread: it writes a clone of the text (a snapshot) while editing goes on.
pub(super) struct Saving {
    buf: usize,
    path: PathBuf,
    text: Text,
    eol: LineEnding,
    handle: JoinHandle<io::Result<()>>,
    /// `Messages::seq` after the "writing" message: the write reports itself only if nothing else was shown since.
    seq: u64,
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
    pub(super) fn all_buffers(&self) -> Vec<&Buffer> {
        let mut all: Vec<_> = self.buffers.iter().chain([&self.buf]).collect();
        all.sort_by_key(|b| b.id);
        all
    }

    /// The buffers `:ls` and `:bn` go through (the current one always).
    fn listed_buffers(&self) -> Vec<&Buffer> {
        self.all_buffers().into_iter().filter(|b| b.listed || b.id == self.buf.id).collect()
    }

    /// A new empty buffer without a file, not shown yet; returns its id.
    pub(super) fn new_scratch(&mut self) -> usize {
        self.next_buf += 1;
        let mut opts = self.buf.opts.clone();
        opts.nofile = false;
        self.buffers.push(Buffer::new(self.next_buf, Document::new(""), None, opts));
        self.next_buf
    }

    /// Loads `text` into a new modified buffer without a file, not shown (`rim - -`).
    pub fn add_text(&mut self, text: &str) {
        let id = self.new_scratch();
        let b = self.buffers.iter_mut().find(|b| b.id == id).expect("just added");
        b.doc = Document::from_string(text.to_string());
        b.saved = Document::new("").text().clone();
    }

    /// `:enew`: an empty buffer without a file in the current window.
    pub(super) fn enew(&mut self) {
        let id = self.new_scratch();
        self.switch_buffer(id);
    }

    /// Shows buffer `id` in the current window, its cursor where it was left.
    pub(super) fn switch_buffer(&mut self, id: usize) {
        if id == self.buf.id {
            return;
        }
        let i = self.buffers.iter().position(|b| b.id == id).expect("switch to a known buffer");
        self.buf.last = self.offset();
        self.clock += 1;
        self.buf.used = self.clock;
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
        if let Some(id) = self.all_buffers().iter().find(|b| b.path.as_deref().is_some_and(|p| same_file(p, &path))).map(|b| b.id) {
            self.switch_buffer(id);
            return Ok(());
        }
        let doc = read_doc(&path).map_err(|e| format!("\"{file}\": {e}"))?;
        // The empty buffer of a start without a file is reused, like vim does.
        if self.buf.path.is_none() && !self.buf.is_dirty() && self.buf.doc.text().is_empty() && self.buf.listed {
            self.buf = Buffer::new(self.buf.id, doc, Some(path), self.buf.opts.clone());
            self.win.reset_view();
            (self.win.line, self.win.col) = (0, 0);
        } else {
            self.next_buf += 1;
            self.buffers.push(Buffer::new(self.next_buf, doc, Some(path), self.buf.opts.clone()));
            self.switch_buffer(self.next_buf);
        }
        self.info(self.file_info());
        Ok(())
    }

    /// Loads `path` into a new buffer without showing it (`rim a b`); a file already loaded is skipped.
    pub fn open_more(&mut self, path: PathBuf) -> io::Result<()> {
        if self.all_buffers().iter().any(|b| b.path.as_deref().is_some_and(|p| same_file(p, &path))) {
            return Ok(());
        }
        let doc = read_doc(&path)?;
        self.next_buf += 1;
        self.buffers.push(Buffer::new(self.next_buf, doc, Some(path), self.buf.opts.clone()));
        Ok(())
    }

    /// `:bn` (`step` 1) and `:bp` (-1), `n` times, wrapping around.
    pub(super) fn cycle_buffer(&mut self, step: isize, n: usize) {
        let ids: Vec<usize> = self.listed_buffers().iter().map(|b| b.id).collect();
        let at = ids.iter().position(|&id| id == self.buf.id).expect("the current buffer is listed") as isize;
        let k = ids.len() as isize;
        self.switch_buffer(ids[(at + step * (n % ids.len()) as isize).rem_euclid(k) as usize]);
    }

    /// `:b N`.
    pub(super) fn goto_buffer(&mut self, arg: &str) -> Result<(), String> {
        let id = match arg.parse() {
            Ok(id) => id,
            // A name: the buffer whose name is it, else the only one that holds it.
            Err(_) => {
                let low = arg.to_lowercase();
                let mut hits: Vec<(usize, bool)> = self.all_buffers().iter().filter(|b| b.listed && b.name().to_lowercase().contains(&low)).map(|b| (b.id, b.name() == arg)).collect();
                if let Some(exact) = hits.iter().find(|h| h.1) {
                    hits = vec![*exact];
                }
                match hits.as_slice() {
                    [(id, _)] => *id,
                    [] => return Err(format!("E94: No matching buffer for {arg}")),
                    _ => return Err(format!("E93: More than one match for {arg}")),
                }
            }
        };
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
            None => self.error("No alternate file"),
        }
    }

    /// `:ls`: `id`, `%a` (current) or `#` (alternate), name, `+` when modified, cursor line.
    pub(super) fn list_buffers(&self) -> String {
        self.all_buffers()
            .into_iter()
            .filter(|b| b.listed)
            .map(|b| {
                let flag = if b.id == self.buf.id {
                    "%a"
                } else if Some(b.id) == self.alt {
                    "# "
                } else {
                    "  "
                };
                let line = if b.id == self.buf.id { self.win.line } else { b.doc.text().offset_to_line(b.last.min(b.doc.text().len())) };
                format!("{:>3} {flag} {}\"{}\" line {}", b.id, if b.is_dirty() { "+ " } else { "" }, b.name(), line + 1)
            })
            .collect::<Vec<_>>()
            .join("\n")
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
        // The last buffer goes and an empty one takes its place, like vim.
        if self.buffers.is_empty() {
            self.new_scratch();
        }
        let ids: Vec<usize> = self.listed_buffers().iter().map(|b| b.id).filter(|&b| b != id).collect();
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
        if b.opts.nofile {
            self.error("Cannot write, 'buftype' option is set");
            return false;
        }
        let Some(path) = b.path.clone() else {
            self.error("E32: No file name");
            return false;
        };
        let (text, eol) = (b.doc.text().clone(), b.doc.eol());
        let mut ok = self.wait_saves_where(|s| same_file(&s.path, &path));
        let handle = {
            let (path, text) = (path.clone(), text.clone());
            thread::spawn(move || ex::write_atomic(&path, &text, eol))
        };
        // A write is a command of its own in Neovim (`msg_scroll`): its message is never cut.
        self.info_whole(writing_msg(&path));
        let seq = self.msgs.seq;
        self.saves.push(Saving { buf: id, path, text, eol, handle, seq });
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
        // The outcome of a write belongs to the command that started it, not to the one running now: it
        // replaces the row instead of going below what that command shows.
        let scroll = mem::take(&mut self.msgs.scroll);
        for s in done {
            match s.handle.join().expect("the save thread does not panic") {
                Ok(()) => {
                    // Success does not cover what a later command reported; a failure does.
                    if self.msgs.seq == s.seq {
                        self.info_whole(format!("\"{}\" written ({})", s.path.display(), s.eol));
                    }
                    if let Some(b) = self.buffer_mut(s.buf).filter(|b| b.path.as_ref() == Some(&s.path)) {
                        (b.saved, b.saved_eol) = (s.text, s.eol);
                    }
                }
                Err(e) => {
                    self.error(format!("Save failed: {e}"));
                    ok = false;
                }
            }
        }
        self.msgs.scroll = scroll;
        ok
    }
}
