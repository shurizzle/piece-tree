//! The special strings of a command line and a file name's modifiers: `%`, `#`, `#N`, `<cword>`, `<cfile>`, `<sfile>`... and
//! `:p :h :t :r :e :~ :. :s :S` (`eval_vars`, `find_cmdline_var`, `expand_filename`, `repl_cmdline` of `ex_docmd.c`,
//! `modify_fname` of `eval/fs.c`, `file_name_in_line` of `file_search.c`).

use std::path::Path;

use super::docmd::FrameKind;
use crate::editor::{
    Editor, graphemes,
    motion::{FIND_EVAL, FIND_IDENT, FIND_STRING, find_ident_at},
};

const VALID_PATH: u8 = 1;
const VALID_HEAD: u8 = 2;

/// The special strings of `find_cmdline_var`, in the order of its table.
const SPECS: [&str; 15] = ["%", "#", "<cword>", "<cWORD>", "<cexpr>", "<cfile>", "<sfile>", "<slnum>", "<stack>", "<script>", "<afile>", "<abuf>", "<amatch>", "<sflnum>", "<SID>"];

/// `find_cmdline_var`: the index in `SPECS` of the special string `src` starts with, and its length.
fn find_cmdline_var(src: &str) -> Option<(usize, usize)> {
    SPECS.iter().position(|s| src.starts_with(s)).map(|i| (i, SPECS[i].len()))
}

/// What `eval_vars` found at a position of an argument.
#[derive(Debug, PartialEq)]
pub(super) enum Vars {
    /// No special string: skip this many bytes.
    Skip(usize),
    /// A backslash in front of `%`/`#`/`<`: the caller removes it (`usedlen` 0, the text moved left).
    Unbackslash,
    /// An error for `do_one_cmd` to give (`*errormsg`); empty when it was already given.
    Fail(String),
    /// An error `emsg()` gives where it is found (nothing is added to it); `expand()` does not show it.
    Emsg(String),
    /// The special string, `used` bytes long, and its value. `escaped`: white space in it is escaped already.
    Repl { text: String, used: usize, escaped: bool },
}

/// A file name being modified: the text, where the name starts in it and how long it is (`*fnamep`, `*fnamelen`).
struct Fname {
    s: String,
    start: usize,
    len: usize,
}

impl Fname {
    fn new(name: &str) -> Fname {
        Fname { s: name.to_string(), start: 0, len: name.len() }
    }

    fn set(&mut self, s: String) {
        (self.len, self.start, self.s) = (s.len(), 0, s);
    }

    /// Like `set`, reusing the buffer.
    fn set_str(&mut self, s: &str) {
        self.s.clear();
        self.s.push_str(s);
        (self.len, self.start) = (s.len(), 0);
    }

    fn cur(&self) -> &str {
        &self.s[self.start..self.start + self.len]
    }

    /// What `*fnamep` reads as a C string: up to the end of the text, not of the length.
    fn to_end(&self) -> &str {
        &self.s[self.start..]
    }
}

/// The start of the char before byte `i`.
fn prev_char(s: &str, i: usize) -> usize {
    let mut j = i - 1;
    while !s.is_char_boundary(j) {
        j -= 1;
    }
    j
}

/// `after_pathsep(b, p)`: a path separator is right before `p` (and `p` is past `b`).
fn after_pathsep(s: &str, b: usize, p: usize) -> bool {
    p > b && s.as_bytes()[p - 1] == b'/'
}

/// `path_tail`: where the last component of a path starts.
fn path_tail(s: &str) -> usize {
    let head = s.len() - s.trim_start_matches('/').len();
    s[head..].rfind('/').map_or(head, |i| head + i + 1)
}

/// `path_with_url`: a scheme (`https`, no drive letter) followed by `:/` or `:\\`.
fn path_with_url(s: &str) -> bool {
    let b = s.as_bytes();
    if !b.first().is_some_and(u8::is_ascii_alphabetic) || path_has_drive_letter(s) {
        return false;
    }
    let mut p = 1;
    while b.get(p).is_some_and(|c| c.is_ascii_alphanumeric() || matches!(c, b'+' | b'-' | b'.')) {
        p += 1;
    }
    !matches!(b[p - 1], b'+' | b'-' | b'.') && path_is_url(&s[p..])
}

