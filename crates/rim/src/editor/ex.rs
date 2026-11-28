//! Ex command lines: the range (`%`, `.`, `$`, `N`, `'x`, `/pat/`, `?pat?`, `\/`, `\?`, `\&`,
//! `+N`/`-N`, `,`/`;`), the command name and its argument, and the commands that work on lines.

use std::{
    fs,
    io::{self, BufWriter, Write},
    mem,
    path::{Path, PathBuf},
};

use crossterm::event::{KeyCode, KeyEvent};
use piece_tree::{Edit, LineEnding, Text};

use super::{graphemes::Tabs, options::{Scope, SetCtx, WinOpts, tabstop_set},  registers::{Reg, RegKind}, script::{AddrType, EXFLAG_LIST, EXFLAG_NR}, Editor, Kind, Mode, windows::Resize, graphemes, parse::{self}, script, search::{self, Search}, substitute};

/// Start of a line address.
#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) enum Base {
    /// `.`
    Current,
    /// `$`
    Last,
    /// 1-based line number; 0 is "before the first line" (`:0r`, `:m0`).
    Line(usize),
    /// `'x`
    Mark(char),
    /// `/pat/`, or `?pat?` when `back`; an empty pattern is the last search.
    Search { pat: String, back: bool },
    /// `\/` and `\?`: the last search pattern; `\&` (`sub`): the last substitute pattern.
    Again { back: bool, sub: bool },
}

/// A line address: a base plus a `+N`/`-N` offset.
#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) struct Addr {
    pub base: Base,
    pub offset: isize,
}

/// One or two addresses; with `semi` (`;`) the second one counts from the first.
#[derive(Clone, Debug, PartialEq, Eq)]
pub(in crate::editor) struct LineRange {
    pub first: Addr,
    pub last: Option<Addr>,
    pub semi: bool,
}

impl LineRange {
    /// `%`
    pub fn whole() -> LineRange {
        LineRange { first: Addr { base: Base::Line(1), offset: 0 }, last: Some(Addr { base: Base::Last, offset: 0 }), semi: false }
    }
}

/// A parsed command line: range, name (letters, or one of `& < > =`) and the rest.
#[derive(Debug, PartialEq, Eq)]
pub(super) struct ExCmd<'a> {
    pub range: Option<LineRange>,
    pub name: &'a str,
    pub arg: &'a str,
}

fn number(s: &mut &str) -> Option<usize> {
    let end = s.find(|c: char| !c.is_ascii_digit()).unwrap_or(s.len());
    let (digits, rest) = s.split_at(end);
    *s = rest;
    digits.parse().ok()
}

/// Keeps `\x` pairs other than the delimiter: they belong to the regex (`\d`, `\b`).
pub(super) fn keep_escape(c: char, out: &mut String) {
    out.push('\\');
    out.push(c);
}

/// Text up to the next unescaped `d`; `\d` stands for `d`, `unescape` maps other `\x` pairs.
/// Returns the text and whether the delimiter was found.
pub(super) fn field(s: &mut &str, d: char, unescape: impl Fn(char, &mut String)) -> (String, bool) {
    let mut out = String::new();
    let mut it = s.char_indices();
    while let Some((i, c)) = it.next() {
        if c == d {
            *s = &s[i + c.len_utf8()..];
            return (out, true);
        }
        if c == '\\' {
            match it.next() {
                Some((_, n)) if n == d => out.push(d),
                Some((_, n)) => unescape(n, &mut out),
                None => out.push('\\'),
            }
        } else {
            out.push(c);
        }
    }
    *s = "";
    (out, false)
}

fn addr(s: &mut &str) -> Result<Option<Addr>, String> {
    let base = if let Some(rest) = s.strip_prefix('.') {
        *s = rest;
        Some(Base::Current)
    } else if let Some(rest) = s.strip_prefix('$') {
        *s = rest;
        Some(Base::Last)
    } else if let Some(rest) = s.strip_prefix('\'') {
        let mut it = rest.chars();
        let m = it.next().ok_or("Invalid range")?;
        *s = it.as_str();
        Some(Base::Mark(m))
    } else if let Some(d) = s.chars().next().filter(|c| matches!(c, '/' | '?')) {
        *s = &s[1..];
        let (pat, _) = field(s, d, keep_escape);
        Some(Base::Search { pat, back: d == '?' })
    } else if let Some(c) = s.strip_prefix('\\').and_then(|r| r.chars().next()).filter(|c| matches!(c, '/' | '?' | '&')) {
        *s = &s[2..];
        Some(Base::Again { back: c == '?', sub: c == '&' })
    } else if s.starts_with(|c: char| c.is_ascii_digit()) {
        Some(Base::Line(number(s).ok_or("Invalid range")?))
    } else {
        None
    };
    let mut offset = 0isize;
    let mut any = false;
    while let Some(sign) = s.chars().next().filter(|c| matches!(c, '+' | '-')) {
        *s = &s[1..];
        let n = number(s).unwrap_or(1).min(isize::MAX as usize) as isize;
        offset = offset.saturating_add(if sign == '+' { n } else { -n });
        any = true;
    }
    Ok(match base {
        Some(base) => Some(Addr { base, offset }),
        // `+2` alone counts from the cursor line.
        None if any => Some(Addr { base: Base::Current, offset }),
        None => None,
    })
}

pub(super) fn parse(cmd: &str) -> Result<ExCmd<'_>, String> {
    let mut s = cmd.trim_start_matches([' ', ':']);
    let range = if let Some(rest) = s.strip_prefix('%') {
        s = rest;
        Some(LineRange::whole())
    } else {
        match addr(&mut s)? {
            None => None,
            Some(first) => match s.chars().next().filter(|c| matches!(c, ',' | ';')) {
                Some(sep) => {
                    s = &s[1..];
                    let last = addr(&mut s)?.ok_or("Invalid range")?;
                    Some(LineRange { first, last: Some(last), semi: sep == ';' })
                }
                None => Some(LineRange { first, last: None, semi: false }),
            },
        }
    };
    let s = s.trim_start();
    let n = if script::one_letter_k(s) || script::one_letter_s(s) {
        1
    } else if s.starts_with(|c: char| c.is_ascii_alphabetic()) {
        s.find(|c: char| !c.is_ascii_alphabetic()).unwrap_or(s.len())
    } else {
        usize::from(s.starts_with(['&', '<', '>', '=', '#', '~']))
    };
    // `:dl` and `:delp` are `:delete`; docmd has read the flag already.
    let n = n - usize::from(script::delete_flag(&s[..n]).is_some());
    Ok(ExCmd { range, name: &s[..n], arg: &s[n..] })
}

/// `name` is `long` or an abbreviation of it at least as long as `short` (vim's `:d[elete]`).
pub(super) const DIRTY: &str = "E37: No write since last change (add ! to override)";

pub(super) fn abbr(name: &str, short: &str, long: &str) -> bool {
    name.len() >= short.len() && long.starts_with(name)
}

/// Commands that leave the command-line window (E11 there).
const CMDWIN_REFUSES: &[(&str, &str)] = &[
    ("e", "edit"),
    ("ene", "enew"),
    ("hid", "hide"),
    ("new", "new"),
    ("vne", "vnew"),
    ("sp", "split"),
    ("vs", "vsplit"),
    ("b", "buffer"),
    ("bn", "bnext"),
    ("bp", "bprevious"),
    ("bN", "bNext"),
    ("bd", "bdelete"),
    ("on", "only"),
    ("sav", "saveas"),
];

/// Ex command names, as `Tab` completes them (`Editor::command` takes their vim abbreviations).
pub(super) const NAMES: &[&str] = &[
    "bNext", "bdelete", "bnext", "bprevious", "break", "buffer", "buffers", "call", "close", "compact", "const", "continue", "copy", "defer", "delete", "digraphs", "earlier", "echo", "echoerr",
    "echomsg", "echon", "edit", "else", "elseif", "endfor", "endif", "endwhile", "enew", "execute", "files", "finish", "for", "global", "goto", "highlight", "if", "join", "later",
    "let", "lockvar", "ls", "messages", "move", "new", "nohlsearch", "normal", "only", "print", "qall", "quit", "quitall", "read", "redo", "retab", "saveas", "set", "sort", "source", "split",
    "stats", "substitute", "syntax", "undo", "undojoin", "undolist", "unlet", "unlockvar", "vglobal", "vnew", "vsplit", "while", "wq", "wqall", "write", "xall", "xit", "yank",
];

/// Commands whose argument is a file name, as (shortest abbreviation, name).
pub(super) const FILE_COMMANDS: &[(&str, &str)] =
    &[("e", "edit"), ("sp", "split"), ("vs", "vsplit"), ("r", "read"), ("w", "write"), ("sav", "saveas"), ("wq", "wq"), ("x", "xit")];

impl Editor {
    /// `ex_splitview`: when `:split file` worked, the window it came from has the new buffer as its alternate file.
    fn old_window_alt(&mut self, old: usize, arg: &str) {
        let cur = self.buf.id;
        if !arg.is_empty() && old != self.win.id && self.window_ids().contains(&old) {
            self.with_window(old, |e| {
                if e.buf.id != cur {
                    e.win.alt = Some(cur);
                }
            });
        }
    }

    /// Runs `f` on the global options, which `filetype` and `buftype` never reach (`noglob` in Neovim).
    pub(super) fn on_global(&mut self, f: impl FnOnce(&mut super::options::Options)) {
        let (ft, bt, ro, bh) = (self.global_opts.filetype.clone(), self.global_opts.buftype.clone(), self.global_opts.readonly, self.global_opts.bufhidden.clone());
        f(&mut self.global_opts);
        self.global_opts.touched.clear();
        (self.global_opts.filetype, self.global_opts.buftype, self.global_opts.readonly, self.global_opts.bufhidden) = (ft, bt, ro, bh);
    }

    /// The options of global scope are one value for every buffer, and for the buffers to come (`copy_global`).
    pub(super) fn share_global(&mut self) {
        self.buf.opts.copy_global(&mut self.global_opts);
        for b in &mut self.buffers {
            self.buf.opts.copy_global(&mut b.opts);
        }
    }

    /// Before an option is read or set: the scratch fields of `buf.opts` that stand for the document and window.
    pub(super) fn opts_in(&mut self) {
        self.buf.opts.touched.clear();
        self.ff_in();
        self.win_in();
    }

    /// The window-local options of the window are in `buf.opts` (`scrolloff`: the local value, else the global one).
    pub(super) fn win_in(&mut self) {
        self.win.opts.store(&mut self.buf.opts, self.global_opts.scrolloff);
    }

    /// After an option was set: the window takes the scratch fields back. `:set` (not `local`, a modeline) writes the
    /// window's global values too, and a `scrolloff` it names clears the local one (the global value is set by
    /// `on_global`); a modeline gives the window its own `scrolloff` and leaves the global one.
    pub(super) fn win_out(&mut self, local: bool, scrolloff: bool) {
        let mut new = WinOpts::load(&self.buf.opts, self.win.opts.scrolloff);
        if scrolloff {
            new.scrolloff = local.then_some(self.buf.opts.scrolloff);
        }
        if !local {
            // The global value of a window option is written for the options the command named.
            let touched = std::mem::take(&mut self.buf.opts.touched);
            self.win.all_opts.take_named(&new, &touched);
        }
        self.buf.opts.touched.clear();
        self.win.opts = new;
    }

    /// Before an option is read or set: `opts.fileformat` takes the line ending of the document.
    pub(super) fn ff_in(&mut self) {
        self.buf.opts.fileformat = ff_name(self.buf.doc.eol()).into();
        let (modified, differs, dirty) = (self.buf.modified, self.buf.ff_differs(), self.buf.is_dirty());
        let o = &mut self.buf.opts;
        (o.modified, o.ff_changed, o.modified_set, o.dirty) = (modified, differs, false, dirty);
    }

    /// After an option was set: the document takes `opts.fileformat` (`did_set_fileformat`).
    pub(super) fn ff_out(&mut self) {
        let eol = match self.buf.opts.fileformat.as_str() {
            "dos" => LineEnding::CrLf,
            "mac" => LineEnding::Cr,
            _ => LineEnding::Lf,
        };
        if eol != self.buf.doc.eol() {
            self.buf.doc.set_eol(eol);
        }
        // `:set modified` and `:set nomodified` (`did_set_modified`): `nomodified` is `save_file_ff()` too.
        if mem::take(&mut self.buf.opts.modified_set) {
            self.buf.modified = self.buf.opts.modified;
            self.buf.modified_was_set = self.buf.opts.modified;
            if !self.buf.modified {
                self.buf.save_file_ff();
            }
        }
    }
}

/// `bt_dontwrite_msg`.
pub(super) const BT_DONTWRITE: &str = "E382: Cannot write, 'buftype' option is set";

fn ff_name(eol: LineEnding) -> &'static str {
    match eol {
        LineEnding::Lf => "unix",
        LineEnding::CrLf => "dos",
        LineEnding::Cr => "mac",
    }
}

