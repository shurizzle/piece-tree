//! File name expansion: `gen_expand_wildcards`, `path_expand`/`do_path_expand` (`path.c`), `os_expand_wildcards` (`os/shell.c`,
//! the shell does what the editor cannot: `{a,b}`, `` `cmd` ``, `$VAR`), `ExpandOne` (`cmdexpand.c`), and what `expand()` and
//! `glob()` do with them.

use std::cmp::Ordering;

use super::docmd::expand_env_opt;
use crate::editor::{Editor, bufarg};

pub(in crate::editor) const EW_DIR: u32 = 1;
pub(in crate::editor) const EW_FILE: u32 = 2;
pub(in crate::editor) const EW_NOTFOUND: u32 = 4;
pub(in crate::editor) const EW_ADDSLASH: u32 = 8;
pub(in crate::editor) const EW_KEEPALL: u32 = 16;
pub(in crate::editor) const EW_SILENT: u32 = 32;
pub(in crate::editor) const EW_ICASE: u32 = 256;
pub(in crate::editor) const EW_NOERROR: u32 = 512;
pub(in crate::editor) const EW_KEEPDOLLAR: u32 = 2048;
pub(in crate::editor) const EW_ALLLINKS: u32 = 4096;

const SPECIAL_WILDCHAR: &str = "`'{";
const SHELL_SPECIAL: &str = "\t \"&'$;<>()\\|\n";

/// `path_has_wildcard`.
pub(super) fn path_has_wildcard(p: &str) -> bool {
    let b = p.as_bytes();
    let mut i = 0;
    while i < b.len() {
        if b[i] == b'\\' && i + 1 < b.len() {
            i += 2;
            continue;
        }
        if b"*?[{`'$".contains(&b[i]) || (b[i] == b'~' && i + 1 < b.len()) {
            return true;
        }
        i += 1;
    }
    false
}

/// `path_has_exp_wildcard`: one of `*?[{` that is not escaped.
fn path_has_exp_wildcard(p: &str) -> bool {
    let b = p.as_bytes();
    let mut i = 0;
    while i < b.len() {
        if b[i] == b'\\' && i + 1 < b.len() {
            i += 2;
            continue;
        }
        if b"*?[{".contains(&b[i]) {
            return true;
        }
        i += 1;
    }
    false
}

/// `has_env_var`: an unescaped `$`.
fn has_env_var(p: &str) -> bool {
    let b = p.as_bytes();
    let mut i = 0;
    while i < b.len() {
        if b[i] == b'\\' && i + 1 < b.len() {
            i += 2;
            continue;
        }
        if b[i] == b'$' {
            return true;
        }
        i += 1;
    }
    false
}

/// `vim_backtick`: the pattern is `` `...` ``.
fn vim_backtick(p: &str) -> bool {
    p.len() > 1 && p.starts_with('`') && p.ends_with('`')
}

/// `has_special_wildchar`: a char only the shell can handle.
fn has_special_wildchar(p: &str, flags: u32) -> bool {
    let b = p.as_bytes();
    let mut i = 0;
    while i < b.len() {
        if b[i] == b'\r' || b[i] == b'\n' {
            break;
        }
        if b[i] == b'\\' && i + 1 < b.len() && b[i + 1] != b'\r' && b[i + 1] != b'\n' {
            i += 2;
            continue;
        }
        if SPECIAL_WILDCHAR.as_bytes().contains(&b[i]) {
            // Curly braces need a shell only for names that may not exist.
            if b[i] == b'{' && flags & EW_NOTFOUND == 0 {
                i += 1;
                continue;
            }
            // A `{` must be followed by its `}`, a quote or a backtick by another one.
            if b[i] == b'{' && !p[i..].contains('}') {
                i += 1;
                continue;
            }
            if (b[i] == b'`' || b[i] == b'\'') && !p[i + 1..].contains(b[i] as char) {
                i += 1;
                continue;
            }
            return true;
        }
        i += 1;
    }
    false
}

