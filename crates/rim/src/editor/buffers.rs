//! Buffers (`:e`, `:b`, `:ls`, `:bd`, `Ctrl+^`) and `:w` on a background thread.

use std::{
    cell::RefCell,
    collections::HashMap,
    fs, io, mem,
    path::{Path, PathBuf},
    thread::{self, JoinHandle},
};

use piece_tree::{Document, LineEnding, Text};

use super::{Editor, ex, undo::UndoTree, graphemes::LineIndex, filetype, options::{Options, WinOpts}, read_doc};

/// Long lines whose cluster index a buffer keeps.
pub(super) const INDEXES: usize = 4;

/// A mark: 0-based line and byte column, as `pos_T` (the column is not adjusted when text before it in the line changes).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) struct Mark {
    pub line: usize,
    pub col: usize,
}

/// One file being edited: its text and history, its marks and options.
/// What `U` swaps with a line: the text the line had before the latest run of changes made to it, and the column.
#[derive(Clone, Debug)]
pub struct ULine {
    /// 0-based line (`b_u_line_lnum` - 1).
    pub line: usize,
    pub text: String,
    pub col: usize,
}

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
    /// `b_changed` (`'modified'`): set by an edit, cleared by a write, `:e!` and `:set nomodified`; undo and redo
    /// put it back from the header's `UH_CHANGED` (`undo.rs`).
    pub modified: bool,
    /// `b_start_ffc` (`save_file_ff`): the line ending when the file was read or written; a different one is a change too
    /// (`file_ff_differs`).
    pub start_eol: LineEnding,
    /// `b_start_eol`: `'endofline'` at that time.
    pub start_endofline: bool,
    /// The text version the file was read as (`ML_EMPTY`: a buffer is empty only when nothing was read
    /// and nothing was typed, or an edit emptied it).
    pub loaded: Text,
    /// The file had no bytes, or there was none.
    pub empty_at_open: bool,
    /// `a`–`z`, `'`, `[`, `<`... as Neovim keeps them: a line and a byte column, which can lie past the end of the text.
    pub marks: HashMap<char, Mark>,
    /// Cluster indexes of recently used long lines, the most recent last (`Editor::with_index`).
    pub cols: RefCell<Vec<LineIndex>>,
    pub opts: Options,
    /// Cursor byte offset when the buffer last left a window, where `:b` puts it back.
    pub last: usize,
    /// Change list (`g;`/`g,`): offsets of recent changes, oldest first, shifted by edits;
    /// `change_idx` is where the next `g;` goes back from (`changes.len()` after a new change).
    pub changes: Vec<Mark>,
    pub change_idx: usize,
    /// The line `U` brings back (`b_u_line_ptr`, `b_u_line_lnum`, `b_u_line_colnr`).
    pub u_line: Option<ULine>,
    /// `b_new_change`: an undo step began since the last entry was added to the change list.
    pub new_change: bool,
    /// `visualmode(1)` was called since Visual mode last ended.
    pub visual_mode_cleared: bool,
    /// Last Visual selection (`gv`): kind, anchor and cursor offsets, shifted by edits.
    pub last_visual: Option<(super::VKind, Mark, Mark)>,
    /// Syntax tree of the filetype's grammar (`Editor::sync_syntax`).
    pub syntax: Option<super::syntax::Syntax>,
    /// `b:` variables.
    pub vars: super::script::Vars,
    /// What each window last had of this buffer, most recent first (`b_wininfo`).
    pub wininfo: Vec<WinInfo>,
    /// Read from a file whose modelines have not been looked at yet (`Editor::check_modelines`).
    pub modelines_pending: bool,
    /// Undo headers (`b_u_*`).
    pub undo: UndoTree,
}

/// `WinInfo`: the window-local options a window had when it left the buffer. `win` is none once the window is gone.
pub struct WinInfo {
    pub win: Option<usize>,
    pub opts: Option<WinOpts>,
}

