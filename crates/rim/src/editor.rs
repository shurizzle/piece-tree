//! Vim-like modal editor: state and key handling.
//!
//! Key handling never touches the terminal, and rendering builds a `Frame`
//! before drawing it, so both are tested without a terminal.

mod block;
mod bufarg;
mod arglist;
mod bufdel;
mod buffers;
mod changemarks;
mod collate;
mod builtin;
mod cmdline;
mod cmdwin;
mod digraphs;
mod script;
mod ex;
mod filetype;
mod graphemes;
mod highlight;
mod inserttab;
mod layout;
mod literal;
mod messages;
mod modeline;
mod motion;
mod mouse;
mod objects;
mod options;
mod parse;
mod registers;
mod render;
mod search;
mod sentence;
mod substitute;
mod syntax;
mod undo;
mod wild;
mod wordclass;
mod words;
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
use piece_tree::{Document, LineEnding, Text};

use objects::Obj;
pub use options::Background;
pub use registers::parse_osc52_reply;
use options::Options;
use wordclass::class;
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
const G_END_BACK: char = parse::g_key('e');
const G_END_BACK_BIG: char = parse::g_key('E');
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

/// `'<`, `'>` and the last Visual area as they were when Visual mode began.
type VisSaved = (Option<buffers::Mark>, Option<buffers::Mark>, Option<(VKind, buffers::Mark, buffers::Mark)>);

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
    /// Typing an expression for the expression register (`Ctrl+R =`, `"=`).
    Expr(String),
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


/// Line breaks in bytes `r` of `t`: two line lookups, no copy of the range.
pub(super) fn newlines_in(t: &Text, r: std::ops::Range<usize>) -> usize {
    t.offset_to_line(r.end) - t.offset_to_line(r.start)
}

