//! `:[range]s/pat/rep/[flags]` parsing.

use super::ex::{self, LineRange, field, keep_escape};

/// `:s`, `:&`, `:~` as parsed: the pattern and replacement when typed, the text of the flags that follow.
#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) struct Sub {
    /// First and last line; `None` is the cursor line.
    pub range: Option<LineRange>,
    /// The pattern typed; `None`: the last substitute pattern (`:s`, `:&`) or the last used one (`:~`).
    pub pat: Option<String>,
    /// `\/`, `\?` and `\&` instead of a pattern: which one to use.
    pub backslash: Option<char>,
    /// The replacement typed; `None`: the one of the last substitute.
    pub rep: Option<String>,
    /// What follows: `&`, the flags, a count.
    pub flags: String,
    /// `:~`: the last used pattern, not the last substitute one.
    pub tilde: bool,
}

/// The pattern and replacement of the last substitute (`old_sub`, and the last substitute pattern).
#[derive(Clone, Debug, PartialEq, Eq, Default)]
pub(super) struct LastSub {
    pub pat: String,
    pub rep: String,
}

/// `subflags_T`: they stay from one `:s` to the next, `&` keeps them.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) struct SubFlags {
    pub all: bool,
    pub ask: bool,
    pub count: bool,
    pub error: bool,
    pub print: bool,
    pub list: bool,
    pub number: bool,
    /// `Some(true)` for `i`, `Some(false)` for `I`.
    pub ic: Option<bool>,
}

impl Default for SubFlags {
    fn default() -> Self {
        Self { all: false, ask: false, count: false, error: true, print: false, list: false, number: false, ic: None }
    }
}

impl SubFlags {
    /// `sub_parse_flags`: what is left of `cmd`, and whether `r` asked for the last used pattern.
    pub fn parse<'a>(&mut self, cmd: &'a str) -> (&'a str, bool) {
        let mut rest = cmd;
        if let Some(r) = rest.strip_prefix('&') {
            rest = r;
        } else {
            *self = Self::default();
        }
        let mut last_used = false;
        while let Some(c) = rest.chars().next() {
            // `g`, `c` and `e` always toggle; `r` never does.
            match c {
                'g' => self.all = !self.all,
                'c' => self.ask = !self.ask,
                'n' => self.count = true,
                'e' => self.error = !self.error,
                'r' => last_used = true,
                'p' => self.print = true,
                '#' => (self.print, self.number) = (true, true),
                'l' => (self.print, self.list) = (true, true),
                'i' => self.ic = Some(true),
                'I' => self.ic = Some(false),
                _ => break,
            }
            rest = &rest[1..];
        }
        if self.count {
            self.ask = false;
        }
        (rest, last_used)
    }
}

impl Sub {
    /// `&` (cursor line) or `g&` (whole text, `:%s//~/&`): the last substitute again.
    pub fn again(whole: bool) -> Sub {
        if whole {
            Sub { range: Some(LineRange::whole()), pat: Some(String::new()), backslash: None, rep: Some("~".into()), flags: "&".into(), tilde: false }
        } else {
            Sub { range: None, pat: None, backslash: None, rep: None, flags: String::new(), tilde: false }
        }
    }
}

/// `check_regexp_delim`.
const E146: &str = "E146: Regular expressions can't be delimited by letters";

/// Parses `:s`, `:&` and `:~`; `None` for other commands.
pub(super) fn parse(range: Option<LineRange>, name: &str, arg: &str) -> Option<Result<Sub, String>> {
    let tilde = name == "~";
    if matches!(name, "&" | "~") {
        return Some(Ok(Sub { range, pat: None, backslash: None, rep: None, flags: arg.to_string(), tilde }));
    }
    if !ex::abbr(name, "s", "substitute") {
        return None;
    }
    let first = arg.chars().next();
    // A new pattern and replacement, unless the argument starts with a blank, a flag, a digit, `|` or `"`.
    let new_pat = first.is_some_and(|c| !c.is_whitespace() && !"0123456789cegriIp|\"".contains(c));
    if !new_pat {
        return Some(Ok(Sub { range, pat: None, backslash: None, rep: None, flags: arg.to_string(), tilde: false }));
    }
    let d = first.expect("a first char");
    if d.is_alphabetic() {
        return Some(Err(E146.into()));
    }
    let mut s = &arg[d.len_utf8()..];
    let (pat, backslash, delim) = if d == '\\' {
        // `\/sub/`, `\?sub?`, `\&sub&`: the last pattern.
        let Some(k) = s.chars().next().filter(|k| "/?&".contains(*k)) else {
            return Some(Err("E10: \\ should be followed by /, ? or &".into()));
        };
        s = &s[1..];
        (String::new(), Some(k), k)
    } else {
        let (pat, _) = field(&mut s, d, keep_escape);
        (pat, None, d)
    };
    let (rep, _) = field(&mut s, delim, |c, out| match c {
        // `\r` is a line break, `\n` the NUL that Vim shows as `^@`.
        'r' => out.push('\n'),
        'n' => out.push('\0'),
        't' => out.push('\t'),
        // `$` is the group syntax of the replacement, so a literal one is `$$`.
        '$' => out.push_str("$$"),
        // `\~` is a literal tilde, kept apart from the one that stands for the last replacement.
        '~' => out.push('\u{E000}'),
        c => out.push(c),
    });
    Some(Ok(Sub { range, pat: Some(pat), backslash, rep: Some(rep), flags: s.to_string(), tilde: false }))
}


#[cfg(test)]
mod tests {
    use super::{super::ex, *};

    fn parse(cmd: &str) -> Option<Result<Sub, String>> {
        match ex::parse(cmd) {
            Ok(c) => super::parse(c.range, c.name, c.arg),
            Err(e) => Some(Err(e)),
        }
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn patterns_replacements_and_the_text_of_the_flags() {
        let sub = |c: &str| parse(c).unwrap().unwrap();
        let s = sub("s/a/b/gi");
        assert_eq!((s.pat.as_deref(), s.rep.as_deref(), s.flags.as_str()), (Some("a"), Some("b"), "gi"));
        assert_eq!(sub("s#a/b#c#g").pat.as_deref(), Some("a/b"));
        assert_eq!(sub(r"s/a\/b/c\/d/").rep.as_deref(), Some("c/d"));
        // `\r` is a line break, `\n` a NUL, `$` is doubled, `\~` is kept apart from `~`.
        assert_eq!(sub(r"s/a/1\r2\n3\t4\$5\~/").rep.as_deref(), Some("1\n2\x003\t4$$5\u{E000}"));
        // No new pattern: a flag, a blank, a digit, `|` or `"` after the name.
        for c in ["s", "sg", "sI", "s 1", "&&g", "~"] {
            assert_eq!(sub(c).pat, None, "{c}");
        }
        assert_eq!(parse("set nu"), None);
        assert!(sub("~").tilde);
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn flags_toggle_and_stay() {
        let mut f = SubFlags::default();
        assert_eq!(f.parse("gg"), ("", false));
        assert!(!f.all);
        assert_eq!(f.parse("gce x"), (" x", false));
        assert!(f.all && f.ask && !f.error);
        // `&` keeps them, nothing else resets them; `n` takes `c` away.
        assert_eq!(f.parse("&np"), ("", false));
        assert!(f.all && f.count && !f.ask && f.print && !f.error);
        assert_eq!(f.parse("r"), ("", true));
        assert!(!f.all && f.error);
        assert_eq!(f.parse("#").0, "");
        assert!(f.print && f.number && !f.list);
    }
}
