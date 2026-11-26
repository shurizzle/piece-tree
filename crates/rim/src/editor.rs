//! Vim-like modal editor: state and key handling.
//!
//! Key handling never touches the terminal, and rendering builds a `Frame`
//! before drawing it, so both are tested without a terminal.

mod buffers;
mod builtin;
mod ex;
mod filetype;
mod graphemes;
mod layout;
mod motion;
mod objects;
mod options;
mod parse;
mod registers;
mod render;
mod search;
mod substitute;
mod syntax;
mod windows;

use std::{
    collections::HashMap,
    rc::Rc,
    fs,
    io,
    mem,
    ops::Range,
    path::{Path, PathBuf},
};

use crossterm::event::{KeyCode, KeyEvent, KeyModifiers};
use piece_tree::{Document, Text};

use objects::Obj;
pub use options::Background;
pub use registers::parse_osc52_reply;
use options::Options;
use parse::{Cmd, MAX_COUNT, OP_LOWER, OP_TOGGLE, OP_UPPER, Parse, VISUAL_KEYS, char_key, normal_char, parse, strip_counts, valid_reg};
use registers::{Reg, RegKind, Registers};
use search::Search;
use buffers::Buffer;
use graphemes::LineIndex;
use windows::Window;

const G_EARLIER: char = parse::g_key('-');
const G_LATER: char = parse::g_key('+');
const G_COUNTS: char = parse::g_key('\x07');
const G_ASCII: char = parse::g_key('a');
const G_UTF8: char = parse::g_key('8');
const G_BYTE: char = parse::g_key('o');
const G_NEXT: char = parse::g_key('n');
const G_PREV: char = parse::g_key('N');
const G_DOWN: char = parse::g_key('j');
const G_UP: char = parse::g_key('k');
const G_SUBST: char = parse::g_key('&');
const G_VISUAL: char = parse::g_key('v');
const G_INSERT: char = parse::g_key('i');
const G_JOIN: char = parse::g_key('J');
const G_PASTE: char = parse::g_key('p');
const G_PASTE_BEFORE: char = parse::g_key('P');
const G_OLDER_CHANGE: char = parse::g_key(';');
const G_NEWER_CHANGE: char = parse::g_key(',');
/// Entries kept in a jump list and a change list.
const LIST_MAX: usize = 100;

/// Most bytes `:compact` and the idle compaction copy pieces into per chunk: the size of the
/// library's largest add chunk, so a compacted text has as many chunks as a typed one.
const COMPACT_MAX: usize = 64 * 1024;

/// Nesting limit for macros calling macros (`qa@aq@a` would never end).
const MAX_MACRO_DEPTH: usize = 100;

/// `(line, col)`, col in chars.
type Pos = (usize, usize);

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum VKind {
    Char,
    Line,
    Block,
}

#[derive(Debug, PartialEq, Eq)]
pub enum Mode {
    Normal,
    Insert,
    Visual(VKind),
    Command(String),
    Search(String),
    /// Answering the prompt of `:s///c`.
    Confirm,
}

#[derive(Clone, Copy, PartialEq, Eq)]
enum Kind {
    Exclusive,
    Inclusive,
    Linewise,
}

/// What `.` replays: `count` (replaced by a new one), the command keys without counts, then the
/// keys typed after it (insert text, Visual keys).
#[derive(Clone, Debug)]
struct LastChange {
    count: Option<usize>,
    cmd: String,
    tail: Vec<KeyEvent>,
}

/// Block `I`/`A`/`c`: on Esc, the text typed on the first line is copied to `lines` at screen
/// column `x` (`usize::MAX`: each line's end), padding short lines with spaces when `pad`.
struct BlockInsert {
    start: Pos,
    lines: Range<usize>,
    x: usize,
    pad: bool,
}

/// Vim word classes: blank (including `\n`), word chars, other punctuation.
fn class(c: char) -> u8 {
    if c.is_whitespace() {
        0
    } else if c.is_alphanumeric() || c == '_' {
        1
    } else {
        2
    }
}

fn sorted(a: Pos, b: Pos) -> (Pos, Pos) {
    if a <= b { (a, b) } else { (b, a) }
}

fn toggle_case(s: &str) -> String {
    s.chars()
        .map(|c| if c.is_uppercase() { c.to_lowercase().collect::<String>() } else { c.to_uppercase().collect() })
        .collect()
}

fn case_fn(op: char) -> Option<fn(&str) -> String> {
    match op {
        OP_LOWER => Some(str::to_lowercase),
        OP_UPPER => Some(str::to_uppercase),
        OP_TOGGLE => Some(toggle_case),
        _ => None,
    }
}

/// Byte where cluster column `col` of `s` starts (`s.len()` past the end).
fn byte_of_col(s: &str, col: usize) -> usize {
    graphemes::byte_of(s, col)
}

/// Loads `path` (missing file → empty).
pub fn read_doc(path: &Path) -> io::Result<Document> {
    let content = match fs::read_to_string(path) {
        Ok(s) => s,
        Err(e) if e.kind() == io::ErrorKind::NotFound => String::new(),
        Err(e) => return Err(e),
    };
    Ok(Document::from_string(content))
}

/// State of a `:s///c` session. Offsets are in the current text: every replacement moves `next`
/// and `end` by its size change.
struct Confirm {
    search: Search,
    rep: String,
    all: bool,
    next: usize,
    end: usize,
    n: usize,
    lines: usize,
    last_line: Option<usize>,
    /// Byte range of the match being asked about, drawn like a selection.
    cur: Range<usize>,
}

impl Confirm {
    /// Next match (and its replacement) in range; `next` past the text means none.
    fn find(&self, text: &Text) -> Option<(Range<usize>, String)> {
        if self.next > text.len() {
            return None;
        }
        text.replacement_at(&self.search.re, self.next, &self.rep).filter(|(m, _)| m.start <= self.end)
    }
}

/// Text version, pattern, lines and result of `Editor::matches_in`.
type MatchCache = (Text, std::rc::Rc<piece_tree::Regex>, Range<usize>, std::rc::Rc<Vec<Vec<Range<usize>>>>);

pub struct Editor {
    /// The current buffer and window; the others are parked in `buffers` and `windows`.
    buf: Buffer,
    win: Window,
    buffers: Vec<Buffer>,
    windows: Vec<Window>,
    split: windows::Split,
    /// Last ids given to a buffer and a window.
    next_buf: usize,
    next_win: usize,
    /// Buffer `Ctrl+^` goes back to.
    alt: Option<usize>,
    /// `:w` writes running on threads.
    saves: Vec<buffers::Saving>,
    /// Window area and cursor cell of the last frame, for `Ctrl+W hjkl`.
    screen: windows::Rect,
    cursor_cell: (usize, usize),
    msg: String,
    mode: Mode,
    /// Visual-mode selection end opposite the cursor.
    anchor: Pos,
    /// Normal-mode keys typed so far, re-parsed on every key.
    pending: String,
    regs: Registers,
    /// Register named by the current command's `"x` prefix.
    cur_reg: Option<char>,
    last_search: Option<Search>,
    /// Last `:s` (pattern, replacement, flags) for `&`, `:&`, `g&`.
    last_sub: Option<substitute::Sub>,
    /// `:s///c` in progress (mode `Confirm`).
    confirm: Option<Confirm>,
    /// incsearch: the pattern being typed after `/`, when it compiles.
    inc_search: Option<Search>,
    /// hlsearch: matches of `last_search` are highlighted until `:noh`.
    hl: bool,
    /// Cursor when `/` started, for incsearch and Esc; `?` searches backward.
    search_origin: Pos,
    search_back: bool,
    /// Where the last search offset left the cursor and the match it came from, so `n` after
    /// `/pat/e` continues from the match rather than from the moved cursor.
    search_landing: Option<(Pos, usize)>,
    /// Last `f`/`F`/`t`/`T` and its char, for `;` and `,`.
    last_find: Option<(char, char)>,
    /// Keys of the command in progress; its counts, keys without counts and key count.
    rec: Vec<KeyEvent>,
    rec_cmd: Option<(Option<usize>, String, usize)>,
    last_change: Option<LastChange>,
    /// `.` is replaying: nothing is recorded.
    replaying: bool,
    /// Keys typed in the current insert session, replayed for a count (`3ix<Esc>`);
    /// the flag opens a new line before each repeat (`3o`).
    insert_keys: Vec<KeyEvent>,
    insert_repeat: (usize, bool),
    /// Line holding only an indent added by autoindent; emptied if left that way.
    auto_indent: Option<usize>,
    block_insert: Option<BlockInsert>,
    /// Register being recorded into (`q`) and the keys so far; macros live in registers as text.
    recording: Option<char>,
    macro_keys: Vec<KeyEvent>,
    last_macro: Option<char>,
    macro_depth: usize,
    macro_abort: bool,
    quit: bool,
    /// A `Document` group is open for the current command (or insert session), so it is one
    /// undo step; `changed` says it edited the text.
    grouping: bool,
    changed: bool,
    /// Lines `:g` and `:normal` have still to visit, one entry per nested command.
    line_marks: Vec<ex::LineMarks>,
    /// Replace mode (`R`, in `Mode::Insert`): the clusters typed over, `None` for one typed past
    /// the line end, so Backspace can put them back.
    replacing: Option<Vec<Option<String>>>,
    /// Where the command's last edit happened, for the change list.
    change_off: Option<usize>,
    /// Insert mode waits for the register of `Ctrl+R` (`'r'`) or the key of `Ctrl+V` (`'v'`).
    insert_pending: Option<char>,
    /// `Ctrl+O` in Insert mode: one Normal command runs, then Insert resumes; the cursor before it.
    insert_one: Option<Pos>,
    /// Command-line history of `:` (0) and `/`/`?` (1), oldest first; the entry being shown by
    /// Up/Down and the text typed before the first of them.
    history: [Vec<String>; 2],
    hist_at: Option<(usize, String)>,
    /// `Tab` completion: candidates, the one shown, and the line before the completed word.
    completion: Option<(Vec<String>, usize, String)>,
    /// The command line waits for the register of `Ctrl+R`.
    line_reg: bool,
    /// Reads the system clipboard (an OSC 52 query, set by `main`); none in tests and on
    /// terminals the editor does not query.
    clipboard_reader: Option<Box<dyn FnMut() -> Option<String>>>,
    /// Directory holding `grammars/` and `queries/` (`main`: `<config dir>/rim`), and the grammars loaded from it by name.
    runtime: Option<PathBuf>,
    langs: HashMap<String, Option<Rc<syntax::Lang>>>,
    /// `:syntax on|off`: while off nothing is parsed or colored and the `f`/`c`/`a` objects do nothing.
    syntax_on: bool,
}

