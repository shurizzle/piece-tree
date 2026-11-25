//! Vim-like modal editor: state and key handling.
//!
//! Key handling never touches the terminal, and rendering builds a `Frame`
//! before drawing it, so both are tested without a terminal.

mod motion;
mod objects;
mod options;
mod parse;
mod registers;
mod render;
mod search;
mod substitute;

use std::{
    collections::HashMap,
    fs,
    io::{self, BufWriter},
    mem,
    ops::Range,
    path::{Path, PathBuf},
};

use crossterm::event::{KeyCode, KeyEvent, KeyModifiers};
use piece_tree::{Document, LineEnding, Text};

use objects::Obj;
pub use options::Background;
use options::Options;
use parse::{Cmd, MAX_COUNT, OP_LOWER, OP_TOGGLE, OP_UPPER, Parse, VISUAL_KEYS, char_key, normal_char, parse, strip_counts, valid_reg};
use registers::{Reg, RegKind, Registers};
use search::Search;

const G_EARLIER: char = parse::g_key('-');
const G_LATER: char = parse::g_key('+');
const G_COUNTS: char = parse::g_key('\x07');
const G_ASCII: char = parse::g_key('a');
const G_UTF8: char = parse::g_key('8');
const G_BYTE: char = parse::g_key('o');
const G_NEXT: char = parse::g_key('n');
const G_PREV: char = parse::g_key('N');
const G_SUBST: char = parse::g_key('&');

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