/// `backslash_halve`: a backslash before a char that can be escaped goes (all of them on Unix).
pub(super) fn backslash_halve(s: &str) -> String {
    let mut out = String::with_capacity(s.len());
    let mut it = s.chars().peekable();
    while let Some(c) = it.next() {
        if c == '\\' && it.peek().is_some() {
            out.push(it.next().expect("peeked"));
        } else {
            out.push(c);
        }
    }
    out
}

/// 'fileignorecase' (`p_fic`): on where file names ignore case (macOS, Windows).
const FIC: bool = cfg!(any(target_os = "macos", windows));

/// `pathcmp(p, q, -1)`: names in order, a path separator before any other char, a trailing slash ignored.
fn pathcmp(p: &str, q: &str) -> Ordering {
    let (pc, qc): (Vec<char>, Vec<char>) = (p.chars().collect(), q.chars().collect());
    let mut i = 0;
    let q_is_longer = loop {
        match (pc.get(i), qc.get(i)) {
            (None, None) => return Ordering::Equal,
            (None, Some(_)) => break true,
            (Some(_), None) => break false,
            (Some(&a), Some(&b)) if if FIC { a.to_uppercase().next() != b.to_uppercase().next() } else { a != b } => {
                if a == '/' {
                    return Ordering::Less;
                }
                if b == '/' {
                    return Ordering::Greater;
                }
                return if FIC { a.to_uppercase().next().cmp(&b.to_uppercase().next()) } else { a.cmp(&b) };
            }
            _ => i += 1,
        }
    };
    let s = if q_is_longer { &qc } else { &pc };
    // A trailing slash is ignored, but not `//`.
    if s.get(i + 1).is_none() && i > 0 && s[i - 1] != '/' && s.get(i) == Some(&'/') {
        return Ordering::Equal;
    }
    if q_is_longer { Ordering::Less } else { Ordering::Greater }
}

impl Editor {
    /// `addfile`: `f` goes into the list when it exists (or `EW_NOTFOUND`) and is a file or a directory as asked.
    fn addfile(&self, ga: &mut Vec<String>, f: &str, flags: u32) {
        let path = std::path::Path::new(f);
        let exists = if flags & EW_ALLLINKS != 0 { std::fs::symlink_metadata(path).is_ok() } else { path.exists() };
        if flags & EW_NOTFOUND == 0 && !exists {
            return;
        }
        let isdir = path.is_dir();
        if (isdir && flags & EW_DIR == 0) || (!isdir && flags & EW_FILE == 0) {
            return;
        }
        let mut p = f.to_string();
        if isdir && flags & EW_ADDSLASH != 0 && !p.is_empty() && !p.ends_with('/') {
            p.push('/');
        }
        ga.push(p);
    }