/// `path_is_url`: `:/` or `:\\` starts `p`.
fn path_is_url(p: &str) -> bool {
    p.starts_with(":/") || p.starts_with(":\\\\")
}

/// `path_has_drive_letter`.
fn path_has_drive_letter(p: &str) -> bool {
    let b = p.as_bytes();
    b.len() >= 2 && b[0].is_ascii_alphabetic() && matches!(b[1], b':' | b'|') && (b.len() == 2 || matches!(b[2], b'/' | b'\\' | b'?' | b'#'))
}

/// `buf_init_chartab` for `'isfname'`: which bytes a file name is made of. The bytes of a multibyte char (0xA0 and up) are
/// always in; `None` for an option `parse_isopt` refuses.
pub(in crate::editor) fn isfname_table(opt: &str) -> Option<[bool; 256]> {
    let mut tab = [false; 256];
    tab[0xA0..].fill(true);
    let c: Vec<char> = opt.chars().collect();
    let mut p = 0;
    let num = |p: &mut usize| -> i64 {
        let mut n: i64 = 0;
        while c.get(*p).is_some_and(char::is_ascii_digit) {
            n = n.saturating_mul(10).saturating_add(i64::from(c[*p] as u8 - b'0'));
            *p += 1;
        }
        n
    };
    while p < c.len() {
        let mut tilde = false;
        if c[p] == '^' && p + 1 < c.len() {
            tilde = true;
            p += 1;
        }
        let mut lo = if c[p].is_ascii_digit() {
            num(&mut p)
        } else {
            p += 1;
            i64::from(c[p - 1] as u32)
        };
        let mut hi: i64 = -1;
        if c.get(p) == Some(&'-') && p + 1 < c.len() {
            p += 1;
            hi = if c[p].is_ascii_digit() {
                num(&mut p)
            } else {
                p += 1;
                i64::from(c[p - 1] as u32)
            };
        }
        if lo <= 0 || lo >= 256 || (hi < lo && hi != -1) || hi >= 256 || !(p >= c.len() || c[p] == ',') {
            return None;
        }
        let trail = p < c.len() && c[p] == ',';
        if trail {
            p += 1;
        }
        while c.get(p) == Some(&' ') {
            p += 1;
        }
        if trail && p >= c.len() {
            return None;
        }
        let mut alpha = false;
        if hi == -1 {
            if lo == i64::from(b'@') {
                (alpha, lo, hi) = (true, 1, 255);
            } else {
                hi = lo;
            }
        }
        for ch in lo..=hi {
            // `@`: the letters (`mb_islower`/`mb_isupper`).
            let letter = || {
                let chr = char::from_u32(ch as u32).unwrap_or('\0');
                chr.is_ascii_alphabetic() || (ch >= 0x80 && (chr.to_uppercase().next() != Some(chr) || chr.to_lowercase().next() != Some(chr) || ch == 0xDF))
            };
            if !alpha || letter() {
                tab[ch as usize] = !tilde;
            }
        }
    }
    Some(tab)
}

/// `strtoimax` at `s[at..]`: skips white space, takes a sign and digits. The value (None when it does not fit) and the
/// position after the digits; none were taken: `at` itself.
pub(in crate::editor) fn strtoimax(s: &str, at: usize) -> (Option<i64>, usize) {
    let b = s.as_bytes();
    let mut p = at;
    while b.get(p).is_some_and(|c| matches!(c, b' ' | b'\t' | b'\n' | 0x0b | 0x0c | b'\r')) {
        p += 1;
    }
    let neg = b.get(p) == Some(&b'-');
    if matches!(b.get(p), Some(b'-' | b'+')) {
        p += 1;
    }
    let d = p;
    while b.get(p).is_some_and(u8::is_ascii_digit) {
        p += 1;
    }
    if p == d {
        return (Some(0), at);
    }
    let v = s[d..p].parse::<i64>().ok().and_then(|v| if neg { v.checked_neg() } else { Some(v) });
    (v, p)
}

