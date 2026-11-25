//! Regex search through piece-tree's `Regex` (Rust `regex` syntax).

use std::{ops::Range, rc::Rc};

use piece_tree::{Regex, Text};

/// Where the cursor lands relative to a match (vim's search offset: `/pat/e+1`).
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub(super) enum Offset {
    #[default]
    None,
    /// `+N`/`-N`: lines below/above the match, linewise.
    Lines(isize),
    /// `s+N`/`b+N`: chars from the match start.
    Start(isize),
    /// `e+N`: chars from the match's last char, inclusive.
    End(isize),
}

impl Offset {
    /// Parses the part after the closing delimiter (`e`, `s-1`, `+2`, empty).
    pub fn parse(s: &str) -> Result<Offset, String> {
        let invalid = || format!("Invalid search offset: {s}");
        let num = |n: &str| -> Result<isize, String> {
            match n {
                "" => Ok(0),
                "+" => Ok(1),
                "-" => Ok(-1),
                n => n.strip_prefix('+').unwrap_or(n).parse().map_err(|_| invalid()),
            }
        };
        Ok(match s.chars().next() {
            None => Offset::None,
            Some('e') => Offset::End(num(&s[1..])?),
            Some('s' | 'b') => Offset::Start(num(&s[1..])?),
            Some(_) => Offset::Lines(num(s)?),
        })
    }
}

/// A compiled search: pattern, regex, direction of the `/`/`?` that set it, and its offset.
#[derive(Clone)]
pub(super) struct Search {
    pub pat: String,
    pub re: Rc<Regex>,
    pub back: bool,
    pub offset: Offset,
}

impl Search {
    pub fn new(pat: &str) -> Result<Search, String> {
        Regex::new(pat)
            .map(|re| Search { pat: pat.into(), re: Rc::new(re), back: false, offset: Offset::None })
            .map_err(|e| format!("Invalid pattern: {e}"))
    }

    /// `*`/`#`: `word` as a whole word. Words are alnum and `_` only, so nothing needs escaping.
    pub fn word(word: &str) -> Search {
        Search::new(&format!(r"\b{word}\b")).expect("a word is a valid pattern")
    }
}

/// Splits what was typed after `/` (or `?`, `delim`) into the pattern and the offset text, at
/// the first unescaped delimiter.
pub(super) fn split_typed(typed: &str, delim: char) -> (&str, &str) {
    let mut escaped = false;
    for (i, c) in typed.char_indices() {
        if c == delim && !escaped {
            return (&typed[..i], &typed[i + 1..]);
        }
        escaped = c == '\\' && !escaped;
    }
    (typed, "")
}

/// First match starting at or after byte `next` (just past the cursor), or the first match of
/// the text when there is none; the flag says it wrapped (started at or before `cur`).
pub(super) fn find_forward(text: &Text, re: &Regex, cur: usize, next: usize) -> Option<(Range<usize>, bool)> {
    if let Some(m) = text.find_from(re, next) {
        return Some((m, false));
    }
    text.find_from(re, 0).map(|m| {
        let wrapped = m.start <= cur;
        (m, wrapped)
    })
}

/// Last match starting before byte `cur` (`Text::rfind_before`), or the last of the text.
pub(super) fn find_backward(text: &Text, re: &Regex, cur: usize) -> Option<(Range<usize>, bool)> {
    if let Some(m) = text.rfind_before(re, cur) {
        return Some((m, false));
    }
    // Nothing before: wrap to the last match, which then starts at or after `cur`.
    let last = text.rfind_before(re, text.len()).or_else(|| text.find_from(re, text.len()))?;
    Some((last, true))
}

/// Non-empty matches starting in lines `lines` (from `Text::find_iter_in` over their bytes),
/// cut into char ranges per line: entry `i` is for line `lines.start + i`. Matches spanning line
/// breaks are split at them.
pub(super) fn visible_matches(text: &Text, re: &Regex, lines: Range<usize>) -> Vec<Vec<Range<usize>>> {
    let mut out = vec![Vec::new(); lines.len()];
    if lines.is_empty() {
        return out;
    }
    let (start, end) = (text.line_to_offset(lines.start), text.line_end(lines.end - 1));
    for m in text.find_iter_in(re, start..end).filter(|m| !m.is_empty()) {
        let (l0, c0) = text.offset_to_line_col(m.start);
        let (l1, c1) = text.offset_to_line_col(m.end);
        for l in l0..=l1.min(lines.end - 1) {
            let from = if l == l0 { c0 } else { 0 };
            let to = if l == l1 { c1 } else { text.line_char_len(l) };
            if from < to {
                out[l - lines.start].push(from..to);
            }
        }
    }
    out
}

