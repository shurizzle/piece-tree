//! Word classes of Neovim (`utf_class_tab`, `mbyte.c`): what `w`, `b`, `e`, `cw`, `iw`, `aw`, `*` and `Ctrl+W` call a word.
//! 0 is blank, 1 punctuation, 2 a word char, 3 an emoji, any bigger number one script (Hiragana, Katakana, ideographs,
//! Hangul, braille, super- and subscripts): two chars of different classes are two words.

use std::sync::LazyLock;

use regex::Regex;

/// `{first, last, class}`, sorted and not overlapping: the table of `utf_class_tab`, copied from it. No crate has it; it is
/// Neovim's own choice (a class per script, and which blocks are punctuation), not a Unicode property.
const CLASSES: &[(u32, u32, u32)] = &[
    (0x037e, 0x037e, 1), // Greek question mark
    (0x0387, 0x0387, 1), // Greek ano teleia
    (0x055a, 0x055f, 1), // Armenian punctuation
    (0x0589, 0x0589, 1), // Armenian full stop
    (0x05be, 0x05be, 1),
    (0x05c0, 0x05c0, 1),
    (0x05c3, 0x05c3, 1),
    (0x05f3, 0x05f4, 1),
    (0x060c, 0x060c, 1),
    (0x061b, 0x061b, 1),
    (0x061f, 0x061f, 1),
    (0x066a, 0x066d, 1),
    (0x06d4, 0x06d4, 1),
    (0x0700, 0x070d, 1), // Syriac punctuation
    (0x0964, 0x0965, 1),
    (0x0970, 0x0970, 1),
    (0x0df4, 0x0df4, 1),
    (0x0e4f, 0x0e4f, 1),
    (0x0e5a, 0x0e5b, 1),
    (0x0f04, 0x0f12, 1),
    (0x0f3a, 0x0f3d, 1),
    (0x0f85, 0x0f85, 1),
    (0x104a, 0x104f, 1), // Myanmar punctuation
    (0x10fb, 0x10fb, 1), // Georgian punctuation
    (0x1361, 0x1368, 1), // Ethiopic punctuation
    (0x166d, 0x166e, 1), // Canadian Syl. punctuation
    (0x1680, 0x1680, 0),
    (0x169b, 0x169c, 1),
    (0x16eb, 0x16ed, 1),
    (0x1735, 0x1736, 1),
    (0x17d4, 0x17dc, 1), // Khmer punctuation
    (0x1800, 0x180a, 1), // Mongolian punctuation
    (0x2000, 0x200b, 0), // spaces
    (0x200c, 0x2027, 1), // punctuation and symbols
    (0x2028, 0x2029, 0),
    (0x202a, 0x202e, 1), // punctuation and symbols
    (0x202f, 0x202f, 0),
    (0x2030, 0x205e, 1), // punctuation and symbols
    (0x205f, 0x205f, 0),
    (0x2060, 0x206f, 1), // punctuation and symbols
    (0x2070, 0x207f, 0x2070), // superscript
    (0x2080, 0x2094, 0x2080), // subscript
    (0x20a0, 0x27ff, 1), // all kinds of symbols
    (0x2800, 0x28ff, 0x2800), // braille
    (0x2900, 0x2998, 1), // arrows, brackets, etc.
    (0x29d8, 0x29db, 1),
    (0x29fc, 0x29fd, 1),
    (0x2e00, 0x2e7f, 1), // supplemental punctuation
    (0x3000, 0x3000, 0), // ideographic space
    (0x3001, 0x3020, 1), // ideographic punctuation
    (0x3030, 0x3030, 1),
    (0x303d, 0x303d, 1),
    (0x3040, 0x309f, 0x3040), // Hiragana
    (0x30a0, 0x30ff, 0x30a0), // Katakana
    (0x3300, 0x9fff, 0x4e00), // CJK Ideographs
    (0xac00, 0xd7a3, 0xac00), // Hangul Syllables
    (0xf900, 0xfaff, 0x4e00), // CJK Ideographs
    (0xfd3e, 0xfd3f, 1),
    (0xfe30, 0xfe6b, 1), // punctuation forms
    (0xff00, 0xff0f, 1), // half/fullwidth ASCII
    (0xff1a, 0xff20, 1), // half/fullwidth ASCII
    (0xff3b, 0xff40, 1), // half/fullwidth ASCII
    (0xff5b, 0xff65, 1), // half/fullwidth ASCII
    (0x1d000, 0x1d24f, 1), // Musical notation
    (0x1d400, 0x1d7ff, 1), // Mathematical Alphanumeric Symbols
    (0x1f000, 0x1f2ff, 1), // Game pieces; enclosed characters
    (0x1f300, 0x1f9ff, 1), // Many symbol blocks
    (0x20000, 0x2a6df, 0x4e00), // CJK Ideographs
    (0x2a700, 0x2b73f, 0x4e00), // CJK Ideographs
    (0x2b740, 0x2b81f, 0x4e00), // CJK Ideographs
    (0x2f800, 0x2fa1f, 0x4e00), // CJK Ideographs
];