/// The number a `:sort n|x|b|o` line sorts on: the first digit of the kind (a `-` before it is part of it), `None` when
/// there is none (such a line sorts first). Saturates like `vim_str2nr`.
fn sort_number(key: &str, what: u8) -> Option<i64> {
    let b = key.as_bytes();
    let found = match what {
        b'x' => b.iter().position(u8::is_ascii_hexdigit),
        b'b' => b.iter().position(|&c| c == b'0' || c == b'1'),
        _ => b.iter().position(u8::is_ascii_digit),
    }?;
    let neg = found > 0 && b[found - 1] == b'-';
    let mut rest = &key[found..];
    let (radix, pre) = match what {
        b'x' => (16, ["0x", "0X"]),
        b'b' => (2, ["0b", "0B"]),
        b'o' => (8, ["0o", "0O"]),
        _ => (10, ["", ""]),
    };
    // A prefix of the radix is skipped when digits follow it.
    for p in pre {
        if !p.is_empty() && rest.starts_with(p) && rest[2..].chars().next().is_some_and(|c| c.is_digit(radix)) {
            rest = &rest[2..];
        }
    }
    let mut v: i64 = 0;
    for c in rest.chars() {
        let Some(d) = c.to_digit(radix) else { break };
        v = v.saturating_mul(i64::from(radix)).saturating_add(i64::from(d));
    }
    Some(if neg { -v } else { v })
}

/// The float `:sort f` sorts on: `strtod` of the key after blanks and a `+`; an empty key sorts first.
fn sort_float(key: &str) -> f64 {
    let s = key.trim_start_matches([' ', '\t']);
    let s = match s.strip_prefix('+') {
        Some(r) => r.trim_start_matches([' ', '\t']),
        None => s,
    };
    if s.is_empty() {
        return -f64::MAX;
    }
    // The longest prefix that is a number.
    let b = s.as_bytes();
    let mut i = 0;
    if b[0] == b'-' || b[0] == b'+' {
        i += 1;
    }
    let lower = s[i..].to_ascii_lowercase();
    if lower.starts_with("inf") {
        return if b[0] == b'-' { f64::NEG_INFINITY } else { f64::INFINITY };
    }
    if lower.starts_with("nan") {
        return f64::NAN;
    }
    // A hexadecimal float: `0x1F`, `0x1.8p3`.
    if lower.starts_with("0x") && lower[2..].chars().next().is_some_and(|c| c.is_ascii_hexdigit() || c == '.') {
        let neg = b[0] == b'-';
        let mut v = 0.0f64;
        let mut chars = lower[2..].chars().peekable();
        while let Some(d) = chars.peek().and_then(|c| c.to_digit(16)) {
            v = v * 16.0 + f64::from(d);
            chars.next();
        }
        let mut scale = 1.0 / 16.0;
        if chars.peek() == Some(&'.') {
            chars.next();
            while let Some(d) = chars.peek().and_then(|c| c.to_digit(16)) {
                v += f64::from(d) * scale;
                scale /= 16.0;
                chars.next();
            }
        }
        if chars.peek() == Some(&'p') {
            chars.next();
            let rest: String = chars.collect();
            let digits: String = rest.chars().enumerate().take_while(|(i, c)| c.is_ascii_digit() || (*i == 0 && (*c == '-' || *c == '+'))).map(|(_, c)| c).collect();
            if let Ok(x) = digits.parse::<i32>() {
                v *= 2f64.powi(x);
            }
        }
        return if neg { -v } else { v };
    }
    let start_digits = i;
    while i < b.len() && b[i].is_ascii_digit() {
        i += 1;
    }
    if i < b.len() && b[i] == b'.' {
        i += 1;
        while i < b.len() && b[i].is_ascii_digit() {
            i += 1;
        }
    }
    if i == start_digits {
        return 0.0;
    }
    if i < b.len() && (b[i] == b'e' || b[i] == b'E') {
        let mut j = i + 1;
        if j < b.len() && (b[j] == b'-' || b[j] == b'+') {
            j += 1;
        }
        if j < b.len() && b[j].is_ascii_digit() {
            while j < b.len() && b[j].is_ascii_digit() {
                j += 1;
            }
            i = j;
        }
    }
    s[..i].parse().unwrap_or(0.0)
}

/// `ex_retab` of one line: each run of blanks holding a tab (with `all`, also runs of two or more spaces) is rewritten
/// for the stops `new`, keeping its width under the stops `old`. Columns are screen cells of the
/// clusters before the run (a wide char counts 2). `indent_only` stops after the first run.
fn retab_line(s: &str, old: Tabs, new: Tabs, all: bool, et: bool, indent_only: bool) -> (String, bool) {
    let mut out = String::with_capacity(s.len());
    let (mut col, mut run, mut run_col, mut tab) = (0, String::new(), 0, false);
    // `ml_replace` runs for a run that is rewritten (also into the same text): that is a changed line.
    let mut touched = false;
    let mut flush = |out: &mut String, run: &mut String, start: usize, end: usize, tab: bool| {
        let entered = tab || (all && run.chars().filter(|&c| c == ' ').count() > 1);
        if entered && et {
            out.extend(std::iter::repeat_n(' ', end - start));
            touched = true;
        } else if entered {
            // The run is only rewritten when it held a Tab or the new one is shorter.
            let (tabs, spaces) = new.fromto(start, end);
            if tab || tabs + spaces < end - start {
                out.extend(std::iter::repeat_n('\t', tabs));
                out.extend(std::iter::repeat_n(' ', spaces));
                touched = true;
            } else {
                out.push_str(run);
            }
        } else {
            out.push_str(run);
        }
        run.clear();
    };
    let mut rest = s;
    for g in graphemes::iter(s) {
        rest = &rest[g.len()..];
        match g {
            " " | "\t" => {
                let ch = if g == " " { ' ' } else { '\t' };
                if run.is_empty() {
                    (run_col, tab) = (col, false);
                }
                run.push(ch);
                tab |= ch == '\t';
                col += if ch == '\t' { old.pad(col) } else { 1 };
            }
            _ => {
                if !run.is_empty() {
                    flush(&mut out, &mut run, run_col, col, tab);
                }
                // `-indentonly`: the first char that is not a blank ends the line, whether blanks came before it or not.
                if indent_only {
                    out.push_str(g);
                    out.push_str(rest);
                    return (out, touched);
                }
                out.push_str(g);
                // Screen cells, so a tab after wide chars keeps its place on screen.
                col += graphemes::width(g, old.ts);
            }
        }
    }
    if !run.is_empty() {
        flush(&mut out, &mut run, run_col, col, tab);
    }
    (out, touched)
}

/// Writes through a temp file renamed over the target, so a failed write never truncates it.
/// Symlinks are followed so the link survives and the temp file sits on the target's filesystem.
pub(super) fn write_atomic(path: &Path, text: &Text, eol: LineEnding, final_eol: bool, empty: bool) -> io::Result<()> {
    let target = fs::canonicalize(path).unwrap_or_else(|_| path.to_path_buf());
    let mut tmp = target.clone().into_os_string();
    tmp.push(".rim.tmp");
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
    // `ML_EMPTY`: a buffer created empty or emptied by an edit writes nothing.
    if !empty {
        text.write_to(&mut w, eol)?;
        if final_eol {
            w.write_all(eol.as_str().as_bytes())?;
        }
    }
    w.into_inner().map_err(io::IntoInnerError::into_error)?.sync_all()?;
    fs::rename(&tmp, &target)
}

fn append_to(path: &Path, text: &Text, eol: LineEnding, final_eol: bool, empty: bool) -> io::Result<()> {
    let file = fs::OpenOptions::new().append(true).create(true).open(path)?;
    let mut w = BufWriter::new(file);
    if !empty {
        text.write_to(&mut w, eol)?;
        if final_eol {
            w.write_all(eol.as_str().as_bytes())?;
        }
    }
    w.into_inner().map_err(io::IntoInnerError::into_error)?.sync_all()
}

/// Lines `:g` and `:normal` still have to visit, as `(start, end, alive)` (end: the next line's
/// start, or the text length), moved by every edit like vim's line marks. A line an edit removes
/// whole is no longer alive; one joined into the previous line no longer starts a line, which
/// the visit checks. Entries from `next` on are stored without `shift`: an edit that ends before
/// the next line to visit (the usual case: the command edited the line it ran on, or the text
/// above) only adds to `shift`, so a whole `:g` costs O(lines) instead of O(lines²).
#[derive(Default)]
pub(super) struct LineMarks {
    lines: Vec<(usize, usize, bool)>,
    next: usize,
    shift: isize,
}

impl LineMarks {
    fn new(text: &Text, lines: impl Iterator<Item = usize>) -> LineMarks {
        let last = text.line_count() - 1;
        let end = |l: usize| if l < last { text.line_to_offset(l + 1) } else { text.len() };
        LineMarks { lines: lines.map(|l| (text.line_to_offset(l), end(l), true)).collect(), next: 0, shift: 0 }
    }

    fn at(&self, off: usize) -> usize {
        off.wrapping_add_signed(self.shift)
    }

    /// `text` is the text after `edits`: an insertion at the very start of the next line that does not end with a line break
    /// is typed into that line (Neovim's mark is a flag of the line, `ml_replace` keeps it), so the line starts where it did.
    pub fn map(&mut self, edits: &[Edit], text: &Text) {
        for ed in edits {
            let Some(&(s, _, _)) = self.lines.get(self.next) else { return };
            let delta = ed.new_len as isize - ed.old_len as isize;
            let typed_in = edits.len() == 1
                && ed.old_len == 0
                && ed.start == self.at(s)
                && ed.start + ed.new_len <= text.len()
                && !text.slice(ed.start..ed.start + ed.new_len).ends_with('\n');
            if !typed_in && ed.start + ed.old_len <= self.at(s) {
                self.shift += delta;
                continue;
            }
            let shift = mem::take(&mut self.shift);
            for (s, e, alive) in &mut self.lines[self.next..] {
                let (a, b) = (s.wrapping_add_signed(shift), e.wrapping_add_signed(shift));
                *alive &= !(ed.old_len > 0 && ed.start <= a && b <= ed.start + ed.old_len);
                (*s, *e) = (ed.map(a), ed.map(b));
            }
            if typed_in {
                // The shift was flushed above, so the stored start is the real one.
                self.lines[self.next].0 = ed.start;
            }
        }
    }

    /// Start of the next line to visit that is still alive and still starts a line.
    fn pop(&mut self, text: &Text) -> Option<usize> {
        while let Some(&(s, _, alive)) = self.lines.get(self.next) {
            let s = self.at(s);
            self.next += 1;
            if alive && s <= text.len() && text.line_to_offset(text.offset_to_line(s)) == s {
                return Some(s);
            }
        }
        None
    }
}

/// Which of `:print`, `:number` and `:list` runs.
#[derive(Clone, Copy, PartialEq)]
enum Print {
    Plain,
    Number,
    List,
}

/// `msg_prt_line`: a line as `:print` shows it. A Tab is blanks up to the next 'tabstop'; with `list` it is `>` and
/// blanks (the default 'listchars' is `tab:> ,trail:-,nbsp:+`), a trailing blank is `-` and a no-break space `+`. A control
/// character is `^X`; an empty line is one blank, else the next message would overwrite it.
fn msg_prt_line(s: &str, list: bool, tabs: Tabs) -> String {
    let mut out = String::new();
    if s.is_empty() {
        out.push(' ');
    }
    let trail = if list { s.trim_end_matches([' ', '\t']).len() } else { s.len() };
    let mut col = 0;
    for (i, c) in s.char_indices() {
        match c {
            '\t' => {
                let pad = tabs.pad(col);
                out.push(if list { '>' } else { ' ' });
                out.extend(std::iter::repeat_n(' ', pad - 1));
                col += pad;
            }
            ' ' if list && i >= trail => {
                out.push('-');
                col += 1;
            }
            '\u{a0}' | '\u{202f}' if list => {
                out.push('+');
                col += 1;
            }
            '\0'..='\x1f' | '\x7f' => {
                out.push('^');
                out.push((c as u8 ^ 0x40) as char);
                col += 2;
            }
            c => {
                out.push(c);
                col += graphemes::width(c.encode_utf8(&mut [0; 4]), tabs.ts);
            }
        }
    }
    out
}