impl Editor {
    pub fn new(doc: Document, path: PathBuf) -> Self {
        Self {
            buf: Buffer::new(1, doc, path, Options::default()),
            win: Window::new(1, 1),
            buffers: Vec::new(),
            windows: Vec::new(),
            split: windows::Split::Win(1),
            next_buf: 1,
            next_win: 1,
            alt: None,
            saves: Vec::new(),
            screen: windows::Rect { x: 0, y: 0, w: 1, h: 1 },
            cursor_cell: (0, 0),
            msg: "i insert | Esc normal | :w save | :q quit".into(),
            mode: Mode::Normal,
            anchor: (0, 0),
            pending: String::new(),
            regs: Registers::default(),
            cur_reg: None,
            last_search: None,
            last_sub: None,
            confirm: None,
            inc_search: None,
            hl: false,
            search_origin: (0, 0),
            search_back: false,
            search_landing: None,
            last_find: None,
            rec: Vec::new(),
            rec_cmd: None,
            last_change: None,
            replaying: false,
            insert_keys: Vec::new(),
            insert_repeat: (1, false),
            auto_indent: None,
            block_insert: None,
            recording: None,
            macro_keys: Vec::new(),
            last_macro: None,
            macro_depth: 0,
            macro_abort: false,
            quit: false,
            grouping: false,
            changed: false,
            line_marks: Vec::new(),
            replacing: None,
            change_off: None,
            insert_pending: None,
            insert_one: None,
            history: Default::default(),
            hist_at: None,
            completion: None,
            line_reg: false,
            clipboard_reader: None,
            runtime: None,
            syntax_on: true,
            langs: HashMap::new(),
        }
    }

    pub fn open(path: PathBuf) -> io::Result<Self> {
        Ok(Self::new(read_doc(&path)?, path))
    }

    /// How `"+`/`"*` are read: `read` asks the terminal for the clipboard.
    pub fn set_clipboard_reader(&mut self, read: impl FnMut() -> Option<String> + 'static) {
        self.clipboard_reader = Some(Box::new(read));
    }

    /// Register `name` for reading: `+`/`*` ask the terminal (linewise when the text ends with a
    /// line break), with an error message when it does not answer.
    fn reg(&mut self, name: char) -> Option<Reg> {
        if !matches!(name, '+' | '*') {
            return self.regs.get(name).cloned();
        }
        match self.clipboard_reader.as_mut().and_then(|read| read()) {
            Some(text) => {
                let kind = if text.ends_with('\n') { RegKind::Line } else { RegKind::Char };
                Some(Reg { text, kind })
            }
            None => {
                self.msg = "Clipboard read failed: the terminal did not answer OSC 52".into();
                None
            }
        }
    }

    /// Reads the init file at `path` (missing: nothing): `:set` lines, `"` comments and blank lines.
    /// Any other line, or an option error, is reported with its line number and skipped.
    pub fn load_init(&mut self, path: &Path) {
        let text = match fs::read_to_string(path) {
            Ok(t) => t,
            Err(e) if e.kind() == io::ErrorKind::NotFound => return,
            Err(e) => return self.msg = format!("{}: {e}", path.display()),
        };
        let mut errors = Vec::new();
        for (i, line) in text.lines().enumerate() {
            let line = line.trim();
            let line = line.strip_prefix(':').unwrap_or(line).trim_start();
            if line.is_empty() || line.starts_with('"') {
                continue;
            }
            let (name, args) = line.split_once(char::is_whitespace).unwrap_or((line, ""));
            let res = match name {
                "se" | "set" => self.buf.opts.set(args).map(drop),
                _ if ex::abbr(name, "syn", "syntax") => self.syntax_cmd(args),
                _ => Err("only :set and :syntax are allowed".into()),
            };
            if let Err(e) = res {
                errors.push(format!("line {}: {e}", i + 1));
            }
        }
        if !errors.is_empty() {
            self.msg = format!("{}: {}", path.display(), errors.join("; "));
        }
    }

    /// Where grammars and queries live; none without it (the text stays plain).
    pub fn set_runtime(&mut self, dir: PathBuf) {
        self.runtime = Some(dir);
    }

    pub fn set_background(&mut self, bg: Background) {
        self.buf.opts.background = bg;
    }

    /// Work for when no key came for a while (`main`): compacts the text once its piece count
    /// passes `compactat`, between commands only.
    pub fn idle(&mut self) {
        let at = self.buf.opts.compactat;
        if at > 0 && self.mode == Mode::Normal && !self.grouping && self.buf.doc.text().piece_count() > at {
            self.compact();
        }
    }

    /// `:compact`: `Document::compact`, keeping a clean buffer clean. Returns the piece counts
    /// before and after.
    fn compact(&mut self) -> (usize, usize) {
        let before = self.buf.doc.text().piece_count();
        let clean = !self.is_dirty();
        self.buf.doc.compact(COMPACT_MAX);
        if clean {
            self.buf.saved = self.buf.doc.text().clone();
        }
        (before, self.buf.doc.text().piece_count())
    }

    /// `:stats`: the current version's structure, its size, and the history length.
    fn stats(&self) -> String {
        let t = self.buf.doc.text();
        format!(
            "{} pieces, {} chunks, {} bytes in memory, {} bytes, {} chars, {} lines, {} versions",
            t.piece_count(),
            t.chunk_count(),
            t.memory_bytes(),
            t.len(),
            t.char_count(),
            t.line_count(),
            self.buf.doc.history_len(),
        )
    }

    fn is_dirty(&self) -> bool {
        self.buf.is_dirty()
    }

    fn line_count(&self) -> usize {
        self.buf.doc.text().line_count()
    }

    /// Runs `f` on the `LineIndex` of `line` when it is long (kept in `Buffer::cols` across edits);
    /// None for a short line, which is scanned whole.
    fn with_index<R>(&self, line: usize, f: impl FnOnce(&LineIndex) -> R) -> Option<R> {
        let text = self.buf.doc.text();
        if text.line_end(line) - text.line_to_offset(line) < graphemes::INDEXED {
            return None;
        }
        let mut cols = self.buf.cols.borrow_mut();
        let i = match cols.iter().position(|ix| ix.is(text, line)) {
            Some(i) => i,
            None => {
                if cols.len() == buffers::INDEXES {
                    cols.remove(0);
                }
                cols.push(LineIndex::build(text, line));
                cols.len() - 1
            }
        };
        Some(f(&cols[i]))
    }

    /// Clusters in `line`.
    fn line_chars(&self, line: usize) -> usize {
        self.with_index(line, LineIndex::count).unwrap_or_else(|| graphemes::count(&self.buf.doc.text().line(line)))
    }

    /// Leading blanks of `line`, read in growing windows so a huge line is not read past its indent.
    fn first_non_blank(&self, line: usize) -> usize {
        let text = self.buf.doc.text();
        let end = text.line_end(line);
        let (mut cols, mut from, mut window) = (0, text.line_to_offset(line), 256);
        loop {
            let to = text.floor_char_boundary(from + window).min(end);
            let chunk = text.slice(from..to);
            let blanks = chunk.len() - chunk.trim_start().len();
            if blanks < chunk.len() || to == end {
                return cols + graphemes::col_of(&chunk, blanks);
            }
            cols += graphemes::count(&chunk);
            (from, window) = (to, window * 2);
        }
    }

    fn indent_of(&self, line: usize) -> String {
        self.buf.doc.text().line(line).chars().take_while(|c| c.is_whitespace()).collect()
    }

    /// Byte offset of `(line, col)`; a column past the line end means the end.
    fn offset_of(&self, (line, col): Pos) -> usize {
        let text = self.buf.doc.text();
        let b = self.with_index(line, |ix| ix.byte_of(col)).unwrap_or_else(|| byte_of_col(&text.line(line), col));
        text.line_to_offset(line) + b
    }

    /// Byte of column `col` inside `line` (its length past the end).
    fn line_byte(&self, line: usize, col: usize) -> usize {
        self.offset_of((line, col)) - self.buf.doc.text().line_to_offset(line)
    }

    /// Column of the cluster holding byte `b` of `line`.
    fn line_col(&self, line: usize, b: usize) -> usize {
        self.pos_of(self.buf.doc.text().line_to_offset(line) + b).1
    }

    /// Byte offset of the cursor.
    fn offset(&self) -> usize {
        self.offset_of((self.win.line, self.win.col))
    }

    /// Line and column of the cluster holding byte `off`.
    fn pos_of(&self, off: usize) -> Pos {
        let text = self.buf.doc.text();
        let line = text.offset_to_line(off);
        let b = off - text.line_to_offset(line);
        (line, self.with_index(line, |ix| ix.col_of(b)).unwrap_or_else(|| graphemes::col_of(&text.line(line), b)))
    }

    /// Offset of the `\n` ending `line`, or the text length on the last line.
    fn line_end_offset(&self, line: usize) -> usize {
        self.buf.doc.text().line_end(line)
    }

    fn end_pos(&self) -> Pos {
        let last = self.line_count() - 1;
        (last, self.line_chars(last))
    }

    /// First char and byte length of the cluster at `p`; `('\n', 0)` past the line end. Reads a
    /// small window of the line, grown for a long cluster.
    fn cluster_at(&self, p: Pos) -> (char, usize) {
        let text = self.buf.doc.text();
        let (off, end) = (self.offset_of(p), text.line_end(p.0));
        let mut window = 64;
        loop {
            let to = text.floor_char_boundary(off + window).min(end);
            let s = text.slice(off..to);
            let Some(c) = s.chars().next() else { return ('\n', 0) };
            let n = graphemes::next(&s, 0);
            if n < s.len() || to == end {
                return (c, n);
            }
            window *= 2;
        }
    }

    /// First char of the cluster at `p`; `\n` past the line end.
    fn char_at(&self, p: Pos) -> char {
        self.cluster_at(p).0
    }

    /// Bytes of the cluster at `p`; 0 past the line end.
    fn cluster_len(&self, p: Pos) -> usize {
        self.cluster_at(p).1
    }

    /// Screen cell of the cluster at `p` in its line, and the cells it takes (1 past the end).
    fn cell_of(&self, (line, col): Pos) -> (usize, usize) {
        let (s, ts) = (self.buf.doc.text().line(line), self.buf.opts.tabstop);
        let b = byte_of_col(&s, col);
        let w = if b < s.len() { graphemes::width(&s[b..graphemes::next(&s, b)], ts) } else { 1 };
        (graphemes::screen_col(&s, col, ts), w)
    }

    /// Visual block screen columns, inclusive: from the leftmost cell of its two corners to the
    /// last cell of the rightmost one, so tabs and wide chars keep it straight.
    fn block_cols(&self) -> (usize, usize) {
        let ((xa, wa), (xc, wc)) = (self.cell_of(self.anchor), self.cell_of((self.win.line, self.win.col)));
        (xa.min(xc), (xa + wa).max(xc + wc) - 1)
    }

    /// Clusters of `line` in the Visual block: those with a cell in its columns, or to the line end
    /// after `$`. A tab or wide char cut by an edge is taken whole.
    // shortcut: a tab cut by the block edge is taken whole (vim splits it into spaces), when someone needs exact edges
    fn block_range(&self, line: usize) -> Range<usize> {
        self.block_range_in(line, self.block_cols())
    }

    /// `block_range` for block columns `(x0, x1)` found before the edits of an operator.
    fn block_range_in(&self, line: usize, (x0, x1): (usize, usize)) -> Range<usize> {
        let dollar = self.win.want_col == usize::MAX;
        let (s, ts) = (self.buf.doc.text().line(line), self.buf.opts.tabstop);
        let (mut x, mut c, mut start, mut end) = (0, 0, None, None);
        for g in graphemes::iter(&s) {
            if !dollar && x > x1 {
                end = Some(c);
                break;
            }
            let w = graphemes::width(g, ts);
            if start.is_none() && x + w > x0 {
                start = Some(c);
            }
            (x, c) = (x + w, c + 1);
        }
        let start = start.unwrap_or(c);
        start..end.unwrap_or(c).max(start)
    }