    /// `do_path_expand`: the names that match the wildcards of `path`, from `wildoff` on, added to `ga` sorted.
    fn do_path_expand(&mut self, ga: &mut Vec<String>, path: &str, wildoff: usize, flags: u32, didstar: bool, stardepth: &mut u32) -> usize {
        let start_len = ga.len();
        let pb = path.as_bytes();
        // The first component with a wildcard, with what comes before it.
        let (mut buf, mut s, mut e): (Vec<u8>, usize, Option<usize>) = (Vec::new(), 0, None);
        let _ = &mut e;
        let mut i = 0;
        let ic = flags & EW_ICASE != 0;
        while i < pb.len() {
            if i >= wildoff && pb[i] == b'\\' && i + 1 < pb.len() {
                buf.push(pb[i]);
                i += 1;
            } else if pb[i] == b'/' {
                if e.is_some() {
                    break;
                }
                s = buf.len() + 1;
            } else if i >= wildoff && (b"*?[{~$".contains(&pb[i]) || (ic && (pb[i] as char).is_alphabetic())) {
                e = Some(buf.len());
            }
            let l = path[i..].chars().next().map_or(1, char::len_utf8);
            buf.extend_from_slice(&pb[i..i + l]);
            i += l;
        }
        let path_end = i;
        // Backslashes between `wildoff` and the start of the wildcard component go.
        let mut k = wildoff.min(buf.len());
        while k < s {
            if buf[k] == b'\\' && k + 1 < buf.len() {
                buf.remove(k);
                s -= 1;
            }
            k += 1;
        }
        let e = buf.len();
        let comp = String::from_utf8_lossy(&buf[s.min(e)..e]).into_owned();
        let starstar = comp.contains("**");
        let starts_with_dot = comp.starts_with('.');
        let pat = match bufarg::file_pat_to_reg_pat(&comp) {
            Ok(p) => p,
            Err(m) => {
                self.error(m);
                return 0;
            }
        };
        let Some(re) = bufarg::vim_regex_ic(&pat, flags & EW_ICASE != 0 || FIC) else { return 0 };
        let rest = &path[path_end..];
        // `**` by itself with more following: also the names without a directory.
        if !didstar && *stardepth < 100 && starstar && e - s == 2 && rest.starts_with('/') {
            let mut b2 = String::from_utf8_lossy(&buf[..s]).into_owned();
            b2.push_str(&rest[1..]);
            *stardepth += 1;
            self.do_path_expand(ga, &b2, s, flags, true, stardepth);
            *stardepth -= 1;
        }
        let dirpart = String::from_utf8_lossy(&buf[..s]).into_owned();
        let dirpath = if dirpart.is_empty() { "." } else { dirpart.as_str() };
        if let Ok(rd) = std::fs::read_dir(dirpath) {
            let mut names: Vec<String> = rd.filter_map(|d| d.ok()).map(|d| d.file_name().to_string_lossy().into_owned()).collect();
            // `scandir_next_with_dots`: `.` and `..` too.
            names.push(".".into());
            names.push("..".into());
            for name in names {
                if (name.starts_with('.') && !starts_with_dot) || !re.is_match(&name) {
                    continue;
                }
                let base = format!("{dirpart}{name}");
                if starstar && *stardepth < 100 {
                    // First go deeper in the tree.
                    let deeper = format!("{base}/**{rest}");
                    *stardepth += 1;
                    self.do_path_expand(ga, &deeper, base.len() + 1, flags, true, stardepth);
                    *stardepth -= 1;
                }
                let full = format!("{base}{rest}");
                if path_has_exp_wildcard(rest) {
                    if *stardepth < 100 {
                        *stardepth += 1;
                        self.do_path_expand(ga, &full, base.len() + 1, flags, false, stardepth);
                        *stardepth -= 1;
                    }
                } else {
                    let full = if rest.is_empty() { full } else { format!("{base}{}", backslash_halve(rest)) };
                    let std_path = std::path::Path::new(&full);
                    let there = if flags & EW_ALLLINKS != 0 { std::fs::symlink_metadata(std_path).is_ok() } else { std_path.exists() };
                    if there {
                        self.addfile(ga, &full, flags);
                    }
                }
            }
        }
        let matches = ga.len() - start_len;
        if matches > 0 {
            ga[start_len..].sort_by(|a, b| pathcmp(a, b));
        }
        matches
    }

    /// `expand_backtick`: `` `=expr` `` is evaluated, `` `cmd` `` run by the shell; one name per line.
    fn expand_backtick(&mut self, ga: &mut Vec<String>, pat: &str, flags: u32) -> i32 {
        let cmd = &pat[1..pat.len() - 1];
        let buffer = if let Some(expr) = cmd.strip_prefix('=') {
            match self.eval_text(expr) {
                Ok(t) => t,
                Err(_) => return -1,
            }
        } else {
            match self.get_cmd_output(cmd) {
                Some(o) => o,
                None => return -1,
            }
        };
        let mut cnt = 0;
        for line in buffer.split(['\r', '\n']) {
            let name = line.trim_start_matches([' ', '\t']);
            if !name.is_empty() {
                self.addfile(ga, name, flags);
                cnt += 1;
            }
        }
        cnt
    }

    /// `get_cmd_output`: what the shell writes for `cmd`, errors included.
    fn get_cmd_output(&self, cmd: &str) -> Option<String> {
        let out = std::process::Command::new(self.shell()).arg("-c").arg(format!("({cmd}) 2>&1")).stdin(std::process::Stdio::null()).output().ok()?;
        Some(String::from_utf8_lossy(&out.stdout).into_owned())
    }