impl Editor {
    /// Runs one command; returns false to quit. `Editor::command` splits a line first.
    pub(in crate::editor) fn command_one(&mut self, line: &str) -> bool {
        let c = match parse(line) {
            Ok(c) => c,
            Err(e) => {
                self.error(e);
                return true;
            }
        };
        if let Some(s) = substitute::parse(c.range.clone(), c.name, c.arg) {
            match s {
                Ok(s) => self.substitute(s),
                Err(e) => self.error(e),
            }
            return true;
        }
        let (bang, arg) = match c.arg.strip_prefix('!') {
            Some(a) => (true, a.trim_start_matches([' ', '\t'])),
            None => (false, c.arg.trim_start_matches([' ', '\t'])),
        };
        // Most arguments ignore trailing blanks; `:normal` keeps them.
        // Only blanks and tabs: a carriage return is not white space to Neovim (`:let x = 1^M` is `E488`).
        let a = arg.trim_end_matches([' ', '\t']);
        let (n, r) = (c.name, c.range.as_ref());
        if self.cmdwin.is_some() && CMDWIN_REFUSES.iter().any(|(short, long)| abbr(n, short, long)) {
            self.error(super::cmdwin::E11);
            return true;
        }
        let res = match n {
            "" if a.is_empty() && r.is_some() => self.goto_line(r),
            "" if a.is_empty() => Ok(()),
            "wq" | "x" | "xi" | "xit" => {
                // `ex_exit`: `:wq` always writes, `:x` only when the buffer was changed; a file name goes
                // with the write, as `:w file`. A write of the buffer's own file runs in the background, so
                // the quit waits for it; one that failed leaves the buffer modified, and `:q` then refuses.
                let write = n == "wq" || self.is_dirty();
                let mut ok = true;
                if write {
                    match self.write_cmd(None, bang, a) {
                        Ok(()) => {
                            self.wait_saves();
                            ok = !self.is_dirty() || !a.is_empty();
                        }
                        Err(e) => {
                            self.error(e);
                            ok = false;
                        }
                    }
                }
                if !ok {
                    return true;
                }
                return self.quit(false, false, None);
            }
            "wqa" | "wqal" | "wqall" | "xa" | "xal" | "xall" => {
                let dirty: Vec<usize> = [&self.buf].into_iter().chain(&self.buffers).filter(|b| b.is_dirty()).map(|b| b.id).collect();
                let ok = dirty.into_iter().all(|id| self.save_buffer(id, true));
                return !ok || self.quit(false, true, None);
            }
            _ if abbr(n, "w", "write") => self.write_cmd(r, bang, a),
            // `ex_update`: the same as `:w` when the buffer is changed.
            _ if abbr(n, "up", "update") => {
                // `ex_update`: a file that is gone is written again too.
                if self.buf.is_dirty() || (!self.buf.opts.bt_nofilename() && self.buf.path.as_ref().is_some_and(|p| !p.exists())) { self.write_cmd(r, bang, a) } else { Ok(()) }
            }
            _ if abbr(n, "q", "quit") => {
                let wnr = self.window_arg(r);
                return self.quit(bang, false, wnr);
            }
            _ if abbr(n, "qa", "qall") || abbr(n, "quita", "quitall") => return self.quit(bang, true, None),
            _ if abbr(n, "clo", "close") => {
                let wnr = self.window_arg(r);
                self.ex_close(bang, wnr)
            }
            _ if abbr(n, "cd", "cd") || abbr(n, "chd", "chdir") || abbr(n, "lc", "lcd") || abbr(n, "lch", "lchdir") || abbr(n, "tcd", "tcd") || abbr(n, "tch", "tchdir") => self.cd_cmd(a),
            _ if abbr(n, "pw", "pwd") => {
                match std::env::current_dir() {
                    Ok(cwd) => {
                        self.info(cwd.display().to_string());
                        Ok(())
                    }
                    Err(e) => Err(format!("E187: Unknown: {e}")),
                }
            }
            _ if abbr(n, "winc", "wincmd") => {
                // `ex_wincmd`: one char; the range or count is the count of the window command.
                let count = self.window_arg(r);
                let mut cs = a.chars();
                match (cs.next(), cs.next()) {
                    (Some(c), None) => {
                        self.window_cmd(c, count);
                        Ok(())
                    }
                    (Some(_), Some(_)) => Err("E474: Invalid argument".into()),
                    (None, _) => Err("E471: Argument required".into()),
                }
            }
            _ if abbr(n, "hid", "hide") => {
                let wnr = self.window_arg(r);
                self.ex_hide(wnr);
                Ok(())
            }
            _ if abbr(n, "on", "only") => {
                // `win_goto` the window named, then close the others.
                if let Some(n) = self.window_arg(r) {
                    let id = self.window_by_number(Some(n));
                    if id != self.win.id {
                        self.win_enter(id);
                    }
                }
                self.only_window(bang, true);
                Ok(())
            }
            "let" => self.let_cmd(a, false),
            _ if abbr(n, "cons", "const") => self.let_cmd(a, true),
            _ if abbr(n, "so", "source") => match self.source_cmd(r, bang, a) {
                Ok(go) => return go,
                Err(e) => Err(e),
            },
            _ if abbr(n, "unl", "unlet") => self.unlet_cmd(bang, a),
            _ if abbr(n, "lockv", "lockvar") => self.lockvar_cmd(true, bang, a),
            _ if abbr(n, "unlo", "unlockvar") => self.lockvar_cmd(false, bang, a),
            _ if abbr(n, "ec", "echo") => self.echo_cmd(script::Echo::Plain, a),
            "echon" => self.echo_cmd(script::Echo::NoNewline, a),
            _ if abbr(n, "echom", "echomsg") => self.echo_cmd(script::Echo::Msg, a),
            _ if abbr(n, "echoe", "echoerr") => self.echo_cmd(script::Echo::Err, a),
            _ if abbr(n, "exe", "execute") => match self.execute_cmd(a) {
                Ok(go) => return go,
                Err(e) => Err(e),
            },
            _ if abbr(n, "cal", "call") => self.call_cmd(r, a, false),
            _ if abbr(n, "defe", "defer") => self.call_cmd(r, a, true),
            _ if abbr(n, "redi", "redir") => self.redir_cmd(bang, a),
            _ if abbr(n, "dig", "digraphs") => self.digraphs_cmd(a),
            _ if abbr(n, "res", "resize") => self.resize_cmd(false, a),
            _ if abbr(n, "vert", "vertical") => self.vertical_cmd(a),
            _ if abbr(n, "ene", "enew") => {
                let hide = self.buf_hide();
                self.enew(bang, hide, false)
            }
            _ if abbr(n, "new", "new") || abbr(n, "vne", "vnew") => {
                let old = self.win.id;
                self.split_window(n.starts_with('v'));
                let r = if a.is_empty() { self.enew(bang, true, true) } else { self.edit_file(a, bang, false) };
                self.old_window_alt(old, a);
                r
            }
            _ if abbr(n, "sp", "split") || abbr(n, "vs", "vsplit") => {
                let old = self.win.id;
                self.split_window(n.starts_with('v'));
                let r = if a.is_empty() { Ok(()) } else { self.edit_file(a, bang, false) };
                self.old_window_alt(old, a);
                r
            }
            _ if abbr(n, "e", "edit") && !a.is_empty() => self.edit_file(a, bang, true),
            _ if abbr(n, "ls", "ls") || abbr(n, "buffers", "buffers") || abbr(n, "files", "files") => {
                let rows = self.list_buffers(bang, a);
                self.info_rows(rows);
                Ok(())
            }
            _ if abbr(n, "e", "edit") && a.is_empty() && self.buf.opts.buftype.starts_with('p') => Err("cannot :edit a prompt buffer".into()),
            _ if abbr(n, "e", "edit") && a.is_empty() => {
                self.wait_saves();
                self.set_jump();
                if !bang && self.is_dirty() {
                    Err(DIRTY.into())
                } else {
                    self.reload();
                    Ok(())
                }
            }
            _ if abbr(n, "syn", "syntax") => self.syntax_cmd(a),
            _ if abbr(n, "hi", "highlight") => self.highlight_cmd(a),
            _ if abbr(n, "noh", "nohlsearch") => {
                self.hl = false;
                Ok(())
            }
            _ if abbr(n, "mes", "messages") => self.messages_cmd(a),
            _ if abbr(n, "undol", "undolist") => {
                self.ex_undolist();
                Ok(())
            }
            _ if abbr(n, "undoj", "undojoin") => {
                self.ex_undojoin();
                Ok(())
            }
            "go" | "got" | "goto" => self.goto_byte(a),
            _ if let Some(&(_, long)) = [("ea", "earlier"), ("lat", "later"), ("u", "undo"), ("red", "redo")].iter().find(|(short, long)| abbr(n, short, long)) => {
                self.time_travel(long, bang, a);
                Ok(())
            }
            _ if abbr(n, "redr", "redraw") => {
                self.redraw_cmd();
                Ok(())
            }
            _ if abbr(n, "se", "set") => self.set_cmd(arg),
            _ if abbr(n, "setl", "setlocal") => self.set_cmd_in(arg, Scope::Local),
            _ if abbr(n, "setg", "setglobal") => self.setglobal_cmd(arg),
            _ if abbr(n, "d", "delete") => self.delete_yank(r, false),
            _ if abbr(n, "y", "yank") => self.delete_yank(r, true),
            _ if abbr(n, "m", "move") => self.move_lines(r, a),
            "t" => self.copy_lines(r, a),
            _ if abbr(n, "co", "copy") => self.copy_lines(r, a),
            ">" | "<" => self.shift_cmd(r, n == ">", a),
            _ if abbr(n, "j", "join") => self.join_cmd(r, bang),
            _ if abbr(n, "p", "print") => self.print_cmd(r, Print::Plain),
            "#" => self.print_cmd(r, Print::Number),
            _ if abbr(n, "nu", "number") => self.print_cmd(r, Print::Number),
            _ if abbr(n, "l", "list") => self.print_cmd(r, Print::List),
            "k" => self.mark_cmd(r, a),
            _ if abbr(n, "pu", "put") => self.put_cmd(r, bang),
            _ if abbr(n, "ma", "mark") => self.mark_cmd(r, a),
            "=" => self.lines(r, (self.line_count(), self.line_count())).map(|(_, b)| self.info(b.to_string())),
            _ if abbr(n, "norm", "normal") => self.normal_cmd(r, arg),
            _ if abbr(n, "sor", "sort") => self.sort(r, bang, a),
            _ if abbr(n, "g", "global") => self.global(r, bang, a),
            _ if abbr(n, "v", "vglobal") => self.global(r, true, a),
            _ if abbr(n, "r", "read") => self.read(r, a),
            _ if abbr(n, "sav", "saveas") => self.save_as(bang, a),
            _ if abbr(n, "ret", "retab") => self.retab(r, bang, a),
            "stats" => {
                self.info(self.stats());
                Ok(())
            }
            "compact" => {
                let (before, after) = self.compact();
                self.info(format!("{before} pieces -> {after}"));
                Ok(())
            }
            _ => Err(format!("Not an editor command: {}", line.trim())),
        };
        // An empty message: the error was reported already (a search that found nothing).
        if let Err(e) = res
            && !e.is_empty()
        {
            self.error(e);
        }
        !self.quit
    }

    /// 1-based line of `a` (0: before the first line), with `.` standing for 1-based `cur`;
    /// `clamp` turns a line past the end into the last one (`:99`).
    fn resolve(&mut self, a: &Addr, cur: usize, clamp: bool) -> Result<usize, String> {
        let count = self.line_count();
        let base = match &a.base {
            Base::Current => cur,
            Base::Last => count,
            Base::Line(n) => *n,
            Base::Mark(m) => self.pos_of(self.mark(*m).ok_or("E20: Mark not set")?).0 + 1,
            Base::Search { pat, back } => self.address_search(pat, *back, cur)?,
            Base::Again { back, sub } => self.address_again(*back, *sub, cur)?,
        };
        let l = base.checked_add_signed(a.offset).ok_or("Invalid range")?;
        if l <= count { Ok(l) } else if clamp { Ok(count) } else { Err("Invalid range".into()) }
    }

    /// A pattern of an ex command: `^`/`$` match at line breaks (vim), an empty one is the last
    /// search. It becomes the last search, as in vim.
    pub(super) fn ex_regex(&mut self, pat: &str) -> Result<Search, String> {
        let pat = if pat.is_empty() {
            self.last_search.as_ref().map(|s| s.pat.clone()).ok_or("E35: No previous regular expression")?
        } else {
            pat.to_string()
        };
        let mut s = Search::new(&format!("(?m){}", self.buf.opts.case_pattern(&pat)))?;
        s.pat = pat;
        self.last_search = Some(s.clone());
        Ok(s)
    }

    /// `/pat/`: the next line (after 1-based `cur`) with a match, wrapping; `?pat?`: the previous.
    /// `\/`, `\?` and `\&`: the line of the next (or previous) match of the last search (`sub`: the
    /// last substitute) pattern after (before) line `cur`.
    pub(super) fn address_again(&mut self, back: bool, sub: bool, cur: usize) -> Result<usize, String> {
        let pat = if sub { self.last_sub.as_ref().map(|s| s.pat.clone()) } else { self.last_search.as_ref().map(|s| s.pat.clone()) };
        let pat = pat.ok_or(if sub { "E33: No previous substitute regular expression" } else { "E35: No previous regular expression" })?;
        self.address_search(&pat, back, cur)
    }

    pub(super) fn address_search(&mut self, pat: &str, back: bool, cur: usize) -> Result<usize, String> {
        let s = self.ex_regex(pat)?;
        let text = self.buf.doc.text();
        let found = if back {
            search::find_backward(text, &s.re, text.line_to_offset(cur.saturating_sub(1)))
        } else {
            let from = if cur < text.line_count() { text.line_to_offset(cur) } else { text.len() };
            search::find_forward(text, &s.re, from, from)
        };
        let (m, _) = found.ok_or_else(|| format!("E486: Pattern not found: {}", s.pat))?;
        Ok(text.offset_to_line(m.start) + 1)
    }

