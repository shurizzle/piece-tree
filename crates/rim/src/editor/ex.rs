//! Ex command lines: the range (`%`, `.`, `$`, `N`, `'x`, `/pat/`, `?pat?`, `\/`, `\?`, `\&`,
//! `+N`/`-N`, `,`/`;`), the command name and its argument, and the commands that work on lines.

use std::{
    fs,
    io::{self, BufWriter},
    mem,
    path::{Path, PathBuf},
};

use crossterm::event::{KeyCode, KeyEvent};
use piece_tree::{Document, Edit, LineEnding, Text};

use super::{script::AddrType, Editor, Kind, Mode, windows::Resize, graphemes, parse::{self, valid_reg}, script, search::{self, Search}, substitute};

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

/// A delimiter for `:s`, `:g` and `:sort` patterns: not a letter, digit, blank, `\`, `"` or `|`.
pub(super) fn is_delim(d: char) -> bool {
    !(d.is_alphanumeric() || d.is_whitespace() || matches!(d, '\\' | '"' | '|'))
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
    let n = if s.starts_with(|c: char| c.is_ascii_alphabetic()) {
        s.find(|c: char| !c.is_ascii_alphabetic()).unwrap_or(s.len())
    } else {
        usize::from(s.starts_with(['&', '<', '>', '=']))
    };
    Ok(ExCmd { range, name: &s[..n], arg: &s[n..] })
}

/// `name` is `long` or an abbreviation of it at least as long as `short` (vim's `:d[elete]`).
const DIRTY: &str = "No write since last change (add ! to override)";

pub(super) fn abbr(name: &str, short: &str, long: &str) -> bool {
    name.len() >= short.len() && long.starts_with(name)
}

/// Commands that leave the command-line window (E11 there).
const CMDWIN_REFUSES: &[(&str, &str)] = &[
    ("e", "edit"),
    ("ene", "enew"),
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
    "bNext", "bdelete", "bnext", "bprevious", "break", "buffer", "buffers", "call", "close", "compact", "continue", "copy", "defer", "delete", "digraphs", "earlier", "echo", "echoerr",
    "echomsg", "echon", "edit", "else", "elseif", "endfor", "endif", "endwhile", "enew", "execute", "files", "finish", "for", "global", "goto", "highlight", "if", "join", "later",
    "let", "ls", "messages", "move", "new", "nohlsearch", "normal", "only", "print", "qall", "quit", "quitall", "read", "redo", "retab", "saveas", "set", "sort", "source", "split",
    "stats", "substitute", "syntax", "undo", "undolist", "unlet", "vglobal", "vnew", "vsplit", "while", "wq", "wqall", "write", "xall", "xit", "yank",
];

/// Commands whose argument is a file name, as (shortest abbreviation, name).
pub(super) const FILE_COMMANDS: &[(&str, &str)] =
    &[("e", "edit"), ("sp", "split"), ("vs", "vsplit"), ("r", "read"), ("w", "write"), ("sav", "saveas"), ("wq", "wq"), ("x", "xit")];

/// `[x] [count]` after `:d` and `:y`.
fn reg_count(arg: &str) -> Result<(Option<char>, Option<usize>), String> {
    let mut s = arg;
    let reg = s.chars().next().filter(|c| !c.is_ascii_digit());
    if let Some(c) = reg {
        if !valid_reg(c) {
            return Err(format!("Invalid register: {c}"));
        }
        s = s[c.len_utf8()..].trim_start();
    }
    Ok((reg, count(s)?))
}

/// An optional count; zero is an error, like vim's E939.
fn count(s: &str) -> Result<Option<usize>, String> {
    match s {
        "" => Ok(None),
        s => match s.parse::<usize>() {
            Ok(0) => Err("E939: Positive count required".into()),
            Ok(n) => Ok(Some(n)),
            Err(_) => Err(format!("Trailing characters: {s}")),
        },
    }
}


fn ff_name(eol: LineEnding) -> &'static str {
    match eol {
        LineEnding::Lf => "unix",
        LineEnding::CrLf => "dos",
        LineEnding::Cr => "mac",
    }
}