impl Buffer {
    pub fn new(id: usize, doc: Document, path: Option<PathBuf>, mut opts: Options) -> Self {
        opts.filetype = path.as_deref().map_or("", filetype::detect).into();
        let modelines_pending = path.is_some();
        let doc_empty = doc.text().is_empty();
        Self {
            id,
            modified: false,
            start_eol: doc.eol(),
            start_endofline: opts.endofline,
            loaded: doc.text().clone(),
            empty_at_open: doc.text().is_empty(),
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
            new_change: false,
            u_line: None,
            visual_mode_cleared: false,
            last_visual: None,
            syntax: None,
            vars: Default::default(),
            wininfo: Vec::new(),
            modelines_pending,
            undo: UndoTree::new(doc_empty),
        }
    }

    /// `buflist_new`: the buffer is created for window `win`, which has no options for it yet.
    pub fn for_window(mut self, win: usize) -> Self {
        self.wininfo.push(WinInfo { win: Some(win), opts: None });
        self
    }

    /// `ML_EMPTY`: a write gives nothing for this buffer. A file read into the buffer is not empty even
    /// when it holds a single line break (`loaded` is that version); one emptied by an edit is.
    pub fn ml_empty(&self) -> bool {
        self.doc.text().is_empty() && (self.empty_at_open || !self.doc.text().ptr_eq(&self.loaded))
    }

    /// `save_file_ff`: the line ending and `'endofline'` as the file has them now.
    pub fn save_file_ff(&mut self) {
        (self.start_eol, self.start_endofline) = (self.doc.eol(), self.opts.endofline);
    }

    /// `file_ff_differs`: `'fileformat'` is not what it was when the file was read or written, or `'endofline'` is not and
    /// the last line break is written as it is (`'binary'`, `'nofixendofline'`). `'endoffile'`, `'bomb'` and `'fileencoding'`
    /// do not exist in rim.
    pub fn ff_differs(&self) -> bool {
        self.doc.eol() != self.start_eol || ((self.opts.binary || !self.opts.fixendofline) && self.opts.endofline != self.start_endofline)
    }

    /// A `buftype=nofile` buffer is never modified.
    pub fn is_dirty(&self) -> bool {
        !self.opts.nofile && (self.modified || self.ff_differs())
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
    eol: LineEnding,
    handle: JoinHandle<io::Result<()>>,
    /// `Messages::seq` after the "writing" message: the write reports itself only if nothing else was shown since.
    seq: u64,
}

fn writing_msg(path: &Path) -> String {
    format!("\"{}\" writing...", path.display())
}

pub(super) fn same_file(a: &Path, b: &Path) -> bool {
    a == b || fs::canonicalize(a).is_ok_and(|a| fs::canonicalize(b).is_ok_and(|b| a == b))
}

impl Editor {
    pub(super) fn buffer(&self, id: usize) -> Option<&Buffer> {
        if self.buf.id == id { Some(&self.buf) } else { self.buffers.iter().find(|b| b.id == id) }
    }

    pub(super) fn buffer_mut(&mut self, id: usize) -> Option<&mut Buffer> {
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
        let opts = self.global_opts.clone();
        self.buffers.push(Buffer::new(self.next_buf, Document::new(""), None, opts).for_window(self.win.id));
        self.next_buf
    }

    /// Loads `text` into a new modified buffer without a file, not shown (`rim - -`).
    pub fn add_text(&mut self, text: &str) {
        let id = self.new_scratch();
        let b = self.buffers.iter_mut().find(|b| b.id == id).expect("just added");
        b.doc = Document::from_string(text.to_string());
        b.modified = true;
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
        // `close_buffer` of the buffer left and `get_winopts` of the one entered.
        self.save_winopts(self.buffers[i].id, self.win.id, self.win.opts.clone());
        self.win.opts = self.get_winopts(self.win.id, id);
        self.win.reset_view();
        (self.win.line, self.win.col) = self.pos_of(self.buf.doc.text().floor_char_boundary(self.buf.last));
        self.clamp_normal();
        self.check_modelines();
    }