    /// `'shell'`.
    fn shell(&self) -> String {
        self.buf.opts.shell.clone()
    }

    /// `os_expand_wildcards`: the shell expands `pats` (Posix `sh` or `bash`, `zsh`, `csh`, or `echo` for others).
    fn os_expand_wildcards(&mut self, pats: &[&str], flags: u32) -> Option<Vec<String>> {
        let sh = self.shell();
        let save = |pats: &[&str]| pats.iter().map(|p| backslash_halve(p)).collect::<Vec<_>>();
        // No wildcards: no shell.
        if !pats.iter().any(|p| path_has_wildcard(p)) {
            return Some(save(pats));
        }
        let tail = sh.rsplit('/').next().unwrap_or(&sh).to_string();
        #[derive(PartialEq, Clone, Copy)]
        enum Style {
            Echo,
            Glob,
            VimGlob,
            Print,
            Bt,
            GlobStar,
        }
        let mut style = Style::Echo;
        if pats.len() == 1 && pats[0].starts_with('`') && pats[0].len() > 2 && pats[0].ends_with('`') {
            style = Style::Bt;
        } else if sh.len() >= 3 {
            if sh.ends_with("csh") {
                style = Style::Glob;
            } else if sh.ends_with("zsh") {
                style = Style::Print;
            }
        }
        if style == Style::Echo {
            if tail.contains("bash") {
                style = Style::GlobStar;
            } else if tail.contains("sh") {
                style = Style::VimGlob;
            }
        }
        let tempname = std::env::temp_dir().join(format!("rim-glob-{}-{}", std::process::id(), self.next_buf));
        let temp = tempname.to_string_lossy().into_owned();
        let vimglob = "vimglob() { while [ $# -ge 1 ]; do echo \"$1\"; shift; done }; vimglob >";
        let globstar = "[[ ${BASH_VERSINFO[0]} -ge 4 ]] && shopt -s globstar; ";
        let mut command = String::new();
        let mut ampersand = false;
        if style == Style::Bt {
            command.push('(');
            command.push_str(&pats[0][1..pats[0].len() - 1]);
            command.push(')');
            let trimmed = command.trim_end_matches([' ', '\t']).to_string();
            let _ = trimmed;
            command.push('>');
        } else {
            if style == Style::Glob {
                command.push_str(if flags & EW_NOTFOUND != 0 { "set nonomatch; " } else { "unset nonomatch; " });
            }
            command.push_str(match style {
                Style::Glob => "glob >",
                Style::Print => "print -N >",
                Style::VimGlob => vimglob,
                Style::GlobStar => "",
                _ => "echo >",
            });
            if style == Style::GlobStar {
                command.push_str(globstar);
                command.push_str(vimglob);
            }
        }
        command.push_str(&temp);
        if style != Style::Bt {
            for p in pats {
                command.push(' ');
                let (b, mut intick, mut j) = (p.as_bytes(), false, 0);
                while j < b.len() {
                    let c = b[j] as char;
                    if c == '`' {
                        intick = !intick;
                    } else if c == '\\' && j + 1 < b.len() {
                        // A backslash is dropped and the char taken literally; kept inside backticks, before a special char and before a backtick.
                        if intick || SHELL_SPECIAL.as_bytes().contains(&b[j + 1]) || b[j + 1] == b'`' {
                            command.push('\\');
                        }
                        j += 1;
                    } else if !intick && (flags & EW_KEEPDOLLAR == 0 || c != '$') && SHELL_SPECIAL.as_bytes().contains(&b[j]) {
                        command.push('\\');
                    }
                    let l = p[j..].chars().next().map_or(1, char::len_utf8);
                    command.push_str(&p[j..j + l]);
                    j += l;
                }
            }
        }
        if command.trim_end().ends_with('&') && style == Style::Bt {
            ampersand = true;
        }
        let mut cmd = std::process::Command::new(&sh);
        if style == Style::Print {
            cmd.arg("-G");
        } else if style == Style::Glob && !pats.iter().any(|p| p.contains('$')) {
            cmd.arg("-f");
        }
        let status = cmd.arg("-c").arg(&command).stdin(std::process::Stdio::null()).stdout(std::process::Stdio::null()).stderr(std::process::Stdio::null()).status();
        let _ = ampersand;
        let notfound = |s: &Self| if flags & EW_NOTFOUND != 0 { Some(save(pats)) } else { let _ = s; None };
        let ok = status.is_ok_and(|s| s.success());
        if !ok {
            let _ = std::fs::remove_file(&tempname);
            return if style == Style::Bt { None } else { notfound(self) };
        }
        let Ok(raw) = std::fs::read(&tempname) else { return notfound(self) };
        let _ = std::fs::remove_file(&tempname);
        let text = String::from_utf8_lossy(&raw).into_owned();
        let names: Vec<String> = match style {
            Style::Echo => text.trim_end_matches('\n').split(' ').filter(|s| !s.is_empty()).map(str::to_string).collect(),
            Style::Bt | Style::VimGlob | Style::GlobStar => text.split('\n').map(|l| l.trim_start_matches([' ', '\t'])).filter(|l| !l.is_empty()).map(str::to_string).collect(),
            _ => text.split('\0').filter(|s| !s.is_empty()).map(str::to_string).collect(),
        };
        if names.is_empty() {
            return notfound(self);
        }
        let mut out = Vec::new();
        for n in names {
            // The files have to exist, unless asked for.
            if flags & EW_NOTFOUND == 0 && !std::path::Path::new(&n).exists() {
                continue;
            }
            let dir = std::path::Path::new(&n).is_dir();
            if (dir && flags & EW_DIR == 0) || (!dir && flags & EW_FILE == 0) {
                continue;
            }
            let mut p = n;
            if dir && !p.ends_with('/') {
                p.push('/');
            }
            out.push(p);
        }
        if out.is_empty() { notfound(self) } else { Some(out) }
    }