/// `prop_is_emojilike`: Extended_Pictographic or Regional_Indicator (the properties of `utf8proc`, here those of
/// `regex-syntax`).
static EMOJI: LazyLock<Regex> = LazyLock::new(|| Regex::new(r"^(?:\p{Extended_Pictographic}|\p{Regional_Indicator})$").expect("valid pattern"));

/// First char above Latin-1 that is Extended_Pictographic (U+203C); a Regional_Indicator is U+1F1E6 and up.
const FIRST_EMOJI: u32 = 0x203c;

/// `utf_class` with the default `'iskeyword'` (`@,48-57,_,192-255`; the Latin-1 set was read back from Neovim: it has U+00B5).
// shortcut: 'iskeyword' is not an option here, so a word is always that of the default, when someone needs `:set isk+=-`
pub(super) fn class(c: char) -> u32 {
    let c = u32::from(c);
    if c < 0x100 {
        return match c {
            // A line break reads as blank (the iterators of rim see it as a char; Neovim has the NUL that ends the line).
            0 | 0x09 | 0x0a | 0x20 | 0xa0 => 0,
            0x30..=0x39 | 0x41..=0x5a | 0x5f | 0x61..=0x7a | 0xb5 | 0xc0..=0xff => 2,
            _ => 1,
        };
    }
    if (c >= FIRST_EMOJI) && char::from_u32(c).is_some_and(|ch| EMOJI.is_match(ch.encode_utf8(&mut [0; 4]))) {
        return 3;
    }
    let i = CLASSES.partition_point(|&(_, last, _)| last < c);
    match CLASSES.get(i) {
        Some(&(first, _, cls)) if first <= c => cls,
        _ => 2,
    }
}

#[cfg(test)]
mod tests {
    use super::class;

    /// Where the data differs on purpose: emoji that the Unicode version of `regex-syntax` has and the `utf8proc` of Neovim does
    /// not (class 3 here, 2 there; the reserved pictographic blocks too), and the skin tone modifiers, which Neovim's probe takes
    /// as composing with the `a` before them.
    const DIFFERENT: &[(u32, u32)] = &[(0x1f3fb, 0x1f3ff), (0x1fa00, 0x1fa6f), (0x1fa7d, 0x1fa7f), (0x1fac7, 0x1fac7), (0x1fac9, 0x1facb), (0x1fade, 0x1fade), (0x1faec, 0x1faee), (0x1fafb, 0x1faff), (0x1fc00, 0x1fffd)];

    /// The chars from U+0100 to U+2FFFF that Neovim keeps in the same word as `a` (class 2), recorded with
    /// `tools/wordclass_probe.vim` (`e` from `a<char>a`): the table, the emoji and the default case all have to agree.
    #[cfg_attr(miri, ignore = "safe logic over 200k chars; the regex matcher is slow under Miri")]
    #[test]
    fn class_two_is_what_neovim_calls_a_word_char() {
        let ranges: Vec<(u32, u32)> = include_str!("script/cases/wordclass.ranges")
            .lines()
            .map(|l| {
                let (a, b) = l.split_once(' ').expect("two numbers");
                (a.parse().expect("number"), b.parse().expect("number"))
            })
            .collect();
        let in_set = |c: u32| ranges.binary_search_by(|&(a, b)| if b < c { std::cmp::Ordering::Less } else if a > c { std::cmp::Ordering::Greater } else { std::cmp::Ordering::Equal }).is_ok();
        let bad: Vec<String> = (0x100..=0x2ffff_u32).filter_map(|c| char::from_u32(c).map(|ch| (c, ch, class(ch))))
            // The probe cannot tell blanks (`e` skips them) and chars of no width (they compose with the `a` before them).
            .filter(|&(_, ch, k)| k != 0 && unicode_width::UnicodeWidthChar::width(ch) != Some(0))
            .map(|(c, _, k)| (c, k))
            .filter(|&(c, _)| !DIFFERENT.iter().any(|&(a, b)| (a..=b).contains(&c)))
            .filter(|&(c, k)| (k == 2) != in_set(c)).take(100000).map(|(c, k)| format!("U+{c:04X} class {k}")).collect();
        let mut spans: Vec<(String, String)> = Vec::new();
        for b in &bad {
            let n = u32::from_str_radix(&b[2..b.find(" ").unwrap()], 16).unwrap();
            match spans.last_mut() { Some((_, e)) if u32::from_str_radix(e, 16).unwrap() + 1 == n => *e = format!("{n:X}"), _ => spans.push((format!("{n:X}"), format!("{n:X}"))) }
        }
        assert!(bad.is_empty(), "{} mismatches: {spans:?}", bad.len());
    }

    #[test]
    fn latin1_and_the_numbers_of_the_scripts() {
        assert_eq!([class(' '), class('\t'), class('\u{a0}'), class('\u{b5}'), class('\u{aa}'), class('\u{d7}'), class('.')], [0, 0, 0, 2, 1, 2, 1]);
        assert_eq!([class('日'), class('ひ'), class('カ'), class('한'), class('😀'), class('🇮'), class('⠁'), class('\u{3000}')], [0x4e00, 0x3040, 0x30a0, 0xac00, 3, 3, 0x2800, 0]);
    }
}
