//! `:[range]s/pat/rep/[flags]` parsing.

/// Start of a line address.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) enum Base {
    /// `.`
    Current,
    /// `$`
    Last,
    /// 1-based line number.
    Line(usize),
    /// `'x`
    Mark(char),
}

/// A line address: a base plus a `+N`/`-N` offset.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) struct Addr {
    pub base: Base,
    pub offset: isize,
}

#[derive(Debug, PartialEq, Eq)]
pub(super) struct Sub {
    /// First and last line; `None` is the cursor line.
    pub range: Option<(Addr, Addr)>,
    /// Empty: reuse the last search.
    pub pat: String,
    pub rep: String,
    /// `g`: every match on a line, not only the first.
    pub all: bool,
    /// `Some(true)` for `i`, `Some(false)` for `I`.
    pub ignore_case: Option<bool>,
}

fn number(s: &mut &str) -> Option<usize> {
    let end = s.find(|c: char| !c.is_ascii_digit()).unwrap_or(s.len());
    let (digits, rest) = s.split_at(end);
    *s = rest;
    digits.parse().ok()
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

/// Text up to the next unescaped `d`; `\d` stands for `d`, `unescape` maps other `\x` pairs.
/// Returns the text and whether the delimiter was found.
fn field(s: &mut &str, d: char, unescape: impl Fn(char, &mut String)) -> (String, bool) {
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

/// Parses a substitute command; `None` when `cmd` is not one (`:set`, `:3`, `:q`).
pub(super) fn parse(cmd: &str) -> Option<Result<Sub, String>> {
    let mut s = cmd.trim_start();
    let range = if let Some(rest) = s.strip_prefix('%') {
        s = rest;
        Some((Addr { base: Base::Line(1), offset: 0 }, Addr { base: Base::Last, offset: 0 }))
    } else {
        match addr(&mut s) {
            Err(e) => return Some(Err(e)),
            Ok(None) => None,
            Ok(Some(a)) => match s.strip_prefix(',') {
                Some(rest) => {
                    s = rest;
                    match addr(&mut s) {
                        Ok(Some(b)) => Some((a, b)),
                        Ok(None) => return Some(Err("Invalid range".into())),
                        Err(e) => return Some(Err(e)),
                    }
                }
                None => Some((a, a)),
            },
        }
    };
    let rest = s.strip_prefix('s')?;
    let d = rest.chars().next()?;
    if d.is_alphanumeric() || d.is_whitespace() || matches!(d, '\\' | '"' | '|') {
        return None;
    }
    let mut s = &rest[d.len_utf8()..];
    // Other escapes belong to the regex (`\d`, `\b`): keep them.
    let (pat, _) = field(&mut s, d, |c, out| {
        out.push('\\');
        out.push(c);
    });
    let (rep, _) = field(&mut s, d, |c, out| match c {
        'n' => out.push('\n'),
        't' => out.push('\t'),
        // `$` is the group syntax of the replacement, so a literal one is `$$`.
        '$' => out.push_str("$$"),
        c => out.push(c),
    });
    let (mut all, mut ignore_case) = (false, None);
    for (i, c) in s.char_indices() {
        match c {
            'g' => all = true,
            'i' => ignore_case = Some(true),
            'I' => ignore_case = Some(false),
            c if c.is_whitespace() => {}
            _ => return Some(Err(format!("Trailing characters: {}", &s[i..]))),
        }
    }
    Some(Ok(Sub { range, pat, rep, all, ignore_case }))
}

#[cfg(test)]
mod tests {
    use super::*;

    fn sub(range: Option<(Addr, Addr)>, pat: &str, rep: &str, all: bool, ignore_case: Option<bool>) -> Option<Result<Sub, String>> {
        Some(Ok(Sub { range, pat: pat.into(), rep: rep.into(), all, ignore_case }))
    }

    fn at(base: Base, offset: isize) -> Addr {
        Addr { base, offset }
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
    }

    #[test]
    fn ranges() {
        let (one, last, cur) = (at(Base::Line(1), 0), at(Base::Last, 0), at(Base::Current, 0));
        assert_eq!(parse("%s/a/b/"), sub(Some((one, last)), "a", "b", false, None));
        assert_eq!(parse("3s/a/b/"), sub(Some((at(Base::Line(3), 0), at(Base::Line(3), 0))), "a", "b", false, None));
        assert_eq!(parse(".,$s/a/b/"), sub(Some((cur, last)), "a", "b", false, None));
        assert_eq!(parse("'<,'>s/a/b/"), sub(Some((at(Base::Mark('<'), 0), at(Base::Mark('>'), 0))), "a", "b", false, None));
        assert_eq!(parse(".+1,$-2s/a/b/"), sub(Some((at(Base::Current, 1), at(Base::Last, -2))), "a", "b", false, None));
        assert_eq!(parse("+,++s/a/b/"), sub(Some((at(Base::Current, 1), at(Base::Current, 2))), "a", "b", false, None));
        assert_eq!(parse(" 2,3s/a/b/"), sub(Some((at(Base::Line(2), 0), at(Base::Line(3), 0))), "a", "b", false, None));
        for bad in ["2,s/a/b/", "'", "99999999999999999999999s/a/b/", "1,'"] {
            assert_eq!(parse(bad), Some(Err("Invalid range".into())), "{bad}");
        }
    }

    #[test]
    fn not_a_substitute() {
        for c in ["set nu", "3", "q", "s", "sa/b/", "s b ", "s\\a\\b", "s\"a\"b", "s|a|b", "2,3", "e!"] {
            assert_eq!(parse(c), None, "{c}");
        }
    }
}