    /// Column of `line` where text put at screen column `x` goes: the first cluster starting at or
    /// after it (after a tab or wide char that covers `x`); `Err(width)` when the line is narrower.
    fn col_at_cell(&self, line: usize, x: usize) -> Result<usize, usize> {
        let (s, ts) = (self.buf.doc.text().line(line), self.buf.opts.tabstop);
        let (mut cx, mut c) = (0, 0);
        for g in graphemes::iter(&s) {
            if cx >= x {
                return Ok(c);
            }
            (cx, c) = (cx + graphemes::width(g, ts), c + 1);
        }
        if cx >= x { Ok(c) } else { Err(cx) }
    }

    /// Byte range covered by a motion from `a` to `b` (`a <= b`).
    fn range(&self, a: Pos, b: Pos, kind: Kind) -> Range<usize> {
        if kind == Kind::Linewise {
            return self.buf.doc.text().line_to_offset(a.0)..self.line_end_offset(b.0);
        }
        let mut e = self.offset_of(b);
        if kind == Kind::Inclusive {
            e += self.cluster_len(b);
        }
        self.offset_of(a)..e
    }

    /// Runs one `Document` edit inside the command's group and moves the marks with it.
    fn edit<R>(&mut self, f: impl FnOnce(&mut Document) -> R) -> R {
        if !self.grouping {
            self.buf.doc.begin_group();
            self.grouping = true;
        }
        let before = self.buf.doc.text().clone();
        let r = f(&mut self.buf.doc);
        if let Some(e) = self.buf.doc.last_edits().last() {
            (self.changed, self.change_off) = (true, Some(e.start));
            self.map_marks(&before);
        }
        r
    }

    /// Moves every mark through the last `Document` call's edits, made to text `before`; the line
    /// indexes of `before` follow them, others are dropped.
    fn map_marks(&mut self, before: &Text) {
        let Buffer { doc, cols, syntax, .. } = &mut self.buf;
        let (edits, text) = (doc.last_edits(), doc.text());
        if let Some(s) = syntax {
            s.edit(before, edits, text);
        }
        cols.get_mut().retain_mut(|ix| ix.is_of(before) && ix.update(edits, text));
        let edits = self.buf.doc.last_edits();
        for m in self.buf.marks.values_mut() {
            *m = piece_tree::map_offset(edits, *m);
        }
        for m in &mut self.line_marks {
            m.map(edits);
        }
        for w in self.windows.iter_mut().filter(|w| w.buf == self.buf.id) {
            w.off = piece_tree::map_offset(edits, w.off);
        }
        let id = self.buf.id;
        for w in self.windows.iter_mut().chain([&mut self.win]) {
            for j in w.jumps.iter_mut().filter(|j| j.0 == id) {
                j.1 = piece_tree::map_offset(edits, j.1);
            }
        }
        for c in &mut self.buf.changes {
            *c = piece_tree::map_offset(edits, *c);
        }
        if let Some((_, a, b)) = &mut self.buf.last_visual {
            (*a, *b) = (piece_tree::map_offset(edits, *a), piece_tree::map_offset(edits, *b));
        }
    }

    fn edit_insert(&mut self, off: usize, s: &str) {
        self.edit(|d| d.insert(off, s));
    }

    fn edit_delete(&mut self, range: Range<usize>) {
        self.edit(|d| d.delete(range));
    }

    /// Replaces `range` with `s` (no change when it already holds `s`).
    fn edit_replace(&mut self, range: Range<usize>, s: &str) {
        self.edit(|d| d.splice(range, s));
    }

    /// Closes the undo group; a command that changed the text becomes the one `.` repeats.
    fn end_command(&mut self) {
        if mem::take(&mut self.grouping) {
            self.buf.doc.end_group();
        }
        let changed = mem::take(&mut self.changed);
        if changed && let Some(off) = self.change_off.take() {
            self.add_change(off);
        }
        if changed
            && !self.replaying
            && let Some((count, cmd, n)) = &self.rec_cmd
        {
            let tail = self.rec[(*n).min(self.rec.len())..].to_vec();
            self.last_change = Some(LastChange { count: *count, cmd: cmd.clone(), tail });
        }
    }

    /// Adds a change to the change list; one on the line of the last entry replaces it (vim).
    fn add_change(&mut self, off: usize) {
        let text = self.buf.doc.text();
        let line = text.offset_to_line(off.min(text.len()));
        let ch = &mut self.buf.changes;
        if ch.last().is_some_and(|&c| text.offset_to_line(c.min(text.len())) == line) {
            ch.pop();
        }
        ch.push(off);
        if ch.len() > LIST_MAX {
            ch.remove(0);
        }
        self.buf.change_idx = ch.len();
    }

    /// `g;` (`back`) and `g,`: `n` entries through the change list.
    fn change_list(&mut self, back: bool, n: usize) {
        let (len, idx) = (self.buf.changes.len(), self.buf.change_idx);
        if len == 0 {
            return self.msg = "Change list is empty".into();
        }
        let to = if back { idx.checked_sub(n) } else { Some(idx + n).filter(|&i| i < len) };
        let Some(to) = to else {
            return self.msg = if back { "At start of change list" } else { "At end of change list" }.into();
        };
        self.buf.change_idx = to;
        let off = self.buf.doc.text().floor_char_boundary(self.buf.changes[to]);
        (self.win.line, self.win.col) = self.pos_of(off);
        self.win.want_col = self.win.col;
    }

    /// `Ctrl+O` (`back`) and `Ctrl+I`: `n` entries through the jump list, switching buffer when
    /// the entry is in another one.
    fn jump_list(&mut self, back: bool, n: usize) {
        self.win.jumps.retain(|j| j.0 == self.buf.id || self.buffers.iter().any(|b| b.id == j.0));
        self.win.jump_idx = self.win.jump_idx.min(self.win.jumps.len());
        if back && self.win.jump_idx == self.win.jumps.len() {
            // Leaving the end of the list: remember where, so `Ctrl+I` comes back.
            self.push_jump();
            self.win.jump_idx = self.win.jumps.len() - 1;
        }
        let idx = self.win.jump_idx;
        let to = if back { idx.checked_sub(n) } else { Some(idx + n).filter(|&i| i < self.win.jumps.len()) };
        let Some(to) = to else { return };
        self.win.jump_idx = to;
        let (buf, off) = self.win.jumps[to];
        if buf != self.buf.id {
            self.switch_buffer(buf);
        }
        let off = self.buf.doc.text().floor_char_boundary(off);
        (self.win.line, self.win.col) = self.pos_of(off);
        self.win.want_col = self.win.col;
    }

    /// Adds the cursor to the end of the jump list; an older entry on the same line goes (vim).
    pub(super) fn push_jump(&mut self) {
        let (id, off) = (self.buf.id, self.offset());
        let text = self.buf.doc.text();
        let line = text.offset_to_line(off);
        let jumps = &mut self.win.jumps;
        jumps.retain(|&(b, o)| b != id || text.offset_to_line(o.min(text.len())) != line);
        jumps.push((id, off));
        if jumps.len() > LIST_MAX {
            jumps.remove(0);
        }
        self.win.jump_idx = jumps.len();
    }

    /// `Ctrl+E`/`Ctrl+Y` (`lines`) and `Ctrl+F`/`Ctrl+B` (pages): scrolls the window `n` lines or
    /// pages down (`down`) or up; the cursor moves only to stay on screen.
    fn scroll(&mut self, down: bool, n: usize, pages: bool) {
        let last = self.line_count() - 1;
        let step = if pages { n * self.win.rows.saturating_sub(2).max(1) } else { n };
        self.win.top_sub = 0;
        self.win.top = if down { (self.win.top + step).min(last) } else { self.win.top.saturating_sub(step) };
        let so = self.scrolloff();
        let lo = if self.win.top > 0 { self.win.top + so } else { 0 };
        let bottom = self.bottom_line();
        let hi = if bottom < last { bottom.saturating_sub(so) } else { last };
        let line = self.win.line.clamp(lo.min(hi), hi.max(lo.min(last)));
        if line != self.win.line {
            self.win.line = line;
            self.win.col = self.win.want_col.min(self.line_chars(line));
        }
    }

    fn store_reg(&mut self, text: String, kind: RegKind, yank: bool) {
        let name = self.cur_reg.take();
        self.regs.store(name, Reg { text, kind }, yank);
    }

    /// Returns false to quit.
    pub fn key(&mut self, key: KeyEvent) -> bool {
        self.msg.clear();
        // A `Ctrl+O` command in progress (not the `Ctrl+O` key itself).
        let one = self.insert_one.is_some();
        if let Some(r) = self.recording
            && self.macro_depth == 0
            && !self.replaying
        {
            if self.mode == Mode::Normal && self.pending.is_empty() && key == KeyCode::Char('q').into() {
                let text = mem::take(&mut self.macro_keys).into_iter().filter_map(parse::key_char).collect();
                self.regs.set_macro(r, text);
                self.recording = None;
                return !self.quit;
            }
            self.macro_keys.push(key);
        }
        if !self.replaying {
            if self.mode == Mode::Normal && self.pending.is_empty() {
                self.rec.clear();
            }
            if matches!(self.mode, Mode::Normal | Mode::Insert | Mode::Visual(_)) {
                self.rec.push(key);
            }
        }
        match self.mode {
            Mode::Normal => self.normal_key(key),
            Mode::Insert => self.insert_key(key),
            Mode::Visual(kind) => self.visual_key(key, kind),
            Mode::Command(_) | Mode::Search(_) => self.line_key(key),
            Mode::Confirm => self.confirm_key(key),
        }
        if one
            && self.mode == Mode::Normal
            && self.pending.is_empty()
            && let Some(before) = self.insert_one.take()
        {
            // Back to Insert after `Ctrl+O`; a command that did not move leaves the cursor where it
            // was, also past the line end, and a vertical move may end there (`want_col`).
            if (self.win.line, self.win.col) == (before.0, before.1.min(self.line_chars(before.0).saturating_sub(1))) {
                (self.win.line, self.win.col) = before;
            } else if self.win.want_col > self.win.col {
                self.win.col = self.win.want_col.min(self.line_chars(self.win.line));
            }
            self.mode = Mode::Insert;
        }
        if self.quit {
            self.wait_saves();
        } else {
            self.poll_saves();
        }
        !self.quit
    }

    fn finish(&mut self) {
        // A confirm session is one command (one undo step) across its keys.
        if !matches!(self.mode, Mode::Insert | Mode::Confirm) {
            self.end_command();
            self.cur_reg = None;
        }
        if matches!(self.mode, Mode::Normal | Mode::Visual(_)) {
            self.clamp_normal();
        }
    }

    fn normal_key(&mut self, key: KeyEvent) {
        if key.code == KeyCode::Esc {
            self.pending.clear();
            return;
        }
        let Some(c) = normal_char(key) else { return };
        self.pending.push(c);
        let parsed = parse(&self.pending);
        if parsed == Parse::Incomplete {
            return;
        }
        let pending = mem::take(&mut self.pending);
        if let Parse::Cmd(cmd) = parsed {
            if !self.replaying {
                self.rec_cmd = Some((cmd.count, strip_counts(&pending), pending.chars().count()));
            }
            self.cur_reg = cmd.reg;
            self.normal(cmd);
        }
        self.finish();
    }