    /// `gen_expand_wildcards`.
    fn gen_expand_wildcards(&mut self, pats: &[&str], flags: u32) -> Option<Vec<String>> {
        // A char only the shell can handle: it expands everything.
        for p in pats {
            if has_special_wildchar(p, flags) && !(vim_backtick(p) && p.as_bytes().get(1) == Some(&b'=')) {
                return self.os_expand_wildcards(pats, flags);
            }
        }
        let mut ga: Vec<String> = Vec::new();
        for pat in pats {
            let mut add_pat: i32 = -1;
            let mut p = (*pat).to_string();
            if vim_backtick(&p) {
                add_pat = self.expand_backtick(&mut ga, &p, flags);
                if add_pat == -1 {
                    return None;
                }
            } else {
                // Environment variables and `~` first; what it cannot expand is left to the shell.
                if has_env_var(&p) || p.starts_with('~') {
                    let e = expand_env_opt(&p, true, false, true);
                    if has_env_var(&e) || e.starts_with('~') {
                        return self.os_expand_wildcards(pats, flags | EW_KEEPDOLLAR);
                    }
                    p = e;
                }
                if path_has_exp_wildcard(&p) || flags & EW_ICASE != 0 {
                    let mut depth = 0;
                    add_pat = self.do_path_expand(&mut ga, &p, 0, flags, false, &mut depth) as i32;
                }
            }
            if add_pat == -1 || (add_pat == 0 && flags & EW_NOTFOUND != 0) {
                let t = backslash_halve(&p);
                self.addfile(&mut ga, &t, if flags & EW_NOTFOUND != 0 { flags | EW_DIR | EW_FILE } else { flags });
            }
        }
        if ga.is_empty() { None } else { Some(ga) }
    }

    /// `match_suffix`: the name ends in one of `'suffixes'`.
    fn match_suffix(&self, fname: &str) -> bool {
        for suf in self.buf.opts.suffixes.split(',') {
            if suf.is_empty() {
                // An empty entry matches a name without a `.`.
                let tail = fname.rsplit('/').next().unwrap_or(fname);
                if !tail.contains('.') {
                    return true;
                }
            } else if fname.ends_with(suf) {
                return true;
            }
        }
        false
    }

