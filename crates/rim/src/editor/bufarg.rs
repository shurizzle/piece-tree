//! A buffer named by a function argument: `tv_get_buf` and what it calls (`buflist_findpat`, `buflist_match`,
//! `file_pat_to_reg_pat`, `find_buffer`), ported from Neovim's `eval/funcs.c`, `buffer.c`, `path.c` and `eval/buffer.c`.

use std::path::{Path, PathBuf};

use regex::Regex;

use super::{Editor, buffers::Buffer, script::Value, short_name};

/// `file_pat_to_reg_pat` (unix: no `BACKSLASH_IN_FILENAME`, so `\` always escapes): a file pattern as a Vim regexp, or the
/// message of the error (`E219`/`E220`: a `{` without its `}`).
pub(super) fn file_pat_to_reg_pat(pat: &str) -> Result<String, &'static str> {
    if pat.is_empty() {
        return Ok("^$".into());
    }
    let b: Vec<char> = pat.chars().collect();
    let mut out = String::new();
    let mut start = 0;
    if b[0] == '*' {
        // Leading stars do not need `^`: all but the last one go.
        while start < b.len() - 1 && b[start] == '*' {
            start += 1;
        }
    } else {
        out.push('^');
    }
    let mut end = b.len() - 1;
    let mut add_dollar = true;
    if b[end] == '*' {
        while end > start && b[end] == '*' {
            end -= 1;
        }
        add_dollar = false;
    }
    let mut nested = 0i32;
    let mut p = start;
    // `p <= endp`, and the loop stops at a NUL in the pattern and when a `}` came without its `{`.
    while p < b.len() && b[p] != '\0' && nested >= 0 && p <= end {
        match b[p] {
            '*' => {
                out.push_str(".*");
                while b.get(p + 1) == Some(&'*') {
                    p += 1;
                }
            }
            '.' | '~' => {
                out.push('\\');
                out.push(b[p]);
            }
            '?' => out.push('.'),
            '\\' => {
                if p + 1 >= b.len() || b[p + 1] == '\0' {
                    p += 1;
                    continue;
                }
                p += 1;
                let c = b[p];
                if c == '?' {
                    out.push('?');
                } else if matches!(c, ',' | '%' | '#' | '{' | '}') || c.is_ascii_whitespace() {
                    out.push(c);
                } else if c == '\\' && b.get(p + 1) == Some(&'\\') && b.get(p + 2) == Some(&'{') {
                    out.push_str("\\{");
                    p += 2;
                } else {
                    out.push('\\');
                    out.push(c);
                }
            }
            '{' => {
                out.push_str("\\(");
                nested += 1;
            }
            '}' => {
                out.push_str("\\)");
                nested -= 1;
            }
            ',' if nested != 0 => out.push_str("\\|"),
            c => out.push(c),
        }
        p += 1;
    }
    if add_dollar {
        out.push('$');
    }
    match nested {
        0 => Ok(out),
        n if n < 0 => Err("E219: Missing {."),
        _ => Err("E220: Missing }."),
    }
}