    /// First and last 1-based lines of `r` (in order), or `default` without a range.
    pub(super) fn lines(&mut self, r: Option<&LineRange>, default: (usize, usize)) -> Result<(usize, usize), String> {
        self.lines_clamped(r, default, false)
    }

    fn lines_clamped(&mut self, r: Option<&LineRange>, default: (usize, usize), clamp: bool) -> Result<(usize, usize), String> {
        let Some(r) = r else { return Ok(default) };
        let cur = self.win.line + 1;
        let a = self.resolve(&r.first, cur, clamp)?;
        let b = match &r.last {
            None => a,
            Some(l) => self.resolve(l, if r.semi { a } else { cur }, clamp)?,
        };
        Ok((a.min(b), a.max(b)))
    }

    /// 0-based first and last lines; the default is the cursor line, or every line with `whole`.
    /// Line 0 counts as line 1.
    pub(super) fn range0(&mut self, r: Option<&LineRange>, whole: bool) -> Result<(usize, usize), String> {
        let default = if whole { (1, self.line_count()) } else { (self.win.line + 1, self.win.line + 1) };
        let (a, b) = self.lines(r, default)?;
        Ok((a.max(1) - 1, b.max(1) - 1))
    }

    /// `count` lines starting at the range's last line (`:d 3`), clipped to the text.
    pub(super) fn counted(&self, (a, b): (usize, usize), count: Option<usize>) -> (usize, usize) {
        match count {
            None => (a, b),
            Some(n) => (b, (b + n - 1).min(self.line_count() - 1)),
        }
    }

    /// `beginline(BL_SOL | BL_FIX)` with 'nostartofline' (Neovim's default): line `l`, the column the cursor wanted.
    pub(in crate::editor) fn line_wanted_col(&mut self, l: usize) {
        self.win.line = l;
        // With 'nostartofline' `beginline` only moves to the column wanted: `w_curswant` stays as it is.
        self.win.col = self.col_wanted(l);
    }

    /// `beginline(BL_WHITE | BL_FIX)`: the first non-blank, or the last char of a line that is all blanks.
    pub(in crate::editor) fn first_line(&mut self, l: usize) {
        self.win.line = l;
        let col = self.first_non_blank(l).min(self.line_chars(l).saturating_sub(1));
        self.set_col(col);
    }

    /// `:N`, `:/pat/`, `:'a`: the cursor goes to the last address; past the end, the last line.
    pub(in crate::editor) fn goto_line(&mut self, r: Option<&LineRange>) -> Result<(), String> {
        // `ex_range_without_command` does not `setpcmark()`.
        let (_, b) = self.lines_clamped(r, (0, 0), true)?;
        self.line_wanted_col(b.max(1) - 1);
        self.clamp_normal();
        Ok(())
    }

    /// `:go N`: byte N (1-based), the first one without N.
    fn goto_byte(&mut self, n: &str) -> Result<(), String> {
        match n.parse::<usize>() {
            Ok(n) => {
                self.set_jump();
                (self.win.line, self.win.col) = self.pos_of(self.byte_pos(n.saturating_sub(1)));
                self.win.want_set = true;
                self.clamp_normal();
            }
            Err(_) if n.is_empty() => {
                self.set_jump();
                (self.win.line, self.win.col) = (0, 0);
            }
            Err(_) => return Err(format!("Invalid argument: {n}")),
        }
        Ok(())
    }

    /// `:dig[raphs]` lists the digraphs, `:dig {a}{b} {code} ...` defines them (decimal or `0x` hex).
    fn digraphs_cmd(&mut self, arg: &str) -> Result<(), String> {
        if arg.is_empty() {
            let all = super::digraphs::all(&self.user_digraphs);
            // As many columns as the screen of the last frame holds.
            let cols = (self.screen.w / 14).max(1);
            let rows: Vec<String> = all.chunks(cols).map(|row| row.iter().map(|&(a, b, c)| format!("{:<14}", format!("{a}{b} {c}  {}", c as u32))).collect::<String>().trim_end().to_string()).collect();
            self.info(rows.join("\n"));
            return Ok(());
        }
        let mut words = arg.split_whitespace();
        while let Some(pair) = words.next() {
            let mut chars = pair.chars();
            let (Some(a), Some(b), None) = (chars.next(), chars.next(), chars.next()) else {
                return Err(format!("E1214: Digraph must be just two characters: {pair}"));
            };
            let code = words.next().ok_or("E104: Escape not allowed in digraph")?;
            let n = match code.strip_prefix("0x") {
                Some(hex) => u32::from_str_radix(hex, 16).ok(),
                None => code.parse().ok(),
            };
            let c = n.and_then(char::from_u32).ok_or_else(|| format!("E39: Number expected: {code}"))?;
            self.user_digraphs.retain(|&(x, y, _)| (x, y) != (a, b));
            self.user_digraphs.push((a, b, c));
        }
        Ok(())
    }

    /// `:res[ize] [+-]N`: rows of the current window; none: as many as possible.
    fn resize_cmd(&mut self, width: bool, arg: &str) -> Result<(), String> {
        let num = |s: &str| s.trim().parse::<usize>().map_err(|_| format!("Invalid argument: {arg}"));
        let how = match arg {
            "" => Resize::Max,
            _ if let Some(n) = arg.strip_prefix('+') => Resize::By(num(n)? as isize),
            _ if let Some(n) = arg.strip_prefix('-') => Resize::By(-(num(n)? as isize)),
            _ => Resize::To(num(arg)?),
        };
        self.resize_window(width, how);
        Ok(())
    }

    /// `:vert[ical] {resize | split | new}`.
    fn vertical_cmd(&mut self, arg: &str) -> Result<(), String> {
        let (sub, rest) = arg.split_once(char::is_whitespace).map_or((arg, ""), |(s, r)| (s, r.trim()));
        match sub {
            _ if abbr(sub, "res", "resize") => self.resize_cmd(true, rest),
            _ if self.cmdwin_refuses() => Ok(()),
            _ if abbr(sub, "sp", "split") => {
                // The modifier leaves the file name to be expanded here.
                let rest = &self.expand_filename(rest, true)?;
                self.split_window(true);
                if rest.is_empty() { Ok(()) } else { self.edit_file(rest, false, false) }
            }
            _ if abbr(sub, "new", "new") => {
                self.split_window(true);
                self.enew(false, true, true)
            }
            _ => Err(format!("Not an editor command: vertical {arg}")),
        }
    }

    /// `:set`: the options of the buffer and the global values new buffers start from.
    pub(super) fn set_cmd(&mut self, arg: &str) -> Result<(), String> {
        self.set_cmd_in(arg, Scope::Both)
    }

    /// `:setglobal`: the global value only (`OPT_GLOBAL`): what a new buffer or window gets, the values of this buffer and window stay.
    pub(super) fn setglobal_cmd(&mut self, arg: &str) -> Result<(), String> {
        self.with_global_scope(|e| e.set_cmd_in(arg, Scope::Global))
    }

    /// Runs `f` and keeps only the global values it set: the options of global scope are one value for everybody, a local-scope
    /// option goes back to its local value (the buffer's and the window's).
    pub(super) fn with_global_scope<R>(&mut self, f: impl FnOnce(&mut Self) -> R) -> R {
        let (buf_opts, win_opts) = (self.buf.opts.clone(), self.win.opts.clone());
        let r = f(self);
        let changed = std::mem::replace(&mut self.buf.opts, buf_opts);
        changed.copy_global(&mut self.buf.opts);
        self.win.opts = win_opts;
        r
    }

    /// Runs `f` and keeps only the local values it set (`OPT_LOCAL`): what a new buffer or window gets stays, but for the options
    /// of global scope.
    pub(super) fn with_local_scope<R>(&mut self, f: impl FnOnce(&mut Self) -> R) -> R {
        let (global, all) = (self.global_opts.clone(), self.win.all_opts.clone());
        self.opt_local = true;
        let r = f(self);
        self.opt_local = false;
        let changed = std::mem::replace(&mut self.global_opts, global);
        changed.copy_global(&mut self.global_opts);
        self.win.all_opts = all;
        r
    }

    /// The global value of an option (`&g:name`).
    pub(super) fn global_option(&mut self, name: &str) -> Option<script::Value> {
        let mut g = self.global_opts.clone();
        self.win.all_opts.store(&mut g, self.global_opts.scrolloff);
        g.lookup(name)
    }

    /// `do_set` with `OPT_LOCAL` when `local` (a modeline): only the buffer's value changes, except for the options
    /// of global scope (`share_global`).
    pub(super) fn set_cmd_in(&mut self, arg: &str, scope: Scope) -> Result<(), String> {
        let local = scope == Scope::Local;
        let mut shown = Vec::new();
        self.opts_in();
        let args = arg.to_string();
        // The global values, window options included, for `opt<` and for `:setglobal` to list.
        let mut global = self.global_opts.clone();
        self.win.all_opts.store(&mut global, self.global_opts.scrolloff);
        let ctx = SetCtx { modeline: self.opt_modeline, cols: self.cols, scope };
        let (text, err) = self.buf.opts.set_all_from(&args, Some(&global), ctx);
        // `tabstop_set` gives its message before the one of the option.
        if let Some(m) = self.buf.opts.first_error.take() {
            self.error(m);
        }
        self.ff_out();
        self.win_out(local, super::options::Options::names_scrolloff(&args));
        if !local {
            self.on_global(|g| {
                // `opt<` copies the global value to the local one: for the global options it changes nothing.
                let same = g.clone();
                let _ = g.set_all_from(&args, Some(&same), SetCtx::default());
                g.first_error = None;
            });
        }
        self.share_global();
        // A window that keeps its size (`winfixheight`) is laid out as it is now.
        let rects = self.win_rects();
        self.sync_winfix(&rects);
        shown.push(text);
        self.sync_cmdwin_height();
        shown.retain(|s| !s.is_empty());
        // What was shown before the error stays.
        if !shown.is_empty() || err.is_none() {
            self.show_set(shown);
        }
        err.map_or(Ok(()), Err)
    }

    /// What `:set` shows: a list (`showoptions`, whose text starts with the line break before its title) takes rows as `:ls` does.
    fn show_set(&mut self, shown: Vec<String>) {
        let text = shown.join("\n");
        if text.starts_with('\n') {
            self.info_rows(text);
        } else {
            self.info(text);
        }
    }

    /// `ex_operators` for `:d` and `:y`: the register and the count come from `do_one_cmd` (`Prefix`).
    fn delete_yank(&mut self, r: Option<&LineRange>, yank: bool) -> Result<(), String> {
        let ea = self.scripts.ea.clone();
        let (a, b) = self.range0(r, false)?;
        let (a, b) = self.counted((a, b), ea.count);
        let keep = (self.win.line, self.win.col);
        self.cur_reg = ea.reg;
        // `ex_operators`: but for `:yank` the cursor starts on the first line at the column it wanted (`beginline(BL_SOL | BL_FIX)`).
        if !yank {
            // `ex_operators`: `setpcmark()` first, but for `:yank`.
            self.set_jump();
            self.line_wanted_col(a);
        }
        self.end_visual_mode();
        self.operate(if yank { 'y' } else { 'd' }, (a, 0), (b, 0), Kind::Linewise);
        if yank {
            (self.win.line, self.win.col) = keep;
        }
        self.may_print(ea.flags);
        Ok(())
    }

    /// `ex_may_print`: the flags `l`, `p` and `#` show the cursor line.
    fn may_print(&mut self, flags: u8) {
        if flags != 0 {
            let l = self.win.line;
            let text = self.print_line(l, flags & EXFLAG_NR != 0, flags & EXFLAG_LIST != 0);
            self.info(text);
        }
    }

    /// `print_line`: the text of 0-based line `l` as `:print` shows it, with its number when `number`.
    pub(super) fn print_line(&self, l: usize, number: bool, list: bool) -> String {
        let mut out = String::new();
        if self.buf.opts.number || number {
            // `number_width`: the digits of the last line, at least 'numberwidth' (4) minus one.
            let width = self.line_count().to_string().len().max(3);
            out = format!("{:>width$} ", l + 1);
        }
        let line = self.buf.doc.text().line(l);
        out.push_str(&msg_prt_line(&line, list || self.buf.opts.list, self.buf.opts.tabs()));
        out
    }

    /// Lines `a..=b` without the line break after `b`.
    fn lines_text(&self, a: usize, b: usize) -> String {
        let text = self.buf.doc.text();
        text.slice(text.line_to_offset(a)..self.line_end_offset(b)).into_owned()
    }

    /// Inserts `block` (lines without a final line break) below 1-based line `after` (0: on top).
    #[track_caller]
    pub(in crate::editor) fn insert_lines(&mut self, after: usize, block: &str) {
        if after == 0 {
            self.edit_insert(0, &format!("{block}\n"));
        } else {
            let off = self.line_end_offset(after - 1);
            self.marks_below = true;
            self.edit_insert(off, &format!("\n{block}"));
            self.marks_below = false;
        }
    }