/// Lines `a..=b` of `t` with their numbers, read in place; none when `a > b`. Take it from a clone of the
/// text to edit those lines meanwhile, as long as the edits keep the line count.
pub(super) fn lines_between(t: &Text, a: usize, b: usize) -> impl Iterator<Item = (usize, std::borrow::Cow<'_, str>)> {
    let lines = (a <= b).then(|| t.lines_in(t.line_to_offset(a)..t.line_end(b)));
    (a..=b).zip(lines.into_iter().flatten())
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

/// `home_replace`: a name under the home directory is shown as `~/...`.
pub(super) fn short_name(name: &str, home: &str) -> String {
    if home.is_empty() {
        return name.to_string();
    }
    match name.strip_prefix(home) {
        Some("") => "~".to_string(),
        Some(rest) if rest.starts_with('/') => format!("~{rest}"),
        _ => name.to_string(),
    }
}

/// A file name an ex command takes, made a full name: `expand_filename` has expanded `~`, `$VAR`, wildcards and the backslashes already.
pub(super) fn fname(arg: &str) -> PathBuf {
    // `fname_expand`: the buffer holds the full name; what is shown is the one under the current directory (`shorten_fname`).
    PathBuf::from(script::full_name(arg, false))
}

/// Loads `path` (missing file → empty): the document, `'endofline'` (the file ended with a line break;
/// an empty or missing file counts as yes, as Neovim does) and whether the file had bytes (`ML_EMPTY`).
pub fn read_doc(path: &Path) -> io::Result<(Document, bool, bool)> {
    let content = match fs::read_to_string(path) {
        Ok(s) => s,
        Err(e) if e.kind() == io::ErrorKind::NotFound => String::new(),
        // `readfile`: a directory is an empty buffer, `filemess` says so where the file is entered.
        Err(_) if path.is_dir() => String::new(),
        Err(e) => return Err(e),
    };
    let (had_bytes, endofline) = (!content.is_empty(), content.is_empty() || content.ends_with(['\n', '\r']));
    Ok((doc_without_final_eol(content), endofline, had_bytes))
}

/// The text of a file as a buffer holds it: the line break at the end of the file is not a line of
/// its own (Neovim's buffer has `N` lines for a file of `N` line breaks, with `'eol'` on; rim has no
/// `'fixeol'`, so every write gives it back).
pub(super) fn doc_without_final_eol(mut content: String) -> Document {
    let eol = LineEnding::detect(&content);
    let cut = if content.ends_with("\r\n") {
        2
    } else if content.ends_with(['\n', '\r']) {
        1
    } else {
        0
    };
    content.truncate(content.len() - cut);
    let mut doc = Document::from_string(content);
    doc.set_eol(eol);
    doc
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
    /// `did_save` of `do_sub`: the cursor line was saved for undo.
    did_save: bool,
    /// The pattern has `\n`, so it can match the line break after the last line (see `Document::plan_replace_eol`).
    virt: bool,
}

/// A yes/no question (`ask_yesno`) that waits for a key: `y` runs `yes`, any other answer drops the command.
struct Ask {
    /// The command line to run on `y`, with what the question was about (a backwards range) already settled.
    yes: String,
}

impl Confirm {
    /// Next match (and its replacement) in range; `next` past the text means none. The last flag: the match took the line
    /// break after the last line, which is not in the text, so the range stops at the end of the text and nothing follows.
    fn find(&self, text: &Text) -> Option<(Range<usize>, String, bool)> {
        if self.next > text.len() {
            return None;
        }
        let hay = if self.virt { text.insert(text.len(), "\n") } else { text.clone() };
        let (m, rep) = hay.replacement_at(&self.search.re, self.next, &self.rep).filter(|(m, _)| m.start <= self.end)?;
        Some((m.start..m.end.min(text.len()), rep, m.end > text.len()))
    }
}

/// Text version, pattern, lines and result of `Editor::matches_in`.
type MatchCache = (Text, std::rc::Rc<piece_tree::Regex>, Range<usize>, std::rc::Rc<Vec<Vec<Range<usize>>>>);

/// Neovim numbers window ids from 1000 (`win_getid()`, the window argument of `line()`/`col()`); the first window is 1000.
const FIRST_WIN_ID: usize = 1000;

pub struct Editor {
    /// The current buffer and window; the others are parked in `buffers` and `windows`.
    buf: Buffer,
    win: Window,
    /// `g:` variables.
    vars: script::Vars,
    /// `t:`: the variables of the tab page (there is one).
    tab_vars: script::Vars,
    /// `l:` and `a:` outside a function: always empty.
    func_vars: script::Vars,
    /// `v:`.
    vim_vars: script::Vars,
    /// What the scripts keep: `s:` variables, the files being sourced.
    scripts: script::State,
    buffers: Vec<Buffer>,
    windows: Vec<Window>,
    split: windows::Split,
    /// Last ids given to a buffer and a window.
    next_buf: usize,
    next_win: usize,
    /// Buffer `Ctrl+^` goes back to.
    /// `:w` writes running on threads.
    saves: Vec<buffers::Saving>,
    /// Window area and cursor cell of the last frame, for `Ctrl+W hjkl`.
    screen: windows::Rect,
    /// Columns of the terminal as the last frame had them (80 before the first): where a message is cut to fit the row.
    cols: usize,
    cursor_cell: (usize, usize),
    /// `prevwin`: the window the current one was entered from (`Ctrl+W p`, `winnr('#')`).
    prevwin: Option<usize>,
    /// The directory before the last `:cd` (`:cd -`).
    prev_dir: Option<String>,
    /// The argument list (`global_alist`).
    arglist: Vec<arglist::ArgEntry>,
    msgs: messages::Messages,
    mode: Mode,
    /// Visual-mode selection end opposite the cursor.
    anchor: Pos,
    /// Normal-mode keys typed so far, re-parsed on every key.
    pending: String,
    regs: Registers,
    /// Register named by the current command's `"x` prefix.
    cur_reg: Option<char>,
    /// `oap->use_reg_one` of the operator that runs.
    reg_one: bool,
    /// A command set `'.` itself.
    dot_set: bool,
    /// An operator ran (not `y`): `prep_redo` made it the command `.` repeats, whether or not it changed the text.
    redo_force: bool,
    /// The last delete took the last line left (`ML_EMPTY`): "--No lines in buffer--" is kept to be shown.
    ml_empty: bool,
    /// The buffer each file mark (`A`-`Z`, `0`-`9`) is in; the mark is in the `marks` of that buffer.
    file_mark_owner: HashMap<char, usize>,
    /// The exclusive rule changed the end of the motion that runs (`oap->end_adjusted`).
    end_adjusted: bool,
    /// Marks a command left past the last line (`dd` on it): the position and the length of the text then.
    /// The command moves marks itself (`:sort`): `adjust_marks` leaves them alone.
    marks_manual: bool,
    /// `'<` and `'>` as they were when Visual mode began.
    vis_saved: Option<VisSaved>,
    /// The edit is a line break typed in Insert mode (`open_line` without `OPENLINE_MARKFIX`): the marks of the line stay on it.
    marks_split: bool,
    /// The edit opens lines below the one it is made at (`o`, `:t`, `:put`): on an empty line it looks like `O` (`appended_lines_mark`).
    marks_below: bool,
    /// The edit is the text of a charwise `op_delete`: over line breaks it is `del_lines` of the lines between and a `do_join` of
    /// the last one, never `deleted_lines_mark` of whole lines (the marks of the first line stay).
    marks_chardel: bool,
    /// The last printable key of an Insert mode was one typed in a row: Neovim changes such a batch in one call.
    ins_batch: bool,
    /// `Insstart`: where the Insert mode began (typed text goes after it).
    ins_start: Option<Pos>,
    /// `Insstart_orig` when it is not `Insstart`: after an arrow key moved the cursor right and a char was typed, where the
    /// Insert began (`stop_arrow` keeps it from following).
    ins_start_orig: Option<Pos>,
    /// An arrow key moved the cursor since the last change in Insert mode (`arrow_used`): the insert is not repeated and the
    /// next change starts a new insertion.
    arrow_used: bool,
    /// Something was typed since Insert mode began (`!ins_need_undo`).
    ins_edited: bool,
    /// `ins_need_undo`: the next change in Insert mode saves the cursor line first (`stop_arrow`).
    ins_need_undo: bool,
    /// `KeyTyped`: the last key read was typed, not replayed by `:normal`, a macro or `.`.
    key_typed: bool,
    /// `keep_msg`: the sequence number of the message kept for the next redraw (`msgs.seq` at the time), and whether it is a
    /// "more lines" one (`keep_msg_more`). Another message makes it stale.
    keep_msg: Option<(u64, bool)>,
    /// Depth of `:normal` commands being run.
    ex_normal: usize,
    /// No screen to ask on (the golden tests run as a headless Neovim does): a hit-enter prompt waits for nothing.
    pub(super) headless: bool,
    /// `u_oldcount` and `u_newcount`: lines in the regions an undo or redo replaced, before and after.
    u_oldcount: i64,
    u_newcount: i64,
    /// A typed `Ctrl+C` ended Insert mode (`got_int`): nothing is copied to the other lines of a block.
    interrupted: bool,
    last_search: Option<Search>,
    /// Last `:s` (pattern, replacement, flags) for `&`, `:&`, `g&`.
    last_sub: Option<substitute::LastSub>,
    /// The flags of the last `:s` (`static subflags_T`).
    sub_flags: substitute::SubFlags,
    /// `reg_prev_sub`: what `~` stands for in a replacement.
    sub_prev: String,
    /// `:s///c` in progress (mode `Confirm`).
    confirm: Option<Confirm>,
    /// A question the editor waits to be answered (`Mode::Confirm` without a `:s///c` session).
    ask: Option<Ask>,
    /// incsearch: the pattern being typed after `/`, when it compiles.
    inc_search: Option<Search>,
    /// hlsearch: matches of `last_search` are highlighted until `:noh`.
    hl: bool,
    /// `:highlight` groups, for every buffer.
    hl_groups: highlight::Highlights,
    /// Cursor when `/` started, for incsearch and Esc; `?` searches backward.
    search_origin: Pos,
    /// The operator waiting for the search typed after it (`d/pat`): operator, register, where it started, count.
    search_op: Option<(char, Option<char>, Pos, usize)>,
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
    /// The text of the last Insert mode, the `.` register.
    last_insert: Option<String>,
    /// The keys of the last Insert mode, to type them again (`:put .`).
    last_insert_keys: Option<Vec<KeyEvent>>,
    insert_repeat: (usize, bool),
    /// Line holding only an indent added by autoindent; emptied if left that way.
    auto_indent: Option<usize>,
    block_insert: Option<block::BlockInsert>,
    /// Register being recorded into (`q`) and the keys so far; macros live in registers as text.
    recording: Option<char>,
    macro_keys: Vec<KeyEvent>,
    last_macro: Option<char>,
    macro_depth: usize,
    macro_abort: bool,
    quit: bool,
    changed: bool,
    /// Lines `:g` and `:normal` have still to visit, one entry per nested command.
    line_marks: Vec<ex::LineMarks>,
    /// Replace mode (`R`, in `Mode::Insert`): the clusters typed over, `None` for one typed past
    /// the line end, so Backspace can put them back.
    replacing: Option<Vec<Option<String>>>,
    /// `inserted_space`: a space was typed and nothing since moved the cursor or backspaced a stop (Backspace then deletes it alone).
    inserted_space: bool,
    /// `flush_buffers`: a command failed (`beep_flush`, an error message): the rest of the keys of `:normal`, a macro or `.` is dropped.
    flush_typeahead: bool,
    /// The key after the one being handled, when the keys come from typeahead (`:normal`, a macro, `.`): `vpeekc()`.
    peek_key: Option<KeyEvent>,
    /// The last key was a printable ASCII char of a run `insertchar` took from the typeahead in one go: the chars after the
    /// first of the run do not go through the Insert mode loop, so a space among them is not `inserted_space`.
    typed_batch: bool,
    /// The next edit is the continuation of a batch of typed chars: `b:changedtick` counts the batch once.
    tick_skip: bool,
    /// `OPT_LOCAL`: an option is being set from `&l:`.
    opt_local: bool,
    /// A modeline is being applied (`OPT_MODELINE`): `all` is no word of `:set` then.
    opt_modeline: bool,
    /// The window that was current when a layout change is being worked out (`layout_changed`).
    layout_cur: Option<usize>,
    /// Where the command's last edit happened, for the change list.
    change_off: Option<usize>,
    /// Insert mode waits for the register of `Ctrl+R` (`'r'`) or the key of `Ctrl+V` (`'v'`).
    insert_pending: Option<char>,
    /// `Ctrl+O` in Insert mode: one Normal command runs, then Insert resumes; the cursor before it.
    insert_one: Option<Pos>,
    /// Command-line history of `:` (0), `/`/`?` (1) and `=` (2), oldest first; the entry being shown by
    /// Up/Down and the text typed before the first of them.
    history: [Vec<String>; 3],
    hist_at: Option<(usize, String)>,
    /// The completion going on on the command line.
    wild: Option<wild::Wild>,
    /// The command line waits for the register of `Ctrl+R` (`'r'`) or the key of `Ctrl+V` (`'v'`).
    line_pending: Option<char>,
    /// Cursor of the command line (byte offset in its text), and overstrike (`Insert`).
    line_pos: usize,
    line_over: bool,
    /// The code after a `Ctrl+V`, and the first character of a `Ctrl+K` digraph, being typed.
    lit: Option<literal::Lit>,
    dig_first: Option<char>,
    /// Digraphs defined by `:digraphs`.
    user_digraphs: Vec<(char, char, char)>,
    /// A frame has been laid out, so `screen` is the real one.
    screen_drawn: bool,
    /// What the pressed mouse button is doing, and the last click (when, where, how many in a row).
    drag: Option<mouse::Drag>,
    click: Option<(std::time::Instant, usize, usize, usize)>,
    /// The cells of the completion menu on screen: row, first and last column, candidate.
    menu_hit: Vec<(usize, usize, usize, usize)>,
    /// Counts the times a buffer was left (`Buffer::used`).
    clock: u64,
    /// Where the expression being typed goes when it is done.
    expr_from: Option<cmdline::ExprFrom>,
    /// The command-line window, while it is open.
    cmdwin: Option<cmdwin::CmdWin>,
    /// Reads the system clipboard (an OSC 52 query, set by `main`); none in tests and on
    /// terminals the editor does not query.
    clipboard_reader: Option<Box<dyn FnMut() -> Option<String>>>,
    /// Directory holding `grammars/` and `queries/` (`main`: `<config dir>/rim`), and the grammars loaded from it by name.
    runtime: Option<PathBuf>,
    langs: HashMap<String, Option<Rc<syntax::Lang>>>,
    /// `:syntax on|off`: while off nothing is parsed or colored and the `f`/`c`/`a` objects do nothing.
    syntax_on: bool,
    /// The global values of the options, which a new buffer starts from (`:set` and `:let &` change them with the buffer's
    /// own; a modeline only the buffer's, but for the options of global scope).
    global_opts: Options,
}

impl Editor {
    pub fn new(doc: Document, path: PathBuf) -> Self {
        Self::with_path(doc, Some(path))
    }

    /// An editor on `doc`, without a file (`[No Name]`) when `path` is none.
    pub fn with_path(doc: Document, path: Option<PathBuf>) -> Self {
        let mut e = Self {
            buf: Buffer::new(1, doc, path, Options::start()).for_window(FIRST_WIN_ID).first_in_window(),
            global_opts: Options::start(),
            win: Window::new(FIRST_WIN_ID, 1),
            vars: Default::default(),
            tab_vars: Default::default(),
            func_vars: Default::default(),
            vim_vars: script::init_vim_vars(),
            scripts: script::State::new(),
            buffers: Vec::new(),
            windows: Vec::new(),
            split: windows::Split::Win(FIRST_WIN_ID),
            next_buf: 1,
            next_win: FIRST_WIN_ID,
            saves: Vec::new(),
            screen: windows::Rect { x: 0, y: 0, w: 80, h: 23 },
            cols: 80,
            cursor_cell: (0, 0),
            prevwin: None,
            prev_dir: None,
            arglist: Vec::new(),
            msgs: messages::Messages::default(),
            mode: Mode::Normal,
            anchor: (0, 0),
            pending: String::new(),
            regs: Registers::default(),
            cur_reg: None,
            reg_one: false,
            dot_set: false,
            redo_force: false,
            ml_empty: false,
            file_mark_owner: HashMap::new(),
            end_adjusted: false,
            marks_manual: false,
            vis_saved: None,
            marks_split: false,
            marks_below: false,
            marks_chardel: false,
            ins_batch: false,
            ins_start: None,
            ins_start_orig: None,
            arrow_used: false,
            ins_edited: false,
            ins_need_undo: false,
            key_typed: false,
            keep_msg: None,
            ex_normal: 0,
            headless: false,
            u_oldcount: 0,
            u_newcount: 0,
            interrupted: false,
            last_search: None,
            last_sub: None,
            sub_flags: substitute::SubFlags::default(),
            sub_prev: String::new(),
            confirm: None,
            ask: None,
            inc_search: None,
            hl: false,
            hl_groups: highlight::Highlights::default(),
            search_origin: (0, 0),
            search_op: None,
            search_back: false,
            search_landing: None,
            last_find: None,
            rec: Vec::new(),
            rec_cmd: None,
            last_change: None,
            replaying: false,
            insert_keys: Vec::new(),
            last_insert: None,
            last_insert_keys: None,
            insert_repeat: (1, false),
            auto_indent: None,
            block_insert: None,
            recording: None,
            macro_keys: Vec::new(),
            last_macro: None,
            macro_depth: 0,
            macro_abort: false,
            quit: false,
            changed: false,
            line_marks: Vec::new(),
            replacing: None,
            inserted_space: false,
            flush_typeahead: false,
            peek_key: None,
            typed_batch: false,
            tick_skip: false,
            opt_local: false,
            opt_modeline: false,
            layout_cur: None,
            change_off: None,
            insert_pending: None,
            insert_one: None,
            history: Default::default(),
            hist_at: None,
            wild: None,
            line_pending: None,
            line_pos: 0,
            line_over: false,
            lit: None,
            dig_first: None,
            user_digraphs: Vec::new(),
            cmdwin: None,
            expr_from: None,
            clock: 0,
            drag: None,
            click: None,
            menu_hit: Vec::new(),
            screen_drawn: false,
            clipboard_reader: None,
            runtime: None,
            syntax_on: true,
            langs: HashMap::new(),
        };
        e.msgs.show_hint("i insert | Esc normal | :w save | :q quit");
        e
    }

    pub fn open(path: PathBuf) -> io::Result<Self> {
        let (doc, endofline, had_bytes, denied) = match read_doc(&path) {
            Ok((d, e, h)) => (d, e, h, false),
            Err(_) => (Document::new(""), true, false, true),
        };
        // `shorten_fnames(false)` at the start only shortens an absolute name: a relative one stays as typed.
        let typed = (!path.is_absolute()).then(|| path.display().to_string());
        let mut e = Self::new(doc, path);
        e.buf.sfname = typed;
        if denied {
            e.denied_message();
        }
        e.dir_message();
        (e.buf.opts.endofline, e.buf.empty_at_open) = (endofline, !had_bytes);
        e.buf.save_file_ff();
        e.arglist.push(arglist::ArgEntry { fname: e.buf.name(), fnum: 1 });
        Ok(e)
    }

    /// An editor on the first of the files of the command line, taken from `args`. No argument
    /// gives an empty buffer without a file; `-` is the text `stdin` reads, in a buffer without a
    /// file that counts as modified, like vim.
    pub fn start(args: &mut impl Iterator<Item = PathBuf>, stdin: &mut impl FnMut() -> io::Result<String>) -> io::Result<Self> {
        Ok(match args.next() {
            None => Self::with_path(Document::new(""), None),
            Some(p) if p.as_os_str() == "-" => Self::from_text(&stdin()?),
            Some(p) => Self::open(p)?,
        })
    }

    /// The other files of the command line, loaded as hidden buffers (after the init file, so they
    /// copy its options).
    pub fn open_rest(&mut self, args: impl Iterator<Item = PathBuf>, stdin: &mut impl FnMut() -> io::Result<String>) -> io::Result<()> {
        for p in args {
            if p.as_os_str() == "-" {
                self.add_text(&stdin()?);
            } else {
                self.open_more(p)?;
            }
        }
        Ok(())
    }

    /// An editor on `text` without a file, modified.
    pub fn from_text(text: &str) -> Self {
        let mut e = Self::with_path(Document::from_string(text.to_string()), None);
        e.buf.modified = true;
        e
    }

    /// How `"+`/`"*` are read: `read` asks the terminal for the clipboard.
    pub fn set_clipboard_reader(&mut self, read: impl FnMut() -> Option<String> + 'static) {
        self.clipboard_reader = Some(Box::new(read));
    }

    /// `last_cmdline`: the last typed command line that ended. A typed line that runs is in the history already, and
    /// becomes the last one only when it is done.
    fn last_cmdline(&self) -> Option<&str> {
        let h = &self.history[0];
        let skip = usize::from(self.scripts.typed);
        h.len().checked_sub(skip + 1).map(|i| h[i].as_str())
    }

    /// Register `name` for reading: `+`/`*` ask the terminal (linewise when the text ends with a
    /// line break), with an error message when it does not answer.
    fn reg(&mut self, name: char) -> Option<Reg> {
        // `=`: the expression that `setreg()` set, evaluated now (`get_expr_line`).
        if name == '=' && let Some(expr) = self.regs.expr_line.clone() {
            let v = self.eval(&expr).ok()?;
            let text = match &v {
                script::Value::List(l) => l.borrow().iter().map(|i| format!("{}\n", i.echo())).collect(),
                v => v.echo(),
            };
            return Some(Reg { text, kind: RegKind::Char });
        }
        // `/`: the last search pattern.
        if name == '/' {
            return self.last_search.as_ref().map(|s| Reg { text: s.pat.clone(), kind: RegKind::Char });
        }
        // `get_spec_reg`: the file name, the alternate file name and the last command line.
        let special = match name {
            '%' => self.buf.path.as_ref().map(|p| p.display().to_string()),
            '#' => self.win.alt.and_then(|id| self.buffer(id)).and_then(|b| b.path.as_ref().map(|p| p.display().to_string())),
            ':' => self.last_cmdline().map(str::to_string),
            _ => None,
        };
        if matches!(name, '%' | '#' | ':') {
            return special.map(|text| Reg { text, kind: RegKind::Char });
        }
        // `.`: the last inserted text.
        if name == '.' {
            return self.last_insert.clone().map(|text| Reg { text, kind: RegKind::Char });
        }
        if !matches!(name, '+' | '*') {
            return self.regs.get(name).cloned();
        }
        match self.clipboard_reader.as_mut().and_then(|read| read()) {
            Some(text) => {
                let kind = if text.ends_with('\n') { RegKind::Line } else { RegKind::Char };
                Some(Reg { text, kind })
            }
            None => {
                self.error("Clipboard read failed: the terminal did not answer OSC 52");
                None
            }
        }
    }

    /// Sources the init file at `path` (missing: nothing): a script like any `:source`d one, whose
    /// errors are reported with their lines while the other lines still run.
    pub fn load_init(&mut self, path: &Path) {
        match self.source_file(path) {
            Ok(_) => {}
            // No init file is no error.
            Err(_) if !path.exists() => {}
            Err(e) => self.error(e),
        }
    }

    /// The init file and the files of the command line are loaded: `has('vim_starting')` is false from now on.
    pub fn finish_start(&mut self) {
        self.scripts.started = true;
        // After the init file, which may set `nomodeline`.
        self.check_modelines();
    }

    /// Where grammars and queries live; none without it (the text stays plain).
    pub fn set_runtime(&mut self, dir: PathBuf) {
        self.runtime = Some(dir);
    }

    pub fn set_background(&mut self, bg: Background) {
        self.buf.opts.background = bg;
        self.global_opts.background = bg;
    }

    /// Work for when no key came for a while (`main`): compacts the text once its piece count
    /// passes `compactat`, between commands only.
    pub fn idle(&mut self) {
        let at = self.buf.opts.compactat;
        if at > 0 && self.mode == Mode::Normal && self.buf.undo.synced && self.buf.doc.text().piece_count() > at {
            self.compact();
        }
    }

    /// `:compact`: `Document::compact`, keeping a clean buffer clean. Returns the piece counts
    /// before and after.
    fn compact(&mut self) -> (usize, usize) {
        let before = self.buf.doc.text().piece_count();
        self.buf.doc.compact(COMPACT_MAX);
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
        let (s, tabs) = (self.buf.doc.text().line(line), self.buf.opts.tabs());
        let (a, e) = graphemes::cell_range(&s, col, tabs, self.wrap_w());
        (a, e - a)
    }

    /// `update_curswant`: the column wanted is the cursor's virtual column, when the cursor moved since it was taken.
    pub(super) fn update_curswant(&mut self) {
        if self.win.want_set {
            self.win.want_col = self.cursor_vcols().2;
            self.win.want_set = false;
        }
    }

    /// `coladvance`: the column (cluster index) of `line` whose cells hold virtual column `wcol` (`coladvance2`: a Tab
    /// or wide char covers its cells; past the end, the last char, or the end of the line where the cursor may be
    /// past it: Insert and Visual mode, a `Ctrl+O` command). `usize::MAX` is the end of the line.
    pub(super) fn coladvance(&self, line: usize, wcol: usize) -> usize {
        let one_more = usize::from(matches!(self.mode, Mode::Insert | Mode::Visual(_)) || self.insert_one.is_some());
        let s = self.buf.doc.text().line(line);
        if wcol == usize::MAX {
            return (graphemes::count(&s) + one_more).saturating_sub(1);
        }
        let (mut col, mut idx) = (0, 0);
        for c in graphemes::cells(&s, 0, 0, self.buf.opts.tabs(), self.wrap_w(), usize::MAX) {
            if col > wcol {
                break;
            }
            (col, idx) = (c.end(), idx + 1);
        }
        if col > wcol || one_more == 0 { usize::saturating_sub(idx, 1) } else { idx }
    }

    /// The column of `line` the cursor wants (`coladvance(curwin->w_curswant)`).
    pub(super) fn col_wanted(&self, line: usize) -> usize {
        self.coladvance(line, self.win.want_col)
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
    #[track_caller]
    fn edit<R>(&mut self, f: impl FnOnce(&mut Document) -> R) -> R {
        // 'nomodifiable': `u_save` has refused (`E21`), the change is made on a copy that goes.
        if !self.buf.opts.modifiable {
            let t = self.buf.doc.text();
            return f(&mut Document::from_string(t.slice(0..t.len()).into_owned()));
        }
        // Every change is announced by a `u_save*` call (as in Neovim), which opens the undo step.
        debug_assert!(!self.buf.undo.synced, "an edit without u_save at {}", std::panic::Location::caller());
        let before = self.buf.doc.text().clone();
        let r = f(&mut self.buf.doc);
        // `changed()`: a command that rewrites a line with the same text modifies the buffer too.
        self.buf.modified = true;
        self.buf.changedtick += u64::from(!mem::take(&mut self.tick_skip));
        if !self.buf.doc.text().is_empty() {
            self.buf.undo.empty = false;
        }
        if let Some(e) = self.buf.doc.last_edits().last().copied() {
            (self.changed, self.change_off) = (true, Some(e.start));
            self.map_marks(&before);
            // `changed_lines`/`changed_bytes`: the change list follows each edit (only the first one of an undo step can start
            // a new entry), so a later edit of the same command does not take the place of an older entry.
            let at = self.mark_at(e.start);
            self.add_change_at(at);
            self.check_visual_pos();
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
        self.adjust_marks(before);
        let edits = self.buf.doc.last_edits();
        let text = self.buf.doc.text();
        for m in &mut self.line_marks {
            m.map(edits, text);
        }
    }

    #[track_caller]
    fn edit_insert(&mut self, off: usize, s: &str) {
        self.edit(|d| d.insert(off, s));
    }

    #[track_caller]
    fn edit_delete(&mut self, range: Range<usize>) {
        self.edit(|d| d.delete(range));
    }

    /// Replaces `range` with `s` (no change when it already holds `s`).
    #[track_caller]
    fn edit_replace(&mut self, range: Range<usize>, s: &str) {
        self.edit(|d| d.splice(range, s));
    }

    /// `end_visual_mode`: leaves Visual mode where it is, keeping the area for `gv`, `'<` and `'>`.
    pub(super) fn end_visual_mode(&mut self) {
        let Mode::Visual(kind) = self.mode else { return };
        let (a, b) = sorted(self.anchor, (self.win.line, self.win.col));
        let (sa, sb) = (self.offset_of(a), self.offset_of(b));
        self.put_off('<', sa);
        self.put_off('>', sb);
        self.buf.last_visual = Some((kind, self.mark_at(self.offset_of(self.anchor)), self.mark_at(self.offset())));
        self.vis_saved = None;
        self.mode = Mode::Normal;
    }

    /// `check_visual_pos`: the start of the Visual area stays in the text (`changed_common` calls it).
    pub(super) fn check_visual_pos(&mut self) {
        if matches!(self.mode, Mode::Visual(_)) {
            let last = self.line_count() - 1;
            self.anchor = if self.anchor.0 > last { (last, 0) } else { (self.anchor.0, self.anchor.1.min(self.line_chars(self.anchor.0))) };
        }
    }

    /// Closes the undo group; a command that changed the text becomes the one `.` repeats.
    pub(super) fn end_command(&mut self) {
        let changed = mem::take(&mut self.changed);
        let dot_set = mem::take(&mut self.dot_set);
        if changed && let Some(off) = self.change_off.take() {
            if !dot_set {
                self.put_off('.', off);
            }
            self.add_change();
        }
        let redo = mem::take(&mut self.redo_force);
        if (changed || redo)
            && !self.replaying
            && let Some((count, cmd, n)) = &self.rec_cmd
        {
            let tail = self.rec[(*n).min(self.rec.len())..].to_vec();
            self.last_change = Some(LastChange { count: *count, cmd: cmd.clone(), tail });
        }
    }

    /// `changed_common`'s change list part: the last entry follows `'.` (`b_last_change`); a change that starts an undo step
    /// and is on another line than the last entry, or 79 columns away from it, makes a new entry.
    pub(super) fn add_change(&mut self) {
        let Some(last) = self.buf.marks.get(&'.').copied() else { return };
        self.add_change_at(last);
    }

    /// `changed_common` for a change at `last`.
    fn add_change_at(&mut self, last: buffers::Mark) {
        let ch = &mut self.buf.changes;
        if self.buf.new_change || ch.is_empty() {
            let add = ch.last().is_none_or(|p| p.line != last.line || p.col + 79 < last.col || last.col + 79 < p.col);
            if add {
                self.buf.new_change = false;
                if ch.len() == LIST_MAX {
                    ch.remove(0);
                }
                ch.push(last);
            }
        }
        if let Some(e) = ch.last_mut() {
            *e = last;
        }
        self.buf.change_idx = ch.len();
    }

    /// `g;` (`back`) and `g,`: `n` entries through the change list.
    fn change_list(&mut self, back: bool, n: usize) {
        let (len, idx) = (self.buf.changes.len(), self.buf.change_idx);
        // `get_changelist`: out of the list it goes to the first or the last entry, and fails when it is there already.
        let to = (len > 0).then(|| {
            if back {
                (idx != 0).then(|| idx.saturating_sub(n))
            } else if idx + n >= len {
                (idx != len - 1).then_some(len - 1)
            } else {
                Some(idx + n)
            }
        });
        let Some(Some(to)) = to else {
            // `nv_pcmark`: each case has its message.
            return self.error(if len == 0 {
                "E664: Changelist is empty"
            } else if back {
                "E662: At start of changelist"
            } else {
                "E663: At end of changelist"
            });
        };
        self.buf.change_idx = to;
        if self.buf.changes[to].line >= self.line_count() {
            return self.error("E19: Mark has invalid line number");
        }
        let off = self.mark_offset(self.buf.changes[to]);
        (self.win.line, self.win.col) = self.pos_of(off);
        self.win.want_set = true;
    }

    /// `cleanup_jumplist`: an entry that has a later one on the same line of the same buffer goes; with the index past the end,
    /// a last entry on the cursor line goes too (no phantom jump).
    fn cleanup_jumplist(&mut self) {
        let (cur_buf, cur_line) = (self.buf.id, self.win.line);
        let jumps = std::mem::take(&mut self.win.jumps);
        let (len, mut idx) = (jumps.len(), self.win.jump_idx);
        let mut kept: Vec<(usize, buffers::Mark)> = Vec::with_capacity(len);
        for from in 0..len {
            if idx == from {
                idx = kept.len();
            }
            let dup = jumps[from + 1..].iter().any(|j| j.0 == jumps[from].0 && j.1.line == jumps[from].1.line);
            if !dup {
                kept.push(jumps[from]);
            }
        }
        if idx == len {
            idx = kept.len();
        }
        if idx == kept.len() && kept.last().is_some_and(|l| l.0 == cur_buf && l.1.line == cur_line) {
            kept.pop();
            idx -= 1;
        }
        (self.win.jumps, self.win.jump_idx) = (kept, idx);
    }

    /// `Ctrl+O` (`back`) and `Ctrl+I`: `n` entries through the jump list (`get_jumplist`), switching buffer when
    /// the entry is in another one.
    fn jump_list(&mut self, back: bool, n: usize) {
        self.win.jumps.retain(|j| j.0 == self.buf.id || self.buffers.iter().any(|b| b.id == j.0));
        self.win.jump_idx = self.win.jump_idx.min(self.win.jumps.len());
        self.cleanup_jumplist();
        let mut count = if back { -(n as isize) } else { n as isize };
        let target = loop {
            let (len, idx) = (self.win.jumps.len() as isize, self.win.jump_idx as isize);
            if len == 0 || idx + count < 0 || idx + count >= len {
                self.beep_flush();
                return;
            }
            // The first `Ctrl+O` after a jump adds the cursor position to the list.
            if idx == len {
                self.push_jump();
                self.win.jump_idx = self.win.jumps.len() - 1;
                if self.win.jump_idx as isize + count < 0 {
                    self.beep_flush();
                    return;
                }
            }
            self.win.jump_idx = (self.win.jump_idx as isize + count) as usize;
            let (buf, mk) = self.win.jumps[self.win.jump_idx];
            if buf == self.buf.id || self.buffers.iter().any(|b| b.id == buf) {
                break (buf, mk);
            }
            count += if count < 0 { -1 } else { 1 };
        };
        if target.0 != self.buf.id {
            self.switch_buffer(target.0);
        }
        // `mark_check_line_bounds`: the line went with a delete of the last lines.
        if target.1.line >= self.line_count() {
            self.error("E19: Mark has invalid line number");
            return;
        }
        let off = self.mark_offset(target.1);
        (self.win.line, self.win.col) = self.pos_of(off);
        self.win.want_set = true;
    }

    /// The jump list part of `setpcmark`: the cursor goes to the end of the list (the oldest entry goes when it is full).
    pub(super) fn push_jump(&mut self) {
        let (id, mk) = (self.buf.id, self.mark_at(self.offset()));
        let jumps = &mut self.win.jumps;
        jumps.push((id, mk));
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
            self.win.col = self.col_wanted(line);
        }
    }

    fn store_reg(&mut self, text: String, kind: RegKind, yank: bool) {
        let name = self.cur_reg.take();
        self.regs.store(name, Reg { text, kind }, yank, self.reg_one);
    }

    /// Returns false to quit.
    pub fn key(&mut self, key: KeyEvent) -> bool {
        if self.msgs.hint {
            self.msgs.clear();
        }
        // Macros and `.` replay keys as typed, so they dismiss it too; `:g` and `:normal` have no screen.
        // A message taller than the screen row waits for a key (vim's hit-enter prompt); Enter, Space and Esc only dismiss it.
        if self.line_marks.is_empty() && self.pager_key(key) {
            return true;
        }
        // Keys of `:normal` do not answer a hit-enter prompt: it runs inside the command, without going back to `wait_return`.
        if self.msgs.hit_enter && self.line_marks.is_empty() && self.ex_normal == 0 && !self.headless {
            self.msgs.clear();
            // `wait_return`: the next error names its file and line again.
            self.scripts.reset_last_sourcing();
            if self.msgs.prompt && [KeyCode::Enter, KeyCode::Char(' '), KeyCode::Esc].iter().any(|&c| key == c.into()) {
                return true;
            }
        }
        self.key_typed = !self.replaying && self.macro_depth == 0;
        self.may_sync_undo();
        let win_before = self.win.id;
        let before = mem::discriminant(&self.mode);
        let was_expr = matches!(self.mode, Mode::Expr(_));
        let in_visual = matches!(self.mode, Mode::Visual(_));
        let more = self.key_inner(key);
        // `normal_redraw`: the buffer was used when a Normal mode command ended.
        // Neovim reads the clock at every pass of its Normal mode loop (once per key too), which this is; 23 ns against about 1 us
        // for a key (docs/guides/benchmarks.md, `key_clock_cost`)
        if matches!(self.mode, Mode::Normal) {
            self.buf.last_used = undo::now();
        }
        // `nv_esc` and the operators: leaving Visual mode takes the column wanted from the cursor again.
        if in_visual && !matches!(self.mode, Mode::Visual(_)) {
            self.win.want_set = true;
        }
        // The message row now shows the mode or the command line.
        if !was_expr && before != mem::discriminant(&self.mode) && matches!(self.mode, Mode::Insert | Mode::Visual(_) | Mode::Command(_) | Mode::Search(_) | Mode::Expr(_)) {
            self.msgs.clear();
        }
        // `winheight` and `winwidth`: whatever entered the window (`Ctrl+W`, `:b`, `:q`, a command line).
        if self.win.id != win_before {
            self.enforce_win_size();
        }
        more
    }

    fn key_inner(&mut self, key: KeyEvent) -> bool {
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
        if self.cmdwin_key(key) {
            return !self.quit;
        }
        // `normal_check`, `edit`: the column wanted is taken from the cursor before each command, in the mode it runs in.
        // Insert mode takes it when a key needs it (`move_vertical`), as `update_curswant` is only called when `w_curswant` is used:
        // it reads the line up to the cursor, which typing in a long line must not do at every key.
        // A `:` does not: the command line runs with the column the last command left, which `beginline` of an ex command reads.
        let colon = key == KeyEvent::from(KeyCode::Char(':')) && self.pending.is_empty();
        if matches!(self.mode, Mode::Normal | Mode::Visual(_)) && !colon {
            self.update_curswant();
        }
        let was_visual = matches!(self.mode, Mode::Visual(_));
        match self.mode {
            Mode::Normal => self.normal_key(key),
            Mode::Insert => self.insert_key(key),
            Mode::Visual(kind) => self.visual_key(key, kind),
            Mode::Command(_) | Mode::Search(_) | Mode::Expr(_) => self.line_key(key),
            Mode::Confirm => self.confirm_key(key),
        }
        // `'<` and `'>` are set when Visual mode ends (`end_visual_mode`): while it goes on they are what they were.
        if matches!(self.mode, Mode::Visual(_)) {
            if let (true, Some((lo, hi, last))) = (was_visual, self.vis_saved) {
                self.buf.last_visual = last;
                for (m, mk) in [('<', lo), ('>', hi)] {
                    match mk {
                        Some(mk) => self.buf.marks.insert(m, mk),
                        None => self.buf.marks.remove(&m),
                    };
                }
            } else if !was_visual {
                self.vis_saved = Some((self.buf.marks.get(&'<').copied(), self.buf.marks.get(&'>').copied(), self.buf.last_visual));
            }
        } else {
            self.vis_saved = None;
            // `end_visual_mode` sets `b_visual_mode_eval` for `visualmode()`.
            self.buf.visual_mode_cleared &= !was_visual;
        }
        if one
            && self.mode == Mode::Normal
            && self.pending.is_empty()
            && let Some(before) = self.insert_one.take()
        {
            // Back to Insert after `Ctrl+O` (`edit`, restart_edit): the cursor goes past the end of its line when the
            // command started there and ends on the last char of it, or when the column wanted is beyond the cursor.
            self.mode = Mode::Insert;
            // `edit()` runs again: the next change saves its line.
            self.ins_need_undo = true;
            self.update_curswant();
            let (line, last) = (self.win.line, self.line_chars(self.win.line).saturating_sub(1));
            let at_eol = before.1 >= self.line_chars(before.0);
            if ((at_eol && line == before.0) || self.win.want_col > self.cursor_vcols().2) && self.win.col == last && self.line_chars(line) > 0 {
                self.win.col += 1;
            }
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
        // `r<CR>` replaces the chars by a line break.
        let enter_after_r = key.code == KeyCode::Enter && self.pending.ends_with('r');
        let Some(c) = normal_char(key).or(enter_after_r.then_some('\r')) else { return };
        // `"=`: the expression is typed now, the command that uses its value follows.
        if c == '=' && self.pending.ends_with('"') {
            return self.start_expr(cmdline::ExprFrom::Normal);
        }
        self.pending.push(c);
        let parsed = parse(&self.pending);
        if parsed == Parse::Incomplete {
            return;
        }
        let pending = mem::take(&mut self.pending);
        if let Parse::Cmd(cmd) = parsed {
            // A change an Ex command made earlier in this line (`:put | call feedkeys("gg")`) is not a change of this command:
            // Neovim's redo buffer only holds Normal-mode commands.
            if self.changed && !self.replaying && self.insert_one.is_none() {
                self.rec_cmd = None;
                self.end_command();
            }
            if !self.replaying {
                self.rec_cmd = Some((cmd.count, strip_counts(&pending), pending.chars().count()));
            }
            self.cur_reg = cmd.reg;
            self.normal(cmd);
        } else {
            // `nv_error`: not a command.
            self.beep_flush();
        }
        self.finish();
    }

    /// `beep_flush`: a command failed; unless errors are silenced, what is left to type in `:normal`, a macro or `.` is dropped.
    pub(super) fn beep_flush(&mut self) {
        if self.scripts.emsg_silent == 0 {
            self.flush_typeahead = true;
        }
    }

    fn normal(&mut self, cmd: Cmd) {
        let Cmd { count, op, key, arg, .. } = cmd;
        let n = count.unwrap_or(1);
        let arg = || arg.expect("parse requires an argument");
        if let (Some(op), 'i' | 'a') = (op, key) {
            self.sync_syntax();
            match self.text_object(key == 'a', arg(), n) {
                Some(Obj::Chars(r)) => {
                    let (a, b) = (self.pos_of(r.start), self.pos_of(r.end));
                    let kind = self.delete_rule(op, a, b, Kind::Exclusive);
                    self.operate_pending(op, a, b, kind)
                }
                Some(Obj::Lines(a, b)) => self.operate_pending(op, (a, 0), (b, 0), Kind::Linewise),
                // `nv_object`: no such object.
                None => self.beep_flush(),
            }
            return;
        }
        if op == Some(key) {
            // `nv_lineop`: `cursor_down` fails on the last line (a count then has nowhere to go).
            if n > 1 && self.win.line + 1 >= self.line_count() {
                // `clearopbeep`.
                self.beep_flush();
                return;
            }
            let last = (self.win.line + n - 1).min(self.line_count() - 1);
            // `nv_lineop` moves the cursor to the column the operator wants (the wanted column for `d`, `<` and `>`, else the first
            // non-blank); the region starts at the smaller of that and where the cursor was, which is where `uh_cursor` is.
            let at = if matches!(key, 'd' | '<' | '>') { self.col_wanted(self.win.line) } else { self.first_non_blank(self.win.line).min(self.line_chars(self.win.line).saturating_sub(1)) };
            let col = if last > self.win.line || key == 'y' { self.win.col } else { self.win.col.min(at) };
            return self.operate_pending(key, (self.win.line, col), (last, self.win.col), Kind::Linewise);
        }
        if matches!(key, G_NEXT | G_PREV) {
            return self.select_match(op, key == G_NEXT);
        }
        if let (Some(op), '/' | '?') = (op, key) {
            // `d/pat`: the search is typed, then the operator runs up to where it lands.
            self.search_op = Some((op, cmd.reg, (self.win.line, self.win.col), n));
            self.search_origin = (self.win.line, self.win.col);
            self.search_back = key == '?';
            self.inc_search = None;
            return self.enter_line(Mode::Search(String::new()));
        }
        if parse::is_motion(key) && !(op.is_none() && matches!(key, '/' | '?')) {
            let Some((to, kind)) = self.motion(&cmd) else {
                // `clearopbeep`.
                self.beep_flush();
                return;
            };
            match op {
                Some(op) => {
                    // `use_reg_one`: these motions send a delete inside a line to `"1` too.
                    self.reg_one = matches!(key, 'n' | 'N' | '%' | '(' | ')' | '{' | '}');
                    let (from, to, kind) = self.exclusive_rule((self.win.line, self.win.col), to, kind);
                    let kind = self.delete_rule(op, from, to, kind);
                    self.operate_pending(op, from, to, kind);
                    self.reg_one = false;
                }
                // `N%` is a line motion like `G`: it keeps the column.
                None => self.move_to(if key == '%' && cmd.count.is_some() { 'G' } else { key }, to),
            }
            return;
        }
        let len = self.line_chars(self.win.line);
        match key {
            'i' => self.insert_at(self.win.col),
            'a' => self.insert_at((self.win.col + 1).min(len)),
            'I' => self.insert_at(self.first_non_blank(self.win.line)),
            'A' => self.insert_at(len),
            // `n_opencmd`: nothing is saved, the new line is the change.
            'o' => {
                self.u_save(self.win.line + 1, self.win.line + 2);
                self.open_line(true);
            }
            'O' => {
                self.u_save(self.win.line, self.win.line + 1);
                self.open_line(false);
            }
            'x' => self.normal(Cmd { op: Some('d'), key: 'l', arg: None, ..cmd }),
            'X' => self.normal(Cmd { op: Some('d'), key: 'h', arg: None, ..cmd }),
            's' => self.normal(Cmd { op: Some('c'), key: 'l', arg: None, ..cmd }),
            'D' => self.normal(Cmd { op: Some('d'), key: '$', arg: None, ..cmd }),
            'C' => self.normal(Cmd { op: Some('c'), key: '$', arg: None, ..cmd }),
            'S' => self.normal(Cmd { op: Some('c'), key: 'c', arg: None, ..cmd }),
            'J' => self.join_cmd_normal(n, true),
            G_JOIN => self.join_cmd_normal(n, false),
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
                    self.win.want_set = true;
                }
            }
            ']' => {
                if arg() == 'p' {
                    self.paste_indented(n);
                }
            }
            'R' => {
                self.replacing = Some(Vec::new());
                self.enter_insert();
            }
            '\x0f' => self.jump_list(true, n),
            '\x09' => self.jump_list(false, n),
            '\x05' | '\x19' => self.scroll(key == '\x05', n, false),
            '\x06' | '\x02' => self.scroll(key == '\x06', n, true),
            G_OLDER_CHANGE | G_NEWER_CHANGE => self.change_list(key == G_OLDER_CHANGE, n),
            // `nv_gv_cmd`: no selection (or one past the end of the text) is a beep, with no message.
            // While Visual mode goes on the last area is the one it began with (`b_visual` is set when it ends).
            G_VISUAL => match (if matches!(self.mode, Mode::Visual(_)) { self.vis_saved.and_then(|v| v.2) } else { self.buf.last_visual }).filter(|(_, a, _)| a.line < self.line_count()) {
                Some((kind, a, c)) => {
                    let (a, c) = (self.mark_offset(a), self.mark_offset(c));
                    // In Visual mode the area now and the last one change places.
                    if let Mode::Visual(now) = self.mode {
                        let (old_anchor, old_cursor) = (self.mark_at(self.offset_of(self.anchor)), self.mark_at(self.offset()));
                        let new_last = Some((now, old_anchor, old_cursor));
                        self.buf.last_visual = new_last;
                        let (lo, hi) = if (old_anchor.line, old_anchor.col) <= (old_cursor.line, old_cursor.col) { (old_anchor, old_cursor) } else { (old_cursor, old_anchor) };
                        self.buf.marks.insert('<', lo);
                        self.buf.marks.insert('>', hi);
                        self.vis_saved = Some((Some(lo), Some(hi), new_last));
                    }
                    self.anchor = self.pos_of(a);
                    (self.win.line, self.win.col) = self.pos_of(c);
                    self.win.want_set = true;
                    self.mode = Mode::Visual(kind);
                }
                None => self.beep_flush(),
            },
            G_INSERT => {
                // At the mark `^`, where Insert mode was last left.
                if let Some(off) = self.mark('^') {
                    (self.win.line, self.win.col) = self.pos_of(off);
                }
                self.insert_at(self.win.col);
            }
            // `nv_undo` and `nv_redo` want the column of the cursor again (`:undo` and `g-` do not).
            'u' => {
                self.u_undo(n);
                self.win.want_set = true;
            }
            '\x12' => {
                self.u_redo(n);
                self.win.want_set = true;
            }
            // `nv_Undo`: `U` brings back the line as it was before the latest changes to it.
            'U' => {
                self.u_undoline();
                // `nv_Undo` makes no redo: `.` goes on repeating the command before.
                self.rec_cmd = None;
                self.win.want_set = true;
            }
            ':' => self.enter_line(Mode::Command(String::new())),
            '/' | '?' => {
                self.search_origin = (self.win.line, self.win.col);
                self.search_back = key == '?';
                self.inc_search = None;
                self.enter_line(Mode::Search(String::new()));
            }
            'v' | 'V' | '\x16' => {
                self.anchor = (self.win.line, self.win.col);
                self.mode = Mode::Visual(match key {
                    'v' => VKind::Char,
                    'V' => VKind::Line,
                    _ => VKind::Block,
                });
            }
            '~' if len == 0 => self.beep_flush(),
            '~' => {
                // `n_swapchar`.
                self.u_save_cursor();
                let end = (self.win.col + n).min(len);
                let range = self.range((self.win.line, self.win.col), (self.win.line, end), Kind::Exclusive);
                let s = toggle_case(&self.buf.doc.text().slice(range.clone()));
                let start = range.start;
                self.edit_replace(range, &s);
                // `n_swapchar`: `'[` the first char, `']` the cursor's column less one (the cursor ends on the char after the last one, or
                // on the last char of the line after `check_cursor`), `'.` the first.
                let c = if end >= len { len.saturating_sub(1) } else { end };
                let last = self.mark_off(self.win.line, c.saturating_sub(1));
                self.set_op_marks(start, last);
                self.set_dot(start);
                self.set_col(end);
            }
            'r' => {
                // Vim refuses when fewer than `count` chars remain.
                if self.win.col + n <= len && matches!(arg(), '\r' | '\n') {
                    // `nv_replace`: the chars go (`del_chars`), then `edit()` types a line break and Esc: one break, however many chars.
                    self.u_save_cursor();
                    let range = self.range((self.win.line, self.win.col), (self.win.line, self.win.col + n), Kind::Exclusive);
                    self.edit_delete(range);
                    self.enter_insert();
                    self.newline();
                    self.leave_insert();
                } else if self.win.col + n <= len && arg() == '\t' && (self.buf.opts.expandtab || self.buf.opts.smarttab) {
                    // `nv_replace`: with 'expandtab' or 'smarttab' the Tab is typed in Replace mode (`R<Tab><Esc>`, the count in front).
                    self.replacing = Some(Vec::new());
                    self.enter_insert();
                    self.insert_repeat = (n, false);
                    self.insert_key(KeyCode::Tab.into());
                    self.leave_insert();
                } else if self.win.col + n <= len {
                    // `nv_replace`.
                    self.u_save_cursor();
                    let range = self.range((self.win.line, self.win.col), (self.win.line, self.win.col + n), Kind::Exclusive);
                    let start = range.start;
                    self.edit_replace(range, &arg().to_string().repeat(n));
                    self.set_col(self.win.col + n - 1);
                    // `nv_replace`: `'[` the first char, `']` and `'.` the last one replaced.
                    let last = self.offset();
                    self.set_op_marks(start, last);
                    self.set_dot(last);
                } else {
                    // `nv_replace`: fewer chars than the count.
                    self.beep_flush();
                }
            }
            '.' => self.repeat(count),
            G_EARLIER => self.undo_time(-(n as i64), false, false, false),
            '\x07' => self.info(self.file_info()),
            '\x17' => self.window_cmd(arg(), count),
            '\x1e' if !self.cmdwin_refuses() => self.alternate_buffer(),
            '\x1e' => {}
            // `&` is `:s`, `g&` is `:%s//~/&` (last substitute on the whole text, same flags).
            '&' => self.substitute(substitute::Sub::again(false)),
            G_SUBST => self.substitute(substitute::Sub::again(true)),
            G_COUNTS => self.info_whole(self.counts()),
            G_ASCII | G_UTF8 => {
                let c = self.char_at((self.win.line, self.win.col));
                self.info(match (key, c) {
                    (_, '\n') => "NUL".into(),
                    (G_ASCII, c) => format!("<{c}> {0}, Hex {0:04x}, Oct {0:o}", c as u32),
                    (_, c) => c.encode_utf8(&mut [0; 4]).bytes().map(|b| format!("{b:02x}")).collect::<Vec<_>>().join(" "),
                });
            }
            G_LATER => self.undo_time(n as i64, false, false, false),
            '\x01' => self.add_number(n as i64),
            '\x18' => self.add_number(-(n as i64)),
            'm' => {
                let off = self.offset();
                if !self.set_mark(arg(), off) {
                    // `nv_mark`: `clearopbeep`.
                    self.beep_flush();
                }
            }
            'q' => match arg() {
                k @ (':' | '/' | '?') => self.open_cmdwin_from_normal(k),
                r @ ('a'..='z' | 'A'..='Z') => {
                    self.recording = Some(r);
                    self.macro_keys.clear();
                }
                _ => self.error("Invalid register name"),
            },
            '@' => match arg() {
                '@' => match self.last_macro {
                    Some(r) => self.play_macro(r, n),
                    None => self.error("E748: No previously used register"),
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
        for (i, &k) in keys.iter().enumerate() {
            self.peek_key = keys.get(i + 1).copied();
            self.flush_typeahead = false;
            if !self.key(k) || mem::take(&mut self.flush_typeahead) {
                break;
            }
        }
        self.peek_key = None;
        self.replaying = false;
    }

    fn play_macro(&mut self, r: char, n: usize) {
        let seq = self.msgs.seq;
        let Some(keys) = self.reg(r).map(|reg| parse::text_keys(&reg.text)) else {
            if self.msgs.seq == seq {
                // `nv_at`: `do_execreg` fails: `clearopbeep`.
                self.beep_flush();
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
            for (i, &k) in keys.iter().enumerate() {
                self.peek_key = keys.get(i + 1).copied();
                self.flush_typeahead = false;
                if !self.key(k) || self.macro_abort || mem::take(&mut self.flush_typeahead) {
                    break 'outer;
                }
            }
        }
        self.peek_key = None;
        self.macro_depth -= 1;
        if self.macro_depth == 0 && mem::take(&mut self.macro_abort) {
            self.error("Macro recursion too deep");
        }
    }

    fn insert_at(&mut self, col: usize) {
        self.set_col(col);
        self.enter_insert();
    }

    /// Starts Insert mode; `Insstart` is where it began.
    fn enter_insert(&mut self) {
        // `edit()`: Insert mode needs a buffer that can be changed.
        if !self.buf.opts.modifiable {
            self.error("E21: Cannot make changes, 'modifiable' is off");
            return;
        }
        self.mode = Mode::Insert;
        self.ins_need_undo = true;
        self.ins_batch = false;
        self.inserted_space = false;
        self.typed_batch = false;
        let pos = (self.win.line, self.win.col);
        self.ins_start.get_or_insert(pos);
    }

    /// `o`/`O`: a new line below/above with the current line's indent (autoindent).
    fn open_line(&mut self, below: bool) {
        let indent = self.indent_of(self.win.line);
        if below {
            self.marks_below = true;
            self.edit_insert(self.line_end_offset(self.win.line), &format!("\n{indent}"));
            self.marks_below = false;
            self.win.line += 1;
        } else {
            self.edit_insert(self.buf.doc.text().line_to_offset(self.win.line), &format!("{indent}\n"));
        }
        // `Insstart` of `o` and `O` is the start of the new line, before its indent, and so is `'.`.
        if !matches!(self.mode, Mode::Insert) {
            let start = self.buf.doc.text().line_to_offset(self.win.line);
            self.ins_start = Some((self.win.line, 0));
            self.set_dot(start);
        }
        // `open_line`: no `U` after adding a line.
        self.u_clearline();
        self.insert_at(graphemes::count(&indent));
        self.auto_indent = (!indent.is_empty()).then_some(self.win.line);
    }

    /// Empties the cursor line if it only holds an unused auto indent (vim).
    fn clear_auto_indent(&mut self) {
        if self.auto_indent.take() == Some(self.win.line) && self.buf.doc.text().line(self.win.line).trim().is_empty() {
            let start = self.buf.doc.text().line_to_offset(self.win.line);
            self.edit_delete(start..self.line_end_offset(self.win.line));
            // Taking the indent away is a change (`changed_bytes`): `'.` goes there.
            self.set_dot(start);
            self.set_col(0);
        }
    }

    /// `op_delete`: a delete over line breaks that starts in the indent and ends at the end of a line takes whole lines
    /// (not in Visual mode).
    fn delete_rule(&self, op: char, from: Pos, to: Pos, kind: Kind) -> Kind {
        let (a, b) = sorted(from, to);
        if op == 'd' && kind != Kind::Linewise && a.0 != b.0 && self.takes_whole_lines(a, b, kind) { Kind::Linewise } else { kind }
    }

    /// The condition of `op_delete` that makes a charwise delete over lines linewise: nothing but blanks follows the end,
    /// and only blanks come before the start.
    fn takes_whole_lines(&self, a: Pos, b: Pos, kind: Kind) -> bool {
        let line = self.buf.doc.text().line(b.0);
        let from = b.1 + usize::from(kind == Kind::Inclusive);
        let rest: String = line.chars().skip(from).collect();
        rest.chars().all(|c| c == ' ' || c == '\t') && a.1 <= self.indent_of(a.0).chars().count()
    }

    /// The rule of `do_pending_operator` for an exclusive motion that ends in column 0 of a later line: it ends on the
    /// line before, at its last char (inclusive), or, when the start is in the indent, takes whole lines.
    fn exclusive_rule(&mut self, from: Pos, to: Pos, kind: Kind) -> (Pos, Pos, Kind) {
        let (a, b) = sorted(from, to);
        if kind != Kind::Exclusive || b.1 != 0 || b.0 <= a.0 {
            return (from, to, kind);
        }
        // `oap->end_adjusted`: a linewise delete or shift then keeps the cursor where the operator left it.
        self.end_adjusted = true;
        let before = b.0 - 1;
        let indent = self.indent_of(a.0).chars().count();
        if a.1 <= indent {
            return (a, (before, 0), Kind::Linewise);
        }
        match self.line_chars(before) {
            0 => (a, (before, 0), Kind::Exclusive),
            n => (a, (before, n - 1), Kind::Inclusive),
        }
    }

    /// `do_pending_operator`: an operator typed in Normal mode. With 'nostartofline' (Neovim's default) a linewise `d`,
    /// `<` or `>` goes back to the column the cursor wanted before it ran (`:d` and `:>` do not).
    fn operate_pending(&mut self, op: char, from: Pos, to: Pos, kind: Kind) {
        let old_col = self.win.want_col;
        let adjusted = mem::take(&mut self.end_adjusted);
        // `do_pending_operator`: the cursor is at the start of the region when the operator runs (what `uh_cursor` is).
        let start = sorted(from, to).0;
        if op != 'y' {
            (self.win.line, self.win.col) = start;
        }
        self.operate(op, from, to, kind);
        // `op_tilde` does not move the cursor: a linewise `g~~` leaves it where the region started, not on the first non-blank.
        if kind == Kind::Linewise && case_fn(op).is_some() {
            self.win.line = start.0;
            self.set_col(start.1);
        }
        if kind == Kind::Linewise && !adjusted && matches!(op, 'd' | '<' | '>') {
            self.win.col = self.coladvance(self.win.line, old_col);
            // `w_set_curswant` is set again: the next command takes the column where the cursor is now (checked against Neovim).
            self.win.want_set = true;
        }
    }

    fn operate(&mut self, op: char, from: Pos, to: Pos, kind: Kind) {
        // `do_pending_operator` calls `prep_redo` before the operator (not for `y`), even when it will find nothing to do.
        self.redo_force |= op != 'y';
        let (a, b) = sorted(from, to);
        if matches!(op, '<' | '>') {
            self.shift(a.0, b.0, op == '>', 1, a.1);
            return;
        }
        let (old_lines, regname) = (self.line_count() as i64, self.cur_reg);
        let range = self.range(a, b, kind);
        let (start_off, end_pos_off) = (range.start, self.offset_of(b));
        if let Some(f) = case_fn(op) {
            let s = f(&self.buf.doc.text().slice(range.clone()));
            // `op_tilde`: `'[` and `']` are the start and the last char (a line: all of it); the text may be the same.
            let end = if kind == Kind::Linewise { self.last_char_off(b.0) } else { self.range_last_char(&range, kind, end_pos_off) };
            let changed = self.buf.doc.text().slice(range.clone()) != s;
            // `op_tilde`.
            self.u_save_lines(a.0, b.0);
            let tick = self.buf.changedtick;
            self.edit_replace(range, &s);
            // `changed_lines` only when a char changed.
            self.buf.changedtick = tick + u64::from(changed);
            self.set_op_marks(start_off, end);
            if changed {
                self.set_dot(start_off);
            }
            self.win.line = a.0;
            if kind != Kind::Linewise {
                self.set_col(a.1);
            } else {
                // A line operator leaves the cursor on the first non-blank.
                let c = self.first_non_blank(a.0).min(self.line_chars(a.0).saturating_sub(1));
                self.set_col(c);
            }
            // `op_tilde`: "N lines changed" over 'report' lines.
            let lines = b.0 - a.0 + 1;
            if lines > self.buf.opts.report {
                self.info(format!("{lines} line{} changed", if lines == 1 { "" } else { "s" }));
            }
            return;
        }
        // `op_delete` has nothing to do in a buffer with no lines (`ML_EMPTY`): the registers stay.
        if op == 'd' && self.buf.doc.text().is_empty() && self.buf.undo.empty {
            return;
        }
        // `op_delete` does nothing for an empty region (`d{` on the first line).
        if op == 'd' && kind != Kind::Linewise && range.is_empty() {
            // ... but an empty exclusive region (`oap->empty`) saves the line for undo, so the change still has a step; an inclusive one
            // on an empty line (`D`, `d$`) is the "trying to delete in an empty line" check, which comes before any saving.
            if kind != Kind::Inclusive {
                self.u_save_line(a.0);
            }
            return;
        }
        // `op_change` calls it first: an empty region yanks nothing, and Insert mode starts all the same.
        // (`oap->empty` is for an exclusive range; an inclusive one on an empty line still yanks the empty text.)
        let empty_change = op == 'c' && kind == Kind::Exclusive && range.is_empty();
        let yank_range = range.clone();
        let mut yanked = self.buf.doc.text().slice(range.clone()).into_owned();
        if kind == Kind::Linewise {
            yanked.push('\n');
        }
        if !empty_change {
            self.store_reg(yanked, if kind == Kind::Linewise { RegKind::Line } else { RegKind::Char }, op == 'y');
        }
        let tick0 = self.buf.changedtick;
        match (op, kind) {
            ('y', Kind::Linewise) => {
                // The cursor goes to where the operator started (`oap->start`).
                self.win.line = a.0;
                self.win.col = a.1.min(self.line_chars(a.0).saturating_sub(1));
            }
            ('d', Kind::Linewise) => {
                // The last line has no `\n` after it: take the one before.
                let Range { start, end } = range;
                let range = if end < self.buf.doc.text().len() { start..end + 1 } else { start.saturating_sub(1)..end };
                // `del_lines`.
                self.u_savedel(a.0 + 1, b.0 - a.0 + 1);
                self.edit_delete(range);
                // `op_delete`: "`U` is not possible after `dd`".
                self.u_clearline();
                self.win.line = a.0.min(self.line_count() - 1);
                self.set_col(self.first_non_blank(self.win.line));
            }
            ('c', Kind::Linewise) => {
                // Autoindent: the first line keeps its indent.
                let indent = self.indent_of(a.0);
                // `op_delete` of a change: the lines after the first are deleted, then the first is saved.
                if b.0 > a.0 {
                    self.u_savedel(a.0 + 2, b.0 - a.0);
                }
                // The lines after the first are gone by now. `u_save_cursor()` keeps the line for `U`, then `cc` clears it for 2 lines.
                self.u_saveline(a.0);
                self.u_savecommon_lc(a.0, a.0 + 2, 0, self.line_count() - (b.0 - a.0));
                // `op_delete` of a change: `del_lines` takes the lines after the first (`deleted_lines_mark`), the first stays.
                self.marks_manual = true;
                self.edit_delete(range.start + indent.len()..range.end);
                self.marks_manual = false;
                // `U` is not possible after `2cc`.
                if b.0 > a.0 {
                    self.u_clearline();
                }
                self.mark_adjust(a.0 + 1, b.0 - a.0, None, -((b.0 - a.0) as isize));
                // `del_lines` of the lines after the first, then `truncate_line`.
                self.buf.changedtick = tick0 + if b.0 > a.0 { 2 } else { 1 };
                // `truncate_line` is a change (`changed_bytes`) also when the line has nothing past its indent.
                let off = self.mark_off(a.0, graphemes::count(&indent));
                self.set_dot(off);
                self.win.line = a.0;
                self.insert_at(graphemes::count(&indent));
                self.auto_indent = (!indent.is_empty()).then_some(a.0);
            }
            _ => {
                if op != 'y' {
                    // `op_delete`: an empty region only prepares the undo for `op_change`; within a line the line is saved, over line breaks
                    // the lines with the text after the end.
                    if a.0 == b.0 || range.is_empty() {
                        self.u_save_line(a.0);
                    } else {
                        self.u_save_lines(a.0, b.0);
                    }
                    self.marks_chardel = true;
                    self.edit_delete(range);
                    self.marks_chardel = false;
                    // Over line breaks: `truncate_line`, `del_lines` of the lines between (when there are any), `del_bytes` and
                    // `do_join` (two); within a line one `del_bytes`.
                    if a.0 != b.0 {
                        self.buf.changedtick = tick0 + 3 + u64::from(b.0 - a.0 > 1) + 1;
                    }
                }
                self.win.line = a.0;
                self.set_col(a.1);
                if op == 'c' {
                    self.enter_insert();
                }
            }
        }
        // `op_yank` sets `'[` and `']` to the text (a line: from its start to its end), `op_delete` to where it was.
        if op == 'y' {
            let (s, e) = if kind == Kind::Linewise {
                (self.mark_off(a.0, 0), self.line_end_offset(b.0))
            } else if kind == Kind::Exclusive && yank_range.is_empty() {
                // `op_yank_reg`: `decl(&b_op_end)` of an empty region steps back, over a line break too.
                let e = if a.1 > 0 { self.mark_off(a.0, a.1 - 1) } else if a.0 > 0 { self.last_char_off(a.0 - 1) } else { start_off };
                (start_off, e)
            } else {
                (start_off, self.range_last_char(&yank_range, kind, end_pos_off))
            };
            // An inclusive end is the last byte of its char (`do_pending_operator`: `end.col += len - 1`).
            // (A motion that ended on the NUL of a line was made inclusive on its last char by `adjust_cursor`.)
            let at_nul = kind == Kind::Exclusive && b.1 > 0 && b.1 >= self.line_chars(b.0);
            let extra = if (kind == Kind::Inclusive || at_nul) && !yank_range.is_empty() { self.cluster_len(self.pos_of(e)).saturating_sub(1) } else { 0 };
            let (sp, ep) = (self.pos_of(s), self.pos_of(e));
            if kind == Kind::Linewise {
                // `op_yank`: a line yank ends at `MAXCOL`.
                self.set_op_marks_bytes((a.0, 0), (b.0, 2147483647));
            } else if extra > 0 {
                let (sb, eb) = (self.line_byte(sp.0, sp.1), self.line_byte(ep.0, ep.1));
                self.set_op_marks_bytes((sp.0, sb), (ep.0, eb + extra));
            } else {
                self.set_op_marks(s, e);
            }
        } else if op == 'd' || op == 'c' {
            self.put_mark('[', a.0, a.1);
            self.put_mark(']', a.0, a.1);
            // `del_lines` or `do_join` made the last change: the line after the start of a delete over line breaks.
            if (kind == Kind::Linewise && op == 'd') || (kind != Kind::Linewise && b.0 > a.0) {
                self.put_mark('.', if kind == Kind::Linewise { a.0 } else { a.0 + 1 }, 0);
                self.dot_set = true;
            }
        }
        if op == 'y' {
            // `op_yank`: a message when more than 'report' lines were yanked (a charwise one in one line counts none).
            let lines = if kind != Kind::Linewise && a.0 == b.0 { 0 } else { b.0 - a.0 + 1 };
            // `op_yank` returns at once for the black hole register: no message.
            if lines > self.buf.opts.report && regname != Some('_') {
                let into = regname.map_or_else(String::new, |c| format!(" into \"{c}"));
                self.info(format!("{lines} line{} yanked{into}", if lines == 1 { "" } else { "s" }));
            }
        } else {
            // `op_delete` ends with the report of the lines it took away. Taking them all leaves
            // "--No lines in buffer--" to be shown at the next redraw, which keeps the report back
            // (`keep_msg`): it is no message of the command, a `:redir` does not get it.
            self.ml_empty = kind == Kind::Linewise && (b.0 - a.0 + 1) as i64 == old_lines;
            // `deleted_lines_mark` of the only line: the edit has no line break, so `adjust_marks` saw none.
            if op == 'd' && self.ml_empty && old_lines == 1 {
                self.mark_adjust(0, 1, None, -1);
                // ... and its `changed_lines(1, 0, ..)` puts `'.` on the line that is left.
                self.put_mark('.', 0, 0);
                self.dot_set = true;
            }
            if self.ml_empty && old_lines > 1 {
                let keep = self.buf.opts.msg_history;
                self.msgs.show_with(messages::Level::Info, "--No lines in buffer--".into(), keep, false);
            } else {
                self.msgmore(self.line_count() as i64 - old_lines);
            }
        }
    }

    /// `>`/`<`: moves the indent of lines by `times` × `shiftwidth` columns (a tab counts `tabstop`),
    /// rewritten as `expandtab` says; empty lines are untouched.
    fn shift(&mut self, first: usize, last: usize, right: bool, times: usize, start_col: usize) -> usize {
        // `op_shift`: the cursor column goes with the loop: an empty line is column 0, a line whose indent changes the
        // length of its new indent (`set_indent`); a line already right (`set_indent` returns early) leaves it.
        let mut col = self.win.col;
        let mut any = false;
        // `op_shift`.
        let tick = self.buf.changedtick;
        self.u_save_lines(first, last);
        let snap = self.buf.doc.text().clone();
        for (l, line) in lines_between(&snap, first, last) {
            if line.is_empty() {
                col = 0;
                continue;
            }
            let blanks = line.len() - line.trim_start_matches([' ', '\t']).len();
            let cols = self.buf.opts.indent_width(&line[..blanks]);
            let indent = self.buf.opts.indent(self.buf.opts.shift_indent(cols, right, times));
            if line[..blanks] == indent {
                continue;
            }
            col = indent.chars().count();
            let start = self.buf.doc.text().line_to_offset(l);
            self.edit_replace(start..start + blanks, &indent);
            any = true;
        }
        // `changed_lines(first, 0, ..)`, also when no line changed: `'.` is the start of the first line.
        let _ = any;
        let off = self.mark_off(first, 0);
        self.set_dot(off);
        // `changed_lines` is the one change `op_shift` makes, whatever the number of lines it rewrote.
        self.buf.changedtick = tick + 1;
        // `op_shift`: `'[` is where the operator started, `']` the last char of the last line.
        let (s, e) = (self.mark_off(first, start_col), self.last_char_off(last));
        self.set_op_marks(s, e);
        // `beginline(BL_SOL | BL_FIX)` with 'nostartofline' leaves `w_curswant` alone.
        self.win.line = first;
        self.win.col = self.first_non_blank(first);
        // `op_shift`: a message when more than 'report' lines were shifted.
        let count = last - first + 1;
        if count > self.buf.opts.report {
            let (op, t) = (if right { '>' } else { '<' }, if times == 1 { "" } else { "s" });
            self.info(format!("{count} line{} {op}ed {times} time{t}", if count == 1 { "" } else { "s" }));
        }
        col
    }

    /// Joins `times` lines below the cursor line to it; `spaces`: drop their leading blanks and
    /// put one space between (`J`), else just remove the line breaks (`:j!`).
    /// `nv_join`: a count past the end of the text joins what is there, but not when that is one line only.
    fn join_cmd_normal(&mut self, n: usize, spaces: bool) {
        let count0 = n.max(2);
        let left = self.line_count() - self.win.line;
        let count0 = if count0 > left {
            if count0 <= 2 {
                // `nv_join`: nothing to join with.
                self.beep_flush();
                return;
            }
            left
        } else {
            count0
        };
        self.join(count0 - 1, spaces);
    }

    fn join(&mut self, times: usize, spaces: bool) {
        let first = self.win.line;
        // `do_join`: `changed_lines` for the joined line and `deleted_lines_mark` for the ones gone, however many.
        let tick = self.buf.changedtick;
        // `do_join`: the lines joined are saved.
        self.u_save_lines(first, (first + times).min(self.line_count() - 1));
        let first_len = self.buf.doc.text().line(first).len();
        let mut joined = false;
        for _ in 0..times {
            if self.win.line + 1 >= self.line_count() {
                break;
            }
            let off = self.line_end_offset(self.win.line);
            let next = self.buf.doc.text().line(self.win.line + 1);
            let trimmed = if spaces { next.trim_start() } else { &next };
            let blanks = next.len() - trimmed.len();
            // `do_join`: a space goes between the lines unless the next one is empty or starts with `)`, the text so far is empty, or it
            // ends in a Tab or a space.
            let ended = self.buf.doc.text().slice(self.buf.doc.text().line_to_offset(self.win.line)..off);
            let space = spaces && !trimmed.is_empty() && !trimmed.starts_with(')') && !ended.is_empty() && !ended.ends_with(['\t', ' ']);
            let col = self.line_chars(self.win.line);
            // One edit: `do_join` moves the marks of the second line by where its text ends up.
            self.edit_replace(off..off + 1 + blanks, if space { " " } else { "" });
            self.set_col(col);
            joined = true;
        }
        // `do_join`: `'[` is where the first line ended, `']` the end of the joined line, `'.` the line that went.
        if joined {
            let start = self.buf.doc.text().line_to_offset(first);
            self.set_op_marks(start + first_len, self.line_end_offset(first));
            // `changed_lines(lnum, currsize)` for the first line, then `del_lines` reports the line that went: two turns at
            // the change list, the first after `mark_col_adjust` moved the entries of the joined lines.
            self.put_mark('.', first, first_len);
            self.add_change();
            self.put_mark('.', first + 1, 0);
            self.add_change();
            self.dot_set = true;
            self.buf.changedtick = tick + 2;
        } else if times == 0 {
            // `do_join` of one line (`3J` on the last line): the cursor goes to the column where "the last join" would be, 0.
            self.set_col(0);
            // ... and the marks are at its end.
            let end = self.line_end_offset(first);
            self.set_op_marks(end, end);
            self.set_dot(end);
        }
    }

    /// The register of the command (`"` by default) for a paste; reports an empty one.
    fn paste_source(&mut self) -> Option<Reg> {
        let name = self.cur_reg.take().unwrap_or('"');
        let seq = self.msgs.seq;
        let reg = self.reg(name);
        if reg.is_none() {
            // `do_put` starts with `'[` and `']` on the cursor.
            let off = self.offset();
            self.set_op_marks(off, off);
        }
        if reg.is_none() && self.msgs.seq == seq {
            // `do_put` saves the cursor line before it looks at what the register holds.
            // A buffer that is not 'modifiable' stops at the `E21` of that save.
            if self.u_save(self.win.line + 1, self.win.line + 2) {
                self.error(format!("E353: Nothing in register {name}"));
            }
        }
        reg
    }

    /// `p`/`P`: returns the offset just after the pasted text (not for a block).
    fn paste(&mut self, after: bool, n: usize) -> Option<usize> {
        // `nv_put`: `prep_redo_cmd` comes before `do_put`, so `.` repeats a put that found nothing to put as well.
        self.redo_force = true;
        let reg = self.paste_source()?;
        self.paste_reg(reg, after, n)
    }

    fn paste_reg(&mut self, Reg { text, kind }: Reg, after: bool, n: usize) -> Option<usize> {
        if text.is_empty() {
            return None;
        }
        // `do_put`: nothing is saved first, so the undo step starts here, then what the kind of register needs.
        self.u_save(self.win.line + 1, self.win.line + 2);
        match kind {
            RegKind::Line => {
                let s = text.repeat(n);
                let line = if after { self.win.line + 1 } else { self.win.line };
                // In an empty buffer the empty line is replaced, so it is saved too.
                if self.buf.doc.text().is_empty() {
                    self.u_save(0, 2);
                } else {
                    self.u_save(line, line + 1);
                }
                let at = if line < self.line_count() {
                    let at = self.buf.doc.text().line_to_offset(line);
                    self.edit_insert(at, &s);
                    at
                } else {
                    // Past the last line: move the register's trailing `\n` to the front.
                    let at = self.buf.doc.text().len();
                    // `ml_append` below the last line: the marks on it (an empty one too) stay.
                    self.marks_below = true;
                    self.edit_insert(at, &format!("\n{}", &s[..s.len() - 1]));
                    self.marks_below = false;
                    at
                };
                self.win.line = line;
                self.set_col(self.first_non_blank(line));
                self.msgmore(s.matches('\n').count() as i64 + i64::from(!s.ends_with('\n')));
                // `do_put`: `'[` is the start of the first line, `']` the last char of the last, `'.` the first line.
                let lines = s.matches('\n').count() + usize::from(!s.ends_with('\n'));
                let (start, end) = (self.mark_off(line, 0), self.last_char_off(line + lines - 1));
                self.set_op_marks(start, end);
                self.set_dot(start);
                Some(at + s.len())
            }
            RegKind::Char => {
                self.u_save_cursor();
                let s = text.repeat(n);
                let mut off = self.offset();
                if after {
                    off += self.cluster_len((self.win.line, self.win.col));
                }
                self.edit_insert(off, &s);
                (self.win.line, self.win.col) = self.pos_of(off + s.len() - 1);
                self.win.want_set = true;
                self.msgmore(s.matches('\n').count() as i64);
                // `'[` is the first char put, `']` the last, `'.` the start.
                let last = self.buf.doc.text().floor_char_boundary(off + s.len() - 1);
                self.set_op_marks(off, last);
                self.set_dot(off);
                Some(off + s.len())
            }
            RegKind::Block(width) => {
                self.put_block(&text, width, after, n);
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
        let width = |l: &str| -> (usize, usize) {
            let blanks = l.len() - l.trim_start_matches([' ', '\t']).len();
            (blanks, self.buf.opts.indent_width(&l[..blanks]))
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

    /// `Ctrl+A`/`Ctrl+X`: adds `delta` to the decimal number at or after the cursor in the line.
    fn add_number(&mut self, delta: i64) {
        // `op_addsub`: the line is saved before a number is looked for.
        self.u_save_cursor();
        let line = self.buf.doc.text().line(self.win.line);
        let from = byte_of_col(&line, self.win.col);
        let Some(k) = line[from..].find(|c: char| c.is_ascii_digit()) else {
            // `do_addsub`: no number to change beeps, but not on an empty line or past the end.
            if from < line.len() {
                self.beep_flush();
            }
            return;
        };
        // Digits are ASCII: byte and char counts agree inside the number.
        let mut i = from + k;
        i -= line[..i].bytes().rev().take_while(u8::is_ascii_digit).count();
        let start = if line[..i].ends_with('-') { i - 1 } else { i };
        let end = i + line[i..].find(|c: char| !c.is_ascii_digit()).unwrap_or(line.len() - i);
        let s = &line[start..end];
        let col = graphemes::col_of(&line, start);
        let Some(v) = s.parse::<i64>().ok().and_then(|v| v.checked_add(delta)) else {
            self.error("Number out of range");
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
        self.put_off('<', sa);
        self.put_off('>', sb);
        self.buf.last_visual = Some((kind, self.mark_at(self.offset_of(self.anchor)), self.mark_at(self.offset())));
        if key.code == KeyCode::Esc {
            self.pending.clear();
            self.mode = Mode::Normal;
            return self.finish();
        }
        // `r<CR>` in Visual block mode splits the lines.
        let enter_after_r = key.code == KeyCode::Enter && kind == VKind::Block && self.pending.ends_with('r');
        let Some(c) = normal_char(key).or(enter_after_r.then_some('\r')) else { return };
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
                } else if cmd.key == G_VISUAL {
                    self.normal(cmd);
                } else if parse::is_motion(cmd.key) {
                    match self.motion(&cmd) {
                        Some((to, _)) => self.move_to(cmd.key, to),
                        // `clearopbeep`: a motion that fails drops the rest of the typeahead in Visual mode too.
                        None => self.beep_flush(),
                    }
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
                self.win.want_set = true;
                self.anchor = cur;
            }
            'J' => {
                self.win.line = a.0;
                self.join((b.0 - a.0).max(1), true);
            }
            // `visual_key` has set marks `<` and `>` for the range.
            ':' => self.enter_line(Mode::Command("'<,'>".into())),
            '<' | '>' if kind == VKind::Block => self.block_shift(c == '>', n),
            '<' | '>' => {
                let old_col = self.win.want_col;
                self.shift(a.0, b.0, c == '>', n, if kind == VKind::Line { 0 } else { a.1 });
                // The same 'nostartofline' rule as `operate_pending`.
                self.win.col = self.coladvance(self.win.line, old_col);
                self.win.want_set = true;
            }
            _ if kind == VKind::Block => self.block_op(c, n),
            // `v_visop`: `I` and `A` make the area linewise, so `VIsual` has column 0 (`do_pending_operator`) and `oap->start` and
            // `oap->end` are the earlier and the later of it and the cursor.
            'I' | 'A' => {
                let anchor = (self.anchor.0, 0);
                let (start, end) = sorted(anchor, cur);
                if c == 'I' {
                    self.win.line = start.0;
                    self.insert_at(start.1);
                } else {
                    // `op_insert`: `check_cursor_col`, then "just like an `i` on the next character" unless the cursor is on the
                    // first cell (`start_vcol` is only known for one line, else 0; `end_vcol` is the last cell of the end).
                    let len = self.line_chars(end.0);
                    let tabs = self.buf.opts.tabs();
                    let line = self.buf.doc.text().line(end.0);
                    // `end_vcol` stays 0 when `curswant` is `$` (`do_pending_operator` does not look at it then).
                    let end_vcol = if self.win.want_col == usize::MAX { 0 } else { graphemes::cell_range(&line, end.1, tabs, self.wrap_w()).1.saturating_sub(1) };
                    let start_vcol = if start.0 == end.0 { graphemes::cell_range(&self.buf.doc.text().line(start.0), start.1, tabs, self.wrap_w()).0 } else { 0 };
                    let col = end.1.min(len.saturating_sub(1));
                    self.win.line = end.0;
                    self.insert_at(if len > 0 && start_vcol != end_vcol { col + 1 } else { col });
                }
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
                self.operate_pending(op, from, to, k);
                if case_fn(op).is_some() {
                    self.set_col(from.1);
                }
            }
        }
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
            self.block_replace(ch);
        } else {
            (self.win.line, self.win.col) = a;
            // `op_replace`: a selection that ends at the end of a line takes its line break, so the next line is saved too.
            let end = if kind == VKind::Char && b.1 >= self.line_chars(b.0) && b.0 + 1 < self.line_count() { b.0 + 1 } else { b.0 };
            self.u_save_lines(a.0, end);
            let (from, to, k) = self.visual_range(kind, a, b);
            let r = self.range(from, to, k);
            replace(self, r);
            self.win.line = a.0;
            self.set_col(if kind == VKind::Line { 0 } else { a.1 });
        }
    }

    fn insert_key(&mut self, key: KeyEvent) {
        let ctrl_c = key.code == KeyCode::Char('c') && key.modifiers.contains(KeyModifiers::CONTROL);
        if (key.code != KeyCode::Esc && !ctrl_c) || self.insert_pending.is_some() {
            self.insert_keys.push(key);
        }
        // Cursor keys are not part of what an insertion types: not for the repeat, nor for `.`, nor for the `.` register.
        if matches!(key.code, KeyCode::Left | KeyCode::Right | KeyCode::Up | KeyCode::Down | KeyCode::Home | KeyCode::End | KeyCode::PageUp | KeyCode::PageDown) && self.insert_pending.is_none() {
            self.insert_keys.pop();
            if !self.replaying && self.mode == Mode::Insert {
                self.rec.pop();
            }
        }
        if !matches!(key.code, KeyCode::Esc | KeyCode::Enter) {
            self.auto_indent = None;
        }
        if let Some(p) = self.insert_pending.take() {
            if p == 'l' {
                // The key that ends a code typed after `Ctrl+V` goes on as an ordinary key.
                if self.insert_lit_key(key) {
                    return;
                }
            } else {
                return self.insert_pending_key(p, key);
            }
        }
        let ctrl = key.modifiers.contains(KeyModifiers::CONTROL);
        if !matches!(key.code, KeyCode::Char(_)) || ctrl {
            self.typed_batch = false;
        }
        // `Ctrl+H` is Backspace.
        if ctrl && key.code == KeyCode::Char('h') {
            return self.insert_key(KeyCode::Backspace.into());
        }
        if !matches!(key.code, KeyCode::Char(_)) || ctrl {
            self.ins_batch = false;
        }
        // Moving the cursor, `Ctrl+R` and `Ctrl+U` mean no space was just typed.
        if matches!(key.code, KeyCode::Left | KeyCode::Right | KeyCode::Up | KeyCode::Down | KeyCode::Home | KeyCode::End | KeyCode::PageUp | KeyCode::PageDown)
            || (ctrl && matches!(key.code, KeyCode::Char('r' | 'u')))
        {
            self.inserted_space = false;
        }
        let moves = matches!(key.code, KeyCode::Left | KeyCode::Right | KeyCode::Up | KeyCode::Down | KeyCode::Home | KeyCode::End | KeyCode::PageUp | KeyCode::PageDown);
        let before = (self.win.line, self.win.col);
        if !moves && self.arrow_used && key.code != KeyCode::Esc && !(ctrl && key.code == KeyCode::Char('c')) {
            self.stop_arrow();
        }
        // `stop_arrow`: the line is saved for undo before the first change, and again after a cursor key.
        if !moves && key.code != KeyCode::Esc && !(ctrl && key.code == KeyCode::Char('c')) && mem::take(&mut self.ins_need_undo) {
            self.u_save_cursor();
        }
        if !moves && key.code != KeyCode::Esc && !(ctrl && key.code == KeyCode::Char('c')) {
            self.ins_edited = true;
        }
        match key.code {
            // `Ctrl+C` ends Insert mode like Esc; typed, it also interrupts (`got_int`).
            KeyCode::Char('c') if ctrl => {
                // Typed: not replayed by `:normal`, a macro or `.`.
                if self.macro_depth == 0 {
                    self.interrupted = true;
                    self.insert_repeat.0 = 1;
                }
                self.leave_insert();
            }
            KeyCode::Esc => self.leave_insert(),
            KeyCode::Char('w') if ctrl => self.delete_before(true),
            KeyCode::Char('u') if ctrl => self.delete_before(false),
            KeyCode::Char(c @ ('r' | 'v' | 'k')) if ctrl => self.insert_pending = Some(c),
            // `Ctrl+G`: `u`, `j`, `k` follow; none of them is typed text.
            KeyCode::Char('g') if ctrl => {
                self.insert_keys.pop();
                self.insert_pending = Some('g');
            }
            KeyCode::Char('o') if ctrl => {
                // One Normal command; a count no longer repeats the insert (vim).
                self.insert_repeat = (1, false);
                self.insert_one = Some((self.win.line, self.win.col));
                self.mode = Mode::Normal;
            }
            KeyCode::Char(c) if !key.modifiers.contains(KeyModifiers::CONTROL) => {
                // A run of typed chars is one change for Neovim (`'.` is where it began); Replace mode changes one by one.
                let (off, first) = (self.offset(), self.replacing.is_some() || !self.ins_batch);
                self.ins_batch = self.replacing.is_none();
                // A char taken from the typeahead with the one before it is part of one `ins_str`: one `changed_bytes`.
                self.tick_skip = self.typed_batch && c.is_ascii() && !c.is_ascii_control() && c != '\x7f' && self.replacing.is_none();
                if self.replacing.is_some() {
                    self.replace_char(c);
                } else {
                    self.insert(c.encode_utf8(&mut [0; 4]));
                }
                self.tick_skip = false;
                // `insertchar` takes a run of printable ASCII chars from the typeahead at once (not in Replace mode): only the first
                // of them is a key of the Insert mode loop.
                let printable = c.is_ascii() && !c.is_ascii_control() && c != '\x7f';
                let in_batch = printable && self.typed_batch;
                if c == ' ' && !in_batch {
                    self.inserted_space = true;
                }
                self.typed_batch = printable
                    && self.replacing.is_none()
                    && self.peek_key.is_some_and(|k| matches!(k.code, KeyCode::Char(n) if n.is_ascii() && !n.is_ascii_control() && n != '\x7f') && !k.modifiers.contains(KeyModifiers::CONTROL));
                // Set after the edit: a mark at the place of an insertion would move behind it.
                if first {
                    self.set_dot(off);
                }
            }
            KeyCode::Tab => {
                self.inserted_space = false;
                self.ins_tab();
            }
            KeyCode::Enter => self.newline(),
            // A Backspace in a Tab or the indent may delete to the previous stop ('smarttab', 'softtabstop').
            KeyCode::Backspace if self.win.col > 0 && self.ins_bs_stops() => {}
            KeyCode::Backspace if self.replacing.is_some() => self.replace_bs(),
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
            // `ins_left`, `ins_right`: 'whichwrap' has no `[` and `]` (Neovim's default `b,s`), so they stop at the line ends.
            KeyCode::Left => {
                if self.win.col > 0 {
                    self.set_col(self.win.col - 1);
                }
            }
            KeyCode::Right => {
                if self.win.col < self.line_chars(self.win.line) {
                    self.set_col(self.win.col + 1);
                }
            }
            // `cursor_up`, `cursor_down` fail on the first and the last line: nothing moves.
            KeyCode::Up if self.win.line > 0 => self.move_vertical(-1),
            KeyCode::Down if self.win.line + 1 < self.line_count() => self.move_vertical(1),
            KeyCode::PageUp if self.win.line > 0 => self.move_vertical(-(self.win.rows as isize)),
            KeyCode::PageDown if self.win.line + 1 < self.line_count() => self.move_vertical(self.win.rows as isize),
            KeyCode::Home => self.set_col(0),
            KeyCode::End => self.set_col(self.line_chars(self.win.line)),
            _ => {}
        }
        // `start_arrow`: after a cursor key that moved (`Home` and `End` always start it) the insert is not repeated any more.
        if moves && !self.arrow_used && (before != (self.win.line, self.win.col) || matches!(key.code, KeyCode::Home | KeyCode::End)) {
            self.start_arrow(before);
        }
    }

    /// The key after `Ctrl+R` (a register to insert) or `Ctrl+V` (a key to insert as itself: Tab
    /// as a tab, Ctrl+<letter> as its control char, Esc as `\x1b`).
    fn insert_pending_key(&mut self, p: char, key: KeyEvent) {
        let ctrl = key.modifiers.contains(KeyModifiers::CONTROL);
        if p == 'g' {
            self.insert_keys.pop();
            // Neither `Ctrl+G` nor its key is in what `.` replays.
            if !self.replaying {
                self.rec.pop();
                self.rec.pop();
            }
            return self.ins_ctrl_g(key);
        }
        let s = match (p, key.code) {
            ('r', KeyCode::Char('=')) if !ctrl => {
                self.start_expr(cmdline::ExprFrom::Insert { keys: 0 });
                return;
            }
            ('r', KeyCode::Char(c)) if !ctrl => match self.reg(c) {
                Some(r) => r.text,
                None => return,
            },
            ('v', KeyCode::Char(c @ 'a'..='z')) if ctrl => char::from(c as u8 - b'a' + 1).to_string(),
            ('v', KeyCode::Char(c)) if !ctrl && literal::Lit::begin(c).is_some() => {
                (self.lit, self.insert_pending) = (literal::Lit::begin(c), Some('l'));
                return;
            }
            ('v', KeyCode::Char(c)) => c.to_string(),
            ('k', KeyCode::Char(c)) if !ctrl => {
                (self.dig_first, self.insert_pending) = (Some(c), Some('K'));
                return;
            }
            ('K', KeyCode::Char(c)) if !ctrl => match self.dig_first.take() {
                Some(a) => digraphs::typed(&self.user_digraphs, a, c).to_string(),
                None => return,
            },
            ('v', KeyCode::Tab) => "\t".into(),
            ('v', KeyCode::Esc) => "\x1b".into(),
            ('v', KeyCode::Enter) => "\n".into(),
            _ => return,
        };
        self.insert_typed(&s);
    }

    /// Types what `Ctrl+V` or `Ctrl+K` made: over the character under the cursor in Replace mode.
    fn insert_typed(&mut self, s: &str) {
        let mut chars = s.chars();
        match (self.replacing.is_some(), chars.next(), chars.next()) {
            (true, Some(c), None) => self.replace_char(c),
            _ => self.insert(s),
        }
    }

    /// A key while the digits of a `Ctrl+V` code are typed; false when it ends the code without
    /// being a part of it (the caller handles it as an ordinary key).
    fn insert_lit_key(&mut self, key: KeyEvent) -> bool {
        let Some(mut lit) = self.lit.take() else { return false };
        let plain = match key.code {
            KeyCode::Char(c) if !key.modifiers.intersects(KeyModifiers::CONTROL | KeyModifiers::ALT) => Some(c),
            _ => None,
        };
        let step = plain.map_or(literal::Push::End, |c| lit.push(c));
        if step == literal::Push::More {
            (self.lit, self.insert_pending) = (Some(lit), Some('l'));
            return true;
        }
        if let Some(c) = lit.finish() {
            self.insert_typed(c.encode_utf8(&mut [0; 4]));
        }
        step == literal::Push::Full
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
        // `ins_bs`: the loop stops where Insert began (`Insstart_orig`) when it gets there from the right.
        let to = match self.ins_start_orig.or(self.ins_start) {
            Some((l, c)) if l == line && c < col && to < c => c,
            _ => to,
        };
        let (start, end) = (self.offset_of((line, to)), self.offset());
        self.edit_delete(start..end);
        self.set_col(to);
    }

    /// Replace mode: `c` takes the place of the cluster under the cursor (is added at the line end).
    /// `replace_do_bs`: Backspace in Replace mode goes back over what was typed, putting back what it replaced.
    pub(super) fn replace_bs(&mut self) {
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

    fn replace_char(&mut self, c: char) {
        let p = (self.win.line, self.win.col);
        let (off, len) = (self.offset(), self.cluster_len(p));
        let old = (len > 0).then(|| self.buf.doc.text().slice(off..off + len).into_owned());
        self.edit_replace(off..off + len, c.encode_utf8(&mut [0; 4]));
        (self.win.line, self.win.col) = self.pos_of(off + c.len_utf8());
        self.win.want_set = true;
        if let Some(r) = &mut self.replacing {
            r.push(old);
        }
    }

    /// Enter: splits the line; the new one gets the indent before the cursor (autoindent).
    fn newline(&mut self) {
        let line = self.buf.doc.text().line(self.win.line);
        let indent: String = graphemes::iter(&line).take(self.win.col).take_while(|g| g.chars().all(char::is_whitespace)).collect();
        self.clear_auto_indent();
        self.marks_split = true;
        self.insert(&format!("\n{indent}"));
        self.marks_split = false;
        // `open_line`: no `U` after adding a line.
        self.u_clearline();
        self.auto_indent = (!indent.is_empty()).then_some(self.win.line);
    }

    /// `stop_arrow`: the first change after an arrow key starts a new insertion at the cursor. `Insstart_orig` stays
    /// where it was when the cursor moved right of it (no new insertion for the block operators then).
    fn stop_arrow(&mut self) {
        self.arrow_used = false;
        self.u_save_cursor();
        self.ins_need_undo = false;
        let here = (self.win.line, self.win.col);
        if let Some(old) = self.ins_start
            && self.ins_start_orig.is_none()
            && self.ins_edited
            && self.line_byte(here.0, here.1) > self.line_byte(old.0, old.1)
        {
            self.ins_start_orig = Some(old);
        }
        self.ins_start = Some(here);
        // A new insertion: what is typed from here on is what `.` and the `.` register hold (`ResetRedobuff`, `1i`).
        let key = self.insert_keys.pop();
        self.insert_keys.clear();
        self.insert_keys.extend(key);
        if !self.replaying {
            let n = self.rec.len().saturating_sub(1);
            self.rec_cmd = Some((None, "i".into(), n));
        }
    }

    /// `ins_ctrl_g`: the key after `Ctrl+G` in Insert mode. `u` starts a new undoable change (`u_sync`; `Insstart` moves here and
    /// `Insstart_orig` stays); `j` and `k` move a line down and up to the column where Insert began.
    fn ins_ctrl_g(&mut self, key: KeyEvent) {
        let ctrl = key.modifiers.contains(KeyModifiers::CONTROL);
        match key.code {
            KeyCode::Char('u') if !ctrl => {
                self.u_sync(true);
                self.ins_need_undo = true;
                if self.ins_start_orig.is_none() {
                    self.ins_start_orig = self.ins_start;
                }
                self.ins_start = Some((self.win.line, self.win.col));
                self.ins_edited = false;
            }
            KeyCode::Char('j') | KeyCode::Down | KeyCode::Char('k') | KeyCode::Up => {
                let down = matches!(key.code, KeyCode::Char('j') | KeyCode::Down);
                let before = (self.win.line, self.win.col);
                let to = if down { Some(before.0 + 1) } else { before.0.checked_sub(1) }.filter(|&l| l < self.line_count());
                if let Some(l) = to {
                    let start = self.ins_start.map_or(0, |(il, ic)| {
                        let s = self.buf.doc.text().line(il);
                        graphemes::cell_range(&s, ic, self.buf.opts.tabs(), self.wrap_w()).0
                    });
                    self.win.line = l;
                    self.win.col = self.coladvance(l, start);
                    self.win.want_set = true;
                    if !self.arrow_used {
                        self.start_arrow(before);
                    }
                }
            }
            _ => {}
        }
    }

    /// `start_arrow`: a cursor key that moved ends the insertion as Esc does (the text typed so far is the last inserted text,
    /// `'[` and `']` are its ends, the undo group is closed); the next change starts a new one (`stop_arrow`). `end` is where the
    /// cursor was before the key.
    fn start_arrow(&mut self, end: Pos) {
        self.arrow_used = true;
        self.insert_repeat.0 = 1;
        let keys = mem::take(&mut self.insert_keys);
        self.last_insert_keys = Some(keys.clone());
        self.last_insert = Some(keys.iter().filter_map(|k| match k.code { KeyCode::Char(c) => Some(c), KeyCode::Enter => Some('\n'), KeyCode::Tab => Some('\t'), _ => None }).collect());
        let end = self.mark_off(end.0, end.1);
        self.set_op_marks(end, end);
        if let Some((l, c)) = self.ins_start {
            self.put_mark('[', l, c);
        }
        self.end_command();
    }

    fn leave_insert(&mut self) {
        let (n, open) = mem::replace(&mut self.insert_repeat, (1, false));
        let keys = mem::take(&mut self.insert_keys);
        // After a cursor key the insertion was ended by `start_arrow`: `Esc` has nothing to add to what `.` holds.
        if !self.arrow_used {
            self.last_insert_keys = Some(keys.clone());
            // `get_last_insert`: what was typed (an Enter is a line break).
            self.last_insert = Some(keys.iter().filter_map(|k| match k.code { KeyCode::Char(c) => Some(c), KeyCode::Enter => Some('\n'), KeyCode::Tab => Some('\t'), _ => None }).collect());
        }
        for _ in 1..n {
            if open {
                self.open_line(true);
            }
            // Each repeat is typed ahead as one run: `'.` is where the last one began.
            self.ins_batch = false;
            for (i, &k) in keys.iter().enumerate() {
                self.peek_key = keys.get(i + 1).copied();
                self.insert_key(k);
            }
            self.peek_key = None;
        }
        self.insert_keys.clear();
        let block = self.finish_block_insert();
        self.clear_auto_indent();
        self.replacing = None;
        // `stop_insert`: `'[` is where the insert started, `']` where it ended.
        let end = self.offset();
        let start = self.ins_start.take();
        let was_arrow = self.arrow_used;
        self.ins_start_orig = None;
        self.arrow_used = false;
        self.ins_edited = false;
        self.interrupted = false;
        // `ins_esc`: after a cursor key `stop_insert` ran at the key, with the marks of the text typed before it.
        if !was_arrow {
            self.set_op_marks(end, end);
            if let Some((l, c)) = start {
                self.put_mark('[', l, c);
            }
        }
        // `block_insert` sets `']` after Insert mode has set its own.
        if let Some(off) = block.op_end {
            self.put_off(']', off);
        }
        // `^`: where Insert mode was left, for `gi`.
        self.put_off('^', self.offset());
        self.end_command();
        // `insert_check` runs before the Esc is read: with no repeat left `update_curswant()` takes the column the cursor is on
        // (past the last char), and `ins_esc` only flags it for a new update. An Ex command that follows (`:m`, `:t`, `:N`) uses
        // this raw value, as `beginline()` does not update it.
        self.win.want_set |= !was_arrow;
        self.update_curswant();
        self.mode = Mode::Normal;
        match block.cursor {
            Some(p) => {
                (self.win.line, self.win.col) = p;
                self.win.want_set = true;
            }
            None => self.set_col(self.win.col.saturating_sub(1)),
        }
        self.clamp_normal();
    }

    /// A search for typed `pat`, with `ignorecase`/`smartcase` applied (`pat` is kept as typed).
    fn new_search(&self, pat: &str) -> Result<Search, String> {
        // `(?m)`: `^` and `$` are the start and the end of a line, as in vim.
        let mut s = Search::new(&format!("(?m){}", self.buf.opts.case_pattern(pat)))?;
        s.pat = pat.into();
        Ok(s)
    }

    /// `ex_undo`, `ex_redo` and `ex_later` (`:earlier`, `:later`): `:undo`, `:undo N`, `:undo!`, `:redo`, `:earlier {N}[smhdf]`.
    fn time_travel(&mut self, name: &str, bang: bool, arg: &str) {
        match name {
            "redo" => self.u_redo(1),
            "undo" if arg.is_empty() => {
                if bang {
                    self.u_undo_and_forget(1);
                } else {
                    self.u_undo(1);
                }
            }
            "undo" => {
                let Ok(step) = arg.parse::<i64>() else {
                    return self.error(format!("E488: Trailing characters: {arg}"));
                };
                if !bang {
                    return self.undo_time(step, false, false, true);
                }
                // `:undo! N`: N must be an older change on this branch (and then the changes after it are forgotten).
                let (cur, bad) = (self.buf.undo.seq_cur as i64, "E5767: Cannot use :undo! to redo or move to a different undo branch");
                if step >= cur {
                    return self.error(bad);
                }
                let t = &self.buf.undo;
                let (mut count, mut uhp) = (0, t.curhead.or(t.newhead));
                while let Some(u) = uhp.filter(|&u| t.headers[u].seq as i64 > step) {
                    (uhp, count) = (t.headers[u].next, count + 1);
                }
                if step != 0 && uhp.is_none_or(|u| (t.headers[u].seq as i64) < step) {
                    return self.error(bad);
                }
                self.u_undo_and_forget(count);
            }
            _ => {
                let (num, unit) = arg.split_at(arg.find(|c: char| !c.is_ascii_digit()).unwrap_or(arg.len()));
                let (mut count, mut rest) = (1i64, unit);
                if !num.is_empty() {
                    count = num.parse().unwrap_or(i64::from(i32::MAX));
                }
                let (mut sec, mut file) = (false, false);
                if !num.is_empty() {
                    match unit.chars().next() {
                        Some('s') => (sec, rest) = (true, &unit[1..]),
                        Some('m') => (sec, rest, count) = (true, &unit[1..], count * 60),
                        Some('h') => (sec, rest, count) = (true, &unit[1..], count * 3600),
                        Some('d') => (sec, rest, count) = (true, &unit[1..], count * 86400),
                        Some('f') => (file, rest) = (true, &unit[1..]),
                        _ => {}
                    }
                } else {
                    rest = unit;
                }
                if !rest.is_empty() {
                    self.error(format!("E475: Invalid argument: {arg}"));
                } else {
                    self.undo_time(if name == "earlier" { -count } else { count }, sec, file, false);
                }
            }
        }
    }

    /// `Ctrl+G`: name, modified flag, line count and position in percent, cut at the start when it does not fit (`msg_trunc`).
    fn file_info(&self) -> String {
        self.msg_may_trunc(self.file_info_whole())
    }

    /// `fileinfo(false, false, true)`: the whole text of the message of `Ctrl+G`, `:file` and a file read.
    fn file_info_whole(&self) -> String {
        let lines = self.line_count();
        let name = short_name(&self.buf.name(), &std::env::var("HOME").unwrap_or_default());
        let b = &self.buf;
        let dirty = self.is_dirty();
        let o = &b.opts;
        let flags = format!(
            "{}{}{}{}",
            if b.notedited && !o.bt_dontwrite() { "[Not edited]" } else { "" },
            if b.new_file && !o.bt_dontwrite() { "[New]" } else { "" },
            if b.read_error { "[Read errors]" } else { "" },
            if o.readonly { if o.shortmess('r') { "[RO]" } else { "[readonly]" } } else { "" },
        );
        let state = if dirty { if o.shortmess('m') { " [+]" } else { " [Modified]" } } else { " " };
        let tail = if b.ml_empty() { "--No lines in buffer--".to_string() } else { format!("{lines} line{} --{}%--", if lines == 1 { "" } else { "s" }, (self.win.line + 1) * 100 / lines) };
        format!("\"{name}\"{state}{flags}{}{tail}", if dirty || !flags.is_empty() || o.readonly { " " } else { "" })
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

    /// `:[range]s/pat/rep/[flags]`: one undo step through `Document::replace_matching`.
    /// `do_sub` up to the search: the pattern and replacement (typed, or the last substitute's), the flags (they stay from
    /// one `:s` to the next), the count and the end of the command.
    fn substitute(&mut self, s: substitute::Sub) {
        use substitute::LastSub;
        let tilde = s.tilde;
        // The pattern: typed, or `RE_SUBST` (`:s`, `:&`) or `RE_LAST` (`:~`, `:s//`, the `r` flag).
        let mut which_last = tilde;
        let mut which_search = false;
        let (typed_pat, rep) = match (&s.pat, &s.rep) {
            (Some(p), Some(r)) => {
                match s.backslash {
                    Some('&') => which_last = false,
                    Some(_) => which_search = true,
                    None => which_last = true,
                }
                // `sub_set_replacement`: the replacement typed is the one `:&` uses.
                (Some(p.clone()), r.clone())
            }
            _ => {
                let Some(last) = &self.last_sub else { return self.error("E33: No previous substitute regular expression") };
                (None, last.rep.clone())
            }
        };
        if typed_pat.is_some() {
            self.last_sub = Some(LastSub { pat: self.last_sub.as_ref().map_or_else(String::new, |l| l.pat.clone()), rep: rep.clone() });
        }
        let mut flags = self.sub_flags;
        let (rest, r_flag) = flags.parse(&s.flags);
        self.sub_flags = flags;
        which_last |= r_flag;
        // A count after the flags: that many lines from the last line of the range.
        let rest = rest.trim_start_matches([' ', '\t']);
        let mut lines = None;
        let mut after = rest;
        if rest.starts_with(|c: char| c.is_ascii_digit()) {
            let len = rest.find(|c: char| !c.is_ascii_digit()).unwrap_or(rest.len());
            match rest[..len].parse::<i64>() {
                Ok(n) if n > 0 && n < i64::from(i32::MAX) => lines = Some(n as usize),
                Ok(n) if n >= i64::from(i32::MAX) => return self.error(format!("E1247: Value too large: {}", &rest[..len])),
                _ if flags.error => return self.error("E939: Positive count required"),
                _ => {}
            }
            after = &rest[len..];
        }
        let after = after.trim_start_matches([' ', '\t']);
        if !after.is_empty() && !after.starts_with('"') {
            return self.error(format!("E488: Trailing characters: {after}"));
        }
        let (first, last) = match self.range0(s.range.as_ref(), false) {
            Ok(r) => self.counted(r, lines),
            Err(e) => return self.error(e),
        };
        if flags.ask && !flags.count && !self.line_marks.is_empty() {
            // shortcut: no `c` flag under `:g`/`:normal` (the prompt would need the loop to wait), when someone needs it
            return self.error("The c flag cannot be used here");
        }
        // `search_regcomp`: an empty pattern is the one `which_pat` names.
        let pat = match typed_pat.filter(|p| !p.is_empty()) {
            Some(p) => p,
            None => {
                let from = if which_search || which_last { self.last_search.as_ref().map(|l| l.pat.clone()) } else { self.last_sub.as_ref().map(|l| l.pat.clone()).filter(|p| !p.is_empty()) };
                match from {
                    Some(p) => p,
                    None => {
                        self.error(if which_search || which_last { "E35: No previous regular expression" } else { "E33: No previous substitute regular expression" });
                        if flags.error {
                            self.error("E476: Invalid command");
                        }
                        return;
                    }
                }
            }
        };
        // `regtilde`: `~` is the replacement before this one (`\~` is a tilde), and this one is what `~` stands for next.
        let rep: String = {
            let prev = std::mem::take(&mut self.sub_prev);
            let mut out = String::new();
            for c in rep.chars() {
                match c {
                    '~' => out.push_str(&prev),
                    '\u{E000}' => out.push('~'),
                    c => out.push(c),
                }
            }
            self.sub_prev = out.clone();
            out
        };
        self.last_sub = Some(LastSub { pat: pat.clone(), rep: rep.clone() });
        // `sub_joining_lines`: `:s/\n//` with no flag (or `g`, `l`, `p`, `#`) joins the lines of the range and the next.
        if pat == "\\n" && rep.is_empty() && !tilde && (s.flags.is_empty() || (s.flags.len() == 1 && "glp#".contains(&s.flags[..]))) {
            self.win.line = first;
            let mut joined = last - first + 1;
            if last + 1 < self.line_count() {
                joined += 1;
            }
            if joined > 1 {
                self.join(joined - 1, false);
            // `do_join` ends with `check_cursor_col()`: a last piece that is empty leaves the column on the end of the line.
            self.clamp_normal();
                (self.scripts.sub_nsubs, self.scripts.sub_nlines) = (joined - 1, 1);
                self.do_sub_msg(false);
                let flag = s.flags.chars().next();
                if let Some(f) = flag.filter(|f| "lp#".contains(*f)) {
                    let l = self.win.line;
                    let text = self.print_line(l, f == '#', f == 'l');
                    self.info(text);
                }
            }
            if let Some(l) = self.last_search.as_mut() {
                l.pat = pat.clone();
            } else if let Ok(mut se) = Search::new("(?m)\\n") {
                se.pat = pat.clone();
                self.last_search = Some(se);
            }
            return;
        }
        let s = SubRun { all: flags.all, ignore_case: flags.ic, confirm: flags.ask, count: flags.count, rep, error: flags.error, print: flags.print, number: flags.number, list: flags.list };
        let pattern = match s.ignore_case {
            Some(true) => format!("(?i){pat}"),
            Some(false) => format!("(?-i){pat}"),
            None => self.buf.opts.case_pattern(&pat),
        };
        let mut search = match Search::new(&format!("(?m){pattern}")) {
            Ok(r) => r,
            Err(e) => return self.error(e),
        };
        // What `@/` and the next `n` show is the pattern as typed.
        search.pat = pat.clone();
        let text = self.buf.doc.text().clone();
        let (start, end) = (text.line_to_offset(first), self.line_end_offset(last));
        // The last line has a line break the text does not hold: a `\n` in the pattern can match it.
        let virt = pat.contains("\\n");
        let hay = if virt { text.insert(text.len(), "\n") } else { text.clone() };
        if s.confirm && !s.count {
            self.last_search = Some(search.clone());
            self.hl = true;
            self.confirm = Some(Confirm { search, rep: s.rep, all: s.all, next: start, end, n: 0, lines: 0, last_line: None, cur: 0..0, did_save: false, virt });
            self.mode = Mode::Confirm;
            if !self.confirm_prompt() {
                self.error(format!("E486: Pattern not found: {pat}"));
            }
            return;
        }
        // A match belongs to the line it starts on; without `g` only the first per line counts.
        let mut lines: Vec<usize> = Vec::new();
        let mut reach = 0;
        let mut pick = |m: Range<usize>| {
            if m.start < start || m.start > end {
                return false;
            }
            let l = text.offset_to_line(m.start);
            if !s.all && lines.last() == Some(&l) {
                return false;
            }
            // A match that starts in a line an earlier match took (`do_again`) goes on the same output line.
            if lines.last() != Some(&l) && !(lines.last().is_some() && reach >= l) {
                lines.push(l);
            }
            reach = text.offset_to_line(m.end.min(text.len()));
            true
        };
        if s.count {
            let n = hay.find_iter_in(&search.re, start..end).filter(|m| pick(m.clone())).count();
            self.last_search = Some(search);
            self.hl = true;
            if n == 0 {
                if s.error && !self.scripts.global_busy {
                    self.error(format!("E486: Pattern not found: {pat}"));
                }
            } else {
                // `sub_nsubs > start_nsubs`: the marks are the range, also when nothing is changed.
                let (so, eo) = (self.mark_off(first, 0), self.mark_off(last, 0));
                self.set_op_marks(so, eo);
                self.sub_report(n, lines.len(), true);
            }
            return;
        }
        // The saves `do_sub` makes, line by line, before the text changes.
        let plan = if virt { self.buf.doc.plan_replace_eol(&search.re, &s.rep, pick) } else { self.buf.doc.plan_replace(&search.re, &s.rep, pick) };
        // `u_save` of the first match refuses (`E21`) and `do_sub` stops there, with no `E486`.
        if !plan.edits().is_empty() && !self.buf.opts.modifiable {
            self.error("E21: Cannot make changes, 'modifiable' is off");
            return;
        }
        if !plan.edits().is_empty() {
            // `do_sub`: `setpcmark()` at the first match, with the cursor where the command found it.
            self.set_jump();
            let (mut delta, mut items) = (0isize, Vec::with_capacity(plan.edits().len()));
            // After a match that takes lines `do_sub` puts the text so far into the buffer line, and the next match works on that
            // line: its end line, where that line starts in the new text, and its text.
            let mut half: Option<(usize, usize, String)> = None;
            for e in plan.edits() {
                let old = (e.start as isize - delta) as usize;
                let line = text.offset_to_line(old);
                let takes = newlines_in(&text, old..old + e.old_len);
                let crs = newlines_in(plan.text(), e.start..e.start + e.new_len);
                if half.as_ref().is_some_and(|h| h.0 != line) {
                    half = None;
                }
                let before_line = half.as_ref().map(|h| h.2.clone());
                if takes > 0 {
                    let gstart = half.as_ref().map_or_else(|| (text.line_to_offset(line) as isize + delta) as usize, |h| h.1);
                    let (end_line, mid) = (text.offset_to_line(old + e.old_len), plan.text().slice(gstart..e.start + e.new_len).into_owned());
                    // A line break the replacement made starts the line that is left.
                    let cut = mid.rfind('\n').map_or(0, |p| p + 1);
                    let tail = text.slice(old + e.old_len..text.line_end(end_line));
                    half = Some((end_line, gstart + cut, format!("{}{tail}", &mid[cut..])));
                }
                items.push(undo::SubItem { line, takes, crs, half: before_line });
                delta += e.new_len as isize - e.old_len as isize;
            }
            self.sub_undo(&items, &text, &mut false);
        }
        let n = if plan.edits().is_empty() { 0 } else { self.edit(|d| d.apply_replacement(plan)) };
        self.last_search = Some(search);
        self.hl = true;
        if n == 0 {
            // Inside `:global` a line without a match is no error, and the `e` flag silences it too.
            if s.error && !self.scripts.global_busy {
                self.error(format!("E486: Pattern not found: {pat}"));
            }
            return;
        }
        // `do_sub`: `'[` and `']` are the first and the last line of the range (it follows the lines added or removed),
        // `'.` the first line that was substituted.
        let delta = self.line_count() as i64 - text.line_count() as i64;
        self.put_mark('[', first, 0);
        self.put_mark(']', (last as i64 + delta).max(0) as usize, 0);
        let dot_line = lines.first().copied().unwrap_or(first);
        self.put_mark('.', dot_line, 0);
        self.dot_set = true;
        // The line where the last replacement ends (the edits are in order, each in the text
        // left by the previous ones, so the last one is already in final coordinates).
        let last_edit = *self.buf.doc.last_edits().last().expect("n > 0");
        let l = self.buf.doc.text().offset_to_line(last_edit.start + last_edit.new_len);
        self.win.line = l;
        self.set_col(self.first_non_blank(l));
        self.clamp_normal();
        self.scripts.global_need_beginline |= self.scripts.global_busy;
        self.sub_report(n, lines.len(), false);
        if s.print {
            let l = self.win.line;
            let text = self.print_line(l, s.number, s.list);
            self.info(text);
        }
        // `.` does not repeat `:` commands (vim), so this undo group is not the last change.
        self.rec_cmd = None;
        self.end_command();
    }

    /// `gn`/`gN`: the match under the cursor, else the next/previous one, as an operator target
    /// or a Visual selection.
    fn select_match(&mut self, op: Option<char>, forward: bool) {
        let Some(s) = self.last_search.clone() else { return self.error("E35: No previous regular expression") };
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
        let Some((m, _)) = found.filter(|(m, _)| !m.is_empty()) else { return self.error(format!("E486: Pattern not found: {}", s.pat)) };
        let (a, b) = (self.pos_of(m.start), self.pos_of(m.end));
        match op {
            Some(op) => {
                if op != 'y' {
                    (self.win.line, self.win.col) = a;
                }
                self.operate(op, a, b, Kind::Exclusive)
            }
            // In Visual, the selection is extended to the match's end (`gN`: its start), like vim.
            None if matches!(self.mode, Mode::Visual(_)) => {
                (self.win.line, self.win.col) = if forward { self.pos_of(text.floor_char_boundary(m.end - 1)) } else { a };
                self.win.want_set = true;
            }
            None => {
                self.anchor = a;
                self.mode = Mode::Visual(VKind::Char);
                (self.win.line, self.win.col) = self.pos_of(text.floor_char_boundary(m.end - 1));
                self.win.want_set = true;
            }
        }
    }

    /// Moves the cursor to the next match of the confirm session and asks; false when none is left.
    fn confirm_prompt(&mut self) -> bool {
        let Some(c) = &self.confirm else { return false };
        let Some((m, ..)) = c.find(self.buf.doc.text()) else { return false };
        let (l, col) = self.pos_of(m.start);
        let Some(c) = &mut self.confirm else { return false };
        let ask = format!("replace with {} (y/n/a/q/l)?", c.rep);
        c.cur = m;
        self.info(ask);
        (self.win.line, self.win.col) = (l, col);
        self.win.want_set = true;
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
        // Without a report the prompt is cleared (`msg("")`).
        if !self.sub_report(c.n, c.lines, false) {
            self.msgs.clear();
        }
        self.rec_cmd = None;
    }

    /// `y` replaces, `n` skips, `a` replaces this and all the rest, `l` replaces this and stops,
    /// `q`/Esc stop.
    fn confirm_key(&mut self, key: KeyEvent) {
        if self.ask.is_some() {
            return self.ask_key(key);
        }
        let k = if key.code == KeyCode::Esc { 'q' } else { normal_char(key).unwrap_or(' ') };
        if !matches!(k, 'y' | 'n' | 'a' | 'l' | 'q') {
            self.confirm_prompt();
            return;
        }
        loop {
            let Some(c) = &mut self.confirm else { return };
            let text = self.buf.doc.text().clone();
            let Some((m, rep, eats)) = c.find(&text) else {
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
                let item = undo::SubItem { line: l, takes: newlines_in(&text, m.clone()), crs: rep.matches('\n').count(), half: None };
                let mut did_save = c.did_save;
                self.sub_undo(&[item], &text, &mut did_save);
                if let Some(c) = self.confirm.as_mut() {
                    c.did_save = did_save;
                }
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
            if eats {
                c.next = usize::MAX;
            }
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

    /// `ask_yesno`: shows `question` with `(y/n)?` and waits. `yes` is the command line to run when the answer is `y`.
    pub(super) fn ask_yesno(&mut self, question: &str, yes: String) {
        self.info(format!("{question} (y/n)?"));
        self.ask = Some(Ask { yes });
        self.mode = Mode::Confirm;
    }

    /// `y` answers yes; `n`, Esc and `Ctrl+C` answer no; any other key leaves the question open.
    fn ask_key(&mut self, key: KeyEvent) {
        let answer = match key.code {
            KeyCode::Esc => 'n',
            KeyCode::Char('c') if key.modifiers.contains(KeyModifiers::CONTROL) => 'n',
            _ => normal_char(key).unwrap_or(' '),
        };
        if !matches!(answer, 'y' | 'n') {
            return;
        }
        let Some(ask) = self.ask.take() else { return };
        self.mode = Mode::Normal;
        self.msgs.clear();
        if answer == 'y' {
            // The command goes on as the typed line would have: the rest of the line is part of it.
            self.scripts.typed = true;
            if !self.command(&ask.yes) {
                self.quit = true;
            }
            self.scripts.typed = false;
        }
        if self.mode != Mode::Confirm {
            self.rec_cmd = None;
            self.end_command();
        }
    }

    /// `:e`/`:e!`: replaces the buffer with the file on disk; history starts over.
    fn reload(&mut self) {
        // `ml_open` and `unchanged()` each count once: a reload is two ticks, whatever the edits below made.
        let tick = self.buf.changedtick;
        let was_unloaded = self.buf.unloaded;
        self.buf.unloaded = false;
        let Some(path) = self.buf.path.clone() else { return self.error("E32: No file name") };
        // `READ_NOFILE`: a buffer that is not a file does not read its name.
        match if self.buf.opts.bt_nofileread() { Ok((Document::new(""), true, false)) } else { read_doc(&path) } {
            Ok((doc, endofline, had_bytes)) => {
                self.buf.opts.endofline = endofline;
                let lc = self.line_count();
                // `'undoreload'`: a buffer of up to that many lines (any, when negative) is saved first, so the reload can be undone.
                let ur = self.buf.opts.undoreload;
                if ur < 0 || lc as i64 <= ur {
                    self.u_sync(false);
                    self.u_savecommon_lc(0, lc + 1, 0, lc);
                    let (new, len) = (doc.text().slice(0..doc.text().len()).into_owned(), self.buf.doc.text().len());
                    let old = self.buf.doc.text().clone();
                    self.edit(|d| {
                        d.splice(0..len, &new);
                        d.set_eol(doc.eol());
                    });
                    self.u_find_first_changed(&old);
                    self.buf.undo.empty = doc.text().is_empty() && !had_bytes;
                } else {
                    self.buf.doc = doc;
                    self.buf.undo = undo::UndoTree::new(self.buf.doc.text().is_empty());
                    // `u_clearall`.
                    self.u_clearline();
                }
                // `u_unchanged()` and `unchanged()` after the file is read (`ex_cmds.c`): undoing the reload modifies the buffer.
                self.buf.undo.unchanged();
                self.buf.modified = false;
                self.buf.save_file_ff();
                (self.buf.loaded, self.buf.empty_at_open) = (self.buf.doc.text().clone(), !had_bytes);
                self.changed = false;
                self.buf.changedtick = tick + if was_unloaded { 0 } else { 2 };
                self.clamp();
                self.do_modelines();
                // `:e`/`:e!` give the file info unless `'shortmess'` has `F`, as opening does.
                if !self.buf.opts.shortmess('F') {
                    self.info(self.file_info());
                }
            }
            Err(e) => self.error(format!("Reload failed: {e}")),
        }
    }

    /// Inserts `s` at the cursor and moves after it; a typed combining mark joins the cluster before it.
    #[track_caller]
    fn insert(&mut self, s: &str) {
        // `stop_arrow`: the first change of an insertion saves the line (also a register or expression put by `Ctrl+R`).
        if mem::take(&mut self.ins_need_undo) {
            self.u_save_cursor();
        }
        let off = self.offset();
        self.edit_insert(off, s);
        (self.win.line, self.win.col) = self.pos_of(off + s.len());
        self.win.want_set = true;
    }

    fn set_col(&mut self, col: usize) {
        self.win.col = col;
        self.win.want_set = true;
    }

    fn move_left(&mut self) {
        if self.win.col > 0 {
            self.set_col(self.win.col - 1);
        } else if self.win.line > 0 {
            self.win.line -= 1;
            self.set_col(self.line_chars(self.win.line));
        }
    }

    fn move_vertical(&mut self, delta: isize) {
        self.update_curswant();
        let last = self.line_count() - 1;
        self.win.line = self.win.line.saturating_add_signed(delta).min(last);
        self.win.col = self.col_wanted(self.win.line);
    }

    /// Keeps the cursor inside the text after undo/redo or reload.
    fn clamp(&mut self) {
        self.win.line = self.win.line.min(self.line_count() - 1);
        self.set_col(self.win.col.min(self.line_chars(self.win.line)));
        self.clamp_normal();
    }

    /// Normal mode keeps the cursor on a char, not past the line end (vim).
    fn clamp_normal(&mut self) {
        // `adjust_cursor`: only Visual mode (with 'selection' inclusive) keeps the cursor on the end of the line.
        let past = usize::from(matches!(self.mode, Mode::Visual(_)));
        self.win.col = self.win.col.min((self.line_chars(self.win.line) + past).saturating_sub(1));
    }

    /// Writes the current buffer on a thread; with `wait`, waits and returns false on failure.
    fn save(&mut self, wait: bool) -> bool {
        self.save_buffer(self.buf.id, wait)
    }

    /// `save` of a buffer that is written under a name that is not its own yet.
    fn save_other(&mut self, wait: bool) -> bool {
        self.save_buffer_in(self.buf.id, wait, false)
    }
}

#[cfg(test)]
pub(crate) mod tests;

/// What one `:s` runs with: its flags and replacement settled.
struct SubRun {
    all: bool,
    ignore_case: Option<bool>,
    confirm: bool,
    count: bool,
    rep: String,
    error: bool,
    print: bool,
    number: bool,
    list: bool,
}
