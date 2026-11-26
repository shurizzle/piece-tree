//! `Ctrl+V` followed by a code (command line and Insert mode): decimal `065`, octal `o101`,
//! hex `x41`, `u20ac` and `U0001F600`.

/// The digits of a code being typed.
pub(super) struct Lit {
    radix: u32,
    max: usize,
    /// The letter (`x`, `u`, ...) that started the code, inserted as it is when no digit follows.
    prefix: Option<char>,
    digits: String,
}

/// What a character did to the code.
#[derive(Debug, PartialEq, Eq)]
pub(super) enum Push {
    /// A digit: more may follow.
    More,
    /// The last digit the code takes.
    Full,
    /// Not a digit of the code (or one that would make it too big): the code ends before it.
    End,
}

impl Lit {
    /// The code `first` (the key after `Ctrl+V`) starts, if it starts one.
    pub fn begin(first: char) -> Option<Lit> {
        let (radix, max, prefix, digits) = match first {
            '0'..='9' => (10, 3, None, first.to_string()),
            'o' | 'O' => (8, 3, Some(first), String::new()),
            'x' | 'X' => (16, 2, Some(first), String::new()),
            'u' => (16, 4, Some(first), String::new()),
            'U' => (16, 8, Some(first), String::new()),
            _ => return None,
        };
        Some(Lit { radix, max, prefix, digits })
    }

    pub fn push(&mut self, c: char) -> Push {
        if c.to_digit(self.radix).is_none() {
            return Push::End;
        }
        let value = u32::from_str_radix(&format!("{}{c}", self.digits), self.radix).unwrap_or(u32::MAX);
        // A byte at most: `256` is `25` and a `6`, `0o400` is `0o40` and a `0`.
        if (self.radix == 10 && value > 255) || (self.radix == 8 && value > 0o377) {
            return Push::End;
        }
        self.digits.push(c);
        if self.digits.len() == self.max { Push::Full } else { Push::More }
    }

    /// The character the digits stand for; the letter that started the code when there is none.
    /// None for a value that is no character.
    pub fn finish(&self) -> Option<char> {
        if self.digits.is_empty() {
            return self.prefix;
        }
        char::from_u32(u32::from_str_radix(&self.digits, self.radix).ok()?)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn code(keys: &str) -> (Option<char>, usize) {
        let mut chars = keys.chars();
        let mut lit = Lit::begin(chars.next().unwrap()).unwrap();
        let mut used = 1;
        for c in chars {
            match lit.push(c) {
                Push::More => used += 1,
                Push::Full => return (lit.finish(), used + 1),
                Push::End => break,
            }
        }
        (lit.finish(), used)
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn codes_end_at_their_length_or_at_a_non_digit() {
        assert_eq!(code("065"), (Some('A'), 3));
        assert_eq!(code("65x"), (Some('A'), 2), "a non-digit ends it");
        assert_eq!(code("256"), (Some('\u{19}'), 2), "no more than a byte");
        assert_eq!(code("233"), (Some('é'), 3));
        assert_eq!(code("x41"), (Some('A'), 3));
        assert_eq!(code("x4"), (Some('\u{4}'), 2));
        assert_eq!(code("xg"), (Some('x'), 1), "no digit: the letter");
        assert_eq!(code("u20ac"), (Some('€'), 5));
        assert_eq!(code("U0001F600"), (Some('😀'), 9));
        assert_eq!(code("U0001F6001"), (Some('😀'), 9));
        assert_eq!(code("o101"), (Some('A'), 4));
        assert_eq!(code("O377"), (Some('ÿ'), 4));
        assert_eq!(code("o400"), (Some('\u{20}'), 3), "0o400 is too big: 0o40 then 0");
        assert_eq!(code("ud800"), (None, 5), "a surrogate is no character");
        assert!(Lit::begin('a').is_none() && Lit::begin('-').is_none());
    }
}