/// `expand_env_save`: `~` and `$VAR` replaced, a backslash kept.
fn expand_env_save(s: &str) -> String {
    super::docmd::expand_env_opt(s, false, false, true)
}

/// `path_full_dir_name` + `append_path`: the directory part of a name made absolute.
fn full_dir_name(dir: &str) -> Option<String> {
    let cwd = || std::env::current_dir().ok().map(|p| p.to_string_lossy().into_owned());
    if dir.is_empty() {
        return cwd();
    }
    if let Ok(p) = std::fs::canonicalize(dir) {
        return Some(p.to_string_lossy().into_owned());
    }
    if dir.starts_with(['/', '~']) {
        return None;
    }
    let mut buf = cwd()?;
    append_path(&mut buf, dir);
    Some(buf)
}

/// `append_path`: `to` after a path separator; nothing for an empty name or a dot.
fn append_path(path: &mut String, to: &str) {
    if to.is_empty() || to == "." {
        return;
    }
    if !path.is_empty() && !path.ends_with('/') {
        path.push('/');
    }
    path.push_str(to);
}

/// `FullName_save(fname, force)` (`vim_FullName`, `path_to_absolute`): the absolute name; `force` also takes `.` and `..` out.
pub(in crate::editor) fn full_name(fname: &str, force: bool) -> String {
    if path_with_url(fname) {
        return fname.to_string();
    }
    let mut buf = String::new();
    let mut end = 0;
    if force || !fname.starts_with(['/', '~']) {
        let mut p = fname.rfind('/');
        if p.is_none() && fname == ".." {
            p = Some(2);
        }
        let rel = match p {
            Some(mut p) => {
                if fname.as_bytes().get(p) == Some(&b'/') && &fname[p + 1..] == ".." {
                    p += 3;
                }
                end = if fname.as_bytes().get(p) == Some(&b'/') { p + 1 } else { p };
                &fname[..(p + 1).min(fname.len())]
            }
            None => "",
        };
        match full_dir_name(rel) {
            Some(d) => buf = d,
            None => return fname.to_string(),
        }
    } else {
        // An absolute name stays as it is.
        append_path(&mut buf, fname);
        return buf;
    }
    append_path(&mut buf, &fname[end.min(fname.len())..]);
    buf
}

impl Editor {
    /// `do_string_sub` of one `:s?pat?sub?` modifier, with the flags `g` or none.
    fn modify_sub(&mut self, text: &str, pat: &str, sub: &str, global: bool) -> super::value::RcStr {
        super::funcs::substitute_str(self, text, pat, sub, if global { "g" } else { "" })
    }

