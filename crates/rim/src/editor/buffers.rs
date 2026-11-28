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

/// Where `do_buffer_ext` starts looking (`DOBUF_CURRENT`, `DOBUF_FIRST`, `DOBUF_LAST`, `DOBUF_MOD`).
#[derive(Clone, Copy, PartialEq)]
pub(super) enum BufStart {
    Current,
    First,
    Last,
    Mod,
}

pub(super) struct Buffer {
    /// Number shown by `:ls` and taken by `:b N`, never reused.
    pub id: usize,
    pub doc: Document,
    /// The file; none for a buffer made by `:enew` or started without one (`[No Name]`).
    pub path: Option<PathBuf>,
    /// When the buffer was last left, as a tick of `Editor::clock` (`wildmode=lastused`).
    pub used: u64,
    /// `b:changedtick`: counted where Neovim's `changed_common()`, `changed()` and `unchanged()` count (commands rim lacks are not).
    pub changedtick: u64,
    /// `BF_NEVERLOADED`: made by `badd` or `bufadd()` and not read yet.
    pub never_loaded: bool,
    /// `BF_NOTEDITED`: the name is not the one of the file read (after `:file name`).
    pub notedited: bool,
    /// `BF_NEW`: the file did not exist when the buffer was made.
    pub new_file: bool,
    /// `BF_READERR`: the file could not be read.
    pub read_error: bool,
    /// `b_sfname`: the name as it was typed when the buffer got it (`./x`, `d/`, an absolute one); none: the full name under the
    /// current directory is shortened (`shorten_fnames`, after `:cd`).
    pub sfname: Option<String>,
    /// `b_did_warn`: `W10` was given for this readonly buffer.
    pub did_warn: bool,
    /// `b_last_used`: when the buffer was last used (seconds; 0 before it was).
    pub last_used: i64,
    /// `b_ml.ml_mfp == NULL`: the text is not in memory; it is read again when the buffer is entered.
    pub unloaded: bool,
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
    /// `wi_mark`: the cursor line (1-based, 0 for a buffer entered but not left yet) and column the window had there.
    pub lnum: usize,
    pub col: usize,
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
            last_used: 0,
            did_warn: false,
            changedtick: 2,
            never_loaded: false,
            notedited: false,
            new_file: false,
            read_error: false,
            sfname: None,
            unloaded: false,
            modelines_pending,
            undo: UndoTree::new(doc_empty),
        }
    }

    /// `buflist_new`: the buffer is created for window `win`, which has no options for it yet.
    pub fn for_window(mut self, win: usize) -> Self {
        self.wininfo.push(WinInfo { win: Some(win), opts: None, lnum: 0, col: 0 });
        self
    }

    /// The buffer of the first window at the start: its window has been in it (`line 1`), where a buffer made by `buflist_new` later has not.
    pub fn first_in_window(mut self) -> Self {
        if let Some(w) = self.wininfo.first_mut() {
            w.lnum = 1;
        }
        self
    }

    /// `buf_freeall` + `buf_clear_file`: the text and the undo information go, the name, the marks and what each window had stay.
    pub fn unload(&mut self) {
        self.doc = Document::new("");
        self.modified = false;
        self.start_eol = self.doc.eol();
        (self.opts.endofline, self.start_endofline) = (true, true);
        self.loaded = self.doc.text().clone();
        self.empty_at_open = true;
        self.undo = UndoTree::new(true);
        (self.u_line, self.syntax, self.new_change) = (None, None, false);
        self.cols = RefCell::default();
        self.unloaded = true;
    }

    /// The buffer read from its file again (`open_buffer` of an unloaded buffer).
    pub fn load(&mut self, doc: Document, endofline: bool, had_bytes: bool) {
        self.start_eol = doc.eol();
        self.loaded = doc.text().clone();
        self.undo = UndoTree::new(doc.text().is_empty());
        self.doc = doc;
        self.modified = false;
        (self.opts.endofline, self.empty_at_open) = (endofline, !had_bytes);
        self.save_file_ff();
        self.modelines_pending = self.path.is_some();
        self.unloaded = false;
        // `readfile`: `'[` is the first line read and `']` the last.
        let last = self.doc.text().line_count().saturating_sub(1);
        self.marks.insert('[', Mark { line: 0, col: 0 });
        self.marks.insert(']', Mark { line: last, col: 0 });
        // A buffer that was never loaded counts the read once, one that was loaded before twice (`ml_open` and `unchanged()`).
        self.changedtick += if std::mem::take(&mut self.never_loaded) { 1 } else { 2 };
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
    /// `b:changedtick` is an item of the buffer's own dictionary, read-only and fixed: the counter is copied into it before the
    /// dictionary is read.
    pub fn sync_tick(&self) {
        self.vars.borrow_mut().insert_fixed("changedtick".into(), super::script::Value::Int(self.changedtick as i64), super::script::Lock::Fixed);
    }

    pub fn ff_differs(&self) -> bool {
        // `file_ff_differs`: a buffer that was never loaded has no file format to differ from.
        !self.unloaded && (self.doc.eol() != self.start_eol || ((self.opts.binary || !self.opts.fixendofline) && self.opts.endofline != self.start_endofline))
    }

    /// A `buftype=nofile` buffer is never modified.
    pub fn is_dirty(&self) -> bool {
        !self.opts.nofile && (self.modified || self.ff_differs())
    }

    /// The file name as shown to the user.
    pub fn name(&self) -> String {
        self.path.as_ref().map_or_else(|| self.title.unwrap_or("[No Name]").into(), |p| self.sfname.clone().unwrap_or_else(|| shorten_fname(p)))
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

/// `shorten_fname`: a full name under the current directory is shown without it; any other name as it is.
pub(super) fn shorten_fname(p: &Path) -> String {
    let full = p.display().to_string();
    if let Ok(cwd) = std::env::current_dir() {
        let cwd = cwd.display().to_string();
        if let Some(rest) = full.strip_prefix(&cwd).filter(|r| r.starts_with('/') && cwd != "/") {
            return rest.trim_start_matches('/').to_string();
        }
    }
    full
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


    /// A new empty buffer without a file, not shown yet; returns its id.
    pub(super) fn new_scratch(&mut self) -> usize {
        self.next_buf += 1;
        let opts = self.global_opts.clone();
        self.buffers.push(Buffer::new(self.next_buf, Document::new(""), None, opts).for_window(self.win.id));
        self.next_buf
    }

    /// `buflist_new(name, NULL, 1, 0)`: an unlisted buffer for `name`, not shown; returns its number.
    pub(super) fn buflist_add(&mut self, name: &str) -> usize {
        self.buflist_add_path(PathBuf::from(name))
    }

    /// `buflist_add` for a name that is a path already.
    pub(super) fn buflist_add_path(&mut self, path: PathBuf) -> usize {
        self.next_buf += 1;
        let mut b = Buffer::new(self.next_buf, Document::new(""), Some(path), self.global_opts.clone()).for_window(self.win.id);
        (b.listed, b.unloaded, b.changedtick, b.never_loaded) = (false, true, 1, true);
        self.buffers.push(b);
        self.next_buf
    }

    /// Loads `text` into a new modified buffer without a file, not shown (`rim - -`).
    pub fn add_text(&mut self, text: &str) {
        let id = self.new_scratch();
        let b = self.buffers.iter_mut().find(|b| b.id == id).expect("just added");
        b.doc = Document::from_string(text.to_string());
        b.modified = true;
    }

    /// `buf_hide`: a buffer that leaves its last window stays loaded ('hidden', or `:hide cmd`).
    // shortcut: no 'bufhidden', when the option exists
    pub(super) fn buf_hide(&self) -> bool {
        self.buf_hide_of(&self.buf)
    }

    /// `buf_hide(buf)`: 'bufhidden' decides first, then 'hidden' and `:hide`.
    pub(super) fn buf_hide_of(&self, b: &Buffer) -> bool {
        match b.opts.bufhidden.as_str() {
            "unload" | "wipe" | "delete" => false,
            "hide" => true,
            _ => self.buf.opts.hidden || self.scripts.cmod_hide,
        }
    }

    /// Whether a window shows buffer `id`.
    pub(super) fn shown_in_a_window(&self, id: usize) -> bool {
        self.win.buf == id || self.windows.iter().any(|w| w.buf == id)
    }

    /// The end of `close_buffer(win, buf, unload)` for a buffer a window left: with `unload`, one that no window shows is freed.
    pub(super) fn unload_if_unused(&mut self, id: usize, unload: bool) {
        if self.shown_in_a_window(id) {
            return;
        }
        // 'bufhidden' forces the end of a buffer that leaves its last window.
        let action = match self.buffer(id).map(|b| b.opts.bufhidden.as_str()) {
            Some("delete") => Some(super::bufdel::BufAction::Del),
            Some("wipe") => Some(super::bufdel::BufAction::Wipe),
            Some("unload") => Some(super::bufdel::BufAction::Unload),
            _ => unload.then_some(super::bufdel::BufAction::Unload),
        };
        if let Some(a) = action {
            self.close_buffer_action(id, a);
        }
    }

    /// `open_buffer` of the buffer just entered when it was unloaded: its file is read again.
    /// The name of the current buffer as `filemess` shows it (home as `~`).
    fn buf_short_name(&self) -> String {
        super::short_name(&self.buf.name(), &std::env::var("HOME").unwrap_or_default())
    }

    /// `b_sfname` of buffer `id`: the name as typed.
    pub(super) fn set_sfname(&mut self, id: usize, typed: &str) {
        if let Some(b) = self.buffer_mut(id) {
            b.sfname = Some(typed.to_string());
        }
    }

    /// `:file`, `:file name`, `:0file`: `ex_file` and `rename_buffer`.
    pub(super) fn ex_file(&mut self, bang: bool, addr_count: u32, line2: i64, arg: &str) -> Result<(), String> {
        if addr_count > 0 && (!arg.is_empty() || line2 > 0 || addr_count > 1) {
            return Err("E474: Invalid argument".into());
        }
        if !arg.is_empty() || addr_count == 1 {
            self.rename_buffer(arg)?;
        }
        // The name goes on the message line, unless 'shortmess' has `F` and a name was given.
        if arg.is_empty() || !self.buf.opts.shortmess('F') {
            if bang {
                // `dont_truncate`: `msg_start()` and `msg_scroll`, the message is whole.
                let text = self.file_info_whole();
                self.capture_msg("", false);
                self.info_whole(text);
            } else {
                let text = self.file_info();
                self.info(text);
            }
        }
        Ok(())
    }

    /// `rename_buffer`: the current buffer gets the name `new` (none: no name); the old name goes to an unlisted buffer that is
    /// the alternate file now.
    fn rename_buffer(&mut self, new: &str) -> Result<(), String> {
        let (old_path, old_name) = (self.buf.path.clone(), self.buf.name());
        if new.is_empty() {
            (self.buf.path, self.buf.sfname) = (None, None);
        } else {
            let path = super::fname(new);
            // `setfname`: a name another buffer has: refused when it is loaded or in a window, else that buffer goes.
            let other = self.all_buffers().iter().find(|b| b.id != self.buf.id && b.path.as_deref().is_some_and(|p| same_file(p, &path))).map(|b| b.id);
            if let Some(o) = other {
                if self.buffer(o).is_some_and(|b| !b.unloaded) || self.shown_in_a_window(o) {
                    return Err("E95: Buffer with this name already exists".into());
                }
                self.close_buffer_action(o, super::bufdel::BufAction::Wipe);
            }
            self.buf.path = Some(path);
            self.buf.sfname = Some(new.to_string());
        }
        self.buf.notedited = true;
        if let Some(old) = old_path.filter(|_| !old_name.is_empty()) {
            // `buflist_new(.., lnum, 0)`: the buffer of that name (this one, when the name did not change) and the line the
            // cursor is on for this window.
            let lnum = self.win.line + 1;
            let found = self.all_buffers().iter().find(|b| b.path.as_deref().is_some_and(|p| same_file(p, &old))).map(|b| b.id);
            let id = found.unwrap_or_else(|| {
                let id = self.buflist_add_path(old);
                self.set_sfname(id, &old_name);
                id
            });
            let win = self.win.id;
            if let Some(w) = self.buffer_mut(id).and_then(|b| b.wininfo.iter_mut().find(|w| w.win == Some(win))) {
                w.lnum = lnum;
            }
            self.win.alt = Some(id);
        }
        Ok(())
    }

    /// `:badd [+lnum] file`, `:balt`: `do_ecmd` with `ECMD_ADDBUF`/`ECMD_ALTBUF` lists the file without editing it; `balt`
    /// also makes it the alternate file.
    pub(super) fn ex_badd(&mut self, alt: bool, arg: &str) -> Result<(), String> {
        let (cmd, file) = super::script::cmdline::getargcmd(arg);
        let file = file.trim_end_matches([' ', '\t']);
        if file.is_empty() {
            return Ok(());
        }
        let path = super::fname(file);
        // `atol(command)`: the line the buffer starts at; none gives 0, and a command that is not a number 1.
        let lnum = cmd.map(|c| {
            let n: i64 = c.bytes().take_while(u8::is_ascii_digit).fold(0i64, |a, d| a.saturating_mul(10).saturating_add(i64::from(d - b'0')));
            n.max(1) as usize
        });
        let found = self.all_buffers().iter().find(|b| b.path.as_deref().is_some_and(|p| same_file(p, &path))).map(|b| b.id);
        let id = match found {
            Some(id) => id,
            None => {
                let id = self.buflist_add_path(path);
                self.set_sfname(id, file);
                if let Some(w) = self.buffers.iter_mut().find(|b| b.id == id).and_then(|b| b.wininfo.first_mut()) {
                    w.win = None;
                }
                id
            }
        };
        if let Some(b) = self.buffers.iter_mut().find(|b| b.id == id) {
            b.listed = true;
            if let Some(l) = lnum
                && let Some(w) = b.wininfo.first_mut()
            {
                w.lnum = l;
            }
        }
        if alt {
            self.win.alt = Some(id);
        }
        Ok(())
    }

    /// `readfile`'s `filemess(.., "is a directory")` for the buffer just read.
    pub(super) fn dir_message(&mut self) {
        // `if (!silent)`: 'shortmess' `F` (the default) keeps it quiet.
        if !self.buf.opts.shortmess('F') && self.buf.path.as_deref().is_some_and(|p| p.is_dir()) {
            let name = self.buf_short_name();
            self.info(format!("\"{name}\" is a directory"));
        }
    }

    pub(super) fn load_current(&mut self) {
        if !self.buf.unloaded {
            return;
        }
        match self.buf.path.clone().map(|p| read_doc(&p)) {
            Some(Ok((doc, endofline, had_bytes))) => {
                self.buf.load(doc, endofline, had_bytes);
                self.dir_message();
            }
            Some(Err(_)) => {
                self.buf.load(Document::new(""), true, false);
                self.denied_message();
            }
            None => self.buf.load(Document::new(""), true, false),
        }
    }

    /// `readfile` when the file cannot be opened: `[Permission Denied]`, and the buffer is 'readonly' (`w!` is needed).
    pub(super) fn denied_message(&mut self) {
        self.buf.opts.readonly = true;
        let name = self.buf_short_name();
        self.info(format!("\"{name}\" [Permission Denied]"));
    }

    /// `b_nwindows` of the current buffer: the current window and the others that show it.
    pub(super) fn buf_nwindows(&self) -> usize {
        1 + self.windows.iter().filter(|w| w.buf == self.buf.id).count()
    }

    /// `curbuf_reusable`: a file takes the buffer over when it has no name, no text, no change and one window.
    pub(super) fn curbuf_reusable(&self) -> bool {
        self.buf.path.is_none() && self.buf.title.is_none() && self.buf.listed && self.buf_nwindows() <= 1 && self.buf.doc.text().is_empty() && !self.buf.is_dirty()
    }

    /// `buflist_new(.., BLN_CURBUF)` for a buffer that stays reusable: the same number, nothing else kept.
    fn reuse_curbuf(&mut self, doc: Document, path: Option<PathBuf>) {
        // `do_ecmd` makes the buffer the alternate one first and gives the old alternate back when the buffer is reused;
        // with none before, the buffer is its own alternate.
        self.win.alt = self.win.alt.or(Some(self.buf.id));
        let tick = self.buf.changedtick;
        self.buf = Buffer::new(self.buf.id, doc, path, self.global_opts.clone()).for_window(self.win.id);
        // `buf_freeall` and `readfile` of the reused buffer count twice.
        self.buf.changedtick = tick + 2;
        // The buffer stays in its window: `do_ecmd` does not read the window options again (`get_winopts` is for a buffer that was
        // not the current one).
        self.win.reset_view();
        (self.win.line, self.win.col) = (0, 0);
        // `do_ecmd` ends with the buffer used now.
        self.buf.last_used = super::undo::now();
    }

    /// `:enew`: an empty buffer without a file in the current window (the current one when it is `curbuf_reusable`). `hide`:
    /// `ECMD_HIDE`, the buffer left is not unloaded.
    pub(super) fn enew(&mut self, bang: bool, hide: bool, split: bool) -> Result<(), String> {
        // `do_exedit`: `setpcmark()` before `do_ecmd`.
        self.set_jump();
        if self.curbuf_reusable() {
            self.reuse_curbuf(Document::new(""), None);
            return Ok(());
        }
        if !bang && !self.buf_hide() && self.buf_nwindows() == 1 && self.buf.is_dirty() {
            return Err(ex::DIRTY.into());
        }
        let prev = self.buf.id;
        let id = self.new_scratch();
        self.switch_buffer_as(id, !split);
        self.unload_if_unused(prev, !hide);
        Ok(())
    }

    /// Shows buffer `id` in the current window, its cursor where it was left.
    pub(super) fn switch_buffer(&mut self, id: usize) {
        self.switch_buffer_as(id, true);
    }

    /// `switch_buffer`; without `leave` the window does not remember what it had in the buffer it leaves (`do_ecmd` with no
    /// `oldwin`, after a split).
    pub(super) fn switch_buffer_as(&mut self, id: usize, leave: bool) {
        if id == self.buf.id {
            return;
        }
        let i = self.buffers.iter().position(|b| b.id == id).expect("switch to a known buffer");
        self.buf.last = self.offset();
        self.clock += 1;
        self.buf.used = self.clock;
        mem::swap(&mut self.buf, &mut self.buffers[i]);
        // `enter_buffer`.
        self.buf.last_used = super::undo::now();
        self.load_current();
        self.win.alt = Some(self.buffers[i].id);
        self.win.buf = id;
        // `close_buffer` of the buffer left and `get_winopts` of the one entered.
        if leave {
            self.save_winopts(self.buffers[i].id, self.win.id, self.win.opts.clone(), (self.win.line + 1, self.win.col));
        }
        self.win.opts = self.get_winopts(self.win.id, id);
        self.win.reset_view();
        (self.win.line, self.win.col) = self.pos_of(self.buf.doc.text().floor_char_boundary(self.buf.last));
        self.clamp_normal();
        self.check_modelines();
    }

    /// `buflist_setfpos` with `copy_options`: window `win` leaves buffer `buf` and its options are kept for it.
    /// `buflist_setfpos(buf, win, lnum, col, true)`: the window leaves the buffer with its options and cursor.
    pub(super) fn save_winopts(&mut self, buf: usize, win: usize, opts: WinOpts, (lnum, col): (usize, usize)) {
        let Some(b) = self.buffer_mut(buf) else { return };
        let mut wip = match b.wininfo.iter().position(|w| w.win == Some(win)) {
            Some(i) => b.wininfo.remove(i),
            // A new entry has line 1 even when the window gives 0.
            None => WinInfo { win: Some(win), opts: None, lnum: 1, col: 0 },
        };
        // A new entry sets its line even when it is 0.
        if lnum != 0 {
            (wip.lnum, wip.col) = (lnum, col);
        }
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
        self.edit_file_ex(file, bang, reload, reload)
    }

    /// `edit_file`; `leave`: the window remembers its place in the buffer it leaves (`do_ecmd` with an `oldwin`).
    pub(super) fn edit_file_ex(&mut self, file: &str, bang: bool, reload: bool, leave: bool) -> Result<(), String> {
        // `do_exedit`: `setpcmark()` before `do_ecmd`.
        self.set_jump();
        let r = self.edit_file_inner(file, bang, reload, leave);
        if r.is_ok() {
            // `do_ecmd` ends with the buffer used now.
            self.buf.last_used = super::undo::now();
        }
        r
    }

    fn edit_file_inner(&mut self, file: &str, bang: bool, reload: bool, leave: bool) -> Result<(), String> {
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
        // `do_ecmd`: the buffer left is unloaded when it is not hidden (`ECMD_HIDE`), and refuses to go when it is changed.
        let (hide, prev) = (self.buf_hide(), self.buf.id);
        let found = self.all_buffers().iter().find(|b| b.path.as_deref().is_some_and(|p| same_file(p, &path))).map(|b| b.id);
        if found != Some(prev) && !bang && !hide && self.buf_nwindows() == 1 && self.buf.is_dirty() {
            // `setaltfname`: the file the command wanted becomes the alternate one, in a buffer made for it when it has none.
            let alt = found.unwrap_or_else(|| {
                let id = self.buflist_add_path(path);
                self.set_sfname(id, file);
                id
            });
            self.win.alt = Some(alt);
            return Err(ex::DIRTY.into());
        }
        if let Some(id) = found {
            if reload && id == self.buf.id {
                if !bang && self.is_dirty() {
                    return Err(ex::DIRTY.into());
                }
                self.reload();
                return Ok(());
            }
            // The current buffer was made over for this file: it is read now.
            if id == prev && self.buf.unloaded {
                self.load_current();
                self.win.reset_view();
                (self.win.line, self.win.col) = (0, 0);
                return Ok(());
            }
            // `buflist_new(.., BLN_LISTED)` of a buffer that exists lists it.
            if let Some(b) = self.buffer_mut(id) {
                b.listed = true;
            }
            let loaded = self.buffer(id).is_some_and(|b| !b.unloaded);
            self.switch_buffer_as(id, leave);
            self.unload_if_unused(prev, !hide);
            // `do_ecmd` of a buffer that is loaded already: `msg_start()` before the file info (`'shortmess'` `F` has it off).
            if loaded {
                self.capture_msg("", false);
            }
            return Ok(());
        }
        let (doc, endofline, had_bytes, denied) = match read_doc(&path) {
            Ok((d, e, h)) => (d, e, h, false),
            Err(_) => (Document::new(""), true, false, true),
        };
        let path_exists = path.exists();
        if self.curbuf_reusable() {
            self.reuse_curbuf(doc, Some(path));
            self.buf.sfname = Some(file.to_string());
        } else {
            self.next_buf += 1;
            let mut b = Buffer::new(self.next_buf, doc, Some(path), self.global_opts.clone()).for_window(self.win.id);
            b.sfname = Some(file.to_string());
            self.buffers.push(b);
            self.switch_buffer_as(self.next_buf, leave);
            self.unload_if_unused(prev, !hide);
        }
        (self.buf.opts.endofline, self.buf.empty_at_open) = (endofline, !had_bytes);
        self.buf.save_file_ff();
        if denied {
            self.denied_message();
            self.buf.read_error = true;
        }
        self.buf.new_file = !denied && !path_exists;
        self.dir_message();
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
        // The buffer is not loaded until it is entered, as Neovim's arguments are; a file that cannot be read is reported then.
        self.next_buf += 1;
        // `shorten_fnames(false)` at the start only shortens an absolute name: a relative one stays as typed.
        let typed = (!path.is_absolute()).then(|| path.display().to_string());
        let mut b = Buffer::new(self.next_buf, Document::new(""), Some(path), self.global_opts.clone()).for_window(self.win.id);
        b.sfname = typed;
        b.unload();
        self.arglist.push(super::arglist::ArgEntry { fname: b.name(), fnum: b.id });
        self.buffers.push(b);
        Ok(())
    }

    /// `do_buffer_ext(DOBUF_GOTO / DOBUF_SPLIT, ..)`: go to a buffer, `start` says where the search begins and `count` how
    /// far it goes. Errors are given here (`emsg`); false after one.
    pub(super) fn do_buffer_goto(&mut self, split: bool, start: BufStart, forward: bool, count: i64, forceit: bool) -> bool {
        let ids: Vec<usize> = self.all_buffers().iter().map(|b| b.id).collect();
        let listed = |e: &Editor, id: usize| e.buffer(id).is_some_and(|b| b.listed);
        let next = |id: usize, fwd: bool| {
            let i = ids.iter().position(|&x| x == id).expect("a buffer in the list");
            if fwd { ids[(i + 1) % ids.len()] } else { ids[(i + ids.len() - 1) % ids.len()] }
        };
        let cur = self.buf.id;
        let mut buf = Some(match start {
            BufStart::First => ids[0],
            BufStart::Last => ids[ids.len() - 1],
            BufStart::Current | BufStart::Mod => cur,
        });
        if start == BufStart::Mod {
            // The next modified buffer.
            let mut b = cur;
            for _ in 0..count.max(0) {
                loop {
                    b = next(b, true);
                    if b == cur || self.buffer(b).is_some_and(Buffer::is_dirty) {
                        break;
                    }
                }
            }
            if !self.buffer(b).is_some_and(Buffer::is_dirty) {
                self.error("E84: No modified buffer found");
                return false;
            }
            buf = Some(b);
        } else if start == BufStart::First && count != 0 {
            // The buffer with that number.
            buf = ids.iter().copied().find(|&id| id as i64 == count);
        } else {
            let (mut b, mut bp, mut count) = (buf.expect("set above"), None, count);
            while count > 0 || (bp != Some(b) && !listed(self, b)) {
                // Where it started, to come back there when no buffer is listed.
                if bp.is_none() {
                    bp = Some(b);
                }
                b = next(b, forward);
                // Unlisted buffers are not counted.
                if listed(self, b) {
                    count -= 1;
                    bp = None;
                }
                if bp == Some(b) {
                    self.error("E85: There is no listed buffer");
                    return false;
                }
            }
            buf = Some(b);
        }
        let Some(buf) = buf else {
            if start == BufStart::First {
                self.error(format!("E86: Buffer {count} does not exist"));
            } else if forward {
                self.error("E87: Cannot go beyond last buffer");
            } else {
                self.error("E88: Cannot go before first buffer");
            }
            return false;
        };
        if split {
            self.split_window(false);
        }
        // Going to the current buffer: nothing to do.
        if buf == self.buf.id {
            return true;
        }
        // `can_abandon`: the buffer left may not be changed, unless it is hidden, shown in another window, or `!`.
        if !split && !(self.buf_hide() || !self.buf.is_dirty() || self.buf_nwindows() > 1 || forceit) {
            self.error(ex::DIRTY);
            return false;
        }
        // `set_curbuf(.., update_jumplist = true)`: the buffer left is unloaded when it is not hidden, only for `:b` (not `:sb`).
        self.set_jump();
        let (prev, unload) = (self.buf.id, !split && !self.buf_hide() && !self.buf.is_dirty());
        self.switch_buffer(buf);
        self.unload_if_unused(prev, unload);
        true
    }

    /// `:b`, `:bn`, `:bp`, `:bN`, `:bfirst`, `:brewind`, `:blast`, `:bmodified` and their `:sb` forms (`ex_buffer`, `ex_bnext`,
    /// `ex_bprevious`, `ex_brewind`, `ex_blast`, `ex_bmodified`). `addr_count` and `line2` are the range or the count.
    // shortcut: no `+cmd` argument (`CMDARG`), when `:e +cmd` has it
    pub(super) fn ex_buffer_family(&mut self, long: &str, forceit: bool, mut addr_count: u32, mut line2: i64, arg: &str) -> Result<(), String> {
        let split = long.starts_with("sb");
        let name = long.strip_prefix('s').filter(|_| split).unwrap_or(long);
        let name = if name == "bfirst" { "brewind" } else { name };
        if name == "buffer" {
            // `EX_BUFNAME`: a name that is not a count is a pattern for a buffer.
            let pat = arg.trim_end_matches([' ', '\t']);
            if !pat.is_empty() && addr_count == 0 {
                let found = self.buflist_findpat_emsg(pat, true);
                if found < 0 {
                    return Ok(());
                }
                (line2, addr_count) = (found, 1);
            } else if !arg.is_empty() {
                return Err(format!("E488: Trailing characters: {arg}"));
            }
            let ok = if addr_count == 0 { self.do_buffer_goto(split, BufStart::Current, true, 0, forceit) } else { self.do_buffer_goto(split, BufStart::First, true, line2, forceit) };
            let _ = ok;
            return Ok(());
        }
        // `ADDR_OTHER`: the default is 1, not the cursor line.
        if addr_count == 0 {
            line2 = 1;
        }
        let line2 = i64::from(line2 as i32);
        let _ = match name {
            "bnext" => self.do_buffer_goto(split, BufStart::Current, true, line2, forceit),
            "bprevious" | "bNext" => self.do_buffer_goto(split, BufStart::Current, false, line2, forceit),
            "bmodified" => self.do_buffer_goto(split, BufStart::Mod, true, line2, forceit),
            "brewind" => self.do_buffer_goto(split, BufStart::First, true, 0, forceit),
            _ => self.do_buffer_goto(split, BufStart::Last, false, 0, forceit),
        };
        Ok(())
    }

    /// `Ctrl+^`.
    pub(super) fn alternate_buffer(&mut self) {
        match self.win.alt.filter(|&id| self.buffer(id).is_some()) {
            Some(id) => self.switch_buffer(id),
            None => self.error("No alternate file"),
        }
    }

    /// `buflist_list`: `:ls[!] [flags]`. A buffer is `a` (loaded and in a window) or `h` (loaded, hidden; rim never unloads
    /// one yet), `%` current, `#` alternate, `+` modified; `line N` goes to column 40 or one blank after the name.
    // shortcut: no `'modifiable'`/`'readonly'`/terminal/`BF_READERR` buffers (flags `- = R F x`) and no `t` order, when they exist
    pub(super) fn list_buffers(&self, bang: bool, arg: &str) -> String {
        let home = std::env::var("HOME").unwrap_or_default();
        let has = |c: char| arg.contains(c);
        let mut out = String::new();
        let mut all = self.all_buffers();
        // `t`: the buffer used last first (`buf_time_compare` for `qsort`, whose order for equal times is the one of the libc).
        if has('t') {
            let mut idx: Vec<usize> = (0..all.len()).collect();
            super::script::bsd_qsort(&mut idx, &mut |x, y| all[y].last_used.cmp(&all[x].last_used));
            all = idx.into_iter().map(|i| all[i]).collect();
        }
        for b in all {
            let shown = b.id == self.buf.id || self.windows.iter().any(|w| w.buf == b.id);
            let dirty = b.is_dirty();
            let alt = Some(b.id) == self.win.alt && b.id != self.buf.id;
            if (!b.listed && !bang && !has('u'))
                || (has('u') && b.listed)
                || (has('+') && !dirty)
                || (has('a') && (b.unloaded || !shown))
                || (has('h') && (b.unloaded || shown))
                || (has('-') && b.opts.modifiable)
                || (has('=') && !b.opts.readonly)
                || has('R')
                || has('F')
                || has('x')
                || (has('%') && b.id != self.buf.id)
                || (has('#') && !alt)
            {
                continue;
            }
            let name = super::short_name(&b.name(), &home);
            // `buflist_findlnum`: the line the current window (else the last one) had in the buffer; 0 before it was left.
            let lnum = if b.id == self.buf.id { self.win.line + 1 } else { b.wininfo.iter().find(|w| w.win == Some(self.win.id)).or(b.wininfo.first()).map_or(1, |w| w.lnum) };
            let mark = if b.id == self.buf.id { '%' } else if alt { '#' } else { ' ' };
            let mut row = format!("{:>3}{}{}{}{}{} \"{name}\"", b.id, if b.listed { ' ' } else { 'u' }, mark, if b.unloaded { ' ' } else if shown { 'a' } else { 'h' }, if !b.opts.modifiable { '-' } else if b.opts.readonly { '=' } else { ' ' }, if dirty { '+' } else { ' ' });
            let pad = 40usize.saturating_sub(super::messages::cells(&row)).max(1);
            row.push_str(&" ".repeat(pad));
            if has('t') && b.last_used != 0 {
                row.push_str(&super::undo::fmt_time(b.last_used, super::undo::now()));
            } else {
                row.push_str(&format!("line {lnum}"));
            }
            out.push('\n');
            out.push_str(&row);
        }
        out
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
            // `unchanged()` counts when it clears the flag.
            b.changedtick += u64::from(b.is_dirty());
            // `BF_WRITE_MASK` goes with a write of the whole buffer.
            (b.notedited, b.new_file, b.read_error) = (false, false, false);
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
