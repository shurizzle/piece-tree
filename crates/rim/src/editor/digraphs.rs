//! Digraphs (`Ctrl+K {a}{b}`): two characters typed for one, as in vim (RFC1345 mnemonics).

mod table;

use table::DIGRAPHS;

/// The character digraph `a b` stands for, or the one of `b a`; user digraphs first.
pub(super) fn lookup(user: &[(char, char, char)], a: char, b: char) -> Option<char> {
    let find = |a: char, b: char| {
        if let Some(&(_, _, c)) = user.iter().rev().find(|&&(x, y, _)| (x, y) == (a, b)) {
            return Some(c);
        }
        let key = (u8::try_from(a).ok()?, u8::try_from(b).ok()?);
        let i = DIGRAPHS.binary_search_by_key(&key, |&(x, y, _)| (x, y)).ok()?;
        char::from_u32(DIGRAPHS[i].2)
    };
    find(a, b).or_else(|| find(b, a))
}

/// What `Ctrl+K a b` types: the digraph, `b` with the high bit set after a space, else `b`.
pub(super) fn typed(user: &[(char, char, char)], a: char, b: char) -> char {
    if a == ' ' {
        return u8::try_from(b).ok().and_then(|b| char::from_u32(u32::from(b) | 0x80)).unwrap_or(b);
    }
    lookup(user, a, b).unwrap_or(b)
}

/// Every digraph, user ones first, as `(first, second, character)`.
pub(super) fn all(user: &[(char, char, char)]) -> Vec<(char, char, char)> {
    let mut out: Vec<_> = user.iter().rev().copied().collect();
    out.extend(DIGRAPHS.iter().filter_map(|&(a, b, c)| Some((char::from(a), char::from(b), char::from_u32(c)?))));
    out
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn table_is_sorted_unique_and_looked_up_both_ways() {
        assert!(DIGRAPHS.windows(2).all(|w| (w[0].0, w[0].1) < (w[1].0, w[1].1)));
        assert!(DIGRAPHS.len() > 1300);
        for (a, b, c, want) in [('e', ':', 'ë', 'ë'), ('E', 'u', '€', '€'), ('a', '!', 'à', 'à'), ('-', '>', '→', '→'), ('a', '*', 'α', 'α'), ('1', '2', '½', '½')] {
            assert_eq!((lookup(&[], a, b), lookup(&[], b, a)), (Some(c), Some(c)), "{a}{b}");
            assert_eq!(typed(&[], a, b), want);
        }
        assert_eq!(lookup(&[], 'Z', 'Q'), None);
        assert_eq!(typed(&[], 'Z', 'Q'), 'Q', "unknown: the second character");
        assert_eq!(typed(&[], ' ', 'a'), '\u{e1}', "a space and a character: the high bit");
        assert_eq!(typed(&[], ' ', '€'), '€');
        // User digraphs win over the table, the last definition over the earlier ones.
        let user = [('e', ':', 'X'), ('e', ':', 'Y')];
        assert_eq!(lookup(&user, 'e', ':'), Some('Y'));
        assert_eq!(all(&user)[..2], [('e', ':', 'Y'), ('e', ':', 'X')]);
        assert!(all(&[]).len() > 1300);
    }
}