/// `:retab` of one line: each run of blanks holding a tab (with `all`, also runs of two or more
/// spaces) is rewritten for tab stop `new`, keeping its width under tab stop `old`. Columns are
/// screen cells of the clusters before the run (a wide char counts 2).
fn retab_line(s: &str, old: usize, new: usize, all: bool, et: bool) -> String {
    let mut out = String::with_capacity(s.len());
    let (mut col, mut run, mut run_col, mut tab) = (0, String::new(), 0, false);
    let flush = |out: &mut String, run: &mut String, start: usize, end: usize, tab: bool| {
        if et && tab {
            out.extend(std::iter::repeat_n(' ', end - start));
        } else if !et && (tab || (all && run.len() > 1)) {
            let mut c = start;
            while (c / new + 1) * new <= end {
                out.push('\t');
                c = (c / new + 1) * new;
            }
            out.extend(std::iter::repeat_n(' ', end - c));
        } else {
            out.push_str(run);
        }
        run.clear();
    };
    for g in graphemes::iter(s) {
        match g {
            " " | "\t" => {
                let ch = if g == " " { ' ' } else { '\t' };
                if run.is_empty() {
                    (run_col, tab) = (col, false);
                }
                run.push(ch);
                tab |= ch == '\t';
                col = if ch == '\t' { (col / old + 1) * old } else { col + 1 };
            }
            _ => {
                if !run.is_empty() {
                    flush(&mut out, &mut run, run_col, col, tab);
                }
                out.push_str(g);
                // Screen cells, so a tab after wide chars keeps its place on screen.
                col += graphemes::width(g, old);
            }
        }
    }
    if !run.is_empty() {
        flush(&mut out, &mut run, run_col, col, tab);
    }
    out
}

/// Writes through a temp file renamed over the target, so a failed write never truncates it.
/// Symlinks are followed so the link survives and the temp file sits on the target's filesystem.
pub(super) fn write_atomic(path: &Path, text: &Text, eol: LineEnding) -> io::Result<()> {
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
    text.write_to(&mut w, eol)?;
    w.into_inner().map_err(io::IntoInnerError::into_error)?.sync_all()?;
    fs::rename(&tmp, &target)
}