    /// `buflist_setfpos` with `copy_options`: window `win` leaves buffer `buf` and its options are kept for it.
    pub(super) fn save_winopts(&mut self, buf: usize, win: usize, opts: WinOpts) {
        let Some(b) = self.buffer_mut(buf) else { return };
        let mut wip = match b.wininfo.iter().position(|w| w.win == Some(win)) {
            Some(i) => b.wininfo.remove(i),
            None => WinInfo { win: Some(win), opts: None },
        };
        wip.opts = Some(opts);
        b.wininfo.insert(0, wip);
    }

    /// The window `id`, wherever it is parked.
    fn window_by_id(&self, id: usize) -> Option<&super::windows::Window> {
        if self.win.id == id { Some(&self.win) } else { self.windows.iter().find(|w| w.id == id) }
    }

    /// `get_winopts`: the window-local options window `win` gets for `buf`, which it enters: those it had there last
    /// time or, if it never was in it, those of the window that has it now or had it last, else its own global ones.
    pub(super) fn get_winopts(&self, win: usize, buf: usize) -> WinOpts {
        let all = self.window_by_id(win).map(|w| w.all_opts.clone()).unwrap_or_default();
        let Some(b) = self.buffer(buf) else { return all };
        let shows = |w: Option<usize>| w.and_then(|w| self.window_by_id(w)).is_some_and(|w| w.buf == buf);
        // `find_wininfo`: this window's entry with options, else the first one with options or whose window shows the buffer.
        let wip = b
            .wininfo
            .iter()
            .find(|w| w.win == Some(win) && w.opts.is_some())
            .or_else(|| b.wininfo.iter().find(|w| w.opts.is_some() || shows(w.win)));
        match wip {
            Some(w) if w.win != Some(win) && shows(w.win) => self.window_by_id(w.win.expect("shows a window")).map(|w| w.opts.clone()).unwrap_or(all),
            Some(WinInfo { opts: Some(o), .. }) => o.clone(),
            _ => all,
        }
    }

    /// `win_free`: no buffer remembers window `id` any more; of the entries without a window only the first is kept.
    pub(super) fn free_window(&mut self, id: usize) {
        for b in self.buffers.iter_mut().chain([&mut self.buf]) {
            let pos_wip = b.wininfo.iter().rposition(|w| w.win == Some(id));
            let pos_null = b.wininfo.iter().rposition(|w| w.win.is_none());
            if let Some(p) = pos_wip {
                b.wininfo[p].win = None;
                if let Some(n) = pos_null {
                    b.wininfo.remove(n.max(p));
                }
            }
        }
    }

    /// The modelines of the current buffer, once, when a file is first shown (Neovim reads a file when it enters it).
    pub(super) fn check_modelines(&mut self) {
        if std::mem::take(&mut self.buf.modelines_pending) {
            self.do_modelines();
        }
    }

    /// `:e file`: switches to the buffer of `file`, or loads it into a new one. `reload`: the command
    /// reads the file again when the buffer already holds it (Neovim's `:e`; `:sp`/`:vs` only switch).
    pub(super) fn edit_file(&mut self, file: &str, bang: bool, reload: bool) -> Result<(), String> {
        let path = super::fname(file);
        // `expand_filename` expands wildcards for `:e`/`:sp`: a `~user` there is no user for leaves
        // nothing to open, and Neovim says `E79` after a bare newline, with a plain message (no error,
        // the line goes on).
        if path.to_str().and_then(|s| s.strip_prefix('~')).is_some_and(|rest| !rest.is_empty() && !rest.starts_with('/')) {
            // `msg_putchar('\n')`, `msg(...)`, `msg_start()`: a line before and after in a redirection.
            self.capture_msg("", false);
            self.info("E79: Cannot expand wildcards");
            self.capture_msg("", false);
            return Ok(());
        }
        if let Some(id) = self.all_buffers().iter().find(|b| b.path.as_deref().is_some_and(|p| same_file(p, &path))).map(|b| b.id) {
            if reload && id == self.buf.id {
                if !bang && self.is_dirty() {
                    return Err(ex::DIRTY.into());
                }
                self.reload();
                return Ok(());
            }
            self.switch_buffer(id);
            return Ok(());
        }
        let (doc, endofline, had_bytes) = read_doc(&path).map_err(|e| format!("\"{file}\": {e}"))?;
        // The empty buffer of a start without a file is reused, like vim does.
        if self.buf.path.is_none() && !self.buf.is_dirty() && self.buf.doc.text().is_empty() && self.buf.listed {
            self.buf = Buffer::new(self.buf.id, doc, Some(path), self.global_opts.clone()).for_window(self.win.id);
            // `get_winopts` of the file now in the window: it was never there.
            self.win.opts = self.get_winopts(self.win.id, self.buf.id);
            self.win.reset_view();
            (self.win.line, self.win.col) = (0, 0);
        } else {
            self.next_buf += 1;
            self.buffers.push(Buffer::new(self.next_buf, doc, Some(path), self.global_opts.clone()).for_window(self.win.id));
            self.switch_buffer(self.next_buf);
        }
        (self.buf.opts.endofline, self.buf.empty_at_open) = (endofline, !had_bytes);
        self.buf.save_file_ff();
        self.check_modelines();
        // `readfile` gives the file info unless `'shortmess'` has `F` (Neovim's default has it).
        if !self.buf.opts.shortmess('F') {
            self.info(self.file_info());
        }
        Ok(())
    }