    fn normal(&mut self, cmd: Cmd) {
        let Cmd { count, op, key, arg, .. } = cmd;
        let n = count.unwrap_or(1);
        let arg = || arg.expect("parse requires an argument");
        if let (Some(op), 'i' | 'a') = (op, key) {
            self.sync_syntax();
            match self.text_object(key == 'a', arg(), n) {
                Some(Obj::Chars(r)) => self.operate(op, self.pos_of(r.start), self.pos_of(r.end), Kind::Exclusive),
                Some(Obj::Lines(a, b)) => self.operate(op, (a, 0), (b, 0), Kind::Linewise),
                None => {}
            }
            return;
        }
        if op == Some(key) {
            let last = (self.win.line + n - 1).min(self.line_count() - 1);
            return self.operate(key, (self.win.line, 0), (last, 0), Kind::Linewise);
        }
        if matches!(key, G_NEXT | G_PREV) {
            return self.select_match(op, key == G_NEXT);
        }
        if parse::is_motion(key) {
            let Some((to, kind)) = self.motion(&cmd) else { return };
            match op {
                Some(op) => self.operate(op, (self.win.line, self.win.col), to, kind),
                None => self.move_to(key, to),
            }
            return;
        }
        let len = self.line_chars(self.win.line);
        match key {
            'i' => self.insert_at(self.win.col),
            'a' => self.insert_at((self.win.col + 1).min(len)),
            'I' => self.insert_at(self.first_non_blank(self.win.line)),
            'A' => self.insert_at(len),
            'o' => self.open_line(true),
            'O' => self.open_line(false),
            'x' => self.normal(Cmd { op: Some('d'), key: 'l', arg: None, ..cmd }),
            'D' => self.normal(Cmd { op: Some('d'), key: '$', arg: None, ..cmd }),
            'C' => self.normal(Cmd { op: Some('c'), key: '$', arg: None, ..cmd }),
            'S' => self.normal(Cmd { op: Some('c'), key: 'c', arg: None, ..cmd }),
            'J' => self.join(n.max(2) - 1, true),
            G_JOIN => self.join(n.max(2) - 1, false),
            'p' => {
                self.paste(true, n);
            }
            'P' => {
                self.paste(false, n);
            }
            G_PASTE | G_PASTE_BEFORE => {
                // The cursor goes just after the pasted text.
                if let Some(end) = self.paste(key == G_PASTE, n) {
                    let end = end.min(self.buf.doc.text().len());
                    (self.win.line, self.win.col) = self.pos_of(end);
                    self.win.want_col = self.win.col;
                }
            }
            ']' => {
                if arg() == 'p' {
                    self.paste_indented(n);
                }
            }
            'R' => {
                self.replacing = Some(Vec::new());
                self.mode = Mode::Insert;
            }
            '\x0f' => self.jump_list(true, n),
            '\x09' => self.jump_list(false, n),
            '\x05' | '\x19' => self.scroll(key == '\x05', n, false),
            '\x06' | '\x02' => self.scroll(key == '\x06', n, true),
            G_OLDER_CHANGE | G_NEWER_CHANGE => self.change_list(key == G_OLDER_CHANGE, n),
            G_VISUAL => match self.buf.last_visual {
                Some((kind, a, c)) => {
                    let text = self.buf.doc.text();
                    let (a, c) = (text.floor_char_boundary(a.min(text.len())), text.floor_char_boundary(c.min(text.len())));
                    self.anchor = self.pos_of(a);
                    (self.win.line, self.win.col) = self.pos_of(c);
                    self.win.want_col = self.win.col;
                    self.mode = Mode::Visual(kind);
                }
                None => self.msg = "No previous Visual selection".into(),
            },
            G_INSERT => {
                // At the mark `^`, where Insert mode was last left.
                if let Some(off) = self.mark('^') {
                    (self.win.line, self.win.col) = self.pos_of(off);
                }
                self.insert_at(self.win.col);
            }
            'u' => self.undo(n),
            '\x12' => self.redo(n),
            ':' => self.mode = Mode::Command(String::new()),
            '/' | '?' => {
                self.search_origin = (self.win.line, self.win.col);
                self.search_back = key == '?';
                self.inc_search = None;
                self.mode = Mode::Search(String::new());
            }
            'v' | 'V' | '\x16' => {
                self.anchor = (self.win.line, self.win.col);
                self.mode = Mode::Visual(match key {
                    'v' => VKind::Char,
                    'V' => VKind::Line,
                    _ => VKind::Block,
                });
            }
            '~' => {
                let end = (self.win.col + n).min(len);
                let range = self.range((self.win.line, self.win.col), (self.win.line, end), Kind::Exclusive);
                let s = toggle_case(&self.buf.doc.text().slice(range.clone()));
                self.edit_replace(range, &s);
                self.set_col(end);
            }
            'r' => {
                // Vim refuses when fewer than `count` chars remain.
                if self.win.col + n <= len {
                    let range = self.range((self.win.line, self.win.col), (self.win.line, self.win.col + n), Kind::Exclusive);
                    self.edit_replace(range, &arg().to_string().repeat(n));
                    self.set_col(self.win.col + n - 1);
                }
            }
            '.' => self.repeat(count),
            G_EARLIER => self.history(1, |d| d.earlier(n), "Already at oldest change"),
            '\x07' => self.msg = self.file_info(),
            '\x17' => self.window_cmd(arg(), n),
            '\x1e' => self.alternate_buffer(),
            // `&` is `:s`, `g&` is `:%s//~/&` (last substitute on the whole text, same flags).
            '&' => self.substitute(substitute::Sub::again(false)),
            G_SUBST => self.substitute(substitute::Sub::again(true)),
            G_COUNTS => self.msg = self.counts(),
            G_ASCII | G_UTF8 => {
                let c = self.char_at((self.win.line, self.win.col));
                self.msg = match (key, c) {
                    (_, '\n') => "NUL".into(),
                    (G_ASCII, c) => format!("<{c}> {0}, Hex {0:04x}, Oct {0:o}", c as u32),
                    (_, c) => c.encode_utf8(&mut [0; 4]).bytes().map(|b| format!("{b:02x}")).collect::<Vec<_>>().join(" "),
                };
            }
            G_LATER => self.history(1, |d| d.later(n), "Already at newest change"),
            '\x01' => self.add_number(n as i64),
            '\x18' => self.add_number(-(n as i64)),
            'm' => match arg() {
                m @ 'a'..='z' => {
                    self.buf.marks.insert(m, self.offset());
                }
                _ => self.msg = "Invalid mark name".into(),
            },
            'q' => match arg() {
                r @ ('a'..='z' | 'A'..='Z') => {
                    self.recording = Some(r);
                    self.macro_keys.clear();
                }
                _ => self.msg = "Invalid register name".into(),
            },
            '@' => match arg() {
                '@' => match self.last_macro {
                    Some(r) => self.play_macro(r, n),
                    None => self.msg = "No previously used register".into(),
                },
                r => self.play_macro(r, n),
            },
            'z' => {
                self.win.top_sub = 0;
                match arg() {
                    'z' => self.win.top = self.win.line.saturating_sub((self.win.rows - 1) / 2),
                    't' => self.win.top = self.win.line,
                    'b' => self.win.top = (self.win.line + 1).saturating_sub(self.win.rows),
                    _ => {}
                }
            }
            _ => unreachable!("parse yields only known keys"),
        }
        if matches!(key, 'i' | 'a' | 'I' | 'A' | 'o' | 'O' | 'R' | G_INSERT) {
            self.insert_repeat = (n, matches!(key, 'o' | 'O'));
        }
    }

    /// `.`: replays the last change; a count replaces the original one.
    fn repeat(&mut self, count: Option<usize>) {
        let Some(lc) = self.last_change.clone() else { return };
        let digits = count.or(lc.count).map(|n| n.to_string()).unwrap_or_default();
        let keys: Vec<KeyEvent> = digits.chars().chain(lc.cmd.chars()).map(char_key).chain(lc.tail).collect();
        self.replaying = true;
        for k in keys {
            if !self.key(k) {
                break;
            }
        }
        self.replaying = false;
    }

