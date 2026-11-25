use std::{borrow::Cow, fmt, str::FromStr};

/// Line ending used when writing a document out.
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub enum LineEnding {
    #[default]
    Lf,
    Cr,
    CrLf,
}

impl LineEnding {
    pub fn as_str(self) -> &'static str {
        match self {
            Self::Lf => "\n",
            Self::Cr => "\r",
            Self::CrLf => "\r\n",
        }
    }

    /// Most frequent line ending in `s`; `Lf` on ties or when there is none.
    pub fn detect(s: &str) -> Self {
        let (mut lf, mut cr, mut crlf) = (0usize, 0usize, 0usize);
        let b = s.as_bytes();
        for i in memchr::memchr2_iter(b'\r', b'\n', b) {
            if b[i] == b'\r' {
                cr += 1;
            } else if i > 0 && b[i - 1] == b'\r' {
                // The `\r` just counted as lone was the first half of a CRLF.
                cr -= 1;
                crlf += 1;
            } else {
                lf += 1;
            }
        }
        if crlf > lf && crlf >= cr {
            Self::CrLf
        } else if cr > lf {
            // Here crlf <= lf or crlf < cr, so cr > lf also means cr > crlf.
            Self::Cr
        } else {
            Self::Lf
        }
    }
}

impl fmt::Display for LineEnding {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        f.write_str(match self {
            Self::Lf => "LF",
            Self::Cr => "CR",
            Self::CrLf => "CRLF",
        })
    }
}

impl FromStr for LineEnding {
    type Err = String;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s.to_ascii_lowercase().as_str() {
            "lf" => Ok(Self::Lf),
            "cr" => Ok(Self::Cr),
            "crlf" => Ok(Self::CrLf),
            _ => Err(format!("unknown line ending {s:?}, expected lf, cr or crlf")),
        }
    }
}

/// [`normalize`] for owned input: returns `s` itself when it has no `\r`.
pub(crate) fn normalize_owned(s: String) -> String {
    if memchr::memchr(b'\r', s.as_bytes()).is_some() { normalize(&s).into_owned() } else { s }
}

/// Converts `\r\n` and lone `\r` to `\n`.
pub(crate) fn normalize(s: &str) -> Cow<'_, str> {
    if memchr::memchr(b'\r', s.as_bytes()).is_some() {
        Cow::Owned(s.replace("\r\n", "\n").replace('\r', "\n"))
    } else {
        Cow::Borrowed(s)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    use LineEnding::*;

    #[test]
    fn detect_majority() {
        assert_eq!(LineEnding::detect("a\nb\r\nc\r\n"), CrLf);
        assert_eq!(LineEnding::detect("a\rb\rc\n"), Cr);
        assert_eq!(LineEnding::detect("a\nb\nc\r\n"), Lf);
    }

    #[test]
    fn detect_single_kind() {
        assert_eq!(LineEnding::detect("x\n"), Lf);
        assert_eq!(LineEnding::detect("x\r"), Cr);
        assert_eq!(LineEnding::detect("x\r\n"), CrLf);
        assert_eq!(LineEnding::detect("\r"), Cr);
        assert_eq!(LineEnding::detect("\r\n\r\n"), CrLf);
    }

    #[test]
    fn detect_defaults_to_lf() {
        assert_eq!(LineEnding::detect(""), Lf);
        assert_eq!(LineEnding::detect("no line breaks"), Lf);
    }

    #[test]
    fn detect_ties() {
        // All equal: Lf wins.
        assert_eq!(LineEnding::detect("a\nb\rc\r\n"), Lf);
        // CrLf ties Cr, both above Lf: CrLf wins.
        assert_eq!(LineEnding::detect("a\rb\r\n"), CrLf);
        // Cr ties Lf: Lf wins.
        assert_eq!(LineEnding::detect("a\rb\n"), Lf);
        // CrLf ties Lf: Lf wins.
        assert_eq!(LineEnding::detect("a\r\nb\n"), Lf);
    }

    #[test]
    fn detect_cr_before_crlf() {
        // "\r\r\n" is one lone CR followed by one CRLF.
        assert_eq!(LineEnding::detect("\r\r\n\r"), Cr);
        assert_eq!(LineEnding::detect("\r\r\n\r\n"), CrLf);
    }

    #[test]
    fn as_str_and_display() {
        assert_eq!([Lf.as_str(), Cr.as_str(), CrLf.as_str()], ["\n", "\r", "\r\n"]);
        assert_eq!([Lf.to_string(), Cr.to_string(), CrLf.to_string()], ["LF", "CR", "CRLF"]);
        assert_eq!(LineEnding::default(), Lf);
    }

    #[test]
    fn parse() {
        assert_eq!("lf".parse(), Ok(Lf));
        assert_eq!("CR".parse(), Ok(Cr));
        assert_eq!("CrLf".parse(), Ok(CrLf));
        for e in [Lf, Cr, CrLf] {
            assert_eq!(e.to_string().parse(), Ok(e), "Display round-trips through FromStr");
        }
        let err = "lfcr".parse::<LineEnding>().unwrap_err();
        assert_eq!(err, r#"unknown line ending "lfcr", expected lf, cr or crlf"#);
        assert!("".parse::<LineEnding>().is_err());
    }

    #[test]
    fn normalize_all_endings() {
        assert_eq!(normalize("a\r\nb\rc\nd"), "a\nb\nc\nd");
        assert_eq!(normalize("\r\r\n\n\r"), "\n\n\n\n");
        assert_eq!(normalize("\r"), "\n");
        assert_eq!(normalize("é\r\n🦀"), "é\n🦀");
    }

    #[test]
    fn detect_leading_lf() {
        assert_eq!(LineEnding::detect("\nx\n"), Lf);
        assert_eq!(LineEnding::detect("\n\r\n\r\n"), CrLf);
    }

    #[test]
    fn normalize_owned_reuses_clean_input() {
        let s = String::from("a\nb");
        let ptr = s.as_ptr();
        let out = normalize_owned(s);
        assert_eq!((out.as_str(), out.as_ptr()), ("a\nb", ptr));
        assert_eq!(normalize_owned("a\r\nb\r".into()), "a\nb\n");
    }

    #[test]
    fn normalize_borrows_when_unchanged() {
        assert!(matches!(normalize("a\nb"), Cow::Borrowed("a\nb")));
        assert!(matches!(normalize(""), Cow::Borrowed("")));
        assert!(matches!(normalize("a\r"), Cow::Owned(_)));
    }
}