    /// Removes lines `a..=b` with one line break (the one before, on the last line).
    #[track_caller]
    pub(in crate::editor) fn delete_lines(&mut self, a: usize, b: usize) {
        let text = self.buf.doc.text();
        let range = if b + 1 < text.line_count() {
            text.line_to_offset(a)..text.line_to_offset(b + 1)
        } else if a > 0 {
            self.line_end_offset(a - 1)..text.len()
        } else {
            0..text.len()
        };
        self.edit_delete(range);
    }

    /// Destination of `:m`/`:t`: a 1-based line, 0 for the top.
    fn dest(&mut self, arg: &str) -> Result<usize, String> {
        // `ex_copymove`: `get_address` on the argument; it must name a line of the text (or 0).
        let cur = self.win.line as i64 + 1;
        let (n, _) = self.get_address(arg, AddrType::Lines, false, cur)?;
        match n {
            Some(n) if n >= 0 && n <= self.line_count() as i64 => Ok(n as usize),
            _ => Err("E16: Invalid range".into()),
        }
    }

    /// `:m {address}`: the lines go below the address; the cursor ends on the last one.
    fn move_lines(&mut self, r: Option<&LineRange>, arg: &str) -> Result<(), String> {
        let (a, b) = self.range0(r, false)?;
        let dest = self.dest(arg)?;
        if dest > a && dest <= b {
            return Err("E134: Cannot move a range of lines into itself".into());
        }
        let n = b - a + 1;
        // `do_move`: nothing moves when the lines go where they are: no message.
        let moves = dest != a && dest != b + 1;
        let old_count = self.line_count();
        let last = if !moves {
            b
        } else {
            let block = self.lines_text(a, b);
            // `do_move` copies the lines to their place, then deletes the old ones (`extra` lines were added before them).
            self.marks_manual = true;
            self.u_save(dest, dest + 1);
            self.insert_lines(dest, &block);
            let extra = if dest > b { 0 } else { n };
            self.u_save(a + 1 + extra - 1, b + 1 + extra + 1);
            self.delete_lines(a + extra, b + extra);
            self.marks_manual = false;
            // `do_move`: the marks of the moved lines go to the end of the text, the lines between the old and the new place
            // move over, then the marks at the end come back to the new place (1-based `line1`, `line2`, `dest` as in C).
            let (l1, l2, last_line) = (a + 1, b + 1, old_count + n);
            self.mark_adjust(a, n, Some((last_line - l2) as isize), 0);
            if dest >= l2 {
                self.mark_adjust(l2, dest - l2, Some(-(n as isize)), 0);
            } else {
                self.mark_adjust(dest, l1 - 1 - dest, Some(n as isize), 0);
            }
            let extra_c = if dest < l1 { n } else { 0 };
            self.mark_adjust(last_line - n, n, Some(-((last_line - dest - extra_c) as isize)), 0);
            if dest > b { dest - 1 } else { dest + n - 1 }
        };
        // `ex_copymove`: no `U` after `:m` or `:t`.
        self.u_clearline();
        self.line_wanted_col(last);
        if moves {
            // `do_move`: `'[` and `']` are the first and last line moved, `'.` the first line the move touched.
            let (s, en, dot) = if dest > b { (dest - n, dest - 1, a) } else { (dest, dest + n - 1, dest) };
            let (so, eo, dof) = (self.mark_off(s, 0), self.mark_off(en, 0), self.mark_off(dot, 0));
            self.set_op_marks(so, eo);
            self.set_dot(dof);
            // `do_move`: `appended_lines_mark`, `deleted_lines_mark` and the `changed_lines` of the range: one tick beyond the two edits.
            self.buf.changedtick += 1;
        }
        // `do_move`: a message over 'report' lines (a `:global` stays quiet).
        if moves && n > self.buf.opts.report && !self.scripts.global_busy {
            self.info(format!("{n} line{} moved", if n == 1 { "" } else { "s" }));
        }
        Ok(())
    }

    /// `:t {address}`/`:co`: a copy of the lines below the address; the cursor on its last line.
    fn copy_lines(&mut self, r: Option<&LineRange>, arg: &str) -> Result<(), String> {
        let (a, b) = self.range0(r, false)?;
        let dest = self.dest(arg)?;
        let block = self.lines_text(a, b);
        self.u_save(dest, dest + 1);
        self.insert_lines(dest, &block);
        // `ex_copy`: `'[` and `']` are the first and last line of the copy, `'.` the first.
        let (so, eo) = (self.mark_off(dest, 0), self.mark_off(dest + b - a, 0));
        self.set_op_marks(so, eo);
        self.set_dot(so);
        self.u_clearline();
        self.line_wanted_col(dest + b - a);
        self.msgmore((b - a + 1) as i64);
        Ok(())
    }

    /// `:>`/`:<`, `:>>> 3`: each extra `>` shifts once more.
    fn shift_cmd(&mut self, r: Option<&LineRange>, right: bool, arg: &str) -> Result<(), String> {
        let ch = if right { '>' } else { '<' };
        let extra = arg.chars().take_while(|&c| c == ch).count();
        let ea = self.scripts.ea.clone();
        let (a, b) = self.range0(r, false)?;
        let (a, b) = self.counted((a, b), ea.count);
        // `ex_operators`: the cursor starts on the first line at the column it wanted (`beginline(BL_SOL | BL_FIX)`).
        self.set_jump();
        self.line_wanted_col(a);
        self.end_visual_mode();
        let col = self.shift(a, b, right, extra + 1, 0);
        // `op_shift`: the cursor stays on the last line, `check_cursor_col` keeps it on a char.
        self.win.line = b;
        self.win.col = col.min(self.line_chars(b).saturating_sub(1));
        self.may_print(ea.flags);
        Ok(())
    }

    /// `:j`: one address joins with the next line; `:j!` keeps blanks and adds no space.
    fn join_cmd(&mut self, r: Option<&LineRange>, bang: bool) -> Result<(), String> {
        let ea = self.scripts.ea.clone();
        let (a, b) = self.range0(r, false)?;
        let (a, b) = self.counted((a, b), ea.count);
        // `ex_join`: the cursor goes to the first line, and one line alone (no two addresses) joins with the next.
        self.win.line = a;
        let b = if a == b {
            // `:2,2join` does nothing: `eap->addr_count` counts the count too.
            let addr_count = r.map_or(0, |r| 1 + usize::from(r.last.is_some())) + usize::from(ea.count.is_some());
            if addr_count >= 2 {
                return Ok(());
            }
            if b + 1 >= self.line_count() {
                return Ok(());
            }
            b + 1
        } else {
            b
        };
        self.join(b - a, !bang);
        // `ex_join`: `beginline(BL_WHITE | BL_FIX)`.
        let l = self.win.line;
        self.first_line(l);
        self.may_print(ea.flags);
        Ok(())
    }

    /// `:p`: the cursor goes to the last line, which is shown.
    // shortcut: an empty buffer is one without text, Neovim's is one without lines (`ML_EMPTY`)
    pub(in crate::editor) fn print(&mut self, r: Option<&LineRange>) -> Result<(), String> {
        self.scripts.ea = Default::default();
        self.print_cmd(r, Print::Plain)
    }

    /// `ex_print`: `:p`, `:#`/`:nu`, `:l`; the cursor goes to the last line.
    fn print_cmd(&mut self, r: Option<&LineRange>, how: Print) -> Result<(), String> {
        let ea = self.scripts.ea.clone();
        let (a, b) = self.range0(r, false)?;
        let (a, b) = self.counted((a, b), ea.count);
        // `ex_print`: an empty buffer is an error, else every line of the range is shown.
        if self.buf.doc.text().is_empty() {
            self.error("E749: Empty buffer");
            return Ok(());
        }
        for l in a..=b {
            let text = self.print_line(l, how == Print::Number || ea.flags & EXFLAG_NR != 0, how == Print::List || ea.flags & EXFLAG_LIST != 0);
            self.info(text);
        }
        self.set_jump();
        self.line_wanted_col(b);
        Ok(())
    }

    /// `ex_put` and the linewise branch of `do_put`: the lines of the register go below the last line of the range
    /// (above it with `!`; `:0put` is `:1put!`), whatever the kind of the register; the cursor goes to the first
    /// non-blank of the last one, `'[` and `']` to the first and last.
    fn put_cmd(&mut self, r: Option<&LineRange>, bang: bool) -> Result<(), String> {
        let ea = self.scripts.ea.clone();
        let cur = self.win.line + 1;
        let (_, l2) = self.lines(r, (cur, cur))?;
        let (l2, bang) = if l2 == 0 { (1, true) } else { (l2, bang) };
        self.win.line = l2 - 1;
        self.win.col = self.win.col.min(self.line_chars(l2 - 1).saturating_sub(1));
        let name = ea.reg.unwrap_or('"');
        // `do_put` starts with `'[` and `']` on the cursor, whatever follows.
        let here = self.offset_of((l2 - 1, self.win.col));
        self.put_off('[', here);
        self.put_off(']', here);
        // `get_spec_reg` with `errmsg`: what a register that has no value says.
        let none = match name {
            '%' if self.buf.path.is_none() => Some("E32: No file name"),
            '#' if self.win.alt.and_then(|id| self.buffer(id)).and_then(|b| b.path.as_ref()).is_none() => Some("E23: No alternate file"),
            '/' if self.last_search.is_none() => Some("E35: No previous regular expression"),
            ':' if self.last_cmdline().is_none() => Some("E30: No previous command line"),
            _ => None,
        };
        if let Some(e) = none {
            return Err(e.into());
        }
        let reg = match name {
            // Nothing is kept in the black hole: one empty line.
            '_' => Some(Reg { text: String::new(), kind: RegKind::Char }),
            '.' => {
                // `do_put('_')` makes the empty line; then Neovim types `i`, the text inserted last and Esc, and goes to
                // `'[`, once the command is done (`stuff_inserted`); none inserted yet is an error after the line.
                let at = if bang { l2 - 1 } else { l2 };
                self.insert_lines(at, "");
                let off = self.offset_of((at, 0));
                self.put_off('[', off);
                self.put_off(']', off);
                self.set_dot(off);
                self.first_line(at);
                self.msgmore(1);
                let Some(keys) = self.last_insert_keys.clone() else {
                    return Err("E29: No inserted text yet".into());
                };
                let mut stuffed = vec![KeyEvent::from(KeyCode::Char('i'))];
                stuffed.extend(keys);
                stuffed.push(KeyCode::Esc.into());
                self.scripts.stuffed.push(stuffed);
                return Ok(());
            }
            '=' => {
                // The expression is evaluated and its value is the text: a List has a line per item.
                if let Some(expr) = &ea.expr {
                    let v = self.eval(expr).map_err(|e| e.to_string())?;
                    let t = match &v {
                        crate::editor::script::Value::List(l) => {
                            let items: Vec<_> = l.borrow().iter().cloned().collect();
                            let mut t = String::new();
                            for i in &items {
                                t.push_str(&self.to_string(i).map_err(|e| e.to_string())?);
                                t.push('\n');
                            }
                            t
                        }
                        v => self.to_string(v).map_err(|e| e.to_string())?,
                    };
                    self.regs.set_expr(t);
                }
                self.regs.get('=').cloned()
            }
            _ => self.reg(name),
        };
        // An expression that gave nothing puts nothing (`insert_string.data` is NULL).
        if name == '=' && reg.is_none() {
            return Ok(());
        }
        // A register that was set to an empty string holds one empty line; one never set holds none.
        let Some(Reg { text, .. }) = reg else {
            let shown = if ea.reg.is_none() || name == '"' { "\"".to_string() } else { super::messages::trans(&name.to_string(), false) };
            return Err(format!("E353: Nothing in register {shown}"));
        };
        let mut lines: Vec<&str> = text.split('\n').collect();
        // A trailing line break ends the last line (a linewise register, or an expression with one).
        if lines.len() > 1 && lines.last() == Some(&"") {
            lines.pop();
        }
        let first = if bang { l2 - 1 } else { l2 };
        // `do_put`: the line it works from, then the lines the text goes between (the empty line of an empty buffer too).
        self.u_save(l2, l2 + 1);
        if self.buf.doc.text().is_empty() {
            self.u_save(0, 2);
        } else {
            self.u_save(first, first + 1);
        }
        self.insert_lines(first, &lines.join("\n"));
        let last = first + lines.len() - 1;
        let last_text = lines[lines.len() - 1];
        // `'[` is the first inserted line, `']` the first byte of the last character of the last one.
        let start = self.offset_of((first, 0));
        let at = if last_text.len() > 1 { last_text.floor_char_boundary(last_text.len() - 1) } else { 0 };
        let end = self.offset_of((last, 0)) + at;
        self.put_off('[', start);
        self.put_off(']', end);
        self.set_dot(start);
        self.first_line(last);
        self.msgmore(lines.len() as i64);
        Ok(())
    }

    /// `ex_mark` (`:k`, `:mark`): a mark on the last line of the range, at its first non-blank; the cursor stays.
    fn mark_cmd(&mut self, r: Option<&LineRange>, arg: &str) -> Result<(), String> {
        if arg.is_empty() {
            return Err("E471: Argument required".into());
        }
        if arg.chars().nth(1).is_some() {
            return Err(format!("E488: Trailing characters: {arg}"));
        }
        let (_, b) = self.range0(r, false)?;
        let off = self.offset_of((b, self.first_non_blank(b)));
        match arg.chars().next() {
            Some(m) if self.set_mark(m, off) => Ok(()),
            _ => Err("E191: Argument must be a letter or forward/backward quote".into()),
        }
    }

