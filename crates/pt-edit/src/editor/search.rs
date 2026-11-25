//! Literal search over `Text::chunks` without copying the text.

use std::ops::Range;

use memchr::memmem::{self, Finder};
use piece_tree::Text;

/// Start offsets of every match of `pat` (overlapping included), in order. Matches spanning
/// chunks are found through a small buffer of the previous `pat.len() - 1` bytes.
pub(super) fn match_starts<'a>(text: &'a Text, pat: &'a str) -> impl Iterator<Item = usize> + 'a {
    let finder = Finder::new(pat.as_bytes());
    let m = pat.len();
    let (mut carry, mut base): (Vec<u8>, usize) = (Vec::new(), 0);
    text.chunks().flat_map(move |chunk| {
        let chunk = chunk.as_bytes();
        let mut hits = Vec::new();
        if m > 1 && !carry.is_empty() {
            let mut buf = carry.clone();
            buf.extend_from_slice(&chunk[..chunk.len().min(m - 1)]);
            let mut i = 0;
            // Only matches that start in `carry` and end past it: the others were found already.
            while let Some(k) = finder.find(&buf[i..]) {
                let s = i + k;
                if s >= carry.len() {
                    break;
                }
                if s + m > carry.len() {
                    hits.push(base - carry.len() + s);
                }
                i = s + 1;
            }
        }
        let mut i = 0;
        while let Some(k) = finder.find(&chunk[i..]) {
            hits.push(base + i + k);
            i += k + 1;
        }
        if m > 1 {
            if chunk.len() >= m - 1 {
                carry = chunk[chunk.len() - (m - 1)..].to_vec();
            } else {
                carry.extend_from_slice(chunk);
                let excess = carry.len().saturating_sub(m - 1);
                carry.drain(..excess);
            }
        }
        base += chunk.len();
        hits
    })
}

/// Char ranges of the matches of `pat` in `line` (non-overlapping), keeping those `accept` takes.
pub(super) fn line_matches(line: &str, pat: &str, accept: impl Fn(&str, Range<usize>) -> bool) -> Vec<Range<usize>> {
    if pat.is_empty() {
        return Vec::new();
    }
    let (mut out, mut chars, mut seen) = (Vec::new(), 0, 0);
    for b in memmem::find_iter(line.as_bytes(), pat.as_bytes()) {
        if !accept(line, b..b + pat.len()) {
            continue;
        }
        chars += line[seen..b].chars().count();
        let len = pat.chars().count();
        out.push(chars..chars + len);
        chars += len;
        seen = b + pat.len();
    }
    out
}

/// Whether byte range `r` of `s` is not glued to word chars on either side (`*`, `#`).
pub(super) fn is_whole_word(s: &str, r: Range<usize>) -> bool {
    let word = |c: Option<char>| c.is_some_and(|c| c.is_alphanumeric() || c == '_');
    !word(s[..r.start].chars().next_back()) && !word(s[r.end..].chars().next())
}

#[cfg(test)]
mod tests {
    use super::*;
    use piece_tree::Document;

    #[test]
    fn finds_matches_across_chunks() {
        // Prepends never extend the previous piece: chunks "xab", "cdab", "cd" split inside the matches.
        let mut doc = Document::new("cd");
        doc.insert(0, "cdab");
        doc.insert(0, "xab");
        let text = doc.text();
        assert_eq!(text.chunks().collect::<Vec<_>>(), ["xab", "cdab", "cd"]);
        assert_eq!(text.slice(0..text.len()), "xabcdabcd");
        assert_eq!(match_starts(text, "abcd").collect::<Vec<_>>(), [1, 5]);
        assert_eq!(match_starts(text, "bc").collect::<Vec<_>>(), [2, 6]);
        assert_eq!(match_starts(text, "d").collect::<Vec<_>>(), [4, 8]);
        assert_eq!(match_starts(text, "dabc").collect::<Vec<_>>(), [4]);
        assert_eq!(match_starts(text, "xabcdabcd").collect::<Vec<_>>(), [0]);
        assert_eq!(match_starts(text, "zz").count(), 0);
    }

    #[test]
    fn finds_overlapping_matches_across_tiny_chunks() {
        let mut doc = Document::new("a");
        // Prepending never extends the previous piece: one-byte chunks, shorter than the carry.
        for _ in 1..6 {
            doc.insert(0, "a");
        }
        assert_eq!(doc.text().chunks().count(), 6);
        assert_eq!(match_starts(doc.text(), "aaa").collect::<Vec<_>>(), [0, 1, 2, 3]);
    }

    #[test]
    fn line_matches_in_chars() {
        let any = |_: &str, _| true;
        assert_eq!(line_matches("日a日a", "a", any), [1..2, 3..4]);
        assert_eq!(line_matches("aaaa", "aa", any), [0..2, 2..4]);
        assert!(line_matches("ab", "", any).is_empty());
        assert_eq!(line_matches("foo food foo", "foo", is_whole_word), [0..3, 9..12]);
        assert!(is_whole_word("(a)", 1..2));
        assert!(!is_whole_word("_a", 1..2));
    }
}