/// The Vim regexp (`'magic'`) `pat` that `file_pat_to_reg_pat` makes, as a Rust regex: `\(` `\)` `\|` group, `.` and `*` mean
/// themselves, `[...]` is a collection (a lone `[` is itself), `^` at the start and `$` at the end anchor, any other character
/// (also `+ ? { } ( ) |`, which are plain in Vim's magic) is literal and a backslash makes the next one literal.
// shortcut: `\{n,m}` counts, `\%[` and the other `\` atoms of Vim are read as the literal char, `^` after `\(` or `\|` is
// literal; a file pattern only gets them by escaping `{` and `\`; when needed, port `regexp.c`. There is no 'fileignorecase'
// option: its default for the platform is used.
fn vim_regex(pat: &str) -> Option<Regex> {
    let c: Vec<char> = pat.chars().collect();
    let mut out = String::new();
    let mut i = 0;
    while i < c.len() {
        match c[i] {
            '\\' if i + 1 < c.len() => {
                i += 1;
                match c[i] {
                    '(' => out.push('('),
                    ')' => out.push(')'),
                    '|' => out.push('|'),
                    x => out.push_str(&regex::escape(&x.to_string())),
                }
            }
            '^' if i == 0 => out.push('^'),
            '$' if i + 1 == c.len() => out.push('$'),
            '.' => out.push('.'),
            '*' => out.push('*'),
            '[' => {
                // A collection ends at the first `]` after its first char (`[]a]`, `[^]a]`).
                let from = i + 1 + usize::from(c.get(i + 1) == Some(&'^'));
                match c.iter().skip(from + 1).position(|&x| x == ']').map(|p| p + from + 1) {
                    Some(end) => {
                        out.push('[');
                        if c[i + 1] == '^' {
                            out.push('^');
                        }
                        for &x in &c[from..end] {
                            if matches!(x, '[' | '\\' | '&' | '~') {
                                out.push('\\');
                            }
                            out.push(x);
                        }
                        out.push(']');
                        i = end;
                    }
                    None => out.push_str("\\["),
                }
            }
            x => out.push_str(&regex::escape(&x.to_string())),
        }
        i += 1;
    }
    // `rm_ic = p_fic`: 'fileignorecase' is on where file names ignore case (macOS and Windows), off elsewhere.
    regex::RegexBuilder::new(&out).case_insensitive(cfg!(any(target_os = "macos", windows))).build().ok()
}

impl Editor {
    /// `b_sfname` and `b_ffname` of a buffer: the name as it was given, and the full path.
    fn buffer_names(b: &Buffer) -> Option<(String, String)> {
        let p = b.path.as_ref()?;
        let full = std::path::absolute(p).unwrap_or_else(|_| p.clone());
        Some((p.display().to_string(), full.display().to_string()))
    }

    /// `buflist_match`: the short name, then the full one, each also with the home directory as `~`.
    fn buflist_match(re: &Regex, b: &Buffer, home: &str) -> bool {
        let Some((short, full)) = Self::buffer_names(b) else { return false };
        // `fname_match`: the name, then `home_replace_save` of it.
        [short, full].iter().any(|n| re.is_match(n) || re.is_match(&short_name(n, home)))
    }

    /// `buflist_findpat` called with `unlisted`, no diff mode and every tab: the number of the buffer, -1 for none and -2 for
    /// more than one; the error message of `E93`/`E94` is the caller's (`tv_get_buf` runs with errors off).
    fn buflist_findpat(&mut self, pattern: &str) -> i64 {
        if matches!(pattern, "%" | "#") {
            return if pattern == "%" { self.buf.id as i64 } else { self.alt.map_or(0, |a| a as i64) };
        }
        let Ok(pat) = file_pat_to_reg_pat(pattern) else { return -1 };
        let home = std::env::var("HOME").unwrap_or_default();
        let toggledollar = pat.len() > 1 && pat.ends_with('$');
        let ids: Vec<(usize, bool)> = self.all_buffers().iter().rev().map(|b| (b.id, b.listed)).collect();
        let mut found: i64 = -1;
        let mut find_listed = true;
        loop {
            for attempt in 0..4 {
                // May add or remove `^` and `$`.
                let mut p = pat.as_str();
                let trimmed;
                if toggledollar && attempt < 2 {
                    trimmed = &pat[..pat.len() - 1];
                    p = trimmed;
                }
                let anchored = p.strip_prefix('^').filter(|_| attempt & 1 == 0);
                let p = anchored.unwrap_or(p);
                let Some(re) = vim_regex(p) else { return -1 };
                for &(id, listed) in &ids {
                    // `buf->b_p_bl == find_listed`.
                    if listed != find_listed || !Self::buflist_match(&re, self.buffer(id).expect("listed id"), &home) {
                        continue;
                    }
                    if found >= 0 {
                        found = -2;
                        break;
                    }
                    found = id as i64;
                }
                if found >= 0 {
                    break;
                }
            }
            // Unlisted buffers only when no listed one matched.
            if !find_listed || found != -1 {
                break;
            }
            find_listed = false;
        }
        found
    }