    fn play_macro(&mut self, r: char, n: usize) {
        let Some(keys) = self.reg(r).map(|reg| parse::text_keys(&reg.text)) else {
            if self.msg.is_empty() {
                self.msg = format!("Register {r} is empty");
            }
            return;
        };
        if self.macro_depth >= MAX_MACRO_DEPTH {
            self.macro_abort = true;
            return;
        }
        self.last_macro = Some(r);
        self.macro_depth += 1;
        'outer: for _ in 0..n {
            for &k in &keys {
                if !self.key(k) || self.macro_abort {
                    break 'outer;
                }
            }
        }
        self.macro_depth -= 1;
        if self.macro_depth == 0 && mem::take(&mut self.macro_abort) {
            self.msg = "Macro recursion too deep".into();
        }
    }

    fn insert_at(&mut self, col: usize) {
        self.set_col(col);
        self.mode = Mode::Insert;
    }

    /// `o`/`O`: a new line below/above with the current line's indent (autoindent).
    fn open_line(&mut self, below: bool) {
        let indent = self.indent_of(self.win.line);
        if below {
            self.edit_insert(self.line_end_offset(self.win.line), &format!("\n{indent}"));
            self.win.line += 1;
        } else {
            self.edit_insert(self.buf.doc.text().line_to_offset(self.win.line), &format!("{indent}\n"));
        }
        self.insert_at(graphemes::count(&indent));
        self.auto_indent = (!indent.is_empty()).then_some(self.win.line);
    }

    /// Empties the cursor line if it only holds an unused auto indent (vim).
    fn clear_auto_indent(&mut self) {
        if self.auto_indent.take() == Some(self.win.line) && self.buf.doc.text().line(self.win.line).trim().is_empty() {
            let start = self.buf.doc.text().line_to_offset(self.win.line);
            self.edit_delete(start..self.line_end_offset(self.win.line));
            self.set_col(0);
        }
    }

    fn operate(&mut self, op: char, from: Pos, to: Pos, kind: Kind) {
        let (a, b) = sorted(from, to);
        if matches!(op, '<' | '>') {
            return self.shift(a.0, b.0, op == '>', 1);
        }
        let range = self.range(a, b, kind);
        if let Some(f) = case_fn(op) {
            let s = f(&self.buf.doc.text().slice(range.clone()));
            self.edit_replace(range, &s);
            self.win.line = a.0;
            if kind != Kind::Linewise {
                self.set_col(a.1);
            }
            return;
        }
        let mut yanked = self.buf.doc.text().slice(range.clone()).into_owned();
        if kind == Kind::Linewise {
            yanked.push('\n');
        }
        self.store_reg(yanked, if kind == Kind::Linewise { RegKind::Line } else { RegKind::Char }, op == 'y');
        match (op, kind) {
            ('y', Kind::Linewise) => self.win.line = a.0,
            ('d', Kind::Linewise) => {
                // The last line has no `\n` after it: take the one before.
                let Range { start, end } = range;
                let range = if end < self.buf.doc.text().len() { start..end + 1 } else { start.saturating_sub(1)..end };
                self.edit_delete(range);
                self.win.line = a.0.min(self.line_count() - 1);
                self.set_col(self.first_non_blank(self.win.line));
            }
            ('c', Kind::Linewise) => {
                // Autoindent: the first line keeps its indent.
                let indent = self.indent_of(a.0);
                self.edit_delete(range.start + indent.len()..range.end);
                self.win.line = a.0;
                self.insert_at(graphemes::count(&indent));
                self.auto_indent = (!indent.is_empty()).then_some(a.0);
            }
            _ => {
                if op != 'y' {
                    self.edit_delete(range);
                }
                self.win.line = a.0;
                self.set_col(a.1);
                if op == 'c' {
                    self.mode = Mode::Insert;
                }
            }
        }
    }

    /// `>`/`<`: moves the indent of lines by `times` × `shiftwidth` columns (a tab counts `tabstop`),
    /// rewritten as `expandtab` says; empty lines are untouched.
    fn shift(&mut self, first: usize, last: usize, right: bool, times: usize) {
        let ts = self.buf.opts.tabstop;
        let width = self.buf.opts.sw() * times;
        for l in first..=last {
            let line = self.buf.doc.text().line(l);
            if line.is_empty() {
                continue;
            }
            let blanks = line.len() - line.trim_start_matches([' ', '\t']).len();
            let cols: usize = line[..blanks].bytes().map(|b| if b == b'\t' { ts } else { 1 }).sum();
            let indent = self.buf.opts.indent(if right { cols + width } else { cols.saturating_sub(width) });
            let start = self.buf.doc.text().line_to_offset(l);
            self.edit_replace(start..start + blanks, &indent);
        }
        self.win.line = first;
        self.set_col(self.first_non_blank(first));
    }

    /// Joins `times` lines below the cursor line to it; `spaces`: drop their leading blanks and
    /// put one space between (`J`), else just remove the line breaks (`:j!`).
    fn join(&mut self, times: usize, spaces: bool) {
        for _ in 0..times {
            if self.win.line + 1 >= self.line_count() {
                break;
            }
            let off = self.line_end_offset(self.win.line);
            let next = self.buf.doc.text().line(self.win.line + 1);
            let trimmed = if spaces { next.trim_start() } else { &next };
            let blanks = next.len() - trimmed.len();
            let space = spaces && !trimmed.is_empty() && off > self.buf.doc.text().line_to_offset(self.win.line);
            let col = self.line_chars(self.win.line);
            self.edit_delete(off..off + 1 + blanks);
            if space {
                self.edit_insert(off, " ");
            }
            self.set_col(col);
        }
    }

    /// The register of the command (`"` by default) for a paste; reports an empty one.
    fn paste_source(&mut self) -> Option<Reg> {
        let name = self.cur_reg.take().unwrap_or('"');
        let reg = self.reg(name);
        if reg.is_none() && self.msg.is_empty() {
            self.msg = format!("Nothing in register {name}");
        }
        reg
    }

    /// `p`/`P`: returns the offset just after the pasted text (not for a block).
    fn paste(&mut self, after: bool, n: usize) -> Option<usize> {
        let reg = self.paste_source()?;
        self.paste_reg(reg, after, n)
    }

    fn paste_reg(&mut self, Reg { text, kind }: Reg, after: bool, n: usize) -> Option<usize> {
        if text.is_empty() {
            return None;
        }
        match kind {
            RegKind::Line => {
                let s = text.repeat(n);
                let line = if after { self.win.line + 1 } else { self.win.line };
                let at = if line < self.line_count() {
                    let at = self.buf.doc.text().line_to_offset(line);
                    self.edit_insert(at, &s);
                    at
                } else {
                    // Past the last line: move the register's trailing `\n` to the front.
                    let at = self.buf.doc.text().len();
                    self.edit_insert(at, &format!("\n{}", &s[..s.len() - 1]));
                    at
                };
                self.win.line = line;
                self.set_col(self.first_non_blank(line));
                Some(at + s.len())
            }
            RegKind::Char => {
                let s = text.repeat(n);
                let mut off = self.offset();
                if after {
                    off += self.cluster_len((self.win.line, self.win.col));
                }
                self.edit_insert(off, &s);
                (self.win.line, self.win.col) = self.pos_of(off + s.len() - 1);
                self.win.want_col = self.win.col;
                Some(off + s.len())
            }
            RegKind::Block => {
                // Each register line goes into the next text line at one screen column, padding and
                // adding lines.
                let (cx, cw) = self.cell_of((self.win.line, self.win.col));
                let x = if after && self.line_chars(self.win.line) > 0 { cx + cw } else { cx };
                for (i, piece) in text.split('\n').enumerate() {
                    let l = self.win.line + i;
                    if l >= self.line_count() {
                        self.edit_insert(self.buf.doc.text().len(), "\n");
                    }
                    let col = match self.col_at_cell(l, x) {
                        Ok(c) => c,
                        Err(w) => {
                            self.edit_insert(self.line_end_offset(l), &" ".repeat(x - w));
                            self.line_chars(l)
                        }
                    };
                    self.edit_insert(self.offset_of((l, col)), &piece.repeat(n));
                }
                self.set_col(self.col_at_cell(self.win.line, x).unwrap_or(0));
                None
            }
        }
    }

    /// `]p`: like `p`, but a linewise register's lines get the cursor line's indent in place of
    /// the first pasted line's, the others keeping their indent relative to it.
    fn paste_indented(&mut self, n: usize) {
        let Some(reg) = self.paste_source() else { return };
        let Reg { text, kind: RegKind::Line } = &reg else {
            self.paste_reg(reg, true, n);
            return;
        };
        let ts = self.buf.opts.tabstop;
        let width = |l: &str| -> (usize, usize) {
            let blanks = l.len() - l.trim_start_matches([' ', '\t']).len();
            (blanks, l[..blanks].bytes().map(|b| if b == b'\t' { ts } else { 1 }).sum())
        };
        let (_, want) = width(&self.indent_of(self.win.line));
        let first = text.lines().next().map_or(0, |l| width(l).1);
        let lines: String = text
            .lines()
            .map(|l| {
                let (blanks, w) = width(l);
                if l.is_empty() { "\n".to_string() } else { format!("{}{}\n", self.buf.opts.indent((w + want).saturating_sub(first)), &l[blanks..]) }
            })
            .collect();
        self.paste_reg(Reg { text: lines, kind: RegKind::Line }, true, n);
    }

    fn undo(&mut self, n: usize) {
        self.history(n, Document::undo, "Already at oldest change");
    }

    fn redo(&mut self, n: usize) {
        self.history(n, Document::redo, "Already at newest change");
    }

    /// Repeats a history move `n` times, keeping marks in place; the cursor goes to the start of
    /// the first changed range (vim).
    fn history(&mut self, n: usize, mut step: impl FnMut(&mut Document) -> bool, at_end: &str) {
        let mut first = None;
        for _ in 0..n {
            let before = self.buf.doc.text().clone();
            if !step(&mut self.buf.doc) {
                self.msg = at_end.into();
                break;
            }
            self.map_marks(&before);
            let edits = self.buf.doc.last_edits();
            first = edits
                .first()
                .map(|e| {
                    let off = piece_tree::map_offset(&edits[1..], e.start);
                    // Restored lines that start with their line break begin on the next line.
                    let nl = e.new_len > 0 && off < self.buf.doc.text().len() && self.char_at(self.pos_of(off)) == '\n';
                    off + usize::from(nl)
                })
                .or(first);
        }
        if let Some(off) = first {
            (self.win.line, self.win.col) = self.pos_of(off.min(self.buf.doc.text().len()));
            self.win.want_col = self.win.col;
        }
        self.clamp();
    }

    /// `Ctrl+A`/`Ctrl+X`: adds `delta` to the decimal number at or after the cursor in the line.
    fn add_number(&mut self, delta: i64) {
        let line = self.buf.doc.text().line(self.win.line);
        let from = byte_of_col(&line, self.win.col);
        let Some(k) = line[from..].find(|c: char| c.is_ascii_digit()) else { return };
        // Digits are ASCII: byte and char counts agree inside the number.
        let mut i = from + k;
        i -= line[..i].bytes().rev().take_while(u8::is_ascii_digit).count();
        let start = if line[..i].ends_with('-') { i - 1 } else { i };
        let end = i + line[i..].find(|c: char| !c.is_ascii_digit()).unwrap_or(line.len() - i);
        let s = &line[start..end];
        let col = graphemes::col_of(&line, start);
        let Some(v) = s.parse::<i64>().ok().and_then(|v| v.checked_add(delta)) else {
            self.msg = "Number out of range".into();
            return;
        };
        let v = v.to_string();
        let off = self.buf.doc.text().line_to_offset(self.win.line);
        self.edit_replace(off + start..off + end, &v);
        self.set_col(col + v.len() - 1);
    }

    fn visual_key(&mut self, key: KeyEvent, kind: VKind) {
        // `<`/`>`: the selection's start and end, kept after leaving Visual (vim); `gv` restores it.
        let (a, b) = sorted(self.anchor, (self.win.line, self.win.col));
        let (sa, sb) = (self.offset_of(a), self.offset_of(b));
        self.buf.marks.insert('<', sa);
        self.buf.marks.insert('>', sb);
        self.buf.last_visual = Some((kind, self.offset_of(self.anchor), self.offset()));
        if key.code == KeyCode::Esc {
            self.pending.clear();
            self.mode = Mode::Normal;
            return self.finish();
        }
        let Some(c) = normal_char(key) else { return };
        if self.pending == "\"" {
            if valid_reg(c) {
                self.pending.push(c);
            } else {
                self.pending.clear();
            }
            return;
        }
        if c == '"' && self.pending.is_empty() {
            return self.pending.push(c);
        }
        // `"x` is one ASCII char after the quote.
        let (reg, rest) = match self.pending.strip_prefix('"') {
            Some(r) => (r.chars().next(), r[1..].to_string()),
            None => (None, self.pending.clone()),
        };
        let digits = |s: &str| s.bytes().all(|b| b.is_ascii_digit());
        let num = |s: &str| s.parse::<usize>().map_or(1, |n| n.min(MAX_COUNT));
        if rest.strip_suffix('r').is_some_and(digits) {
            self.pending.clear();
            self.visual_replace(c, kind);
        } else if let Some(cnt) = rest.strip_suffix(['i', 'a'])
            && digits(cnt)
        {
            let around = rest.ends_with('a');
            let n = num(cnt);
            self.pending.clear();
            self.visual_object(around, c, n);
        } else if digits(&rest) && matches!(c, 'i' | 'a' | 'r') {
            return self.pending.push(c);
        } else if digits(&rest) && VISUAL_KEYS.contains(c) {
            let n = num(&rest);
            self.pending.clear();
            self.cur_reg = reg;
            self.visual_op(c, kind, n);
        } else {
            self.pending.push(c);
            let parsed = parse(&self.pending);
            if parsed == Parse::Incomplete {
                return;
            }
            self.pending.clear();
            if let Parse::Cmd(cmd) = parsed
                && cmd.op.is_none()
            {
                if matches!(cmd.key, G_NEXT | G_PREV) {
                    self.select_match(None, cmd.key == G_NEXT);
                } else if parse::is_motion(cmd.key)
                    && let Some((to, _)) = self.motion(&cmd)
                {
                    self.move_to(cmd.key, to);
                }
            }
        }
        self.finish();
    }

    /// The Visual selection as a motion: `(from, to, kind)`. A charwise selection ending on an
    /// empty line takes its line break, like vim.
    fn visual_range(&self, kind: VKind, a: Pos, b: Pos) -> (Pos, Pos, Kind) {
        if kind == VKind::Line {
            ((a.0, 0), (b.0, 0), Kind::Linewise)
        } else if b.1 >= self.line_chars(b.0) && b.0 + 1 < self.line_count() {
            (a, (b.0 + 1, 0), Kind::Exclusive)
        } else {
            (a, b, Kind::Inclusive)
        }
    }

    fn visual_op(&mut self, c: char, kind: VKind, n: usize) {
        let cur = (self.win.line, self.win.col);
        let (a, b) = sorted(self.anchor, cur);
        self.mode = Mode::Normal;
        match c {
            'v' | 'V' | '\x16' => {
                let k = match c {
                    'v' => VKind::Char,
                    'V' => VKind::Line,
                    _ => VKind::Block,
                };
                if k != kind {
                    self.mode = Mode::Visual(k);
                }
            }
            'o' => {
                self.mode = Mode::Visual(kind);
                (self.win.line, self.win.col) = self.anchor;
                self.win.want_col = self.win.col;
                self.anchor = cur;
            }
            'J' => {
                self.win.line = a.0;
                self.join((b.0 - a.0).max(1), true);
            }
            // `visual_key` has set marks `<` and `>` for the range.
            ':' => self.mode = Mode::Command("'<,'>".into()),
            '<' | '>' => self.shift(a.0, b.0, c == '>', n),
            _ if kind == VKind::Block => self.block_op(c),
            'I' => {
                self.win.line = a.0;
                self.insert_at(if kind == VKind::Line { self.first_non_blank(a.0) } else { a.1 });
            }
            'A' => {
                self.win.line = b.0;
                let len = self.line_chars(b.0);
                self.insert_at(if kind == VKind::Line { len } else { (b.1 + 1).min(len) });
            }
            _ => {
                let (from, to, k) = self.visual_range(kind, a, b);
                let op = match c {
                    'x' => 'd',
                    's' => 'c',
                    '~' => OP_TOGGLE,
                    'u' => OP_LOWER,
                    'U' => OP_UPPER,
                    op => op,
                };
                self.operate(op, from, to, k);
                if case_fn(op).is_some() {
                    self.set_col(from.1);
                }
            }
        }
    }

    /// Visual block operators on lines × screen columns.
    fn block_op(&mut self, c: char) {
        let (a, b) = sorted(self.anchor, (self.win.line, self.win.col));
        let cols = self.block_cols();
        let (x0, x1) = cols;
        let dollar = self.win.want_col == usize::MAX;
        let lines = a.0..b.0 + 1;
        let first = self.block_range_in(a.0, cols).start;
        match c {
            'd' | 'x' | 'y' | 'c' | 's' => {
                let parts: Vec<String> =
                    lines.clone().map(|l| self.buf.doc.text().slice(self.cols_range(l, self.block_range_in(l, cols))).into_owned()).collect();
                self.store_reg(parts.join("\n"), RegKind::Block, c == 'y');
                if c != 'y' {
                    for l in lines.clone() {
                        self.edit_delete(self.cols_range(l, self.block_range_in(l, cols)));
                    }
                }
                self.win.line = a.0;
                self.set_col(first.min(self.line_chars(a.0)));
                if matches!(c, 'c' | 's') {
                    self.start_block_insert(a.0 + 1..b.0 + 1, x0, false);
                }
            }
            'I' => {
                self.win.line = a.0;
                self.start_block_insert(a.0 + 1..b.0 + 1, x0, false);
            }
            'A' => {
                self.win.line = a.0;
                let x = if dollar { usize::MAX } else { x1 + 1 };
                if let Err(w) = self.col_at_cell(a.0, x)
                    && !dollar
                {
                    self.edit_insert(self.line_end_offset(a.0), &" ".repeat(x - w));
                }
                self.start_block_insert(a.0 + 1..b.0 + 1, x, true);
            }
            _ => {
                let f = case_fn(match c {
                    '~' => OP_TOGGLE,
                    'u' => OP_LOWER,
                    _ => OP_UPPER,
                })
                .expect("case operator");
                for l in lines {
                    let range = self.cols_range(l, self.block_range_in(l, cols));
                    let s = f(&self.buf.doc.text().slice(range.clone()));
                    self.edit_replace(range, &s);
                }
                self.win.line = a.0;
                self.set_col(first);
            }
        }
    }

    /// Starts Insert for a block at screen column `x` of the cursor line (`usize::MAX`: its end).
    fn start_block_insert(&mut self, lines: Range<usize>, x: usize, pad: bool) {
        let c = self.col_at_cell(self.win.line, x).unwrap_or_else(|_| self.line_chars(self.win.line));
        self.block_insert = Some(BlockInsert { start: (self.win.line, c), lines, x, pad });
        self.insert_at(c);
    }

    /// Copies the text typed on a block's first line to its other lines; returns the block start.
    fn finish_block_insert(&mut self) -> Option<Pos> {
        let bi = self.block_insert.take()?;
        // Only text typed on the first line without a line break is copied (vim).
        if self.win.line == bi.start.0 && self.win.col >= bi.start.1 {
            let typed = self.buf.doc.text().slice(self.offset_of(bi.start)..self.offset()).into_owned();
            for l in bi.lines.clone().filter(|_| !typed.is_empty()) {
                let col = match self.col_at_cell(l, bi.x) {
                    Ok(c) => c,
                    Err(_) if bi.x == usize::MAX => self.line_chars(l),
                    Err(_) if !bi.pad => continue,
                    Err(w) => {
                        self.edit_insert(self.line_end_offset(l), &" ".repeat(bi.x - w));
                        self.line_chars(l)
                    }
                };
                self.edit_insert(self.offset_of((l, col)), &typed);
            }
        }
        Some(bi.start)
    }

    /// Visual `r<c>`: every selected cluster (not line breaks) becomes `ch`.
    fn visual_replace(&mut self, ch: char, kind: VKind) {
        let (a, b) = sorted(self.anchor, (self.win.line, self.win.col));
        self.mode = Mode::Normal;
        let replace = |e: &mut Self, r: Range<usize>| {
            let s: String = graphemes::iter(&e.buf.doc.text().slice(r.clone())).map(|g| if g == "\n" { '\n' } else { ch }).collect();
            e.edit_replace(r, &s);
        };
        if kind == VKind::Block {
            let cols = self.block_cols();
            let first = self.block_range_in(a.0, cols).start;
            for l in a.0..=b.0 {
                let r = self.cols_range(l, self.block_range_in(l, cols));
                replace(self, r);
            }
            self.win.line = a.0;
            self.set_col(first);
        } else {
            let (from, to, k) = self.visual_range(kind, a, b);
            let r = self.range(from, to, k);
            replace(self, r);
            self.win.line = a.0;
            self.set_col(if kind == VKind::Line { 0 } else { a.1 });
        }
    }

    fn insert_key(&mut self, key: KeyEvent) {
        if key.code != KeyCode::Esc || self.insert_pending == Some('v') {
            self.insert_keys.push(key);
        }
        if !matches!(key.code, KeyCode::Esc | KeyCode::Enter) {
            self.auto_indent = None;
        }
        if let Some(p) = self.insert_pending.take() {
            return self.insert_pending_key(p, key);
        }
        let ctrl = key.modifiers.contains(KeyModifiers::CONTROL);
        match key.code {
            KeyCode::Esc => self.leave_insert(),
            KeyCode::Char('w') if ctrl => self.delete_before(true),
            KeyCode::Char('u') if ctrl => self.delete_before(false),
            KeyCode::Char(c @ ('r' | 'v')) if ctrl => self.insert_pending = Some(c),
            KeyCode::Char('o') if ctrl => {
                // One Normal command; a count no longer repeats the insert (vim).
                self.insert_repeat = (1, false);
                self.insert_one = Some((self.win.line, self.win.col));
                self.mode = Mode::Normal;
            }
            KeyCode::Char(c) if !key.modifiers.contains(KeyModifiers::CONTROL) => {
                if self.replacing.is_some() {
                    self.replace_char(c);
                } else {
                    self.insert(c.encode_utf8(&mut [0; 4]));
                }
            }
            KeyCode::Tab => self.insert(&if self.buf.opts.expandtab { " ".repeat(self.buf.opts.tabstop) } else { "\t".into() }),
            KeyCode::Enter => self.newline(),
            KeyCode::Backspace if self.replacing.is_some() => {
                // Replace mode: back over what was typed, putting back what it replaced.
                let Some(Some(old)) = self.replacing.as_mut().map(Vec::pop) else {
                    self.move_left();
                    return;
                };
                let end = self.offset();
                self.move_left();
                let start = self.offset();
                if let Some(old) = old {
                    self.edit_replace(start..end, &old);
                } else {
                    self.edit_delete(start..end);
                }
            }
            KeyCode::Backspace => {
                let end = self.offset();
                self.move_left();
                let start = self.offset();
                self.edit_delete(start..end);
            }
            KeyCode::Delete => {
                let start = self.offset();
                if start < self.buf.doc.text().len() {
                    // At line end the next char is the `\n`.
                    let len = self.cluster_len((self.win.line, self.win.col)).max(1);
                    self.edit_delete(start..start + len);
                }
            }
            KeyCode::Left => self.move_left(),
            KeyCode::Right => self.move_right(),
            KeyCode::Up => self.move_vertical(-1),
            KeyCode::Down => self.move_vertical(1),
            KeyCode::PageUp => self.move_vertical(-(self.win.rows as isize)),
            KeyCode::PageDown => self.move_vertical(self.win.rows as isize),
            KeyCode::Home => self.set_col(0),
            KeyCode::End => self.set_col(self.line_chars(self.win.line)),
            _ => {}
        }
    }

    /// The key after `Ctrl+R` (a register to insert) or `Ctrl+V` (a key to insert as itself: Tab
    /// as a tab, Ctrl+<letter> as its control char, Esc as `\x1b`).
    fn insert_pending_key(&mut self, p: char, key: KeyEvent) {
        let ctrl = key.modifiers.contains(KeyModifiers::CONTROL);
        let s = match (p, key.code) {
            ('r', KeyCode::Char(c)) if !ctrl => match self.reg(c) {
                Some(r) => r.text,
                None => return,
            },
            ('v', KeyCode::Char(c @ 'a'..='z')) if ctrl => char::from(c as u8 - b'a' + 1).to_string(),
            ('v', KeyCode::Char(c)) => c.to_string(),
            ('v', KeyCode::Tab) => "\t".into(),
            ('v', KeyCode::Esc) => "\x1b".into(),
            ('v', KeyCode::Enter) => "\n".into(),
            _ => return,
        };
        self.insert(&s);
    }

    /// Insert `Ctrl+W` (`word`) and `Ctrl+U`: deletes the word before the cursor (blanks, then a
    /// run of one class), or back to the indent (to the line start from the indent or before it).
    /// At the line start they join the line to the one above, like Backspace.
    fn delete_before(&mut self, word: bool) {
        let (line, col) = (self.win.line, self.win.col);
        if col == 0 {
            let end = self.offset();
            self.move_left();
            let start = self.offset();
            return self.edit_delete(start..end);
        }
        let to = if word {
            let mut it = self.bwd((line, col - 1)).take_while(|&((l, _), _)| l == line).peekable();
            let mut to = col;
            while let Some(&((_, c), ch)) = it.peek()
                && class(ch) == 0
            {
                (to, _) = (c, it.next());
            }
            if let Some(&(_, ch)) = it.peek() {
                let cls = class(ch);
                while let Some(&((_, c), ch)) = it.peek()
                    && class(ch) == cls
                {
                    (to, _) = (c, it.next());
                }
            }
            to
        } else {
            let indent = self.first_non_blank(line);
            if col > indent { indent } else { 0 }
        };
        let (start, end) = (self.offset_of((line, to)), self.offset());
        self.edit_delete(start..end);
        self.set_col(to);
    }

    /// Replace mode: `c` takes the place of the cluster under the cursor (is added at the line end).
    fn replace_char(&mut self, c: char) {
        let p = (self.win.line, self.win.col);
        let (off, len) = (self.offset(), self.cluster_len(p));
        let old = (len > 0).then(|| self.buf.doc.text().slice(off..off + len).into_owned());
        self.edit_replace(off..off + len, c.encode_utf8(&mut [0; 4]));
        (self.win.line, self.win.col) = self.pos_of(off + c.len_utf8());
        self.win.want_col = self.win.col;
        if let Some(r) = &mut self.replacing {
            r.push(old);
        }
    }

    /// Enter: splits the line; the new one gets the indent before the cursor (autoindent).
    fn newline(&mut self) {
        let line = self.buf.doc.text().line(self.win.line);
        let indent: String = graphemes::iter(&line).take(self.win.col).take_while(|g| g.chars().all(char::is_whitespace)).collect();
        self.clear_auto_indent();
        self.insert(&format!("\n{indent}"));
        self.auto_indent = (!indent.is_empty()).then_some(self.win.line);
    }

    fn leave_insert(&mut self) {
        let (n, open) = mem::replace(&mut self.insert_repeat, (1, false));
        let keys = mem::take(&mut self.insert_keys);
        for _ in 1..n {
            if open {
                self.open_line(true);
            }
            for &k in &keys {
                self.insert_key(k);
            }
        }
        self.insert_keys.clear();
        let block = self.finish_block_insert();
        self.clear_auto_indent();
        self.replacing = None;
        // `^`: where Insert mode was left, for `gi`.
        self.buf.marks.insert('^', self.offset());
        self.end_command();
        self.mode = Mode::Normal;
        match block {
            Some(p) => {
                (self.win.line, self.win.col) = p;
                self.win.want_col = self.win.col;
            }
            None => self.set_col(self.win.col.saturating_sub(1)),
        }
        self.clamp_normal();
    }

    /// The text of the command or search line being typed.
    fn line_buf(&mut self) -> &mut String {
        let (Mode::Command(buf) | Mode::Search(buf)) = &mut self.mode else {
            unreachable!("line_buf outside command or search mode")
        };
        buf
    }

    /// Adds a command line or search to its history (no repeat of the last one).
    fn push_history(&mut self, searching: bool, line: &str) {
        let h = &mut self.history[usize::from(searching)];
        if !line.is_empty() && h.last().is_none_or(|l| l != line) {
            h.push(line.to_string());
            if h.len() > LIST_MAX {
                h.remove(0);
            }
        }
    }

    /// History (Up/Down: entries starting with what was typed), completion (Tab, Shift+Tab) and
    /// `Ctrl+R x` on the command line; false for any other key.
    fn line_edit(&mut self, key: KeyEvent, searching: bool) -> bool {
        if !matches!(key.code, KeyCode::Up | KeyCode::Down) {
            self.hist_at = None;
        }
        if !matches!(key.code, KeyCode::Tab | KeyCode::BackTab) {
            self.completion = None;
        }
        if mem::take(&mut self.line_reg) {
            if let KeyCode::Char(c) = key.code
                && let Some(r) = self.reg(c)
            {
                let t = r.text.strip_suffix('\n').unwrap_or(&r.text).to_string();
                self.line_buf().push_str(&t);
            }
            return true;
        }
        match key.code {
            KeyCode::Char('r') if key.modifiers.contains(KeyModifiers::CONTROL) => self.line_reg = true,
            KeyCode::Up | KeyCode::Down => {
                let up = key.code == KeyCode::Up;
                let typed = self.line_buf().clone();
                let h = &self.history[usize::from(searching)];
                let (at, prefix) = self.hist_at.take().unwrap_or((h.len(), typed));
                let found = if up {
                    h[..at].iter().rposition(|l| l.starts_with(&prefix))
                } else {
                    h.iter().skip(at + 1).position(|l| l.starts_with(&prefix)).map(|i| i + at + 1)
                };
                let (at, line) = match found {
                    Some(i) => (i, h[i].clone()),
                    // Past the newest entry: what was typed.
                    None if !up => (h.len(), prefix.clone()),
                    None => (at, if at < h.len() { h[at].clone() } else { prefix.clone() }),
                };
                *self.line_buf() = line;
                self.hist_at = Some((at, prefix));
            }
            KeyCode::Tab | KeyCode::BackTab if !searching => {
                let (list, i, base) = match self.completion.take() {
                    Some((list, i, base)) => {
                        let n = list.len();
                        let i = if key.code == KeyCode::Tab { (i + 1) % n } else { (i + n - 1) % n };
                        (list, i, base)
                    }
                    None => {
                        let line = self.line_buf().clone();
                        match ex::complete(&line) {
                            Some((at, list)) if !list.is_empty() => {
                                let i = if key.code == KeyCode::Tab { 0 } else { list.len() - 1 };
                                (list, i, line[..at].to_string())
                            }
                            _ => return true,
                        }
                    }
                };
                *self.line_buf() = format!("{base}{}", list[i]);
                self.completion = Some((list, i, base));
            }
            _ => return false,
        }
        true
    }

    /// Command line (`:`) and search (`/`) input.
    fn line_key(&mut self, key: KeyEvent) {
        let searching = matches!(self.mode, Mode::Search(_));
        if self.line_edit(key, searching) {
            return self.line_changed(searching);
        }
        let (Mode::Command(buf) | Mode::Search(buf)) = &mut self.mode else {
            unreachable!("line_key outside command or search mode")
        };
        match key.code {
            KeyCode::Char(c) => buf.push(c),
            KeyCode::Backspace => {
                if buf.pop().is_none() {
                    self.mode = Mode::Normal;
                }
            }
            KeyCode::Esc => self.mode = Mode::Normal,
            KeyCode::Enter => match mem::replace(&mut self.mode, Mode::Normal) {
                Mode::Command(cmd) => {
                    self.push_history(false, &cmd);
                    if !self.command(&cmd) {
                        self.quit = true;
                    }
                    // `.` does not repeat `:` commands (vim); a confirm session ends the group itself.
                    if self.mode != Mode::Confirm {
                        self.rec_cmd = None;
                        self.end_command();
                    }
                }
                Mode::Search(typed) => {
                    self.push_history(true, &typed);
                    (self.win.line, self.win.col) = self.search_origin;
                    self.inc_search = None;
                    let (pat, off) = search::split_typed(&typed, if self.search_back { '?' } else { '/' });
                    let offset = match search::Offset::parse(off) {
                        Ok(o) => o,
                        Err(e) => {
                            self.msg = e;
                            return self.clamp_normal();
                        }
                    };
                    if !pat.is_empty() {
                        match self.new_search(pat) {
                            Ok(s) => self.last_search = Some(s),
                            Err(e) => {
                                self.msg = e;
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
                        self.msg = "No previous search pattern".into();
                    }
                    return self.clamp_normal();
                }
                _ => unreachable!(),
            },
            _ => {}
        }
        self.line_changed(searching);
    }

    /// After a key on the search line: the incsearch preview, or the cursor back where `/` started
    /// once the search was left with Esc.
    fn line_changed(&mut self, searching: bool) {
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

    /// A search for typed `pat`, with `ignorecase`/`smartcase` applied (`pat` is kept as typed).
    fn new_search(&self, pat: &str) -> Result<Search, String> {
        let mut s = Search::new(&self.buf.opts.case_pattern(pat))?;
        s.pat = pat.into();
        Ok(s)
    }

    /// `:earlier`/`:later` with a count or a duration (`10s`, `5m`, `1h`, `2d`), `:undo N`
    /// (go to version N), `:undo`/`:redo` alone.
    fn time_travel(&mut self, name: &str, arg: &str) {
        let back = matches!(name, "earlier" | "undo");
        let (num, unit) = arg.split_at(arg.find(|c: char| !c.is_ascii_digit()).unwrap_or(arg.len()));
        let n: Option<usize> = if num.is_empty() { Some(1) } else { num.parse().ok() };
        let secs = match unit {
            "" => None,
            "s" => Some(1),
            "m" => Some(60),
            "h" => Some(3600),
            "d" => Some(86400),
            _ => return self.msg = format!("Invalid argument: {arg}"),
        };
        let Some(n) = n else { return self.msg = format!("Invalid argument: {arg}") };
        let end = if back { "Already at oldest change" } else { "Already at newest change" };
        match (name, secs) {
            ("undo", None) if arg.is_empty() => self.undo(1),
            ("undo", None) => self.history(1, |d| d.goto(n), "Already at that change"),
            ("redo", None) if arg.is_empty() => self.redo(1),
            ("undo" | "redo", _) => self.msg = format!("Invalid argument: {arg}"),
            (_, Some(s)) => {
                let d = std::time::Duration::from_secs((n as u64).saturating_mul(s));
                self.history(1, |doc| if back { doc.earlier_time(d) } else { doc.later_time(d) }, end);
            }
            _ => self.history(1, |d| if back { d.earlier(n) } else { d.later(n) }, end),
        }
    }

    /// `Ctrl+G`: name, modified flag, line count and position in percent.
    fn file_info(&self) -> String {
        let lines = self.line_count();
        format!(
            "\"{}\"{} {lines} line{} --{}%--",
            self.buf.path.display(),
            if self.is_dirty() { " [Modified]" } else { "" },
            if lines == 1 { "" } else { "s" },
            (self.win.line + 1) * 100 / lines,
        )
    }

    /// `g Ctrl+G`: cursor position against the text's totals (columns and chars from the
    /// library's char metrics; words are blank-separated, counted by a scan).
    fn counts(&self) -> String {
        let text = self.buf.doc.text();
        let off = self.offset();
        let all = text.slice(0..text.len());
        // The cursor's word is the last one starting at or before it.
        let starts: Vec<usize> = all.split_whitespace().map(|w| w.as_ptr() as usize - all.as_ptr() as usize).collect();
        let (words, word) = (starts.len(), starts.partition_point(|&s| s <= off));
        format!(
            "Col {} of {}; Line {} of {}; Word {} of {}; Char {} of {}; Byte {} of {}",
            self.win.col + 1,
            self.line_chars(self.win.line),
            self.win.line + 1,
            self.line_count(),
            word,
            words,
            text.offset_to_char(off) + 1,
            text.char_count(),
            off + 1,
            text.len(),
        )
    }

    /// `:undolist`: the branch tips (vim's list), as `seq:changes:age`, newest last.
    fn undolist(&self) -> String {
        let versions: Vec<_> = self.buf.doc.versions().collect();
        let now = std::time::Instant::now();
        let mut out = format!("at {} of {} |", self.buf.doc.seq(), versions.len() - 1);
        for v in versions.iter().filter(|v| v.leaf && v.seq > 0) {
            // Changes: the number of versions from the root to this one.
            let (mut depth, mut s) = (0, v.seq);
            while s != 0 {
                depth += 1;
                s = versions[s].parent;
            }
            out.push_str(&format!(" {}:{}:{}s", v.seq, depth, now.duration_since(v.time).as_secs()));
        }
        out
    }

    /// `:[range]s/pat/rep/[flags]`: one undo step through `Document::replace_matching`.
    fn substitute(&mut self, mut s: substitute::Sub) {
        let (first, last) = match self.range0(s.range.take().as_ref(), false) {
            Ok(r) => r,
            Err(e) => return self.msg = e,
        };
        if s.confirm && !s.count && !self.line_marks.is_empty() {
            // shortcut: no `c` flag under `:g`/`:normal` (the prompt would need the loop to wait), when someone needs it
            return self.msg = "The c flag cannot be used here".into();
        }
        if s.repeat || s.keep {
            let Some(last) = &self.last_sub else { return self.msg = "No previous substitute".into() };
            if s.repeat {
                (s.pat, s.rep) = (last.pat.clone(), last.rep.clone());
            }
            if s.keep {
                s.all |= last.all;
                s.ignore_case = s.ignore_case.or(last.ignore_case);
            }
        }
        let pat = if s.pat.is_empty() {
            match &self.last_search {
                Some(l) => l.pat.clone(),
                None => return self.msg = "No previous regular expression".into(),
            }
        } else {
            s.pat
        };
        self.last_sub = Some(substitute::Sub { range: None, pat: pat.clone(), rep: s.rep.clone(), all: s.all, ignore_case: s.ignore_case, confirm: false, count: false, repeat: false, keep: false });
        let pattern = match s.ignore_case {
            Some(true) => format!("(?i){pat}"),
            Some(false) => format!("(?-i){pat}"),
            None => self.buf.opts.case_pattern(&pat),
        };
        let search = match Search::new(&pattern) {
            Ok(r) => r,
            Err(e) => return self.msg = e,
        };
        let text = self.buf.doc.text().clone();
        let (start, end) = (text.line_to_offset(first), self.line_end_offset(last));
        let plural = |k: usize| if k == 1 { "" } else { "s" };
        if s.confirm && !s.count {
            self.last_search = Some(search.clone());
            self.hl = true;
            self.confirm = Some(Confirm { search, rep: s.rep, all: s.all, next: start, end, n: 0, lines: 0, last_line: None, cur: 0..0 });
            self.mode = Mode::Confirm;
            if !self.confirm_prompt() {
                self.msg = format!("Pattern not found: {pat}");
            }
            return;
        }
        // A match belongs to the line it starts on; without `g` only the first per line counts.
        let mut lines: Vec<usize> = Vec::new();
        let mut pick = |m: Range<usize>| {
            if m.start < start || m.start > end {
                return false;
            }
            let l = text.offset_to_line(m.start);
            if !s.all && lines.last() == Some(&l) {
                return false;
            }
            if lines.last() != Some(&l) {
                lines.push(l);
            }
            true
        };
        if s.count {
            let n = text.find_iter_in(&search.re, start..end).filter(|m| pick(m.clone())).count();
            self.last_search = Some(search);
            self.hl = true;
            return self.msg = if n == 0 {
                format!("Pattern not found: {pat}")
            } else {
                format!("{n} match{} on {} line{}", if n == 1 { "" } else { "es" }, lines.len(), plural(lines.len()))
            };
        }
        let n = self.edit(|d| d.replace_matching(&search.re, &s.rep, pick));
        self.last_search = Some(search);
        self.hl = true;
        if n == 0 {
            return self.msg = format!("Pattern not found: {pat}");
        }
        // The line where the last replacement ends (the edits are in order, each in the text
        // left by the previous ones, so the last one is already in final coordinates).
        let last_edit = *self.buf.doc.last_edits().last().expect("n > 0");
        let l = self.buf.doc.text().offset_to_line(last_edit.start + last_edit.new_len);
        self.set_jump();
        self.win.line = l;
        self.set_col(self.first_non_blank(l));
        self.clamp_normal();
        self.msg = format!("{n} substitution{} on {} line{}", plural(n), lines.len(), plural(lines.len()));
        // `.` does not repeat `:` commands (vim), so this undo group is not the last change.
        self.rec_cmd = None;
        self.end_command();
    }

    /// `gn`/`gN`: the match under the cursor, else the next/previous one, as an operator target
    /// or a Visual selection.
    fn select_match(&mut self, op: Option<char>, forward: bool) {
        let Some(s) = self.last_search.clone() else { return self.msg = "No previous search pattern".into() };
        self.hl = true;
        let text = self.buf.doc.text().clone();
        let cur = self.offset();
        let after = text.char_to_offset((text.offset_to_char(cur) + 1).min(text.char_count()));
        // In Visual the match must reach past the cursor, so a repeated `gn`/`gN` moves on.
        let visual = matches!(self.mode, Mode::Visual(_));
        let here = search::find_backward(&text, &s.re, after).filter(|(m, w)| {
            !w && m.end > cur && !(visual && if forward { m.end <= after } else { m.start >= cur })
        });
        let found = here.or_else(|| if forward { search::find_forward(&text, &s.re, cur, after) } else { search::find_backward(&text, &s.re, cur) });
        let Some((m, _)) = found.filter(|(m, _)| !m.is_empty()) else { return self.msg = format!("Pattern not found: {}", s.pat) };
        let (a, b) = (self.pos_of(m.start), self.pos_of(m.end));
        match op {
            Some(op) => self.operate(op, a, b, Kind::Exclusive),
            // In Visual, the selection is extended to the match's end (`gN`: its start), like vim.
            None if matches!(self.mode, Mode::Visual(_)) => {
                (self.win.line, self.win.col) = if forward { self.pos_of(text.floor_char_boundary(m.end - 1)) } else { a };
                self.win.want_col = self.win.col;
            }
            None => {
                self.anchor = a;
                self.mode = Mode::Visual(VKind::Char);
                (self.win.line, self.win.col) = self.pos_of(text.floor_char_boundary(m.end - 1));
                self.win.want_col = self.win.col;
            }
        }
    }

    /// Moves the cursor to the next match of the confirm session and asks; false when none is left.
    fn confirm_prompt(&mut self) -> bool {
        let Some(c) = &self.confirm else { return false };
        let Some((m, _)) = c.find(self.buf.doc.text()) else { return false };
        let (l, col) = self.pos_of(m.start);
        let Some(c) = &mut self.confirm else { return false };
        self.msg = format!("replace with {} (y/n/a/q/l)?", c.rep);
        c.cur = m;
        (self.win.line, self.win.col) = (l, col);
        self.win.want_col = col;
        true
    }

    /// Ends a confirm session: cursor on the last replacement's line, summary message.
    fn confirm_finish(&mut self) {
        let Some(c) = self.confirm.take() else { return };
        self.mode = Mode::Normal;
        if let Some(l) = c.last_line {
            self.set_jump();
            self.win.line = l;
            self.set_col(self.first_non_blank(l));
        }
        self.clamp_normal();
        let plural = |k: usize| if k == 1 { "" } else { "s" };
        self.msg = format!("{} substitution{} on {} line{}", c.n, plural(c.n), c.lines, plural(c.lines));
        self.rec_cmd = None;
    }

    /// `y` replaces, `n` skips, `a` replaces this and all the rest, `l` replaces this and stops,
    /// `q`/Esc stop.
    fn confirm_key(&mut self, key: KeyEvent) {
        let k = if key.code == KeyCode::Esc { 'q' } else { normal_char(key).unwrap_or(' ') };
        if !matches!(k, 'y' | 'n' | 'a' | 'l' | 'q') {
            self.confirm_prompt();
            return;
        }
        loop {
            let Some(c) = &mut self.confirm else { return };
            let text = self.buf.doc.text().clone();
            let Some((m, rep)) = c.find(&text) else {
                return self.confirm_finish();
            };
            if k == 'q' {
                return self.confirm_finish();
            }
            let at = if k == 'n' {
                m.end
            } else {
                c.n += 1;
                c.end = (c.end + rep.len()).saturating_sub(m.len());
                let l = text.offset_to_line(m.start);
                if c.last_line != Some(l) {
                    c.lines += 1;
                }
                c.last_line = Some(l);
                self.edit(|d| d.splice(m.clone(), &rep));
                m.start + rep.len()
            };
            let c = self.confirm.as_mut().expect("session is open");
            let text = self.buf.doc.text();
            // Without `g` the rest of the line is skipped; an empty match steps a char so the
            // search always advances. `len + 1` means "nothing left".
            c.next = if !c.all {
                let l = text.offset_to_line(at);
                if l + 1 < text.line_count() { text.line_to_offset(l + 1) } else { text.len() + 1 }
            } else if m.is_empty() {
                if at >= text.len() { text.len() + 1 } else { text.char_to_offset(text.offset_to_char(at) + 1) }
            } else {
                at
            };
            if k == 'l' {
                return self.confirm_finish();
            }
            if k != 'a' {
                break;
            }
        }
        if !self.confirm_prompt() {
            self.confirm_finish();
        }
    }

    /// `:e`/`:e!`: replaces the buffer with the file on disk; history starts over.
    fn reload(&mut self) {
        match read_doc(&self.buf.path) {
            Ok(doc) => {
                (self.buf.saved, self.buf.saved_eol) = (doc.text().clone(), doc.eol());
                self.buf.doc = doc;
                (self.grouping, self.changed) = (false, false);
                self.clamp();
                self.msg = format!("Reloaded ({})", self.buf.doc.eol());
            }
            Err(e) => self.msg = format!("Reload failed: {e}"),
        }
    }

    /// Inserts `s` at the cursor and moves after it; a typed combining mark joins the cluster before it.
    fn insert(&mut self, s: &str) {
        let off = self.offset();
        self.edit_insert(off, s);
        (self.win.line, self.win.col) = self.pos_of(off + s.len());
        self.win.want_col = self.win.col;
    }

    fn set_col(&mut self, col: usize) {
        self.win.col = col;
        self.win.want_col = col;
    }

    fn move_left(&mut self) {
        if self.win.col > 0 {
            self.set_col(self.win.col - 1);
        } else if self.win.line > 0 {
            self.win.line -= 1;
            self.set_col(self.line_chars(self.win.line));
        }
    }

    fn move_right(&mut self) {
        if self.win.col < self.line_chars(self.win.line) {
            self.set_col(self.win.col + 1);
        } else if self.win.line + 1 < self.line_count() {
            self.win.line += 1;
            self.set_col(0);
        }
    }

    fn move_vertical(&mut self, delta: isize) {
        let last = self.line_count() - 1;
        self.win.line = self.win.line.saturating_add_signed(delta).min(last);
        self.win.col = self.win.want_col.min(self.line_chars(self.win.line));
    }

    /// Keeps the cursor inside the text after undo/redo or reload.
    fn clamp(&mut self) {
        self.win.line = self.win.line.min(self.line_count() - 1);
        self.set_col(self.win.col.min(self.line_chars(self.win.line)));
        self.clamp_normal();
    }

    /// Normal mode keeps the cursor on a char, not past the line end (vim).
    fn clamp_normal(&mut self) {
        self.win.col = self.win.col.min(self.line_chars(self.win.line).saturating_sub(1));
    }

    /// Writes the current buffer on a thread; with `wait`, waits and returns false on failure.
    fn save(&mut self, wait: bool) -> bool {
        self.save_buffer(self.buf.id, wait)
    }
}

#[cfg(test)]
mod tests;
