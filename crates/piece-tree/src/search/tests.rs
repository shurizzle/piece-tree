use super::*;
use crate::test_util::Rng;
use crate::{Document, chunk::MAX_ADD_BYTES};

/// `s` split into pieces of random lengths (inserting at the front never extends a piece).
fn pieced(s: &str, rng: &mut Rng) -> Text {
    let bounds: Vec<usize> = (0..=s.len()).filter(|&i| s.is_char_boundary(i)).collect();
    let mut cuts = vec![0];
    while *cuts.last().unwrap() < s.len() {
        let next = bounds.iter().copied().find(|&b| b > *cuts.last().unwrap() + rng.below(6)).unwrap_or(s.len());
        cuts.push(next);
    }
    cuts.windows(2).rev().fold(Text::new(), |t, w| t.insert(0, &s[w[0]..w[1]]))
}

/// Texts to search: empty, one piece, many pieces, and random edits on top.
fn texts(rng: &mut Rng) -> Vec<(Text, String)> {
    let mut out = vec![(Text::new(), String::new())];
    for _ in 0..if cfg!(miri) { 1 } else { 6 } {
        let s = rng.text(if cfg!(miri) { 8 } else { 40 });
        out.push((Text::from(s.as_str()), s.clone()));
        let t = pieced(&s, rng);
        assert_eq!(t.to_string(), s);
        out.push((t, s));
    }
    out
}

const PATTERNS: &[&str] = &[
    "a", "bc", r"(?m)^\w+$", r"\bxyz\b", r"\p{L}+", "a*", "é|🦀", r"\n\n", ".", "(?s).", "(a)|(b)",
    r"(?<w>\w)(\w)", "x(y)?z", "$", "^", r"(?m)$",
];

fn patterns() -> &'static [&'static str] {
    if cfg!(miri) { &PATTERNS[..3] } else { PATTERNS }
}

fn walk_forward(c: &mut TextCursor<'_>) -> Vec<(usize, String)> {
    let mut seen = vec![(c.offset(), String::from_utf8(c.chunk().to_vec()).unwrap())];
    while c.advance() {
        seen.push((c.offset(), String::from_utf8(c.chunk().to_vec()).unwrap()));
    }
    seen
}

fn chunks_with_offsets(t: &Text) -> Vec<(usize, String)> {
    let mut off = 0;
    t.chunks()
        .map(|c| {
            off += c.len();
            (off - c.len(), c.to_string())
        })
        .collect()
}

#[test]
fn cursor_walks_like_chunks_both_ways() {
    let mut rng = Rng(1);
    for (t, _) in texts(&mut rng).into_iter().skip(1) {
        let expected = chunks_with_offsets(&t);
        let mut c = t.cursor();
        assert_eq!(c.total_bytes(), Some(t.len()));
        assert!(c.utf8_aware());
        assert_eq!(walk_forward(&mut c), expected);
        let last = c.chunk().as_ptr();
        assert!(!c.advance() && c.chunk().as_ptr() == last, "end: no move");
        let mut back = vec![(c.offset(), String::from_utf8(c.chunk().to_vec()).unwrap())];
        while c.backtrack() {
            back.push((c.offset(), String::from_utf8(c.chunk().to_vec()).unwrap()));
        }
        back.reverse();
        assert_eq!(back, expected);
        let first = c.chunk().as_ptr();
        assert!(!c.backtrack() && c.chunk().as_ptr() == first, "start: no move");
    }
}

#[test]
fn cursor_at_every_offset() {
    let mut rng = Rng(2);
    for (t, s) in texts(&mut rng).into_iter().skip(1) {
        let all = chunks_with_offsets(&t);
        for off in 0..=s.len() {
            let mut c = t.cursor_at(off);
            let i = all.iter().position(|&(o, ref ch)| o <= off && off < o + ch.len()).unwrap_or(all.len() - 1);
            assert_eq!(walk_forward(&mut c), all[i..], "from offset {off}");
        }
    }
}

#[test]
fn cursor_on_empty_text() {
    let t = Text::new();
    let mut c = t.cursor();
    assert!(c.chunk().is_empty() && c.offset() == 0 && c.total_bytes() == Some(0));
    assert!(!c.advance() && !c.backtrack());
    assert!(t.cursor_at(0).chunk().is_empty());
}