    /// Runs `keys` as typed in Normal mode; an unfinished command or insert ends as with Esc.
    /// What commands stuffed into the typeahead (`:put .`), typed when the command line is done, each followed by `g'[`.
    pub(super) fn run_stuffed(&mut self) {
        for keys in std::mem::take(&mut self.scripts.stuffed) {
            self.run_keys(&keys);
            if let Some(off) = self.mark('[') {
                // `g'[`: the first non-blank of the line of `'[`.
                let l = self.pos_of(off).0;
                self.first_line(l);
            }
        }
    }

    fn run_keys(&mut self, keys: &[KeyEvent]) {
        self.run_keys_as(keys, false);
    }

    pub(super) fn run_keys_untyped(&mut self, keys: &[KeyEvent]) {
        self.run_keys_as(keys, false);
    }

    /// `run_keys` for `feedkeys(.., 'xt')`: the keys are typed (not replayed by a macro: `macro_depth` stays 0, so `Ctrl+C`
    /// interrupts and `q` records them).
    pub(super) fn run_typed_keys(&mut self, keys: &[KeyEvent]) {
        self.run_keys_as(keys, true);
    }

    fn run_keys_as(&mut self, keys: &[KeyEvent], typed: bool) {
        // Counted as a macro: the keys are not recorded by `q`.
        if !typed {
            self.macro_depth += 1;
            self.ex_normal += 1;
        }
        // `ex_normal` does not end Visual mode: a Visual selection started by the keys (or before them) stays.
        let visual = matches!(self.mode, Mode::Visual(_));
        if !visual {
            self.mode = Mode::Normal;
        }
        for (i, &k) in keys.iter().enumerate() {
            self.peek_key = keys.get(i + 1).copied();
            self.flush_typeahead = false;
            // `flush_buffers(FLUSH_MINIMAL)` drops the mapped part of the typeahead only: keys `feedkeys(.., 't')` typed stay.
            if !self.key(k) || (mem::take(&mut self.flush_typeahead) && !typed) {
                break;
            }
        }
        self.peek_key = None;
        if self.mode != Mode::Normal && !matches!(self.mode, Mode::Visual(_)) {
            self.key(KeyCode::Esc.into());
        }
        self.pending.clear();
        if !typed {
            self.macro_depth -= 1;
            self.ex_normal -= 1;
        }
        // `ex_normal` ends with `update_topline_cursor`: the column wanted is the cursor's again (keys of `feedkeys()` are no `:normal`).
        if !typed {
            self.update_curswant();
        }
    }

    /// `:normal {keys}`: once at the cursor, or on each line of the range (column 0). One undo step.
    fn normal_cmd(&mut self, r: Option<&LineRange>, keys: &str) -> Result<(), String> {
        if keys.is_empty() {
            return Err("E471: Argument required".into());
        }
        let keys = parse::text_keys(keys);
        if r.is_none() {
            self.buf.doc.begin_group();
            self.run_keys(&keys);
            self.buf.doc.end_group();
            return Ok(());
        }
        let (a, b) = self.range0(r, false)?;
        // `ex_normal`: the cursor goes to each line number of the range (not to the line it was on: lines that go shift the
        // numbers), column 0, and a number past the end is the last line.
        self.buf.doc.begin_group();
        for l in a..=b {
            self.win.line = l.min(self.line_count() - 1);
            self.set_col(0);
            self.run_keys(&keys);
            if self.quit {
                break;
            }
        }
        self.buf.doc.end_group();
        Ok(())
    }

    /// Runs `f` with the cursor at the start of each of `lines` still there, in one undo step.
    fn for_lines(&mut self, lines: impl Iterator<Item = usize>, mut f: impl FnMut(&mut Self)) {
        let marks = LineMarks::new(self.buf.doc.text(), lines);
        self.line_marks.push(marks);
        self.buf.doc.begin_group();
        while let Some(s) = self.line_marks.last_mut().expect("pushed above").pop(self.buf.doc.text()) {
            (self.win.line, self.win.col) = self.pos_of(s);
            f(self);
            if self.quit {
                break;
            }
        }
        self.buf.doc.end_group();
        self.line_marks.pop();
    }

    /// `:g/pat/cmd` (`:g!`, `:v`: lines without a match): marks the lines, then runs `cmd`
    /// (default `:p`) on each one still there. A match belongs to the line it starts on.
    fn global(&mut self, r: Option<&LineRange>, invert: bool, arg: &str) -> Result<(), String> {
        let (a, b) = self.range0(r, true)?;
        // `ex_global`: a nested `:global` works on the cursor line, and takes no range.
        if self.scripts.global_busy && (a != 0 || b + 1 != self.line_count()) {
            return Err("E147: Cannot do :global recursive with a range".into());
        }
        let mut s = arg;
        // `\/`, `\?` and `\&` instead of a pattern: the last search or substitute pattern.
        let (pat, cmd_text) = if let Some(rest) = s.strip_prefix('\\') {
            let Some(k) = rest.chars().next().filter(|k| "/?&".contains(*k)) else {
                return Err("E10: \\ should be followed by /, ? or &".into());
            };
            let from = if k == '&' { self.last_sub.as_ref().map(|l| l.pat.clone()) } else { self.last_search.as_ref().map(|l| l.pat.clone()) };
            let Some(p) = from else {
                self.error(if k == '&' { "E33: No previous substitute regular expression" } else { "E35: No previous regular expression" });
                return Err("E476: Invalid command".into());
            };
            (p, &rest[1..])
        } else {
            let Some(d) = s.chars().next() else { return Err("E148: Regular expression missing from global".into()) };
            if d.is_alphabetic() {
                return Err("E146: Regular expressions can't be delimited by letters".into());
            }
            s = &s[d.len_utf8()..];
            let (pat, _) = field(&mut s, d, keep_escape);
            (pat, s)
        };
        let cmd = if cmd_text.is_empty() || cmd_text.starts_with('\n') { "p" } else { cmd_text };
        // An empty pattern is the last one used.
        let pat = if pat.is_empty() {
            match &self.last_search {
                Some(l) => l.pat.clone(),
                None => {
                    self.error("E35: No previous regular expression");
                    return Err("E476: Invalid command".into());
                }
            }
        } else {
            pat
        };
        let search = self.ex_regex(&pat)?;
        self.last_sub = Some(super::substitute::LastSub { pat: pat.clone(), rep: self.last_sub.as_ref().map_or_else(String::new, |l| l.rep.clone()) });
        self.hl = true;
        if self.scripts.global_busy {
            // The cursor line only.
            let l = self.win.line;
            let text = self.buf.doc.text().clone();
            let (s0, e0) = (text.line_to_offset(l), self.line_end_offset(l));
            let hit = text.find_iter_in(&search.re, s0..e0).take_while(|m| m.start <= e0).next().is_some();
            if hit != invert && !self.command(cmd) {
                self.quit = true;
            }
            return Ok(());
        }
        let text = self.buf.doc.text().clone();
        let (start, end) = (text.line_to_offset(a), self.line_end_offset(b));
        let mut hit = vec![invert; b - a + 1];
        // The line break after the last line belongs to it (`\\n`).
        for m in text.find_iter_in(&search.re, start..(end + 1).min(text.len())).take_while(|m| m.start <= end) {
            hit[text.offset_to_line(m.start) - a] = !invert;
        }
        // The last line of the text has a line break for a pattern too (`\n`).
        if b + 1 == self.line_count() && hit[b - a] == invert && piece_tree::Text::from(format!("{}\n", text.line(b))).find_iter_in(&search.re, 0..text.line(b).len() + 1).next().is_some() {
            hit[b - a] = !invert;
        }
        if !hit.contains(&true) {
            // `smsg`, not an error.
            self.info(if invert { format!("Pattern found in every line: {}", search.pat) } else { format!("Pattern not found: {}", search.pat) });
            return Ok(());
        }
        self.set_jump();
        // `global_exe`: the reports of what the commands do wait for the end.
        (self.scripts.sub_nsubs, self.scripts.sub_nlines) = (0, 0);
        self.scripts.global_busy = true;
        self.scripts.global_need_beginline = false;
        self.scripts.global_error = false;
        self.ml_empty = false;
        let old_lines = self.line_count() as i64;
        self.for_lines((a..=b).filter(|l| hit[l - a]), |e| {
            if e.scripts.global_error {
                return;
            }
            if !e.command(cmd) {
                e.quit = true;
            }
        });
        self.scripts.global_busy = false;
        // `global_exe`: after a `:s` the cursor goes to the first non-blank, whatever the commands that followed did with it.
        if mem::take(&mut self.scripts.global_need_beginline) {
            self.first_line(self.win.line);
        }
        // Substitutions are reported, else the lines that were added or taken away.
        if !self.do_sub_msg(false) {
            // Taking every line leaves "--No lines in buffer--" to be shown, which keeps the report back.
            if self.ml_empty && old_lines > 1 {
                let keep = self.buf.opts.msg_history;
                self.msgs.show_with(super::messages::Level::Info, "--No lines in buffer--".into(), keep, false);
            } else {
                self.msgmore(self.line_count() as i64 - old_lines);
            }
        }
        Ok(())
    }

    /// `ex_sort`: `:sort [i] [l] [r] [n|f|b|o|x] [u] [/pat/]`, `!` reversed. The key of a line is what follows the match of
    /// the pattern (`r`: the match; none: the line, a line without a match has an empty key); `n`, `x`, `b`, `o` sort
    /// on the first number in the key, `f` on a float, a line without one first. The sort is stable; `u` keeps the first
    /// of lines that are equal as text (also with a number sort), as `string_compare` says.
    fn sort(&mut self, r: Option<&LineRange>, reverse: bool, arg: &str) -> Result<(), String> {
        // `ex_sort` returns before it reads its arguments when there are fewer than two lines.
        let (first, last) = self.range0(r, true)?;
        if last <= first {
            return Ok(());
        }
        // `ex_sort` saves the lines before it reads the arguments, so a bad one still makes an undo step.
        self.u_save_lines(first, last);
        let (mut ic, mut lc, mut rx, mut uniq, mut flt, mut format_found) = (false, false, false, false, false, 0);
        let (mut nr, mut what, mut pat): (bool, u8, Option<String>) = (false, 0, None);
        let mut p = arg;
        while let Some(c) = p.chars().next() {
            let next = &p[c.len_utf8()..];
            match c {
                ' ' | '\t' => {}
                'i' => ic = true,
                'l' => lc = true,
                'r' => rx = true,
                'n' => (nr, format_found) = (true, format_found + 1),
                'f' => (flt, format_found) = (true, format_found + 1),
                'b' | 'o' | 'x' => (what, format_found) = (c as u8, format_found + 1),
                'u' => uniq = true,
                '"' => break,
                _ if script::check_nextcmd(p).is_some() => {
                    self.scripts.nextcmd = script::check_nextcmd(p).map(str::to_string);
                    break;
                }
                c if !c.is_ascii_alphabetic() && pat.is_none() => {
                    // A pattern: up to the closing delimiter, `\` takes the next char.
                    let mut it = next.char_indices();
                    let mut end = None;
                    while let Some((i, d)) = it.next() {
                        if d == '\\' {
                            it.next();
                        } else if d == c {
                            end = Some(i);
                            break;
                        }
                    }
                    let Some(end) = end else { return Err(format!("E654: Missing delimiter after search pattern: {next}")) };
                    let text = &next[..end];
                    pat = Some(if text.is_empty() {
                        match &self.last_search {
                            Some(l) => l.pat.clone(),
                            None => return Err("E35: No previous regular expression".into()),
                        }
                    } else {
                        let mut s = text;
                        field(&mut s, '\0', keep_escape).0
                    });
                    // Past the closing delimiter.
                    p = &next[end + c.len_utf8()..];
                    continue;
                }
                _ => return Err(format!("E475: Invalid argument: {p}")),
            }
            p = next;
        }
        if format_found > 1 {
            return Err("E474: Invalid argument".into());
        }
        let (a, b) = self.range0(r, true)?;
        let text = self.buf.doc.text().clone();
        let (start, end) = (text.line_to_offset(a), self.line_end_offset(b));
        let lines: Vec<std::borrow::Cow<str>> = text.lines_in(start..end).collect();
        let re = match &pat {
            Some(p) => Some(Search::new(&format!("(?m){}", self.buf.opts.case_pattern(p)))?),
            None => None,
        };
        // The key of every line: a byte range, or a number.
        enum Key {
            Str(usize, usize),
            Num(bool, i64),
            Flt(f64),
        }
        let numeric = nr || what != 0;
        let keys: Vec<Key> = lines
            .iter()
            .map(|l| {
                let (mut s, mut e) = (0, l.len());
                if let Some(re) = &re {
                    let t = piece_tree::Text::from(l.to_string());
                    match t.find_iter_in(&re.re, 0..l.len()).next() {
                        Some(m) if rx => (s, e) = (m.start, m.end),
                        Some(m) => s = m.end,
                        None => e = 0,
                    }
                }
                let key = &l[s.min(e)..e];
                if numeric {
                    match sort_number(key, what) {
                        Some(v) => Key::Num(true, v),
                        None => Key::Num(false, 0),
                    }
                } else if flt {
                    Key::Flt(sort_float(key))
                } else {
                    Key::Str(s.min(e), e)
                }
            })
            .collect();
        let str_cmp = |x: &str, y: &str| {
            if lc {
                super::collate::strcoll(x, y)
            } else if ic { x.bytes().map(|b| b.to_ascii_lowercase()).cmp(y.bytes().map(|b| b.to_ascii_lowercase())) } else { x.as_bytes().cmp(y.as_bytes()) }
        };
        let mut order: Vec<usize> = (0..lines.len()).collect();
        order.sort_by(|&x, &y| {
            let r = match (&keys[x], &keys[y]) {
                (Key::Num(px, vx), Key::Num(py, vy)) => px.cmp(py).then(vx.cmp(vy)),
                (Key::Flt(vx), Key::Flt(vy)) => vx.partial_cmp(vy).unwrap_or(std::cmp::Ordering::Equal),
                (Key::Str(sx, ex), Key::Str(sy, ey)) => str_cmp(&lines[x][*sx..*ex], &lines[y][*sy..*ey]),
                _ => std::cmp::Ordering::Equal,
            };
            // Equal keys keep the order of the lines.
            r.then(x.cmp(&y))
        });
        // `!` takes them from the end; `u` drops a line equal as text to the one put before.
        let mut out: Vec<&str> = Vec::with_capacity(lines.len());
        for i in 0..order.len() {
            let l: &str = &lines[order[if reverse { order.len() - i - 1 } else { i }]];
            if !uniq || out.last().is_none_or(|prev| str_cmp(l, prev).is_ne()) {
                out.push(l);
            }
        }
        let deleted = lines.len() - out.len();
        // Lines hold no `\n`, so equal line lists are equal texts.
        let same = deleted == 0 && out.iter().zip(&lines).all(|(o, l)| *o == &**l);
        if !same {
            let new = out.join("\n");
            // `do_sort` replaces the lines one by one: a mark stays on its line and column; `mark_adjust` only deletes the marks of
            // the lines `u` takes (the last ones of the range) and moves the lines below them.
            self.marks_manual = true;
            self.edit_replace(start..end, &new);
            self.marks_manual = false;
            if deleted > 0 {
                self.mark_adjust(b - deleted, deleted + 1, None, -(deleted as isize));
            }
        }
        if !same {
            // `changed_lines(line1, 0, line2 + 1, -deleted)`: `'.` is the first line sorted.
            let off = self.mark_off(a, 0);
            self.set_dot(off);
        }
        if deleted > 0 {
            self.msgmore(-(deleted as i64));
        }
        self.first_line(a);
        Ok(())
    }

