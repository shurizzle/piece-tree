//! `:[range]s/pat/rep/[flags]` parsing.

use super::ex::{LineRange, field, is_delim, keep_escape};

#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) struct Sub {
    /// First and last line; `None` is the cursor line.
    pub range: Option<LineRange>,
    /// Empty: reuse the last search.
    pub pat: String,
    pub rep: String,
    /// `g`: every match on a line, not only the first.
    pub all: bool,
    /// `Some(true)` for `i`, `Some(false)` for `I`.
    pub ignore_case: Option<bool>,
    /// `c`: ask before each replacement.
    pub confirm: bool,
    /// `n`: only count the matches.
    pub count: bool,
    /// `:&`: reuse the pattern and replacement of the last substitute.
    pub repeat: bool,
    /// `&` flag (`:&&`): also keep the flags of the last substitute.
    pub keep: bool,
}

impl Sub {
    /// `&` (cursor line) or `g&` (whole text): the last substitute again, `g&` keeping its flags.
    pub fn again(whole: bool) -> Sub {
        let range = whole.then(LineRange::whole);
        Sub { range, pat: String::new(), rep: String::new(), all: false, ignore_case: None, confirm: false, count: false, repeat: true, keep: whole }
    }
}

/// Parses `:s` and `:&` from a parsed command line; `None` for other commands (and `:s` with
/// an invalid delimiter).
pub(super) fn parse(range: Option<LineRange>, name: &str, arg: &str) -> Option<Result<Sub, String>> {
    let (pat, rep, repeat, flags) = match name {
        "&" => (String::new(), String::new(), true, arg),
        "s" => {
            let d = arg.chars().next().filter(|&d| is_delim(d))?;
            let mut s = &arg[d.len_utf8()..];
            let (pat, _) = field(&mut s, d, keep_escape);
            let (rep, _) = field(&mut s, d, |c, out| match c {
                'n' => out.push('\n'),
                't' => out.push('\t'),
                // `$` is the group syntax of the replacement, so a literal one is `$$`.
                '$' => out.push_str("$$"),
                c => out.push(c),
            });
            (pat, rep, false, s)
        }
        _ => return None,
    };
    let mut sub = Sub { range, pat, rep, all: false, ignore_case: None, confirm: false, count: false, repeat, keep: false };
    for (i, c) in flags.char_indices() {
        match c {
            'g' => sub.all = true,
            'i' => sub.ignore_case = Some(true),
            'I' => sub.ignore_case = Some(false),
            'c' => sub.confirm = true,
            'n' => sub.count = true,
            // Only meaningful first, as in vim; later it is just redundant.
            '&' => sub.keep = true,
            c if c.is_whitespace() => {}
            _ => return Some(Err(format!("Trailing characters: {}", &flags[i..]))),
        }
    }
    Some(Ok(sub))
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

    fn sub(range: Option<LineRange>, pat: &str, rep: &str, all: bool, ignore_case: Option<bool>) -> Option<Result<Sub, String>> {
        Some(Ok(Sub { range, pat: pat.into(), rep: rep.into(), all, ignore_case, confirm: false, count: false, repeat: false, keep: false }))
    }

    #[test]
    fn patterns_replacements_and_flags() {
        assert_eq!(parse("s/a/b/"), sub(None, "a", "b", false, None));
        assert_eq!(parse("s/a/b"), sub(None, "a", "b", false, None));
        assert_eq!(parse("s/a"), sub(None, "a", "", false, None));
        assert_eq!(parse("s/a/b/gi"), sub(None, "a", "b", true, Some(true)));
        assert_eq!(parse("s/a/b/iI "), sub(None, "a", "b", false, Some(false)));
        assert_eq!(parse("s#a/b#c#g"), sub(None, "a/b", "c", true, None));
        assert_eq!(parse(r"s/a\/b/c\/d/"), sub(None, "a/b", "c/d", false, None));
        assert_eq!(parse(r"s/\d+\b/x/"), sub(None, r"\d+\b", "x", false, None));
        assert_eq!(parse(r"s/a/1\n2\t3\\4\$5$1\q/"), sub(None, "a", "1\n2\t3\\4$$5$1q", false, None));
        assert_eq!(parse(r"s/a\"), sub(None, r"a\", "", false, None));
        assert_eq!(parse("s//x/"), sub(None, "", "x", false, None));
        assert_eq!(parse("s/a/b/gx"), Some(Err("Trailing characters: x".into())));
        assert_eq!(parse("%s/a/b/"), sub(Some(LineRange::whole()), "a", "b", false, None));
    }

    #[test]
    fn confirm_count_and_repeat() {
        let flags = parse("s/a/b/cn").unwrap().unwrap();
        assert!(flags.confirm && flags.count && !flags.repeat);
        let r = parse("&&g").unwrap().unwrap();
        assert!(r.repeat && r.keep && r.all && r.range.is_none());
        let r = parse("%&").unwrap().unwrap();
        assert!(r.repeat && !r.keep && r.range.is_some());
        assert_eq!(parse("&x"), Some(Err("Trailing characters: x".into())));
        assert_eq!(Sub::again(true).range, Some(LineRange::whole()));
    }

    #[test]
    fn not_a_substitute() {
        for c in ["set nu", "3", "q", "s", "sa/b/", "s b ", "s\\a\\b", "s\"a\"b", "s|a|b", "2,3", "e!"] {
            assert_eq!(parse(c), None, "{c}");
        }
    }
}