#[cfg(test)]
#[allow(clippy::single_range_in_vec_init)] // expected per-line match lists
mod tests {
    use super::*;
    use piece_tree::Document;

    #[test]
    fn invalid_patterns_report_the_cause() {
        let e = Search::new("(").err().unwrap();
        assert!(e.starts_with("Invalid pattern: ") && e.len() > "Invalid pattern: ".len(), "{e}");
        assert_eq!(Search::word("foo").pat, r"\bfoo\b");
    }

    #[test]
    fn offsets_and_typed_splits() {
        assert_eq!(Offset::parse(""), Ok(Offset::None));
        assert_eq!(Offset::parse("e"), Ok(Offset::End(0)));
        assert_eq!(Offset::parse("e-1"), Ok(Offset::End(-1)));
        assert_eq!(Offset::parse("s+2"), Ok(Offset::Start(2)));
        assert_eq!(Offset::parse("b-"), Ok(Offset::Start(-1)));
        assert_eq!(Offset::parse("+"), Ok(Offset::Lines(1)));
        assert_eq!(Offset::parse("-3"), Ok(Offset::Lines(-3)));
        assert_eq!(Offset::parse("2"), Ok(Offset::Lines(2)));
        assert_eq!(Offset::parse("0"), Ok(Offset::Lines(0)));
        for bad in ["x", "e+x", "+-"] {
            assert_eq!(Offset::parse(bad), Err(format!("Invalid search offset: {bad}")), "{bad}");
        }
        assert_eq!(split_typed("a/b/e", '/'), ("a", "b/e"));
        assert_eq!(split_typed(r"a\/b/e", '/'), (r"a\/b", "e"));
        assert_eq!(split_typed(r"a\\/e", '/'), (r"a\\", "e"));
        assert_eq!(split_typed("a?", '?'), ("a", ""));
        assert_eq!(split_typed("abc", '/'), ("abc", ""));
    }

    #[test]
    fn forward_and_backward_wrap() {
        let t = Text::from("a1 b22 c3");
        let re = Regex::new(r"\d+").unwrap();
        assert_eq!(find_forward(&t, &re, 0, 1), Some((1..2, false)));
        assert_eq!(find_forward(&t, &re, 1, 2), Some((4..6, false)));
        assert_eq!(find_forward(&t, &re, 8, 9), Some((1..2, true)));
        assert_eq!(find_backward(&t, &re, 4), Some((1..2, false)));
        assert_eq!(find_backward(&t, &re, 1), Some((8..9, true)));
        let z = Regex::new("z").unwrap();
        assert_eq!((find_forward(&t, &z, 0, 1), find_backward(&t, &z, 0)), (None, None));
        // Only an empty match at the very end: found when wrapping backward.
        assert_eq!(find_backward(&t, &Regex::new("$").unwrap(), 0), Some((9..9, true)));
    }

    #[test]
    fn finds_matches_across_pieces() {
        let mut doc = Document::new("cd");
        doc.insert(0, "cdab");
        doc.insert(0, "xab");
        let t = doc.text();
        assert_eq!(t.chunks().collect::<Vec<_>>(), ["xab", "cdab", "cd"]);
        let re = Regex::new("bc").unwrap();
        assert_eq!(find_forward(t, &re, 0, 1), Some((2..4, false)));
        assert_eq!(find_forward(t, &re, 2, 3), Some((6..8, false)));
        assert_eq!(find_backward(t, &re, 6), Some((2..4, false)));
    }

    #[test]
    fn visible_matches_per_line() {
        let re = |p| Regex::new(p).unwrap();
        let t = Text::from("日a日a\nfoo\nbar foo");
        assert_eq!(visible_matches(&t, &re("a"), 0..3), [vec![1..2, 3..4], vec![], vec![1..2]]);
        assert_eq!(visible_matches(&t, &re("x*"), 0..3), vec![Vec::<Range<usize>>::new(); 3]);
        // Spanning a line break: split per line; only the visible lines.
        assert_eq!(visible_matches(&t, &re("o\nb"), 1..3), [vec![2..3], vec![0..1]]);
        assert_eq!(visible_matches(&t, &re("a\nf"), 0..1), [vec![3..4]]);
        assert_eq!(visible_matches(&t, &re(r"\bfoo\b"), 2..3), [vec![4..7]]);
        assert!(visible_matches(&t, &re("a"), 1..1).is_empty());
        assert_eq!(visible_matches(&t, &re("\n"), 0..2), vec![Vec::<Range<usize>>::new(); 2]);
    }
}