    /// `modify_fname`: the modifiers that follow at `src[*usedlen..]` applied to `f`. The `VALID_*` flags it sets.
    fn modify_fname(&mut self, src: &str, tilde_file: bool, used: &mut usize, f: &mut Fname) -> u8 {
        let b = src.as_bytes();
        let at = |i: usize| b.get(i).copied().unwrap_or(0);
        let (mut valid, mut has_fullname, mut has_homerelative) = (0, false, false);
        loop {
            // ":p": the full path.
            if at(*used) == b':' && at(*used + 1) == b'p' {
                has_fullname = true;
                valid |= VALID_PATH;
                *used += 2;
                // `~/path` and `~user/path`.
                let cur = f.to_end();
                if cur.starts_with('~') && !(tilde_file && cur.len() == 1) {
                    let e = expand_env_save(cur);
                    f.set(e);
                }
                // `/.` or `/..` as a component: the name is made again.
                let cur = f.to_end().to_string();
                let dots = cur.match_indices('/').any(|(i, _)| {
                    let r = &cur.as_bytes()[i + 1..];
                    r.first() == Some(&b'.') && (r.get(1).is_none_or(|c| *c == b'/') || (r.get(1) == Some(&b'.') && r.get(2).is_none_or(|c| *c == b'/')))
                });
                if dots || !(cur.starts_with('/') || cur.starts_with('~') || path_with_url(&cur)) {
                    f.set(full_name(&cur, dots));
                }
                // A directory ends in a path separator.
                if Path::new(f.to_end()).is_dir() && !f.s.is_empty() && !f.s.ends_with('/') {
                    f.s.push('/');
                    f.len = f.s.len() - f.start;
                }
            }
            // ":." relative to the current directory, ":~" to the home directory, ":8" nothing.
            while at(*used) == b':' && matches!(at(*used + 1), b'.' | b'~' | b'8') {
                let c = at(*used + 1);
                *used += 2;
                if c == b'8' {
                    continue;
                }
                // The full path first.
                let p = if !has_fullname && !has_homerelative {
                    if f.to_end().starts_with('~') { Some(expand_env_save(f.to_end())) } else { Some(full_name(f.to_end(), false)) }
                } else {
                    Some(f.to_end().to_string())
                };
                has_fullname = false;
                if let Some(p) = p {
                    if c == b'.' {
                        let mut dirname = std::env::current_dir().map(|d| d.to_string_lossy().into_owned()).unwrap_or_default();
                        if has_homerelative {
                            dirname = crate::editor::short_name(&dirname, &std::env::var("HOME").unwrap_or_default());
                        }
                        // `shorten_fname` would remove the prefix even where the path has none.
                        if p.starts_with(&dirname) {
                            let rest = &p[dirname.len()..];
                            if rest.starts_with('/') {
                                let rest = rest.trim_start_matches('/').to_string();
                                f.set(rest);
                            }
                        }
                    } else {
                        let short = crate::editor::short_name(&p, &std::env::var("HOME").unwrap_or_default());
                        // Only replaced when it starts with `~`.
                        if short.starts_with('~') {
                            f.set(short);
                            has_homerelative = true;
                        }
                    }
                }
            }
            let mut tail = f.start + path_tail(f.to_end());
            f.len = f.s.len() - f.start;
            // ":h": the head; the first `/` stays.
            while at(*used) == b':' && at(*used + 1) == b'h' {
                valid |= VALID_HEAD;
                *used += 2;
                let head = f.start + (f.to_end().len() - f.to_end().trim_start_matches('/').len());
                while tail > head && after_pathsep(&f.s, head, tail) {
                    tail = prev_char(&f.s, tail);
                }
                f.len = tail - f.start;
                if f.len == 0 {
                    // The result is empty: `.`, so that `:cd %:h` works.
                    f.set(".".into());
                    tail = 0;
                } else {
                    while tail > head && !after_pathsep(&f.s, head, tail) {
                        tail = prev_char(&f.s, tail);
                    }
                }
            }
            // ":t": the tail.
            if at(*used) == b':' && at(*used + 1) == b't' {
                *used += 2;
                f.len -= tail - f.start;
                f.start = tail;
            }
            // ":e" the extension and ":r" the root, as often as they come.
            while at(*used) == b':' && matches!(at(*used + 1), b'e' | b'r') {
                let is_e = at(*used + 1) == b'e';
                // A `.` in the tail: before the name for a second `:e`, the last one otherwise.
                let is_second_e = f.start > tail;
                let mut s: isize = if is_e && is_second_e { f.start as isize - 2 } else { (f.start + f.len) as isize - 1 };
                while s > tail as isize {
                    if f.s.as_bytes()[s as usize] == b'.' {
                        break;
                    }
                    s -= 1;
                }
                if is_e {
                    if s > tail as isize {
                        let newstart = s as usize + 1;
                        f.len = (f.len as isize + f.start as isize - newstart as isize) as usize;
                        f.start = newstart;
                    } else if f.start <= tail {
                        f.len = 0;
                    }
                } else if s > tail.max(f.start) as isize {
                    f.len = s as usize - f.start;
                }
                *used += 2;
            }
            // ":s?pat?sub?" and ":gs?pat?sub?"; the modifiers are looked at again after one.
            if at(*used) == b':' && (at(*used + 1) == b's' || (at(*used + 1) == b'g' && at(*used + 2) == b's')) {
                let global = at(*used + 1) == b'g';
                let from = *used + if global { 3 } else { 2 };
                let mut done = false;
                if let Some(sep) = src[from..].chars().next() {
                    let body = &src[from + sep.len_utf8()..];
                    if let Some(p1) = body.find(sep) {
                        let (pat, rest) = (&body[..p1], &body[p1 + sep.len_utf8()..]);
                        if let Some(p2) = rest.find(sep) {
                            let sub = &rest[..p2];
                            *used = src.len() - rest.len() + p2 + sep.len_utf8();
                            let text = f.cur().to_string();
                            let new = self.modify_sub(&text, pat, sub, global);
                            f.set_str(&new);
                            done = true;
                        }
                    }
                }
                if done {
                    continue;
                }
            }
            break;
        }
        // ":S": escaped for the shell.
        if at(*used) == b':' && at(*used + 1) == b'S' {
            let out = self.shell_escape(f.cur(), false, false);
            f.set(out);
            *used += 2;
        }
        valid
    }