fn append_to(path: &Path, text: &Text, eol: LineEnding) -> io::Result<()> {
    let file = fs::OpenOptions::new().append(true).create(true).open(path)?;
    let mut w = BufWriter::new(file);
    text.write_to(&mut w, eol)?;
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

    pub fn map(&mut self, edits: &[Edit]) {
        for ed in edits {
            let Some(&(s, _, _)) = self.lines.get(self.next) else { return };
            let delta = ed.new_len as isize - ed.old_len as isize;
            if ed.start + ed.old_len <= self.at(s) {
                self.shift += delta;
                continue;
            }
            let shift = mem::take(&mut self.shift);
            for (s, e, alive) in &mut self.lines[self.next..] {
                let (a, b) = (s.wrapping_add_signed(shift), e.wrapping_add_signed(shift));
                *alive &= !(ed.old_len > 0 && ed.start <= a && b <= ed.start + ed.old_len);
                (*s, *e) = (ed.map(a), ed.map(b));
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
            "wq" => return !self.save(true) || self.quit(false, false),
            "x" | "xi" | "xit" => return self.is_dirty() && !self.save(true) || self.quit(false, false),
            "wqa" | "wqal" | "wqall" | "xa" | "xal" | "xall" => {
                let dirty: Vec<usize> = [&self.buf].into_iter().chain(&self.buffers).filter(|b| b.is_dirty()).map(|b| b.id).collect();
                let ok = dirty.into_iter().all(|id| self.save_buffer(id, true));
                return !ok || self.quit(false, true);
            }
            _ if abbr(n, "w", "write") => self.write_cmd(r, bang, a),
            _ if abbr(n, "q", "quit") => return self.quit(bang, false),
            _ if abbr(n, "qa", "qall") || abbr(n, "quita", "quitall") => return self.quit(bang, true),
            _ if abbr(n, "clo", "close") => self.close_window(),
            _ if abbr(n, "on", "only") => {
                self.only_window();
                Ok(())
            }
            "let" => self.let_cmd(a),
            _ if abbr(n, "so", "source") => match self.source_cmd(r, bang, a) {
                Ok(go) => return go,
                Err(e) => Err(e),
            },
            _ if abbr(n, "unl", "unlet") => self.unlet_cmd(bang, a),
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
                self.enew();
                Ok(())
            }
            _ if abbr(n, "new", "new") || abbr(n, "vne", "vnew") => {
                self.split_window(n.starts_with('v'));
                self.enew();
                Ok(())
            }
            _ if abbr(n, "sp", "split") || abbr(n, "vs", "vsplit") => {
                self.split_window(n.starts_with('v'));
                if a.is_empty() { Ok(()) } else { self.edit_file(a) }
            }
            _ if abbr(n, "e", "edit") && !a.is_empty() => self.edit_file(a),
            _ if abbr(n, "bn", "bnext") || abbr(n, "bp", "bprevious") || abbr(n, "bN", "bNext") => {
                let count = if a.is_empty() { Ok(1) } else { a.parse().map_err(|_| format!("Invalid count: {a}")) };
                count.map(|k| self.cycle_buffer(if n.starts_with("bn") { 1 } else { -1 }, k))
            }
            _ if abbr(n, "b", "buffer") && a.is_empty() => Ok(()),
            _ if abbr(n, "b", "buffer") => self.goto_buffer(a),
            _ if abbr(n, "ls", "ls") || abbr(n, "buffers", "buffers") || abbr(n, "files", "files") => {
                self.info(self.list_buffers());
                Ok(())
            }
            _ if abbr(n, "bd", "bdelete") => self.delete_buffer(bang, a),
            _ if abbr(n, "e", "edit") && a.is_empty() => {
                self.wait_saves();
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
                self.info(self.undolist());
                Ok(())
            }
            "go" | "got" | "goto" => self.goto_byte(a),
            _ if let Some(&(_, long)) = [("ea", "earlier"), ("lat", "later"), ("u", "undo"), ("red", "redo")].iter().find(|(short, long)| abbr(n, short, long)) => {
                self.time_travel(long, a);
                Ok(())
            }
            _ if abbr(n, "se", "set") => self.set_cmd(a),
            _ if abbr(n, "d", "delete") => self.delete_yank(r, a, false),
            _ if abbr(n, "y", "yank") => self.delete_yank(r, a, true),
            _ if abbr(n, "m", "move") => self.move_lines(r, a),
            "t" => self.copy_lines(r, a),
            _ if abbr(n, "co", "copy") => self.copy_lines(r, a),
            ">" | "<" => self.shift_cmd(r, n == ">", a),
            _ if abbr(n, "j", "join") => self.join_cmd(r, bang, a),
            _ if abbr(n, "p", "print") => self.print(r),
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
        self.win.col = self.win.want_col.min(self.line_chars(l).saturating_sub(1));
    }

    pub(in crate::editor) fn first_line(&mut self, l: usize) {
        self.win.line = l;
        self.set_col(self.first_non_blank(l));
    }

    /// `:N`, `:/pat/`, `:'a`: the cursor goes to the last address; past the end, the last line.
    pub(in crate::editor) fn goto_line(&mut self, r: Option<&LineRange>) -> Result<(), String> {
        let (_, b) = self.lines_clamped(r, (0, 0), true)?;
        self.set_jump();
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
                self.win.want_col = self.win.col;
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
                self.split_window(true);
                if rest.is_empty() { Ok(()) } else { self.edit_file(rest) }
            }
            _ if abbr(sub, "new", "new") => {
                self.split_window(true);
                self.enew();
                Ok(())
            }
            _ => Err(format!("Not an editor command: vertical {arg}")),
        }
    }

    /// `:set`, with `ff`/`fileformat` (the document's line ending) handled here.
    fn set_cmd(&mut self, arg: &str) -> Result<(), String> {
        let (mut shown, mut rest) = (Vec::new(), Vec::new());
        for tok in arg.split_whitespace() {
            match tok.split_once('=') {
                Some(("ff" | "fileformat", v)) => self.buf.doc.set_eol(match v {
                    "unix" => LineEnding::Lf,
                    "dos" => LineEnding::CrLf,
                    "mac" => LineEnding::Cr,
                    _ => return Err(format!("Invalid argument: {tok}")),
                }),
                None if matches!(tok.trim_end_matches('?'), "ff" | "fileformat") => shown.push(format!("fileformat={}", ff_name(self.buf.doc.eol()))),
                _ if let Some(s) = self.window_option(tok) => shown.push(s),
                _ => rest.push(tok),
            }
        }
        if !rest.is_empty() || arg.is_empty() {
            let (text, err) = self.buf.opts.set_all(&rest.join(" "));
            // Screen options hold for every buffer, not only the one shown.
            for b in &mut self.buffers {
                self.buf.opts.copy_global(&mut b.opts);
            }
            shown.push(text);
            self.sync_cmdwin_height();
            shown.retain(|s| !s.is_empty());
            // What was shown before the error stays.
            if !shown.is_empty() || err.is_none() {
                self.info(shown.join("\n"));
            }
            return err.map_or(Ok(()), Err);
        }
        shown.retain(|s| !s.is_empty());
        self.info(shown.join("\n"));
        Ok(())
    }

    fn delete_yank(&mut self, r: Option<&LineRange>, arg: &str, yank: bool) -> Result<(), String> {
        let (reg, count) = reg_count(arg)?;
        let (a, b) = self.range0(r, false)?;
        let (a, b) = self.counted((a, b), count);
        let keep = (self.win.line, self.win.col);
        self.cur_reg = reg;
        self.operate(if yank { 'y' } else { 'd' }, (a, 0), (b, 0), Kind::Linewise);
        if yank {
            (self.win.line, self.win.col) = keep;
        }
        Ok(())
    }

    /// Lines `a..=b` without the line break after `b`.
    fn lines_text(&self, a: usize, b: usize) -> String {
        let text = self.buf.doc.text();
        text.slice(text.line_to_offset(a)..self.line_end_offset(b)).into_owned()
    }

    /// Inserts `block` (lines without a final line break) below 1-based line `after` (0: on top).
    pub(in crate::editor) fn insert_lines(&mut self, after: usize, block: &str) {
        if after == 0 {
            self.edit_insert(0, &format!("{block}\n"));
        } else {
            let off = self.line_end_offset(after - 1);
            self.edit_insert(off, &format!("\n{block}"));
        }
    }

    /// Removes lines `a..=b` with one line break (the one before, on the last line).
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
    // shortcut: marks on moved lines stay where the lines were, when marks follow moved lines
    fn move_lines(&mut self, r: Option<&LineRange>, arg: &str) -> Result<(), String> {
        let (a, b) = self.range0(r, false)?;
        let dest = self.dest(arg)?;
        if dest > a && dest <= b {
            return Err("E134: Cannot move a range of lines into itself".into());
        }
        let n = b - a + 1;
        let last = if dest == a || dest == b + 1 {
            b
        } else {
            let block = self.lines_text(a, b);
            if dest > b {
                self.insert_lines(dest, &block);
                self.delete_lines(a, b);
                dest - 1
            } else {
                self.delete_lines(a, b);
                self.insert_lines(dest, &block);
                dest + n - 1
            }
        };
        self.line_wanted_col(last);
        // `do_move`: a message over 'report' lines (a `:global` stays quiet).
        if n > self.buf.opts.report && !self.scripts.global_busy {
            self.info(format!("{n} line{} moved", if n == 1 { "" } else { "s" }));
        }
        Ok(())
    }

    /// `:t {address}`/`:co`: a copy of the lines below the address; the cursor on its last line.
    fn copy_lines(&mut self, r: Option<&LineRange>, arg: &str) -> Result<(), String> {
        let (a, b) = self.range0(r, false)?;
        let dest = self.dest(arg)?;
        let block = self.lines_text(a, b);
        self.insert_lines(dest, &block);
        self.line_wanted_col(dest + b - a);
        self.msgmore((b - a + 1) as i64);
        Ok(())
    }

    /// `:>`/`:<`, `:>>> 3`: each extra `>` shifts once more.
    fn shift_cmd(&mut self, r: Option<&LineRange>, right: bool, arg: &str) -> Result<(), String> {
        let ch = if right { '>' } else { '<' };
        let extra = arg.chars().take_while(|&c| c == ch).count();
        let n = count(arg[extra..].trim())?;
        let (a, b) = self.range0(r, false)?;
        let (a, b) = self.counted((a, b), n);
        self.shift(a, b, right, extra + 1);
        // `op_shift`: the cursor stays on the last line, at the end of its new indent (`set_indent`).
        self.win.line = b;
        self.win.col = self.buf.doc.text().line(b).chars().take_while(|c| matches!(c, ' ' | '\t')).count();
        let last_col = self.line_chars(b).saturating_sub(1);
        if self.line_chars(b) == 0 {
            self.win.col = 0;
        } else {
            self.win.col = self.win.col.min(last_col);
        }
        Ok(())
    }

    /// `:j`: one address joins with the next line; `:j!` keeps blanks and adds no space.
    fn join_cmd(&mut self, r: Option<&LineRange>, bang: bool, arg: &str) -> Result<(), String> {
        let n = count(arg)?;
        let (a, b) = self.range0(r, false)?;
        let (a, b) = match n {
            Some(n) => (b, b + n - 1),
            None if a == b => (a, a + 1),
            None => (a, b),
        };
        let b = b.min(self.line_count() - 1);
        self.win.line = a;
        self.join(b.saturating_sub(a), !bang);
        // `ex_join`: `beginline(BL_WHITE | BL_FIX)`.
        let l = self.win.line;
        self.first_line(l);
        Ok(())
    }

    /// `:p`: the cursor goes to the last line, which is shown.
    // shortcut: an empty buffer is one without text, Neovim's is one without lines (`ML_EMPTY`)
    pub(in crate::editor) fn print(&mut self, r: Option<&LineRange>) -> Result<(), String> {
        let (a, b) = self.range0(r, false)?;
        // `ex_print`: an empty buffer is an error, else every line of the range is shown.
        if self.buf.doc.text().is_empty() {
            self.error("E749: Empty buffer");
            return Ok(());
        }
        for l in a..=b {
            // An empty line is shown as a blank, else the next message would overwrite it (`msg_prt_line`).
            let text = self.buf.doc.text().line(l).into_owned();
            self.info(if text.is_empty() { " ".to_string() } else { text });
        }
        self.set_jump();
        self.line_wanted_col(b);
        Ok(())
    }

    /// Runs `keys` as typed in Normal mode; an unfinished command or insert ends as with Esc.
    fn run_keys(&mut self, keys: &[KeyEvent]) {
        // Counted as a macro: the keys are not recorded by `q`.
        self.macro_depth += 1;
        self.mode = Mode::Normal;
        for &k in keys {
            if !self.key(k) {
                break;
            }
        }
        if self.mode != Mode::Normal {
            self.key(KeyCode::Esc.into());
        }
        self.pending.clear();
        self.macro_depth -= 1;
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
        self.for_lines(a..=b, |e| e.run_keys(&keys));
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
        if !self.line_marks.is_empty() {
            return Err("Cannot do :global recursive".into());
        }
        let d = arg.chars().next().filter(|&d| is_delim(d)).ok_or("Regular expression missing from :global")?;
        let mut s = &arg[d.len_utf8()..];
        let (pat, _) = field(&mut s, d, keep_escape);
        let cmd = if s.trim().is_empty() { "p" } else { s };
        let (a, b) = self.range0(r, true)?;
        let search = self.ex_regex(&pat)?;
        self.hl = true;
        let text = self.buf.doc.text().clone();
        let (start, end) = (text.line_to_offset(a), self.line_end_offset(b));
        let mut hit = vec![invert; b - a + 1];
        for m in text.find_iter_in(&search.re, start..end).take_while(|m| m.start <= end) {
            hit[text.offset_to_line(m.start) - a] = !invert;
        }
        if !hit.contains(&true) {
            return Err(if invert { format!("Pattern found in every line: {}", search.pat) } else { format!("E486: Pattern not found: {}", search.pat) });
        }
        self.set_jump();
        // `global_exe`: the reports of what the commands do wait for the end.
        (self.scripts.sub_nsubs, self.scripts.sub_nlines) = (0, 0);
        self.scripts.global_busy = true;
        self.scripts.global_error = false;
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
        // Substitutions are reported, else the lines that were added or taken away.
        if !self.do_sub_msg(false) {
            self.msgmore(self.line_count() as i64 - old_lines);
        }
        Ok(())
    }

    /// `:sort [i] [n] [u] [r] [/pat/]`, `!` reversed. With a pattern, lines are sorted by what
    /// follows the first match (`r`: by the match); lines without one stay first, in order (last,
    /// reversed, with `!`). `n` sorts by the first decimal number (`-` included), lines without one
    /// first. `u` keeps the first of equal lines. Stable, like vim.
    fn sort(&mut self, r: Option<&LineRange>, reverse: bool, arg: &str) -> Result<(), String> {
        let (mut icase, mut num, mut uniq, mut by_match, mut pat) = (false, false, false, false, None);
        let mut s = arg;
        while let Some(c) = s.chars().next() {
            s = &s[c.len_utf8()..];
            match c {
                'i' => icase = true,
                'n' => num = true,
                'u' => uniq = true,
                'r' => by_match = true,
                ' ' => {}
                d if is_delim(d) => pat = Some(field(&mut s, d, keep_escape).0),
                _ => return Err(format!("Invalid argument: {c}{s}")),
            }
        }
        let (a, b) = self.range0(r, true)?;
        let text = self.buf.doc.text().clone();
        let (start, end) = (text.line_to_offset(a), self.line_end_offset(b));
        let body = text.slice(start..end);
        let lines: Vec<&str> = body.split('\n').collect();
        // Byte range of each line's sort key inside the line; `None`: no match.
        let mut keys: Vec<Option<(usize, usize)>> = lines.iter().map(|l| Some((0, l.len()))).collect();
        if let Some(pat) = pat {
            let re = self.ex_regex(&pat)?.re;
            keys.fill(None);
            for m in text.find_iter_in(&re, start..end).take_while(|m| m.start <= end) {
                let l = text.offset_to_line(m.start);
                let ls = text.line_to_offset(l);
                let len = lines[l - a].len();
                let (ms, me) = (m.start - ls, (m.end - ls).min(len));
                keys[l - a].get_or_insert(if by_match { (ms, me) } else { (me, len) });
            }
        }
        let key = |i: usize| keys[i].map(|(s, e)| &lines[i][s..e]);
        let number = |s: &str| -> Option<i64> {
            let d = s.find(|c: char| c.is_ascii_digit())?;
            let neg = s[..d].ends_with('-');
            let digits = &s[d..s[d..].find(|c: char| !c.is_ascii_digit()).map_or(s.len(), |k| d + k)];
            let v = digits.parse::<i64>().unwrap_or(i64::MAX);
            Some(if neg { -v } else { v })
        };
        let cmp = |x: usize, y: usize| {
            let (kx, ky) = (key(x).expect("sorted lines have a key"), key(y).expect("sorted lines have a key"));
            if num {
                number(kx).cmp(&number(ky))
            } else if icase {
                kx.to_lowercase().cmp(&ky.to_lowercase())
            } else {
                kx.cmp(ky)
            }
        };
        let (mut sorted, mut rest): (Vec<usize>, Vec<usize>) = (0..lines.len()).partition(|&i| keys[i].is_some());
        sorted.sort_by(|&x, &y| if reverse { cmp(y, x) } else { cmp(x, y) });
        if uniq {
            sorted.dedup_by(|y, x| cmp(*x, *y).is_eq());
        }
        let order: Vec<usize> = if reverse {
            rest.reverse();
            sorted.into_iter().chain(rest).collect()
        } else {
            rest.into_iter().chain(sorted).collect()
        };
        let new = order.iter().map(|&i| lines[i]).collect::<Vec<_>>().join("\n");
        if new != body {
            self.edit_replace(start..end, &new);
        }
        self.first_line(a);
        Ok(())
    }

    /// `:r [file]`: the file's lines below the last address (0: on top); the current file without
    /// a name. Line endings are converted like on load.
    // shortcut: the file is copied into the text (no structural sharing), when `Text::append_text` exists
    fn read(&mut self, r: Option<&LineRange>, file: &str) -> Result<(), String> {
        let path = if file.is_empty() { self.buf.path.clone().ok_or("E32: No file name")? } else { PathBuf::from(file) };
        let (_, after) = self.lines(r, (self.win.line + 1, self.win.line + 1))?;
        let content = fs::read_to_string(&path).map_err(|_e| format!("E484: Can't open file {}", path.display()))?;
        let doc = Document::from_string(content);
        let t = doc.text();
        let mut s = t.slice(0..t.len()).into_owned();
        if s.is_empty() {
            return Ok(());
        }
        if s.ends_with('\n') {
            s.pop();
        }
        self.insert_lines(after, &s);
        self.first_line(after);
        self.info(format!("\"{}\" {}L, {}B", path.display(), s.split('\n').count(), t.len()));
        Ok(())
    }

    /// `:q` (`all`: `:qa`): closes the window, or quits on the last one (every one with `all`)
    /// unless a buffer is modified and not `bang`. Returns false to quit.
    fn quit(&mut self, bang: bool, all: bool) -> bool {
        // In the command-line window `:q` only closes it.
        if self.cmdwin.is_some() {
            self.close_cmdwin();
            return true;
        }
        if !all && self.window_ids().len() > 1 {
            self.close_window().expect("more than one window");
            return true;
        }
        // A `:w` still running makes its buffer clean when it ends.
        self.wait_saves();
        match self.dirty_buffer().filter(|_| !bang) {
            Some(b) if b.id == self.buf.id => self.error(DIRTY),
            Some(b) => self.error(format!("No write since last change for buffer {} \"{}\" (add ! to override)", b.id, b.name())),
            None => return false,
        }
        true
    }

    /// `:w`, `:w!`, `:[range]w[!] file`, `:w >> file`. Writing to another file leaves the buffer's
    /// file and modified state alone; an existing other file needs `!`.
    fn write_cmd(&mut self, r: Option<&LineRange>, bang: bool, arg: &str) -> Result<(), String> {
        if self.buf.opts.nofile && arg.trim().is_empty() {
            return Err("Cannot write, 'buftype' option is set".into());
        }
        let (append, file) = match arg.strip_prefix(">>") {
            Some(f) => (true, f.trim()),
            None => (false, arg),
        };
        if file.is_empty() && self.buf.path.is_none() {
            return Err("E32: No file name".into());
        }
        let path = if file.is_empty() { self.buf.path.clone().expect("checked above") } else { PathBuf::from(file) };
        // A buffer without a name takes the one it is written to, like vim.
        if self.buf.path.is_none() && r.is_none() && !append {
            if !bang && path.exists() {
                return Err("File exists (add ! to override)".into());
            }
            self.buf.path = Some(path);
            self.buf.opts.filetype = self.buf.path.as_deref().map_or("", super::filetype::detect).into();
            self.save(false);
            return Ok(());
        }
        let own = self.buf.path.as_ref() == Some(&path);
        if r.is_none() && own && !append {
            self.save(false);
            return Ok(());
        }
        if r.is_some() && own && !append && !bang {
            return Err("E140: Use ! to write partial buffer".into());
        }
        if !own && !append && !bang && path.exists() {
            return Err("File exists (add ! to override)".into());
        }
        let (a, b) = self.range0(r, true)?;
        let text = self.buf.doc.text();
        // The line break after the range's last line goes with it, as each line ends with one.
        let end = if b + 1 < text.line_count() { text.line_to_offset(b + 1) } else { text.len() };
        let part = Text::from(&*text.slice(text.line_to_offset(a)..end));
        let eol = self.buf.doc.eol();
        let res = if append { append_to(&path, &part, eol) } else { write_atomic(&path, &part, eol) };
        res.map_err(|e| format!("Save failed: {e}"))?;
        self.info(format!("\"{}\" {}L written", path.display(), b - a + 1));
        Ok(())
    }

    /// `:sav[!] file`: writes the buffer there and edits that file from now on.
    fn save_as(&mut self, bang: bool, file: &str) -> Result<(), String> {
        if file.is_empty() {
            return Err("E471: Argument required".into());
        }
        let path = PathBuf::from(file);
        if !bang && self.buf.path.as_ref() != Some(&path) && path.exists() {
            return Err("File exists (add ! to override)".into());
        }
        let old = self.buf.path.replace(path);
        if !self.save(true) {
            self.buf.path = old;
        }
        Ok(())
    }

    /// `:ret[ab][!] [N]`: blank runs holding tabs are redone for tab stop N (then the new
    /// `tabstop`): as spaces with `expandtab`, else as tabs plus spaces, and then `!` also turns
    /// runs of spaces into tabs.
    fn retab(&mut self, r: Option<&LineRange>, all: bool, arg: &str) -> Result<(), String> {
        let old = self.buf.opts.tabstop;
        let new = if arg.is_empty() { old } else { arg.parse().ok().filter(|n| (1..=32).contains(n)).ok_or_else(|| format!("Invalid argument: {arg}"))? };
        let (a, b) = self.range0(r, true)?;
        for l in a..=b {
            let line = self.buf.doc.text().line(l).into_owned();
            let s = retab_line(&line, old, new, all, self.buf.opts.expandtab);
            if s != line {
                let start = self.buf.doc.text().line_to_offset(l);
                self.edit_replace(start..start + line.len(), &s);
            }
        }
        self.buf.opts.tabstop = new;
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
        assert_eq!(reg_count(""), Ok((None, None)));
        assert_eq!(reg_count("a 3"), Ok((Some('a'), Some(3))));
        assert_eq!(reg_count("12"), Ok((None, Some(12))));
        assert_eq!(reg_count("%"), Err("Invalid register: %".into()));
        assert_eq!(reg_count("0"), Err("E939: Positive count required".into()));
        assert_eq!(reg_count("a b"), Err("Trailing characters: b".into()));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn retab_lines() {
        assert_eq!(retab_line("\tx", 4, 8, false, false), "    x");
        assert_eq!(retab_line("\t\tx", 4, 8, false, false), "\tx");
        assert_eq!(retab_line("ab\t x\t", 2, 4, false, false), "ab\t x\t");
        assert_eq!(retab_line("\t\tx", 2, 4, false, false), "\tx");
        assert_eq!(retab_line("        x  y", 4, 4, false, false), "        x  y");
        assert_eq!(retab_line("        x  y", 4, 4, true, false), "\t\tx  y");
        assert_eq!(retab_line("x ", 4, 4, true, false), "x ");
        // Wide chars and clusters count their screen cells: `日` takes 2, `e` + U+0301 one.
        assert_eq!(retab_line("日\tx", 4, 8, false, false), "日  x");
        assert_eq!(retab_line("日\tx", 4, 4, false, true), "日  x");
        assert_eq!(retab_line("e\u{301}\tx", 4, 8, false, true), "e\u{301}   x");
        assert_eq!(retab_line("日本語  x", 4, 4, true, false), "日本語\tx");
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
            marks.map(std::slice::from_ref(ed));
            for (s, e, alive) in &mut plain[1..] {
                *alive &= !(ed.old_len > 0 && ed.start <= *s && *e <= ed.start + ed.old_len);
                (*s, *e) = (ed.map(*s), ed.map(*e));
            }
        }
        let got: Vec<_> = marks.lines[1..].iter().map(|&(s, e, a)| (marks.at(s), marks.at(e), a)).collect();
        assert_eq!(got, plain[1..]);
        let mut marks = LineMarks::new(&text, 0..0);
        marks.map(&edits);
        assert_eq!(marks.pop(&text), None);
    }
}