/// Block `I`/`A`/`c`: on Esc, the text typed on the first line is copied to `lines` at `col`
/// (`usize::MAX`: each line's end), padding short lines with spaces when `pad`.
struct BlockInsert {
    start: Pos,
    lines: Range<usize>,
    col: usize,
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

fn byte_of_col(s: &str, col: usize) -> usize {
    s.char_indices().nth(col).map_or(s.len(), |(i, _)| i)
}

/// Loads `path` (missing file → empty), applying the `--eol` override.
pub fn read_doc(path: &Path, eol: Option<LineEnding>) -> io::Result<Document> {
    let content = match fs::read_to_string(path) {
        Ok(s) => s,
        Err(e) if e.kind() == io::ErrorKind::NotFound => String::new(),
        Err(e) => return Err(e),
    };
    let mut doc = Document::from_string(content);
    if let Some(eol) = eol {
        doc.set_eol(eol);
    }
    Ok(doc)
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

pub struct Editor {
    doc: Document,
    path: PathBuf,
    eol_override: Option<LineEnding>,
    /// Version last written to disk; dirty is a pointer comparison.
    saved: Text,
    /// Cursor line and column, in chars.
    line: usize,
    col: usize,
    /// Column kept across vertical moves; `usize::MAX` after `$`.
    want_col: usize,
    top: usize,
    left: usize,
    rows: usize,
    msg: String,
    mode: Mode,
    opts: Options,
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
    /// `a`–`z` and `'` (position before the last jump), as byte offsets shifted by edits.
    marks: HashMap<char, usize>,
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
    /// Macro register being recorded (`q`), its keys, and the stored macros.
    recording: Option<char>,
    macro_keys: Vec<KeyEvent>,
    macros: HashMap<char, Vec<KeyEvent>>,
    last_macro: Option<char>,
    macro_depth: usize,
    macro_abort: bool,
    quit: bool,
    /// A `Document` group is open for the current command (or insert session), so it is one
    /// undo step; `changed` says it edited the text.
    grouping: bool,
    changed: bool,
}

impl Editor {
    pub fn new(doc: Document, path: PathBuf) -> Self {
        Self {
            saved: doc.text().clone(),
            doc,
            path,
            eol_override: None,
            line: 0,
            col: 0,
            want_col: 0,
            top: 0,
            left: 0,
            rows: 1,
            msg: "i insert | Esc normal | :w save | :q quit".into(),
            mode: Mode::Normal,
            opts: Options::default(),
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
            marks: HashMap::new(),
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
            macros: HashMap::new(),
            last_macro: None,
            macro_depth: 0,
            macro_abort: false,
            quit: false,
            grouping: false,
            changed: false,
        }
    }

    pub fn open(path: PathBuf, eol: Option<LineEnding>) -> io::Result<Self> {
        let mut e = Self::new(read_doc(&path, eol)?, path);
        e.eol_override = eol;
        Ok(e)
    }

    pub fn set_background(&mut self, bg: Background) {
        self.opts.background = bg;
    }

    fn is_dirty(&self) -> bool {
        !self.doc.text().ptr_eq(&self.saved)
    }

    fn line_count(&self) -> usize {
        self.doc.text().line_count()
    }

    fn line_chars(&self, line: usize) -> usize {
        self.doc.text().line_char_len(line)
    }

    fn first_non_blank(&self, line: usize) -> usize {
        self.doc.text().line(line).chars().take_while(|c| c.is_whitespace()).count()
    }

    fn indent_of(&self, line: usize) -> String {
        self.doc.text().line(line).chars().take_while(|c| c.is_whitespace()).collect()
    }

    /// Byte offset of `(line, col)`; a column past the line end means the end.
    fn offset_of(&self, (line, col): Pos) -> usize {
        let text = self.doc.text();
        text.line_col_to_offset(line, col.min(text.line_char_len(line)))
    }

    /// Byte offset of the cursor.
    fn offset(&self) -> usize {
        self.offset_of((self.line, self.col))
    }

    fn pos_of(&self, off: usize) -> Pos {
        self.doc.text().offset_to_line_col(off)
    }

    /// Offset of the `\n` ending `line`, or the text length on the last line.
    fn line_end_offset(&self, line: usize) -> usize {
        let text = self.doc.text();
        text.line_to_offset(line) + text.line(line).len()
    }

    fn end_pos(&self) -> Pos {
        let last = self.line_count() - 1;
        (last, self.line_chars(last))
    }

    fn char_at(&self, (line, col): Pos) -> char {
        self.doc.text().line(line).chars().nth(col).unwrap_or('\n')
    }

    /// Visual block columns, inclusive.
    fn block_cols(&self) -> (usize, usize) {
        (self.anchor.1.min(self.col), self.anchor.1.max(self.col))
    }

    /// Byte range covered by a motion from `a` to `b` (`a <= b`).
    fn range(&self, a: Pos, b: Pos, kind: Kind) -> Range<usize> {
        if kind == Kind::Linewise {
            return self.doc.text().line_to_offset(a.0)..self.line_end_offset(b.0);
        }
        let mut e = self.offset_of(b);
        if kind == Kind::Inclusive {
            let line = self.doc.text().line(b.0);
            e += line[byte_of_col(&line, b.1)..].chars().next().map_or(0, char::len_utf8);
        }
        self.offset_of(a)..e
    }

    /// Runs one `Document` edit inside the command's group and moves the marks with it.
    fn edit<R>(&mut self, f: impl FnOnce(&mut Document) -> R) -> R {
        if !self.grouping {
            self.doc.begin_group();
            self.grouping = true;
        }
        let r = f(&mut self.doc);
        if !self.doc.last_edits().is_empty() {
            self.changed = true;
            self.map_marks();
        }
        r
    }

    /// Moves every mark through the last `Document` call's edits.
    fn map_marks(&mut self) {
        let edits = self.doc.last_edits();
        for m in self.marks.values_mut() {
            *m = piece_tree::map_offset(edits, *m);
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
            self.doc.end_group();
        }
        if mem::take(&mut self.changed)
            && !self.replaying
            && let Some((count, cmd, n)) = &self.rec_cmd
        {
            let tail = self.rec[(*n).min(self.rec.len())..].to_vec();
            self.last_change = Some(LastChange { count: *count, cmd: cmd.clone(), tail });
        }
    }

    fn store_reg(&mut self, text: String, kind: RegKind, yank: bool) {
        let name = self.cur_reg.take();
        self.regs.store(name, Reg { text, kind }, yank);
    }

    /// Returns false to quit.
    pub fn key(&mut self, key: KeyEvent) -> bool {
        self.msg.clear();
        if let Some(r) = self.recording
            && self.macro_depth == 0
            && !self.replaying
        {
            if self.mode == Mode::Normal && self.pending.is_empty() && key == KeyCode::Char('q').into() {
                self.macros.insert(r, mem::take(&mut self.macro_keys));
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
            match self.text_object(key == 'a', arg(), n) {
                Some(Obj::Chars(r)) => self.operate(op, self.pos_of(r.start), self.pos_of(r.end), Kind::Exclusive),
                Some(Obj::Lines(a, b)) => self.operate(op, (a, 0), (b, 0), Kind::Linewise),
                None => {}
            }
            return;
        }
        if op == Some(key) {
            let last = (self.line + n - 1).min(self.line_count() - 1);
            return self.operate(key, (self.line, 0), (last, 0), Kind::Linewise);
        }
        if matches!(key, G_NEXT | G_PREV) {
            return self.select_match(op, key == G_NEXT);
        }
        if parse::is_motion(key) {
            let Some((to, kind)) = self.motion(&cmd) else { return };
            match op {
                Some(op) => self.operate(op, (self.line, self.col), to, kind),
                None => self.move_to(key, to),
            }
            return;
        }
        let len = self.line_chars(self.line);
        match key {
            'i' => self.insert_at(self.col),
            'a' => self.insert_at((self.col + 1).min(len)),
            'I' => self.insert_at(self.first_non_blank(self.line)),
            'A' => self.insert_at(len),
            'o' => self.open_line(true),
            'O' => self.open_line(false),
            'x' => self.normal(Cmd { op: Some('d'), key: 'l', arg: None, ..cmd }),
            'D' => self.normal(Cmd { op: Some('d'), key: '$', arg: None, ..cmd }),
            'C' => self.normal(Cmd { op: Some('c'), key: '$', arg: None, ..cmd }),
            'S' => self.normal(Cmd { op: Some('c'), key: 'c', arg: None, ..cmd }),
            'J' => self.join(n.max(2) - 1),
            'p' => self.paste(true, n),
            'P' => self.paste(false, n),
            'u' => self.undo(n),
            '\x12' => self.redo(n),
            ':' => self.mode = Mode::Command(String::new()),
            '/' | '?' => {
                self.search_origin = (self.line, self.col);
                self.search_back = key == '?';
                self.inc_search = None;
                self.mode = Mode::Search(String::new());
            }
            'v' | 'V' | '\x16' => {
                self.anchor = (self.line, self.col);
                self.mode = Mode::Visual(match key {
                    'v' => VKind::Char,
                    'V' => VKind::Line,
                    _ => VKind::Block,
                });
            }
            '~' => {
                let end = (self.col + n).min(len);
                let range = self.range((self.line, self.col), (self.line, end), Kind::Exclusive);
                let s = toggle_case(&self.doc.text().slice(range.clone()));
                self.edit_replace(range, &s);
                self.set_col(end);
            }
            'r' => {
                // Vim refuses when fewer than `count` chars remain.
                if self.col + n <= len {
                    let range = self.range((self.line, self.col), (self.line, self.col + n), Kind::Exclusive);
                    self.edit_replace(range, &arg().to_string().repeat(n));
                    self.set_col(self.col + n - 1);
                }
            }
            '.' => self.repeat(count),
            G_EARLIER => self.history(1, |d| d.earlier(n), "Already at oldest change"),
            '\x07' => self.msg = self.file_info(),
            // `&` is `:s`, `g&` is `:%s//~/&` (last substitute on the whole text, same flags).
            '&' => self.substitute(substitute::Sub::again(false)),
            G_SUBST => self.substitute(substitute::Sub::again(true)),
            G_COUNTS => self.msg = self.counts(),
            G_ASCII | G_UTF8 => {
                let c = self.char_at((self.line, self.col));
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
                    self.marks.insert(m, self.offset());
                }
                _ => self.msg = "Invalid mark name".into(),
            },
            'q' => match arg() {
                r @ 'a'..='z' => {
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
            'z' => match arg() {
                'z' => self.top = self.line.saturating_sub((self.rows - 1) / 2),
                't' => self.top = self.line,
                'b' => self.top = (self.line + 1).saturating_sub(self.rows),
                _ => {}
            },
            _ => unreachable!("parse yields only known keys"),
        }
        if matches!(key, 'i' | 'a' | 'I' | 'A' | 'o' | 'O') {
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
        let Some(keys) = self.macros.get(&r).cloned() else {
            self.msg = format!("Register {r} is empty");
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
        let indent = self.indent_of(self.line);
        if below {
            self.edit_insert(self.line_end_offset(self.line), &format!("\n{indent}"));
            self.line += 1;
        } else {
            self.edit_insert(self.doc.text().line_to_offset(self.line), &format!("{indent}\n"));
        }
        self.insert_at(indent.chars().count());
        self.auto_indent = (!indent.is_empty()).then_some(self.line);
    }

    /// Empties the cursor line if it only holds an unused auto indent (vim).
    fn clear_auto_indent(&mut self) {
        if self.auto_indent.take() == Some(self.line) && self.doc.text().line(self.line).trim().is_empty() {
            let start = self.doc.text().line_to_offset(self.line);
            self.edit_delete(start..self.line_end_offset(self.line));
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
            let s = f(&self.doc.text().slice(range.clone()));
            self.edit_replace(range, &s);
            self.line = a.0;
            if kind != Kind::Linewise {
                self.set_col(a.1);
            }
            return;
        }
        let mut yanked = self.doc.text().slice(range.clone()).into_owned();
        if kind == Kind::Linewise {
            yanked.push('\n');
        }
        self.store_reg(yanked, if kind == Kind::Linewise { RegKind::Line } else { RegKind::Char }, op == 'y');
        match (op, kind) {
            ('y', Kind::Linewise) => self.line = a.0,
            ('d', Kind::Linewise) => {
                // The last line has no `\n` after it: take the one before.
                let Range { start, end } = range;
                let range = if end < self.doc.text().len() { start..end + 1 } else { start.saturating_sub(1)..end };
                self.edit_delete(range);
                self.line = a.0.min(self.line_count() - 1);
                self.set_col(self.first_non_blank(self.line));
            }
            ('c', Kind::Linewise) => {
                // Autoindent: the first line keeps its indent.
                let indent = self.indent_of(a.0);
                self.edit_delete(range.start + indent.len()..range.end);
                self.line = a.0;
                self.insert_at(indent.chars().count());
                self.auto_indent = (!indent.is_empty()).then_some(a.0);
            }
            _ => {
                if op != 'y' {
                    self.edit_delete(range);
                }
                self.line = a.0;
                self.set_col(a.1);
                if op == 'c' {
                    self.mode = Mode::Insert;
                }
            }
        }
    }

    /// `>`/`<`: indents lines by `times` × `tabstop` spaces (empty lines untouched), or removes up to
    /// that much leading blank (a tab counts as `tabstop`).
    fn shift(&mut self, first: usize, last: usize, right: bool, times: usize) {
        let ts = self.opts.tabstop;
        let width = ts * times;
        for l in first..=last {
            let start = self.doc.text().line_to_offset(l);
            if right {
                if !self.doc.text().line(l).is_empty() {
                    self.edit_insert(start, &" ".repeat(width));
                }
                continue;
            }
            let (mut w, mut bytes) = (0, 0);
            for c in self.doc.text().line(l).chars() {
                let cw = match c {
                    ' ' => 1,
                    '\t' => ts,
                    _ => break,
                };
                if w + cw > width {
                    break;
                }
                w += cw;
                bytes += 1;
            }
            self.edit_delete(start..start + bytes);
        }
        self.line = first;
        self.set_col(self.first_non_blank(first));
    }

    fn join(&mut self, times: usize) {
        for _ in 0..times {
            if self.line + 1 >= self.line_count() {
                break;
            }
            let off = self.line_end_offset(self.line);
            let next = self.doc.text().line(self.line + 1);
            let trimmed = next.trim_start();
            let blanks = next.len() - trimmed.len();
            let space = !trimmed.is_empty() && off > self.doc.text().line_to_offset(self.line);
            let col = self.line_chars(self.line);
            self.edit_delete(off..off + 1 + blanks);
            if space {
                self.edit_insert(off, " ");
            }
            self.set_col(col);
        }
    }

    fn paste(&mut self, after: bool, n: usize) {
        let name = self.cur_reg.take().unwrap_or('"');
        let Some(Reg { text, kind }) = self.regs.get(name).cloned() else {
            self.msg = format!("Nothing in register {name}");
            return;
        };
        if text.is_empty() {
            return;
        }
        match kind {
            RegKind::Line => {
                let s = text.repeat(n);
                let line = if after { self.line + 1 } else { self.line };
                if line < self.line_count() {
                    self.edit_insert(self.doc.text().line_to_offset(line), &s);
                } else {
                    // Past the last line: move the register's trailing `\n` to the front.
                    self.edit_insert(self.doc.text().len(), &format!("\n{}", &s[..s.len() - 1]));
                }
                self.line = line;
                self.set_col(self.first_non_blank(line));
            }
            RegKind::Char => {
                let s = text.repeat(n);
                let mut off = self.offset();
                if after && self.col < self.line_chars(self.line) {
                    off += self.char_at((self.line, self.col)).len_utf8();
                }
                self.edit_insert(off, &s);
                let last = s.chars().next_back().map_or(0, char::len_utf8);
                (self.line, self.col) = self.pos_of(off + s.len() - last);
                self.want_col = self.col;
            }
            RegKind::Block => {
                // Each register line goes into the next text line at one column, padding and adding lines.
                let col = if after && self.line_chars(self.line) > 0 { self.col + 1 } else { self.col };
                for (i, piece) in text.split('\n').enumerate() {
                    let l = self.line + i;
                    if l >= self.line_count() {
                        self.edit_insert(self.doc.text().len(), "\n");
                    }
                    let len = self.line_chars(l);
                    if len < col {
                        self.edit_insert(self.line_end_offset(l), &" ".repeat(col - len));
                    }
                    self.edit_insert(self.offset_of((l, col)), &piece.repeat(n));
                }
                self.set_col(col);
            }
        }
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
            if !step(&mut self.doc) {
                self.msg = at_end.into();
                break;
            }
            self.map_marks();
            let edits = self.doc.last_edits();
            first = edits
                .first()
                .map(|e| {
                    let off = piece_tree::map_offset(&edits[1..], e.start);
                    // Restored lines that start with their line break begin on the next line.
                    let nl = e.new_len > 0 && off < self.doc.text().len() && self.char_at(self.pos_of(off)) == '\n';
                    off + usize::from(nl)
                })
                .or(first);
        }
        if let Some(off) = first {
            (self.line, self.col) = self.pos_of(off.min(self.doc.text().len()));
            self.want_col = self.col;
        }
        self.clamp();
    }

    /// `Ctrl+A`/`Ctrl+X`: adds `delta` to the decimal number at or after the cursor in the line.
    fn add_number(&mut self, delta: i64) {
        let chars: Vec<char> = self.doc.text().line(self.line).chars().collect();
        let Some(mut i) = (self.col..chars.len()).find(|&i| chars[i].is_ascii_digit()) else { return };
        while i > 0 && chars[i - 1].is_ascii_digit() {
            i -= 1;
        }
        let start = if i > 0 && chars[i - 1] == '-' { i - 1 } else { i };
        let end = (i..chars.len()).find(|&j| !chars[j].is_ascii_digit()).unwrap_or(chars.len());
        let s: String = chars[start..end].iter().collect();
        let Some(v) = s.parse::<i64>().ok().and_then(|v| v.checked_add(delta)) else {
            self.msg = "Number out of range".into();
            return;
        };
        let v = v.to_string();
        let range = self.cols_range(self.line, start..end);
        self.edit_replace(range, &v);
        self.set_col(start + v.chars().count() - 1);
    }

    fn visual_key(&mut self, key: KeyEvent, kind: VKind) {
        // `'<`/`'>`: the selection's first and last lines, kept after leaving Visual (vim).
        let (a, b) = sorted(self.anchor, (self.line, self.col));
        let (sa, sb) = (self.doc.text().line_to_offset(a.0), self.doc.text().line_to_offset(b.0));
        self.marks.insert('<', sa);
        self.marks.insert('>', sb);
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
                && parse::is_motion(cmd.key)
                // shortcut: `gn`/`gN` do nothing in Visual mode (no selection extension), when someone needs it
                && !matches!(cmd.key, G_NEXT | G_PREV)
                && let Some((to, _)) = self.motion(&cmd)
            {
                self.move_to(cmd.key, to);
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
        let cur = (self.line, self.col);
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
                (self.line, self.col) = self.anchor;
                self.want_col = self.col;
                self.anchor = cur;
            }
            'J' => {
                self.line = a.0;
                self.join((b.0 - a.0).max(1));
            }
            // `visual_key` has set marks `<` and `>` for the range.
            ':' => self.mode = Mode::Command("'<,'>".into()),
            '<' | '>' => self.shift(a.0, b.0, c == '>', n),
            _ if kind == VKind::Block => self.block_op(c),
            'I' => {
                self.line = a.0;
                self.insert_at(if kind == VKind::Line { self.first_non_blank(a.0) } else { a.1 });
            }
            'A' => {
                self.line = b.0;
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

    /// Visual block operators on lines × columns.
    fn block_op(&mut self, c: char) {
        let (a, b) = sorted(self.anchor, (self.line, self.col));
        let (c0, c1) = self.block_cols();
        let dollar = self.want_col == usize::MAX;
        let lines = a.0..b.0 + 1;
        let cols = |e: &Self, l: usize| {
            let len = e.line_chars(l);
            let start = c0.min(len);
            start..(if dollar { len } else { (c1 + 1).min(len) }).max(start)
        };
        match c {
            'd' | 'x' | 'y' | 'c' | 's' => {
                let parts: Vec<String> =
                    lines.clone().map(|l| self.doc.text().slice(self.cols_range(l, cols(self, l))).into_owned()).collect();
                self.store_reg(parts.join("\n"), RegKind::Block, c == 'y');
                if c != 'y' {
                    for l in lines.clone() {
                        self.edit_delete(self.cols_range(l, cols(self, l)));
                    }
                }
                self.line = a.0;
                self.set_col(c0.min(self.line_chars(a.0)));
                if matches!(c, 'c' | 's') {
                    self.start_block_insert(a.0 + 1..b.0 + 1, c0, false);
                }
            }
            'I' => {
                self.line = a.0;
                self.start_block_insert(a.0 + 1..b.0 + 1, c0, false);
            }
            'A' => {
                self.line = a.0;
                let col = if dollar { usize::MAX } else { c1 + 1 };
                let len = self.line_chars(a.0);
                if !dollar && len < col {
                    self.edit_insert(self.line_end_offset(a.0), &" ".repeat(col - len));
                }
                self.start_block_insert(a.0 + 1..b.0 + 1, col, true);
            }
            _ => {
                let f = case_fn(match c {
                    '~' => OP_TOGGLE,
                    'u' => OP_LOWER,
                    _ => OP_UPPER,
                })
                .expect("case operator");
                for l in lines {
                    let range = self.cols_range(l, cols(self, l));
                    let s = f(&self.doc.text().slice(range.clone()));
                    self.edit_replace(range, &s);
                }
                self.line = a.0;
                self.set_col(c0);
            }
        }
    }

    fn start_block_insert(&mut self, lines: Range<usize>, col: usize, pad: bool) {
        let c = col.min(self.line_chars(self.line));
        self.block_insert = Some(BlockInsert { start: (self.line, c), lines, col, pad });
        self.insert_at(c);
    }

    /// Copies the text typed on a block's first line to its other lines; returns the block start.
    fn finish_block_insert(&mut self) -> Option<Pos> {
        let bi = self.block_insert.take()?;
        // Only text typed on the first line without a line break is copied (vim).
        if self.line == bi.start.0 && self.col >= bi.start.1 {
            let typed = self.doc.text().slice(self.offset_of(bi.start)..self.offset()).into_owned();
            for l in bi.lines.clone().filter(|_| !typed.is_empty()) {
                let len = self.line_chars(l);
                let col = if bi.col == usize::MAX { len } else { bi.col };
                if len < col {
                    if !bi.pad {
                        continue;
                    }
                    self.edit_insert(self.line_end_offset(l), &" ".repeat(col - len));
                }
                self.edit_insert(self.offset_of((l, col)), &typed);
            }
        }
        Some(bi.start)
    }

    /// Visual `r<c>`: every selected char (not line breaks) becomes `ch`.
    fn visual_replace(&mut self, ch: char, kind: VKind) {
        let (a, b) = sorted(self.anchor, (self.line, self.col));
        let (c0, c1) = self.block_cols();
        self.mode = Mode::Normal;
        let replace = |e: &mut Self, r: Range<usize>| {
            let s: String = e.doc.text().slice(r.clone()).chars().map(|x| if x == '\n' { x } else { ch }).collect();
            e.edit_replace(r, &s);
        };
        if kind == VKind::Block {
            for l in a.0..=b.0 {
                let len = self.line_chars(l);
                let r = self.cols_range(l, c0.min(len)..(c1 + 1).min(len).max(c0.min(len)));
                replace(self, r);
            }
            self.line = a.0;
            self.set_col(c0);
        } else {
            let (from, to, k) = self.visual_range(kind, a, b);
            let r = self.range(from, to, k);
            replace(self, r);
            self.line = a.0;
            self.set_col(if kind == VKind::Line { 0 } else { a.1 });
        }
    }

    fn insert_key(&mut self, key: KeyEvent) {
        if key.code != KeyCode::Esc {
            self.insert_keys.push(key);
        }
        if !matches!(key.code, KeyCode::Esc | KeyCode::Enter) {
            self.auto_indent = None;
        }
        match key.code {
            KeyCode::Esc => self.leave_insert(),
            KeyCode::Char(c) if !key.modifiers.contains(KeyModifiers::CONTROL) => {
                self.insert(c.encode_utf8(&mut [0; 4]));
            }
            KeyCode::Tab => self.insert(&" ".repeat(self.opts.tabstop)),
            KeyCode::Enter => self.newline(),
            KeyCode::Backspace => {
                let end = self.offset();
                self.move_left();
                let start = self.offset();
                self.edit_delete(start..end);
            }
            KeyCode::Delete => {
                let start = self.offset();
                if start < self.doc.text().len() {
                    let line = self.doc.text().line(self.line);
                    // At line end the next char is the `\n`.
                    let len = line[byte_of_col(&line, self.col)..].chars().next().map_or(1, char::len_utf8);
                    self.edit_delete(start..start + len);
                }
            }
            KeyCode::Left => self.move_left(),
            KeyCode::Right => self.move_right(),
            KeyCode::Up => self.move_vertical(-1),
            KeyCode::Down => self.move_vertical(1),
            KeyCode::PageUp => self.move_vertical(-(self.rows as isize)),
            KeyCode::PageDown => self.move_vertical(self.rows as isize),
            KeyCode::Home => self.set_col(0),
            KeyCode::End => self.set_col(self.line_chars(self.line)),
            _ => {}
        }
    }

    /// Enter: splits the line; the new one gets the indent before the cursor (autoindent).
    fn newline(&mut self) {
        let indent: String = self.doc.text().line(self.line).chars().take(self.col).take_while(|c| c.is_whitespace()).collect();
        self.clear_auto_indent();
        self.insert(&format!("\n{indent}"));
        self.auto_indent = (!indent.is_empty()).then_some(self.line);
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
        self.end_command();
        self.mode = Mode::Normal;
        match block {
            Some(p) => {
                (self.line, self.col) = p;
                self.want_col = self.col;
            }
            None => self.set_col(self.col.saturating_sub(1)),
        }
        self.clamp_normal();
    }

    /// Command line (`:`) and search (`/`) input.
    fn line_key(&mut self, key: KeyEvent) {
        let searching = matches!(self.mode, Mode::Search(_));
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
                    if !self.command(&cmd) {
                        self.quit = true;
                    }
                }
                Mode::Search(typed) => {
                    (self.line, self.col) = self.search_origin;
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
                        match Search::new(pat) {
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
        if !searching {
            return;
        }
        // incsearch: the cursor previews the first match from where `/` started; Esc goes back.
        // A pattern that does not compile yet (`(`) shows nothing.
        (self.line, self.col) = self.search_origin;
        let delim = if self.search_back { '?' } else { '/' };
        self.inc_search = match &self.mode {
            Mode::Search(typed) => Some(search::split_typed(typed, delim).0).filter(|p| !p.is_empty()).and_then(|p| Search::new(p).ok()),
            _ => None,
        };
        if let Some(s) = self.inc_search.clone()
            && let Some((m, _)) = self.find_match(&s.re, !self.search_back, self.offset())
        {
            (self.line, self.col) = self.pos_of(m.start);
        }
    }

    /// Returns false to quit.
    fn command(&mut self, cmd: &str) -> bool {
        const DIRTY: &str = "No write since last change (add ! to override)";
        let cmd = cmd.trim();
        match cmd {
            "" => {}
            "w" => {
                self.save();
            }
            "q" | "e" if self.is_dirty() => self.msg = DIRTY.into(),
            "q" | "q!" => return false,
            "e" | "e!" => self.reload(),
            "wq" => return !self.save(),
            "x" => return self.is_dirty() && !self.save(),
            "noh" | "nohlsearch" => self.hl = false,
            "undol" | "undolist" => self.msg = self.undolist(),
            _ if let Some(n) = cmd.strip_prefix("go").map(|a| a.trim_start_matches("to").trim()) => match n.parse::<usize>() {
                Ok(n) => {
                    self.set_jump();
                    (self.line, self.col) = self.pos_of(self.byte_pos(n.saturating_sub(1)));
                    self.want_col = self.col;
                    self.clamp_normal();
                }
                Err(_) if n.is_empty() => {
                    self.set_jump();
                    (self.line, self.col) = (0, 0);
                }
                Err(_) => self.msg = format!("Invalid argument: {n}"),
            },
            _ if let Some((name, arg)) = cmd.split_once(' ').or(Some((cmd, ""))).filter(|(n, _)| {
                matches!(*n, "earlier" | "ea" | "later" | "lat" | "undo" | "u" | "redo" | "red")
            }) =>
            {
                self.time_travel(name, arg.trim());
            }
            _ if let Some(s) = substitute::parse(cmd) => match s {
                Ok(s) => self.substitute(s),
                Err(e) => self.msg = e,
            },
            _ if cmd == "set" || cmd.starts_with("set ") => {
                self.msg = self.opts.set(&cmd[3..]).unwrap_or_else(|e| e);
            }
            c => match c.parse::<usize>() {
                Ok(n) => {
                    self.set_jump();
                    self.line = n.saturating_sub(1).min(self.line_count() - 1);
                    self.set_col(self.first_non_blank(self.line));
                    self.clamp_normal();
                }
                Err(_) => self.msg = format!("Not an editor command: {c}"),
            },
        }
        true
    }

    /// `:earlier`/`:later` with a count or a duration (`10s`, `5m`, `1h`, `2d`), `:undo N`
    /// (go to version N), `:undo`/`:redo` alone.
    fn time_travel(&mut self, name: &str, arg: &str) {
        let back = matches!(name, "earlier" | "ea" | "undo" | "u");
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
            ("undo" | "u", None) if arg.is_empty() => self.undo(1),
            ("undo" | "u", None) => self.history(1, |d| d.goto(n), "Already at that change"),
            ("redo" | "red", None) if arg.is_empty() => self.redo(1),
            ("undo" | "u" | "redo" | "red", _) => self.msg = format!("Invalid argument: {arg}"),
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
            self.path.display(),
            if self.is_dirty() { " [Modified]" } else { "" },
            if lines == 1 { "" } else { "s" },
            (self.line + 1) * 100 / lines,
        )
    }

    /// `g Ctrl+G`: cursor position against the text's totals (columns and chars from the
    /// library's char metrics; words are blank-separated, counted by a scan).
    fn counts(&self) -> String {
        let text = self.doc.text();
        let off = self.offset();
        let all = text.slice(0..text.len());
        // The cursor's word is the last one starting at or before it.
        let starts: Vec<usize> = all.split_whitespace().map(|w| w.as_ptr() as usize - all.as_ptr() as usize).collect();
        let (words, word) = (starts.len(), starts.partition_point(|&s| s <= off));
        format!(
            "Col {} of {}; Line {} of {}; Word {} of {}; Char {} of {}; Byte {} of {}",
            self.col + 1,
            self.line_chars(self.line),
            self.line + 1,
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
        let versions: Vec<_> = self.doc.versions().collect();
        let now = std::time::Instant::now();
        let mut out = format!("at {} of {} |", self.doc.seq(), versions.len() - 1);
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

    /// 1-based address → 0-based line.
    fn resolve(&self, a: substitute::Addr) -> Result<usize, String> {
        use substitute::Base;
        let base = match a.base {
            Base::Current => self.line,
            Base::Last => self.line_count() - 1,
            Base::Line(n) => n.wrapping_sub(1),
            Base::Mark(m) => self.pos_of(self.mark(m).ok_or("Mark not set")?).0,
        };
        base.checked_add_signed(a.offset).filter(|&l| l < self.line_count()).ok_or_else(|| "Invalid range".into())
    }

    /// `:[range]s/pat/rep/[flags]`: one undo step through `Document::replace_matching`.
    fn substitute(&mut self, mut s: substitute::Sub) {
        let (first, last) = match s.range {
            None => (self.line, self.line),
            Some((a, b)) => match (self.resolve(a), self.resolve(b)) {
                (Ok(a), Ok(b)) => (a.min(b), a.max(b)),
                (Err(e), _) | (_, Err(e)) => return self.msg = e,
            },
        };
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
            None => pat.clone(),
        };
        let search = match Search::new(&pattern) {
            Ok(r) => r,
            Err(e) => return self.msg = e,
        };
        let text = self.doc.text().clone();
        let (start, end) = (text.line_to_offset(first), self.line_end_offset(last));
        let plural = |k: usize| if k == 1 { "" } else { "s" };
        if s.confirm && !s.count {
            self.last_search = Some(search.clone());
            self.hl = true;
            self.confirm = Some(Confirm { search, rep: s.rep, all: s.all, next: start, end, n: 0, lines: 0, last_line: None });
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
        let last_edit = *self.doc.last_edits().last().expect("n > 0");
        let l = self.doc.text().offset_to_line(last_edit.start + last_edit.new_len);
        self.set_jump();
        self.line = l;
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
        let text = self.doc.text().clone();
        let cur = self.offset();
        let after = text.char_to_offset((text.offset_to_char(cur) + 1).min(text.char_count()));
        let here = search::find_backward(&text, &s.re, after).filter(|(m, w)| !w && m.end > cur);
        let found = here.or_else(|| if forward { search::find_forward(&text, &s.re, cur, after) } else { search::find_backward(&text, &s.re, cur) });
        let Some((m, _)) = found.filter(|(m, _)| !m.is_empty()) else { return self.msg = format!("Pattern not found: {}", s.pat) };
        let (a, b) = (self.pos_of(m.start), self.pos_of(m.end));
        match op {
            Some(op) => self.operate(op, a, b, Kind::Exclusive),
            None => {
                self.anchor = a;
                self.mode = Mode::Visual(VKind::Char);
                (self.line, self.col) = self.pos_of(text.floor_char_boundary(m.end - 1));
                self.want_col = self.col;
            }
        }
    }

    /// Moves the cursor to the next match of the confirm session and asks; false when none is left.
    fn confirm_prompt(&mut self) -> bool {
        let Some(c) = &self.confirm else { return false };
        let text = self.doc.text();
        let Some((m, _)) = c.find(text) else { return false };
        let (l, col) = text.offset_to_line_col(m.start);
        self.msg = format!("replace with {} (y/n/a/q/l)?", c.rep);
        (self.line, self.col) = (l, col);
        self.want_col = col;
        true
    }

    /// Ends a confirm session: cursor on the last replacement's line, summary message.
    fn confirm_finish(&mut self) {
        let Some(c) = self.confirm.take() else { return };
        self.mode = Mode::Normal;
        if let Some(l) = c.last_line {
            self.set_jump();
            self.line = l;
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
            let text = self.doc.text().clone();
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
            let text = self.doc.text();
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
        match read_doc(&self.path, self.eol_override) {
            Ok(doc) => {
                self.saved = doc.text().clone();
                self.doc = doc;
                (self.grouping, self.changed) = (false, false);
                self.clamp();
                self.msg = format!("Reloaded ({})", self.doc.eol());
            }
            Err(e) => self.msg = format!("Reload failed: {e}"),
        }
    }

    fn insert(&mut self, s: &str) {
        self.edit_insert(self.offset(), s);
        for c in s.chars() {
            if c == '\n' {
                self.line += 1;
                self.col = 0;
            } else {
                self.col += 1;
            }
        }
        self.want_col = self.col;
    }

    fn set_col(&mut self, col: usize) {
        self.col = col;
        self.want_col = col;
    }

    fn move_left(&mut self) {
        if self.col > 0 {
            self.set_col(self.col - 1);
        } else if self.line > 0 {
            self.line -= 1;
            self.set_col(self.line_chars(self.line));
        }
    }

    fn move_right(&mut self) {
        if self.col < self.line_chars(self.line) {
            self.set_col(self.col + 1);
        } else if self.line + 1 < self.line_count() {
            self.line += 1;
            self.set_col(0);
        }
    }

    fn move_vertical(&mut self, delta: isize) {
        let last = self.line_count() - 1;
        self.line = self.line.saturating_add_signed(delta).min(last);
        self.col = self.want_col.min(self.line_chars(self.line));
    }

    /// Keeps the cursor inside the text after undo/redo or reload.
    fn clamp(&mut self) {
        self.line = self.line.min(self.line_count() - 1);
        self.set_col(self.col.min(self.line_chars(self.line)));
        self.clamp_normal();
    }

    /// Normal mode keeps the cursor on a char, not past the line end (vim).
    fn clamp_normal(&mut self) {
        self.col = self.col.min(self.line_chars(self.line).saturating_sub(1));
    }

    /// Returns true on success.
    fn save(&mut self) -> bool {
        match self.write_file() {
            Ok(()) => {
                self.saved = self.doc.text().clone();
                self.msg = format!("Saved ({})", self.doc.eol());
                true
            }
            Err(e) => {
                self.msg = format!("Save failed: {e}");
                false
            }
        }
    }

    /// Writes to a temp file then renames it, so a failed write never truncates the original.
    fn write_file(&self) -> io::Result<()> {
        // Follow symlinks so the link survives and the temp file sits on the target's filesystem.
        let target = fs::canonicalize(&self.path).unwrap_or_else(|_| self.path.clone());
        let mut tmp = target.clone().into_os_string();
        tmp.push(".pt-edit.tmp");
        let tmp = PathBuf::from(tmp);
        let file = fs::File::create(&tmp)?;
        if let Ok(meta) = fs::metadata(&target) {
            file.set_permissions(meta.permissions())?;
            #[cfg(unix)]
            {
                use std::os::unix::fs::{MetadataExt, fchown};
                // Best effort: only root can give a file away; group members can keep the group.
                let _ = fchown(&file, Some(meta.uid()), Some(meta.gid()));
            }
        }
        let mut w = BufWriter::new(file);
        self.doc.write_to(&mut w)?;
        w.into_inner().map_err(io::IntoInnerError::into_error)?.sync_all()?;
        fs::rename(&tmp, &target)
    }
}

#[cfg(test)]
mod tests;