    /// `vim_strsave_shellescape`: `s` in single quotes. csh also wants `!` and a line break escaped, fish a backslash;
    /// `do_special` escapes `!` and the cmdline variables (`%`, `#`, `<cword>`...), `do_newline` a line break.
    pub(super) fn shell_escape(&self, s: &str, do_special: bool, do_newline: bool) -> String {
        let sh = self.buf.opts.shell.rsplit('/').next().unwrap_or("");
        let (csh, fish) = (sh.contains("csh"), sh.contains("fish"));
        let mut out = String::from("'");
        let mut i = 0;
        while i < s.len() {
            let rest = &s[i..];
            let ch = rest.chars().next().expect("not at the end");
            let l = ch.len_utf8();
            if ch == '\'' {
                out.push_str("'\\''");
            } else if (ch == '\n' && (csh || do_newline)) || (ch == '!' && (csh || do_special)) {
                out.push('\\');
                if csh && do_special {
                    out.push('\\');
                }
                out.push(ch);
            } else if let Some(v) = do_special.then(|| cmdline_var_len(rest)).flatten() {
                out.push('\\');
                out.push_str(&rest[..v]);
                i += v;
                continue;
            } else if ch == '\\' && fish {
                out.push_str("\\\\");
            } else {
                out.push(ch);
            }
            i += l;
        }
        out.push('\'');
        out
    }

    /// `vim_strsave_fnameescape(name, VSE_NONE)`.
    pub(super) fn fname_escape(&self, name: &str) -> String {
        let mut out = String::with_capacity(name.len());
        for c in name.chars() {
            if " \t\n*?[{`$\\%#'\"|!<".contains(c) {
                out.push('\\');
            }
            out.push(c);
        }
        // `>` and `+` are special at the start of some commands, and `cd -` has a meaning.
        if out.starts_with(['>', '+']) || out == "-" {
            out.insert(0, '\\');
        }
        out
    }

    /// `fnamemodify()`: `name` with the modifiers of `mods`.
    pub(super) fn fnamemodify(&mut self, name: &str, mods: &str) -> String {
        let mut f = Fname::new(name);
        if !mods.is_empty() {
            self.modify_fname(mods, false, &mut 0, &mut f);
        }
        f.cur().to_string()
    }