    /// Loads `path` into a new buffer without showing it (`rim a b`); a file already loaded is skipped.
    pub fn open_more(&mut self, path: PathBuf) -> io::Result<()> {
        if self.all_buffers().iter().any(|b| b.path.as_deref().is_some_and(|p| same_file(p, &path))) {
            return Ok(());
        }
        let (doc, endofline, had_bytes) = read_doc(&path)?;
        self.next_buf += 1;
        let mut b = Buffer::new(self.next_buf, doc, Some(path), self.global_opts.clone()).for_window(self.win.id);
        (b.opts.endofline, b.empty_at_open) = (endofline, !had_bytes);
        b.save_file_ff();
        self.buffers.push(b);
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
        let home = std::env::var("HOME").unwrap_or_default();
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
                let name = super::short_name(&b.name(), &home);
                format!("{:>3} {flag} {}\"{name}\" line {}", b.id, if b.is_dirty() { "+ " } else { "" }, line + 1)
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
        let last = {
            let b = self.buffer(other).expect("listed");
            let t = b.doc.text();
            let off = b.last.min(t.len());
            let line = t.offset_to_line(off);
            Mark { line, col: off - t.line_to_offset(line) }
        };
        let shown: Vec<usize> = self.windows.iter().filter(|w| w.buf == id).map(|w| w.id).collect();
        for win in shown {
            let opts = self.get_winopts(win, other);
            let w = self.windows.iter_mut().find(|w| w.id == win).expect("listed above");
            (w.buf, w.off, w.opts) = (other, last, opts);
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
        // The last line gets its line break unless `'binary'`/`'nofixendofline'` leave it to `'endofline'`.
        let final_eol = !((b.opts.binary || !b.opts.fixendofline) && !b.opts.endofline);
        let empty = b.ml_empty();
        let mut ok = self.wait_saves_where(|s| same_file(&s.path, &path));
        let handle = {
            let (path, text) = (path.clone(), text.clone());
            thread::spawn(move || ex::write_atomic(&path, &text, eol, final_eol, empty))
        };
        // A write is a command of its own in Neovim (`msg_scroll`): its message is never cut.
        self.info_whole(writing_msg(&path));
        let seq = self.msgs.seq;
        self.saves.push(Saving { buf: id, path, eol, handle, seq });
        // `u_update_save_nr`: the change this text ends with is the one of this write (`:earlier 1f`).
        // `unchanged()`, `save_file_ff()` and `u_unchanged()` as the write begins (`bufwrite.c`): later edits and the steps they
        // make count from here; a write that fails gives the flag back.
        if let Some(b) = self.buffer_mut(id) {
            b.undo.update_save_nr();
            b.modified = false;
            b.save_file_ff();
            b.undo.unchanged();
        }
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
                }
                Err(e) => {
                    self.error(format!("Save failed: {e}"));
                    if let Some(b) = self.buffer_mut(s.buf) {
                        b.modified = true;
                    }
                    ok = false;
                }
            }
        }
        self.msgs.scroll = scroll;
        ok
    }
}