    /// `:r [file]`: the file's lines below the last address (0: on top); the current file without
    /// a name. Line endings are converted like on load.
    // shortcut: the file is copied into the text (no structural sharing), when `Text::append_text` exists
    fn read(&mut self, r: Option<&LineRange>, file: &str) -> Result<(), String> {
        let (_, after) = self.lines(r, (self.win.line + 1, self.win.line + 1))?;
        // `ex_read` saves the line the text goes below before it looks at the file.
        self.u_save(after, after + 1);
        let path = if file.is_empty() { self.buf.path.clone().ok_or("E32: No file name")? } else { super::fname(file) };
        let content = fs::read_to_string(&path).map_err(|_e| format!("E484: Can't open file {}", path.display()))?;
        if content.is_empty() {
            return Ok(());
        }
        let (bytes, noeol) = (content.len(), !content.ends_with('\n'));
        let doc = super::doc_without_final_eol(content);
        let t = doc.text();
        let s = t.slice(0..t.len()).into_owned();
        let lines = t.line_count();
        self.insert_lines(after, &s);
        // `readfile`: no `U` after adding lines.
        self.u_clearline();
        self.first_line(after);
        // `readfile` gives the file info unless `'shortmess'` has `F` (Neovim's default has it).
        if !self.buf.opts.shortmess('F') {
            self.info(format!("\"{}\"{} {lines}L, {bytes}B", path.display(), if noeol { " [noeol]" } else { "" }));
        }
        Ok(())
    }

    /// The window number a `:close`, `:hide`, `:only` or `:quit` has: the count, or the range.
    fn window_arg(&self, r: Option<&LineRange>) -> Option<usize> {
        self.scripts.ea.count.or_else(|| match r.map(|r| &r.last.as_ref().unwrap_or(&r.first).base) {
            Some(Base::Line(n)) => Some(*n),
            _ => None,
        })
    }

    /// `:cd`, `:chdir`, `:lcd`, `:lchdir`, `:tcd`, `:tchdir` (`ex_cd`, `do_chdir`): `-` is the directory before, none is the home.
    // shortcut: 'cdpath' is not used and the directory is the process's, not the window's or the tab page's, when the scopes exist
    fn cd_cmd(&mut self, arg: &str) -> Result<(), String> {
        let old = std::env::current_dir().map(|d| d.display().to_string()).unwrap_or_default();
        let target = if arg.is_empty() {
            std::env::var("HOME").unwrap_or_default()
        } else if arg == "-" {
            match &self.prev_dir {
                Some(p) => p.clone(),
                None => {
                    self.error("E186: No previous directory");
                    return Ok(());
                }
            }
        } else {
            arg.to_string()
        };
        if !std::path::Path::new(&target).is_dir() {
            // `find_directory_in_path` says so, then `changedir_func` fails.
            self.error(format!("E344: Can't find directory \"{target}\" in cdpath"));
            self.error("E472: Command failed");
            return Ok(());
        }
        if std::env::set_current_dir(&target).is_err() {
            self.error("E472: Command failed");
            return Ok(());
        }
        if std::env::current_dir().map(|d| d.display().to_string()).unwrap_or_default() != old {
            self.prev_dir = Some(old);
        }
        // `shorten_fnames(true)`: every name is the full one under the new directory from now on.
        self.buf.sfname = None;
        for b in &mut self.buffers {
            b.sfname = None;
        }
        // A command typed shows the directory.
        if self.key_typed {
            let cwd = std::env::current_dir().map(|d| d.display().to_string()).unwrap_or_default();
            self.info(cwd);
        }
        Ok(())
    }

    /// `:q` (`all`: `:qa`): closes the window, or quits on the last one (every one with `all`)
    /// unless a buffer is modified and not `bang`. Returns false to quit.
    fn quit(&mut self, bang: bool, all: bool, wnr: Option<usize>) -> bool {
        // In the command-line window `:q` only closes it.
        if self.cmdwin.is_some() {
            self.close_cmdwin();
            return true;
        }
        if !all && self.window_ids().len() > 1 {
            // `ex_quit`: a changed buffer that is not hidden and in no other window refuses (`check_changed`); `!` unloads it.
            let id = self.window_by_number(wnr);
            let buf = if id == self.win.id { self.buf.id } else { self.windows.iter().find(|w| w.id == id).map_or(self.buf.id, |w| w.buf) };
            let nwindows = usize::from(self.win.buf == buf) + self.windows.iter().filter(|w| w.buf == buf).count();
            if !self.buf_hide() && !bang && nwindows <= 1 && self.buffer(buf).is_some_and(super::buffers::Buffer::is_dirty) {
                self.error(DIRTY);
                return true;
            }
            let free = !self.buf_hide() || bang;
            if let Err(m) = self.win_close(id, free) {
                self.error(m);
            }
            return true;
        }
        // A `:w` still running makes its buffer clean when it ends.
        self.wait_saves();
        if all {
            // `ex_quitall`: `!` quits, else every changed buffer has to be written.
            return !bang && self.check_changed_any(false, false);
        }
        // `ex_quit` on the last window: the buffer shown refuses when it is not hidden, then any buffer that is changed.
        if !self.buf_hide() && !bang && self.buf.is_dirty() {
            self.error(DIRTY);
            return true;
        }
        self.check_changed_any(bang, true)
    }

    /// `check_changed_any(hidden, unload)`: the first changed buffer (the current one, those in windows, the rest by number;
    /// with `hidden` only the ones no window shows) is named by `E37` and `E162`, and shown in the current window. True then.
    fn check_changed_any(&mut self, hidden: bool, unload: bool) -> bool {
        let mut order: Vec<usize> = vec![self.buf.id];
        order.extend(self.window_ids().into_iter().filter(|&w| w != self.win.id).filter_map(|w| self.windows.iter().find(|x| x.id == w).map(|x| x.buf)));
        order.extend(self.all_buffers().iter().map(|b| b.id));
        let mut seen = Vec::new();
        order.retain(|id| !seen.contains(id) && { seen.push(*id); true });
        let found = order.into_iter().find(|&id| {
            let shown = usize::from(self.win.buf == id) + self.windows.iter().filter(|w| w.buf == id).count();
            (!hidden || shown == 0) && self.buffer(id).is_some_and(super::buffers::Buffer::is_dirty)
        });
        let Some(id) = found else { return false };
        self.error("E37: No write since last change");
        let name = self.buffer(id).map_or_else(String::new, |b| b.name());
        self.error(format!("E162: No write since last change for buffer \"{name}\""));
        // The buffer is opened in the current window (a window that shows it gets the cursor first).
        if id != self.buf.id {
            if let Some(w) = self.windows.iter().find(|w| w.buf == id).map(|w| w.id) {
                self.win_enter(w);
            } else {
                let prev = self.buf.id;
                self.set_jump();
                self.switch_buffer(id);
                self.unload_if_unused(prev, unload);
            }
        }
        true
    }

    /// `:w`, `:w!`, `:[range]w[!] file`, `:w >> file`. Writing to another file leaves the buffer's
    /// file and modified state alone; an existing other file needs `!`.
    fn write_cmd(&mut self, r: Option<&LineRange>, bang: bool, arg: &str) -> Result<(), String> {
        let (append, file) = match arg.strip_prefix(">>") {
            Some(f) => (true, f.trim()),
            None => (false, arg),
        };
        // `do_write`: writing the current file (no name, or the name of the buffer) is not allowed for `nofile`, `nowrite` and
        // `prompt` buffers.
        if (file.is_empty() || self.buf.path.as_ref() == Some(&super::fname(file))) && self.buf.opts.bt_dontwrite() {
            return Err(BT_DONTWRITE.into());
        }
        if file.is_empty() && self.buf.path.is_none() {
            return Err("E32: No file name".into());
        }
        let path = if file.is_empty() { self.buf.path.clone().expect("checked above") } else { super::fname(file) };
        // A buffer without a name takes the one it is written to, like vim.
        // `buf_write`: an unnamed buffer takes the name it is written to ('cpoptions' `F`), but not one whose name is no file name.
        if self.buf.path.is_none() && r.is_none() && !append && !self.buf.opts.bt_nofilename() {
            if !bang && path.exists() {
                return Err("E13: File exists (add ! to override)".into());
            }
            self.buf.path = Some(path);
            self.buf.opts.filetype = self.buf.path.as_deref().map_or("", super::filetype::detect).into();
            self.save_other(false);
            return Ok(());
        }
        let own = self.buf.path.as_ref() == Some(&path);
        // `buf_write`: the file of an `acwrite` (or `nofile`, `prompt`) buffer is written by autocommands only, and there are none.
        if own && self.buf.opts.bt_nofilename() {
            return Err(self.no_autocmds());
        }
        // `do_write`: another name becomes the alternate file (`setaltfname`) before anything can fail.
        if !own && !file.is_empty() {
            let found = self.buffers.iter().find(|b| b.path.as_deref().is_some_and(|p| super::buffers::same_file(p, &path))).map(|b| b.id);
            let id = found.unwrap_or_else(|| {
                // `setaltfname(.., 1)`: a buffer made here has line 1 in its window info.
                let id = self.buflist_add_path(path.clone());
                self.set_sfname(id, file);
                if let Some(w) = self.buffers.iter_mut().find(|b| b.id == id).and_then(|b| b.wininfo.first_mut()) {
                    w.lnum = 1;
                }
                id
            });
            self.win.alt = Some(id);
        }
        // `check_readonly`: the file of a 'readonly' buffer is not written without `!`.
        if own && self.buf.opts.readonly && !bang {
            return Err("E45: 'readonly' option is set (add ! to override)".into());
        }
        if r.is_none() && own && !append {
            self.save(false);
            return Ok(());
        }
        if r.is_some() && own && !append && !bang {
            return Err("E140: Use ! to write partial buffer".into());
        }
        if !own && !append && !bang && path.exists() {
            return Err("E13: File exists (add ! to override)".into());
        }
        // `buf_write`: appending needs the file, `!` creates it.
        if append && !bang && !path.exists() {
            return Err("E212: Can't open file for writing: no such file or directory".into());
        }
        let (a, b) = self.range0(r, true)?;
        let text = self.buf.doc.text();
        // The lines of the range without their last break: `write_atomic` ends the file with one.
        let part = text.delete(text.line_end(b)..text.len()).delete(0..text.line_to_offset(a));
        let eol = self.buf.doc.eol();
        let o = &self.buf.opts;
        // The last line of the buffer keeps its break on `'endofline'` alone (`bufwrite.c`).
        let final_eol = b + 1 < text.line_count() || !((o.binary || !o.fixendofline) && !o.endofline);
        let empty = self.buf.ml_empty();
        let res = if append { append_to(&path, &part, eol, final_eol, empty) } else { write_atomic(&path, &part, eol, final_eol, empty) };
        res.map_err(|e| format!("Save failed: {e}"))?;
        self.info(format!("\"{}\" {}L written", path.display(), b - a + 1));
        Ok(())
    }