    /// `file_name_in_line` with `FNAME_MESS | FNAME_HYP`: the name under or after the cursor (`<cfile>`).
    fn file_name_at_cursor(&self) -> Result<String, String> {
        let tab = isfname_table(&self.buf.opts.isfname).unwrap_or([false; 256]);
        let isfilec = |c: u8| tab[c as usize];
        let line = self.buf.doc.text().line(self.win.line);
        let b = line.as_bytes();
        let mut p = self.line_byte(self.win.line, self.win.col);
        // Search forward for what could be the start of a file name.
        while p < b.len() && !isfilec(b[p]) {
            p = graphemes::next(&line, p);
        }
        if p >= b.len() {
            return Err("E446: No file name under cursor".into());
        }
        // Search backward for the first char of the name; a multibyte char always belongs to it. Go one char back to the `:` of `://`.
        while p > 0 {
            let q = prev_char(&line, p);
            if q + 1 < p || isfilec(b[p - 1]) || path_is_url(&line[p - 1..]) {
                p = q;
            } else {
                break;
            }
        }
        // Search forward for the last char of the name; `:`, `?`, `&` and `=` belong to a URL after its scheme.
        let (mut in_type, mut is_url) = (true, false);
        let mut len = if path_has_drive_letter(&line[p..]) { 2 } else { 0 };
        let at = |i: usize| b.get(p + i).copied().unwrap_or(0);
        while isfilec(at(len)) || (at(len) == b'\\' && at(len + 1) == b' ') || path_is_url(&line[p + len..]) || (is_url && b":?&=".contains(&at(len))) {
            if at(len).is_ascii_alphabetic() {
                if in_type && path_is_url(&line[(p + len + 1).min(line.len())..]) {
                    is_url = true;
                }
            } else {
                in_type = false;
            }
            if at(len) == b'\\' && at(len + 1) == b' ' {
                len += 1;
            }
            len = graphemes::next(&line, p + len) - p;
        }
        // Trailing punctuation goes, but not `..`.
        if len > 2 && b".,:;!".contains(&at(len - 1)) && at(len - 2) != b'.' {
            len -= 1;
        }
        let mut name = &line[p..p + len];
        if name.is_empty() {
            return Err(String::new());
        }
        // `file:/path` is a hypertext link.
        if name.len() > 6 && name.starts_with("file:/") && name.as_bytes()[6] != b'/' {
            name = &name[if path_has_drive_letter(&name[6..]) { 6 } else { 5 }..];
        }
        Ok(name.to_string())
    }

    /// `estack_sfile`: `which` is 0 for `<stack>`, 1 for `<sfile>`, 2 for `<script>`.
    fn estack_which(&self, which: u8) -> Option<String> {
        let st = &self.scripts.stack;
        if which == 1 && st.last().is_some_and(|f| f.kind != FrameKind::Func) {
            return st.last().map(|f| f.name.to_string());
        }
        if which == 2 {
            let mut calls = self.scripts.calls.iter().rev();
            for f in st.iter().rev() {
                match f.kind {
                    FrameKind::Func => {
                        let sid = calls.next()?.func.sid;
                        return if sid > 0 { self.scripts.ids.iter().find(|(_, v)| **v == sid).map(|(k, _)| k.to_string_lossy().into_owned()) } else { None };
                    }
                    FrameKind::Script => return Some(f.name.to_string()),
                    FrameKind::Except | FrameKind::Modeline => {}
                }
            }
            return None;
        }
        if st.is_empty() {
            return None;
        }
        Some(self.scripts.chain_string_with(which == 0))
    }