#[test]
#[should_panic(expected = "out of bounds")]
fn cursor_at_out_of_bounds_panics() {
    Text::from("ab").cursor_at(3);
}

#[test]
fn find_iter_and_find_from_match_regex() {
    let mut rng = Rng(3);
    let texts = texts(&mut rng);
    for p in patterns() {
        let (ours, oracle) = (Regex::new(p).unwrap(), regex::Regex::new(p).unwrap());
        for (t, s) in &texts {
            let expected: Vec<_> = oracle.find_iter(s).map(|m| m.range()).collect();
            assert_eq!(t.find_iter(&ours).collect::<Vec<_>>(), expected, "{p:?} on {s:?}");
            for off in (0..=s.len()).filter(|&o| s.is_char_boundary(o)) {
                let expected = oracle.find_at(s, off).map(|m| m.range());
                assert_eq!(t.find_from(&ours, off), expected, "{p:?} from {off} on {s:?}");
            }
        }
    }
}

const REPLACEMENTS: &[&str] = &["X", "", "<$1>", "${w}!", "$$", "[$0]", "a\r\nb\n", "$2-$1"];

#[test]
fn replace_all_matches_regex() {
    let mut rng = Rng(4);
    let texts = texts(&mut rng);
    for p in patterns() {
        let (ours, oracle) = (Regex::new(p).unwrap(), regex::Regex::new(p).unwrap());
        for rep in if cfg!(miri) { &REPLACEMENTS[..3] } else { REPLACEMENTS } {
            for (t, s) in &texts {
                let (out, n) = t.replace_all(&ours, rep);
                let expected = oracle.replace_all(s, *rep).replace("\r\n", "\n");
                tree::check(out.root());
                assert_eq!(out.to_string(), expected, "{p:?} -> {rep:?} on {s:?}");
                assert_eq!(n, oracle.find_iter(s).count());
                assert_eq!(t.to_string(), *s, "the old version is unchanged");
            }
        }
    }
}

#[test]
fn replace_all_without_matches_keeps_the_version() {
    let t = Text::from("abc");
    let (out, n) = t.replace_all(&Regex::new("z").unwrap(), "y");
    assert!(n == 0 && out.ptr_eq(&t));
}

#[test]
fn replace_all_with_a_large_replacement() {
    let big = "z".repeat(MAX_ADD_BYTES + 1);
    let (out, n) = Text::from("a-a").replace_all(&Regex::new("a").unwrap(), &big);
    assert_eq!((n, out.len()), (2, 2 * big.len() + 1));
    assert_eq!(out.chunks().count(), 3, "both matches share the one stored replacement");
    tree::check(out.root());
}

#[test]
fn replace_all_keeps_typing_extensible() {
    let (out, _) = Text::from("ab").replace_all(&Regex::new("b").unwrap(), "c");
    let t = out.insert(out.len(), "d");
    assert_eq!((t.to_string().as_str(), t.chunks().last()), ("acd", Some("cd")));
}

#[test]
fn document_replace_all_is_one_undo_step() {
    let mut doc = Document::new("a a a");
    let before = doc.text().clone();
    assert_eq!(doc.replace_all(&Regex::new("a").unwrap(), "bb"), 3);
    assert_eq!(doc.text().to_string(), "bb bb bb");
    assert!(doc.undo() && doc.text().ptr_eq(&before));
    assert!(!doc.undo());
    assert_eq!(doc.replace_all(&Regex::new("z").unwrap(), "y"), 0);
    assert!(!doc.undo(), "no match, no undo step");
}


#[test]
fn literal_alternation_across_piece_boundaries() {
    // Unpatched regex-cursor 0.1.5 skips the middle match here: its literal
    // search restarted from the chunk left by the previous search.
    let t = Text::from("é").insert(0, "é").insert(0, "é");
    assert_eq!(t.chunks().count(), 3);
    let re = Regex::new("é|🦀").unwrap();
    assert_eq!(t.find_iter(&re).collect::<Vec<_>>(), [0..2, 2..4, 4..6]);
}

#[test]
fn invalid_pattern_is_an_error() {
    let err = Regex::new("(").err().expect("unclosed group");
    assert!(err.to_string().contains("unclosed group"), "{err}");
    let _: &dyn std::error::Error = &err;
}