    /// `expand_wildcards`: `gen_expand_wildcards`, then the names of `'wildignore'` go and those of `'suffixes'` move to the end.
    pub(in crate::editor) fn expand_wildcards(&mut self, pats: &[&str], flags: u32) -> Option<Vec<String>> {
        let mut files = self.gen_expand_wildcards(pats, flags)?;
        if flags & EW_KEEPALL != 0 {
            return Some(files);
        }
        let (wig, ic) = (self.buf.opts.wildignore.clone(), self.buf.opts.wildignorecase);
        if !wig.is_empty() {
            files.retain(|f| {
                let (dir, name) = f.rsplit_once('/').map_or(("", f.as_str()), |(d, n)| (d, n));
                !crate::editor::wild::ignored(&wig, dir, name, ic)
            });
        }
        if files.len() > 1 {
            let (plain, suffixed): (Vec<String>, Vec<String>) = files.into_iter().partition(|f| !self.match_suffix(f));
            files = plain.into_iter().chain(suffixed).collect();
        }
        if files.is_empty() { None } else { Some(files) }
    }

    /// `expand_wildcards_eval`: the pattern first goes through `eval_vars` when it starts with `%`, `#` or `<`.
    fn expand_wildcards_eval(&mut self, pat: &str, flags: u32) -> Option<Vec<String>> {
        let mut exp = pat.to_string();
        let mut eval_pat = None;
        let mut star_follows = false;
        let cur_alt = pat.starts_with(['%', '#']);
        if (cur_alt || pat.starts_with('<')) && let super::evalvars::Vars::Repl { text, used, .. } = self.eval_vars(pat, 0, true) {
            star_follows = &pat[used..] == "*";
            exp = format!("{text}{}", &pat[used..]);
            eval_pat = Some(text);
        }
        let r = self.expand_wildcards(&[&exp], flags);
        match (r, eval_pat) {
            (None, Some(t)) if cur_alt && star_follows => Some(vec![t]),
            (r, _) => r,
        }
    }

    /// `ExpandOne(.., WILD_EXPAND_FREE)` for file names: the one match; `E480` when there is none and `E77` when there are
    /// several (unless only the first has no suffix of `'suffixes'`). None then.
    pub(in crate::editor) fn expand_one(&mut self, pat: &str, flags: u32) -> Option<String> {
        let files = self.expand_wildcards_eval(pat, flags | EW_FILE | EW_DIR);
        let Some(files) = files else {
            if flags & EW_NOERROR == 0 {
                self.error(format!("E480: No match: {pat}"));
            }
            return None;
        };
        let non_suf = if files.len() > 1 { files.iter().take(2).filter(|f| self.match_suffix(f)).count() } else { 1 };
        if non_suf != 1 {
            self.error("E77: Too many file names");
            return None;
        }
        Some(files[0].clone())
    }

    /// `expand()` of a string that is no special one: `ExpandOne(WILD_ALL)` or the list of matches.
    pub(in crate::editor) fn expand_files_list(&mut self, pat: &str, keep_all: bool, notfound: bool) -> Vec<String> {
        let flags = EW_FILE | EW_DIR | if notfound { EW_NOTFOUND } else { 0 } | if keep_all { EW_KEEPALL } else { 0 } | EW_SILENT;
        self.expand_wildcards_eval(pat, flags).unwrap_or_default()
    }
}

impl Editor {
    /// `glob()`: `ExpandOne(WILD_ALL)` with no `WILD_LIST_NOTFOUND`.
    pub(in crate::editor) fn expand_glob(&mut self, pat: &str, keep_all: bool, alllinks: bool) -> Vec<String> {
        let flags = EW_FILE | EW_DIR | EW_SILENT | if keep_all { EW_KEEPALL } else { 0 } | if alllinks { EW_ALLLINKS } else { 0 } | if self.buf.opts.wildignorecase { EW_ICASE } else { 0 };
        self.expand_wildcards_eval(pat, flags).unwrap_or_default()
    }
}