    /// `eval_vars`: the special string at `arg[at..]`. `empty_is_error`: an empty result is `E499`/`E500`.
    pub(super) fn eval_vars(&mut self, arg: &str, at: usize, empty_is_error: bool) -> Vars {
        let src = &arg[at..];
        let Some((idx, mut used)) = find_cmdline_var(src) else { return Vars::Skip(1) };
        // `\%` and `\#`: the backslash goes, the char stays.
        if at > 0 && arg.as_bytes()[at - 1] == b'\\' {
            return Vars::Unbackslash;
        }
        let (mut valid, mut tilde_file, mut skip_mod, mut escaped) = (VALID_HEAD | VALID_PATH, false, false, false);
        #[allow(unused_assignments)]
        let mut result = String::new();
        let name_of = |b: &crate::editor::buffers::Buffer| b.path.as_ref().map(|_| b.name());
        match idx {
            // `<cword>`, `<cWORD>`, `<cexpr>`
            2..=4 => {
                let line = self.buf.doc.text().line(self.win.line);
                let find = match idx {
                    2 => FIND_IDENT | FIND_STRING,
                    4 => FIND_IDENT | FIND_STRING | FIND_EVAL,
                    _ => FIND_STRING,
                };
                match find_ident_at(&line, self.line_byte(self.win.line, self.win.col), find) {
                    Some((b, e, _)) => result = line[b..e].to_string(),
                    None => return Vars::Emsg(if find & FIND_STRING != 0 { "E348: No string under cursor" } else { "E349: No identifier under cursor" }.to_string()),
                }
            }
            0 => match name_of(&self.buf) {
                None => (result, valid) = (String::new(), 0),
                Some(n) => {
                    tilde_file = n == "~";
                    result = n;
                }
            },
            1 => {
                let rest = &src[1..];
                if rest.starts_with('#') {
                    // `##`: the argument list.
                    used = 2;
                    result = self.arg_all();
                    (escaped, skip_mod) = (true, true);
                } else {
                    let mut s = 1;
                    if rest.starts_with('<') {
                        s += 1;
                    }
                    let (n, e) = strtoimax(src, s);
                    // `getdigits_int`: a Number that is not an int (or overflows) is 0.
                    let i = n.filter(|n| i32::try_from(*n).is_ok()).unwrap_or(0);
                    used = e;
                    if rest.starts_with('<') && i != 0 {
                        if used < 2 {
                            return Vars::Skip(1);
                        }
                        // `v:oldfiles` is empty: `tv_list_find_str` is out of range.
                        return Vars::Emsg(format!("E684: List index out of range: {}", i - 1));
                    }
                    if i == 0 && rest.starts_with('<') && used > 1 {
                        used = 1;
                    }
                    let id = if i == 0 { self.win.alt } else { usize::try_from(i).ok() };
                    match id.and_then(|id| self.buffer(id)) {
                        None => return Vars::Fail("E194: No alternate file name to substitute for '#'".into()),
                        Some(b) => match name_of(b) {
                            None => (result, valid) = (String::new(), 0),
                            Some(n) => {
                                tilde_file = n == "~";
                                result = n;
                            }
                        },
                    }
                }
            }
            5 => match self.file_name_at_cursor() {
                Ok(n) => result = n,
                Err(m) => return Vars::Emsg(m),
            },
            10 => return Vars::Fail("E495: No autocommand file name to substitute for \"<afile>\"".into()),
            11 => return Vars::Fail("E496: No autocommand buffer number to substitute for \"<abuf>\"".into()),
            12 => return Vars::Fail("E497: No autocommand match name to substitute for \"<amatch>\"".into()),
            6 | 8 | 9 => {
                let which = match idx {
                    8 => 0,
                    6 => 1,
                    _ => 2,
                };
                match self.estack_which(which) {
                    Some(s) => result = s,
                    None => {
                        return Vars::Fail(
                            match idx {
                                6 => "E498: No :source file name to substitute for \"<sfile>\"",
                                8 => "E489: No call stack to substitute for \"<stack>\"",
                                _ => "E1274: No script file name to substitute for \"<script>\"",
                            }
                            .into(),
                        );
                    }
                }
            }
            7 | 13 => {
                let lnum = self.scripts.stack.last().map_or(0, |f| f.lnum);
                // `<sflnum>` adds the line of the function's `:function` (`sc_lnum`) to the line in it.
                let sc_lnum = if idx == 13 && self.scripts.stack.last().is_some_and(|f| f.kind == FrameKind::Func) { self.scripts.calls.last().map_or(0, |c| c.func.sc_lnum) } else { 0 };
                if (idx == 7 && (self.scripts.stack.is_empty() || lnum == 0)) || (idx == 13 && sc_lnum + lnum == 0) {
                    return Vars::Fail(if idx == 7 { "E842: No line number to use for \"<slnum>\"" } else { "E961: No line number to use for \"<sflnum>\"" }.into());
                }
                result = if idx == 13 { sc_lnum + lnum } else { lnum }.to_string();
            }
            _ => {
                // `<SID>`
                if self.scripts.cur == 0 {
                    return Vars::Fail("E81: Using <SID> not in a script context".into());
                }
                result = format!("<SNR>{}_", self.scripts.cur);
            }
        }
        let mut f = Fname::new(&result);
        if src.as_bytes().get(used) == Some(&b'<') {
            // The extension goes.
            used += 1;
            if let Some(i) = f.s.rfind('.').filter(|&i| i >= path_tail(&f.s)) {
                f.len = i;
            }
        } else if !skip_mod {
            valid |= self.modify_fname(src, tilde_file, &mut used, &mut f);
        }
        let text = f.cur().to_string();
        if text.is_empty() || valid != VALID_HEAD + VALID_PATH {
            if empty_is_error {
                return Vars::Fail(if valid != VALID_HEAD + VALID_PATH { "E499: Empty file name for '%' or '#', only works with \":p:h\"" } else { "E500: Evaluates to an empty string" }.into());
            }
            return Vars::Skip(used);
        }
        Vars::Repl { text, used, escaped }
    }