    /// `buflist_findnr`: 0 is the alternate buffer.
    fn buflist_findnr(&self, nr: i64) -> Option<usize> {
        let nr = if nr == 0 { self.alt.map_or(0, |a| a as i64) } else { nr };
        usize::try_from(nr).ok().filter(|&id| self.buffer(id).is_some())
    }

    /// `find_buffer`: a buffer by number or by its exact name (the full path; a buffer without a file by its title).
    fn find_buffer(&self, v: &Value) -> Option<usize> {
        match v {
            Value::Int(n) => self.buflist_findnr(*n),
            Value::Str(name) => {
                // `buflist_findname_exp`: backwards, the first buffer that is the same file.
                let full: PathBuf = std::path::absolute(Path::new(&**name)).ok()?;
                let by_file = self.all_buffers().into_iter().rev().find(|b| {
                    b.path.as_deref().is_some_and(|p| std::path::absolute(p).is_ok_and(|a| a == full) || super::buffers::same_file(p, &full))
                });
                by_file.or_else(|| self.all_buffers().into_iter().find(|b| b.path.is_none() && b.title == Some(&**name))).map(|b| b.id)
            }
            _ => None,
        }
    }

    /// `tv_get_buf(tv, false)` with `'magic'` on and `'cpoptions'` empty: the buffer a Number or String argument names, as
    /// its number. No message is given (its callers turn errors off).
    pub(super) fn tv_get_buf(&mut self, v: &Value) -> Option<usize> {
        match v {
            Value::Int(n) => self.buflist_findnr(*n),
            Value::Str(name) if name.is_empty() => Some(self.buf.id),
            // `lastbuf`.
            Value::Str(name) if &**name == "$" => self.all_buffers().last().map(|b| b.id),
            Value::Str(name) => {
                let found = self.buflist_findpat(name);
                self.buflist_findnr(found).or_else(|| self.find_buffer(v))
            }
            _ => None,
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg_attr(miri, ignore = "safe logic of file patterns; no unsafe")]
    #[test]
    fn file_patterns_become_regexps() {
        let ok = |p: &str| file_pat_to_reg_pat(p).unwrap();
        assert_eq!(ok(""), "^$");
        assert_eq!(ok("abc"), "^abc$");
        assert_eq!(ok("a*c"), "^a.*c$");
        assert_eq!(ok("*.txt"), "\\.txt$");
        assert_eq!(ok("a**b"), "^a.*b$");
        assert_eq!(ok("a?c"), "^a.c$");
        assert_eq!(ok("abc*"), "^abc");
        assert_eq!(ok("*"), ".*");
        assert_eq!(ok("~x"), "^\\~x$");
        assert_eq!(ok("{a,b}c"), "^\\(a\\|b\\)c$");
        assert_eq!(ok("a,b"), "^a,b$");
        assert_eq!(ok("a\\?b"), "^a?b$");
        assert_eq!(ok("a\\,b\\ c"), "^a,b c$");
        assert_eq!(ok("a\\xb"), "^a\\xb$");
        assert_eq!(file_pat_to_reg_pat("a}"), Err("E219: Missing {."));
        assert_eq!(file_pat_to_reg_pat("{a"), Err("E220: Missing }."));
    }

    #[cfg_attr(miri, ignore = "regex crate; no unsafe of rim")]
    #[test]
    fn vim_regexps_are_translated() {
        let m = |p: &str, s: &str| vim_regex(p).unwrap().is_match(s);
        assert!(m("^abc$", "abc") && !m("^abc$", "xabc") && !m("^abc$", "abcx"));
        assert!(m("a.*c", "xabbbcx") && m("\\(a\\|b\\)c", "bc") && !m("\\(a\\|b\\)c", "cc"));
        assert!(m("a\\.b", "a.b") && !m("a\\.b", "axb"));
        assert!(m("a+b", "a+b") && m("a(b", "a(b") && m("a{1}", "a{1}") && m("a|b", "a|b"));
        assert!(m("[ab]c", "bc") && !m("[ab]c", "cc") && m("[^ab]c", "cc") && m("[]a]c", "]c"));
        // A `[` without its `]`, and `^` or `$` away from the ends, are themselves.
        assert!(m("a[b", "a[b") && m("a^b", "a^b") && m("a$b", "a$b"));
    }
}