    /// `e_no_matching_autocommands_for_buftype_str_buffer`.
    fn no_autocmds(&self) -> String {
        format!("E676: No matching autocommands for buftype={} buffer", self.buf.opts.buftype)
    }

    /// `:sav[!] file`: writes the buffer there and edits that file from now on.
    fn save_as(&mut self, bang: bool, file: &str) -> Result<(), String> {
        if file.is_empty() {
            return Err("E471: Argument required".into());
        }
        let path = super::fname(file);
        if !bang && self.buf.path.as_ref() != Some(&path) && path.exists() {
            return Err("E13: File exists (add ! to override)".into());
        }
        let old = (self.buf.path.replace(path), self.buf.sfname.replace(file.to_string()));
        // The names are exchanged before `buf_write`: the buffer now writes its own file.
        if self.buf.opts.bt_nofilename() {
            let m = self.no_autocmds();
            let old_path = old.0.clone();
            if let Some(p) = old_path {
                let id = self.buflist_add_path(p);
                if let Some(b) = self.buffer_mut(id) {
                    b.sfname = old.1.clone();
                }
                self.win.alt = Some(id);
            }
            return Err(m);
        }
        if !self.save_other(true) {
            (self.buf.path, self.buf.sfname) = old;
        } else if let (Some(old_path), old_sfname) = old {
            // `do_write` of `:saveas` exchanges the names of the current and the alternate buffer: the old name is the alternate
            // file now (an unlisted buffer that is not loaded).
            let id = self.buflist_add_path(old_path);
            if let Some(b) = self.buffer_mut(id) {
                b.sfname = old_sfname;
            }
            self.win.alt = Some(id);
        }
        Ok(())
    }

    /// `:ret[ab][!] [N]`: blank runs holding tabs are redone for tab stop N (then the new
    /// `tabstop`): as spaces with `expandtab`, else as tabs plus spaces, and then `!` also turns
    /// runs of spaces into tabs.
    fn retab(&mut self, r: Option<&LineRange>, all: bool, arg: &str) -> Result<(), String> {
        let (indent_only, arg) = match arg.strip_prefix("-indentonly") {
            Some(rest) if rest.is_empty() || rest.starts_with([' ', '\t']) => (true, rest.trim_start_matches([' ', '\t'])),
            _ => (false, arg),
        };
        let given = tabstop_set(arg)?;
        let (a, b) = self.range0(r, true)?;
        // The cursor goes back to the column it wanted on its line (`coladvance(curwin, curwin->w_curswant)`).
        let want = self.win.want_col;
        // The widths are those of the stops now; the new text is made for the stops asked for, or those now when none were.
        let (ts, old_vts) = (self.buf.opts.tabstop, self.buf.opts.vts_array.clone());
        let new_vts = if given.is_empty() { old_vts.clone() } else { given.clone() };
        let (old, new) = (Tabs { ts, vts: &old_vts }, Tabs { ts, vts: &new_vts });
        let mut first = None;
        let snap = self.buf.doc.text().clone();
        for (l, line) in super::lines_between(&snap, a, b) {
            let (s, touched) = retab_line(&line, old, new, all, self.buf.opts.expandtab, indent_only);
            if s != line {
                let start = self.buf.doc.text().line_to_offset(l);
                self.u_save_line(l);
                self.edit_replace(start..start + line.len(), &s);
            }
            if touched {
                first.get_or_insert(l);
            }
        }
        // `changed_lines(first_line, 0, ..)`.
        if let Some(l) = first {
            let off = self.mark_off(l, 0);
            self.set_dot(off);
        }
        // `ex_retab`.
        self.u_clearline();
        // A new value was given: with a list in use or more than one stop it is the new 'vartabstop' (`set_option_direct`),
        // else it is the new 'tabstop'.
        if !given.is_empty() {
            if !old_vts.is_empty() || given.len() > 1 {
                let text = arg.trim_end_matches(|c: char| !(c.is_ascii_digit() || c == ','));
                (self.buf.opts.vartabstop, self.buf.opts.vts_array) = (text.to_string(), given);
            } else {
                self.buf.opts.tabstop = given[0];
            }
        }
        let l = self.win.line;
        self.win.col = self.coladvance(l, want);
        Ok(())
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn at(base: Base, offset: isize) -> Addr {
        Addr { base, offset }
    }

    fn range(cmd: &str) -> Result<Option<LineRange>, String> {
        parse(cmd).map(|c| c.range)
    }

    fn two(a: Addr, b: Addr) -> Result<Option<LineRange>, String> {
        Ok(Some(LineRange { first: a, last: Some(b), semi: false }))
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn ranges() {
        let (one, last, cur) = (at(Base::Line(1), 0), at(Base::Last, 0), at(Base::Current, 0));
        assert_eq!(range("%d"), two(one, last.clone()));
        assert_eq!(range("3d"), Ok(Some(LineRange { first: at(Base::Line(3), 0), last: None, semi: false })));
        assert_eq!(range(".,$d"), two(cur, last.clone()));
        assert_eq!(range("'<,'>d"), two(at(Base::Mark('<'), 0), at(Base::Mark('>'), 0)));
        assert_eq!(range(".+1,$-2d"), two(at(Base::Current, 1), at(Base::Last, -2)));
        assert_eq!(range("+,++d"), two(at(Base::Current, 1), at(Base::Current, 2)));
        assert_eq!(range(" :2,3d"), two(at(Base::Line(2), 0), at(Base::Line(3), 0)));
        assert_eq!(range("d"), Ok(None));
        let search = |pat: &str, back| at(Base::Search { pat: pat.into(), back }, 0);
        assert_eq!(range("/a\\/b/+1;?c?d"), Ok(Some(LineRange { first: at(Base::Search { pat: "a/b".into(), back: false }, 1), last: Some(search("c", true)), semi: true })));
        assert_eq!(range("/x"), Ok(Some(LineRange { first: search("x", false), last: None, semi: false })));
        assert_eq!(range(r"\/,\?"), two(at(Base::Again { back: false, sub: false }, 0), at(Base::Again { back: true, sub: false }, 0)));
        assert_eq!(range(r"\/;\&p"), Ok(Some(LineRange { first: at(Base::Again { back: false, sub: false }, 0), last: Some(at(Base::Again { back: false, sub: true }, 0)), semi: true })));
        assert_eq!(range(r"\?"), Ok(Some(LineRange { first: at(Base::Again { back: true, sub: false }, 0), last: None, semi: false })));
        for bad in ["2,d", "'", "99999999999999999999999d", "1,'"] {
            assert_eq!(range(bad), Err("Invalid range".into()), "{bad}");
        }
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn names_and_arguments() {
        let name_arg = |cmd| parse(cmd).map(|c| (c.name, c.arg));
        assert_eq!(name_arg("s/a/b/"), Ok(("s", "/a/b/")));
        assert_eq!(name_arg("2,3 sort! u"), Ok(("sort", "! u")));
        assert_eq!(name_arg(">>2"), Ok((">", ">2")));
        assert_eq!(name_arg("&&"), Ok(("&", "&")));
        assert_eq!(name_arg("t."), Ok(("t", ".")));
        assert_eq!(name_arg("|"), Ok(("", "|")));
        assert!(abbr("del", "d", "delete") && !abbr("dx", "d", "delete") && !abbr("n", "norm", "normal"));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn registers_and_counts() {
        use super::script::{EXFLAG_LIST, EXFLAG_NR};
        // `:d` takes a register and a count (`_` and `-` are registers), `:p` a count and flags.
        let prefix = |name, a| crate::editor::script::parse_prefix(crate::editor::script::cmdline_argt(name), a, false).map(|(p, rest)| (p.reg, p.count, p.flags, rest));
        assert_eq!(prefix("delete", ""), Ok((None, None, 0, "")));
        assert_eq!(prefix("delete", "a 3"), Ok((Some('a'), Some(3), 0, "")));
        assert_eq!(prefix("delete", "12"), Ok((None, Some(12), 0, "")));
        assert_eq!(prefix("delete", "_"), Ok((Some('_'), None, 0, "")));
        assert_eq!(prefix("print", "2 # l"), Ok((None, Some(2), EXFLAG_NR | EXFLAG_LIST, "")));
        assert_eq!(prefix("delete", "%"), Ok((None, None, 0, "%")));
        assert_eq!(prefix("delete", "0"), Err("E939: Positive count required"));
        assert_eq!(prefix("delete", "a b"), Ok((Some('a'), None, 0, "b")));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn print_line_text() {
        // The Tab is blanks up to 'tabstop', or `>` and blanks with `list`; the empty line is a blank.
        assert_eq!(msg_prt_line("a\tb", false, Tabs::every(8)), "a       b");
        assert_eq!(msg_prt_line("\tb", true, Tabs::every(8)), ">       b");
        assert_eq!(msg_prt_line("", false, Tabs::every(8)), " ");
        assert_eq!(msg_prt_line("x  \t", true, Tabs::every(4)), "x-->");
        assert_eq!(msg_prt_line("a\u{a0}b\x01", true, Tabs::every(4)), "a+b^A");
        assert_eq!(msg_prt_line("日\tx", false, Tabs::every(4)), "日  x");
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn retab_lines() {
        assert_eq!(retab_line("\tx", Tabs::every(4), Tabs { ts: 8, vts: &[8] }, false, false, false).0, "    x");
        assert_eq!(retab_line("\t\tx", Tabs::every(4), Tabs { ts: 8, vts: &[8] }, false, false, false).0, "\tx");
        assert_eq!(retab_line("ab\t x\t", Tabs::every(2), Tabs { ts: 4, vts: &[4] }, false, false, false).0, "ab\t x\t");
        assert_eq!(retab_line("\t\tx", Tabs::every(2), Tabs { ts: 4, vts: &[4] }, false, false, false).0, "\tx");
        assert_eq!(retab_line("        x  y", Tabs::every(4), Tabs { ts: 4, vts: &[4] }, false, false, false).0, "        x  y");
        assert_eq!(retab_line("        x  y", Tabs::every(4), Tabs { ts: 4, vts: &[4] }, true, false, false).0, "\t\tx  y");
        assert_eq!(retab_line("x ", Tabs::every(4), Tabs { ts: 4, vts: &[4] }, true, false, false).0, "x ");
        // Wide chars and clusters count their screen cells: `日` takes 2, `e` + U+0301 one.
        assert_eq!(retab_line("日\tx", Tabs::every(4), Tabs { ts: 8, vts: &[8] }, false, false, false).0, "日  x");
        assert_eq!(retab_line("日\tx", Tabs::every(4), Tabs { ts: 4, vts: &[4] }, false, true, false).0, "日  x");
        assert_eq!(retab_line("e\u{301}\tx", Tabs::every(4), Tabs { ts: 8, vts: &[8] }, false, true, false).0, "e\u{301}   x");
        assert_eq!(retab_line("日本語  x", Tabs::every(4), Tabs { ts: 4, vts: &[4] }, true, false, false).0, "日本語\tx");
    }

    /// `LineMarks::map` against mapping every line through every edit.
    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn line_marks_match_the_plain_mapping() {
        let text = Text::from("aa\nbb\ncc\ndd\nee");
        let edits = [
            Edit { start: 0, old_len: 3, new_len: 0 },  // deletes line 0: before the next line
            Edit { start: 2, old_len: 1, new_len: 1 },  // inside line 1 ("cc" is now at 3)
            Edit { start: 5, old_len: 4, new_len: 1 },  // removes "\ndd\n": joins and drops "dd"
            Edit { start: 0, old_len: 0, new_len: 2 },  // insertion on top
        ];
        let mut marks = LineMarks::new(&text, 1..5);
        marks.pop(&text);
        let mut plain = marks.lines.clone();
        for ed in &edits {
            marks.map(std::slice::from_ref(ed), &text);
            for (s, e, alive) in &mut plain[1..] {
                *alive &= !(ed.old_len > 0 && ed.start <= *s && *e <= ed.start + ed.old_len);
                (*s, *e) = (ed.map(*s), ed.map(*e));
            }
        }
        let got: Vec<_> = marks.lines[1..].iter().map(|&(s, e, a)| (marks.at(s), marks.at(e), a)).collect();
        assert_eq!(got, plain[1..]);
        let mut marks = LineMarks::new(&text, 0..0);
        marks.map(&edits, &text);
        assert_eq!(marks.pop(&text), None);
    }
}