    /// `expand_filename`: `%`, `#`, `<cword>`... in the argument of a file name command are replaced by what they stand for.
    pub(in crate::editor) fn expand_filename(&mut self, arg: &str, nospc: bool) -> Result<String, String> {
        use super::expand::{EW_ADDSLASH, EW_ICASE, EW_NOERROR, EW_NOTFOUND, path_has_wildcard};
        // Whether to expand wildcards is decided before `%` and `#` are replaced: a name with a wildcard in it is expanded anyway.
        let mut has_wildcards = path_has_wildcard(arg);
        let mut arg = arg.to_string();
        let mut p = 0;
        while p < arg.len() {
            // `=expr` in backticks is not looked at.
            if arg[p..].starts_with("`=") {
                p = skip_backtick_expr(&arg, p + 2);
                continue;
            }
            // Quick check, and the backslash before `%`, `#` and `<` goes with it.
            if !matches!(arg.as_bytes()[p], b'%' | b'#' | b'<') {
                p += arg[p..].chars().next().map_or(1, char::len_utf8);
                continue;
            }
            match self.eval_vars(&arg, p, true) {
                Vars::Fail(m) => return Err(m),
                Vars::Emsg(m) => {
                    self.error(m);
                    return Err(String::new());
                }
                Vars::Skip(n) => p += n,
                Vars::Unbackslash => {
                    arg.remove(p - 1);
                }
                Vars::Repl { text, used, escaped } => {
                    // A value with `$` or `~` is expanded; wildcards are not, the value is taken as it is.
                    let text = if text.contains(['$', '~']) { expand_env_save(&text) } else { text };
                    // A command that takes several names needs the white space of the value escaped.
                    let text = if !nospc && !escaped { text.chars().flat_map(|c| if matches!(c, ' ' | '\t' | '\\' | '"' | '|') { vec!['\\', c] } else { vec![c] }).collect() } else { text };
                    arg.replace_range(p..p + used, &text);
                    p += text.len();
                }
            }
        }
        // One file argument: environment variables and `~` first, then the wildcards.
        if !nospc {
            return Ok(arg);
        }
        if has_wildcards {
            if arg.contains(['$', '~']) {
                arg = super::docmd::expand_env_opt(&arg, true, false, true);
                has_wildcards = path_has_wildcard(&arg);
            }
        } else {
            // Halve the number of backslashes (this is Vi compatible).
            arg = super::expand::backslash_halve(&arg);
        }
        if has_wildcards {
            let mut flags = EW_NOTFOUND | EW_NOERROR | EW_ADDSLASH;
            if self.buf.opts.wildignorecase {
                flags |= EW_ICASE;
            }
            match self.expand_one(&arg, flags) {
                Some(r) => arg = r,
                None => return Err(String::new()),
            }
        }
        Ok(arg)
    }
}

/// `skip_expr` of a `` `=expr` ``: the position after the closing backtick.
// shortcut: the expression is not parsed, the first backtick closes it, when a file name holds a backtick in an expression
fn skip_backtick_expr(arg: &str, from: usize) -> usize {
    arg[from..].find('`').map_or(arg.len(), |i| from + i + 1)
}

/// `find_cmdline_var`: the length of the cmdline variable `src` starts with.
fn cmdline_var_len(src: &str) -> Option<usize> {
    const VARS: [&str; 15] = ["%", "#", "<cword>", "<cWORD>", "<cexpr>", "<cfile>", "<sfile>", "<slnum>", "<stack>", "<script>", "<afile>", "<abuf>", "<amatch>", "<sflnum>", "<SID>"];
    VARS.iter().find(|v| src.starts_with(**v)).map(|v| v.len())
}
