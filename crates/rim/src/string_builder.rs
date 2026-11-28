use std::{
    alloc::Allocator,
    fmt,
    ops::{
        Deref, DerefMut, Index, IndexMut, Range, RangeFrom, RangeFull, RangeInclusive, RangeTo,
        RangeToInclusive,
    },
};

use crate::rc::RcString;

pub trait StringBuilder:
    fmt::Write
    + Deref<Target = str>
    + DerefMut<Target = str>
    + Index<Range<usize>, Output = str>
    + Index<RangeTo<usize>, Output = str>
    + Index<RangeFrom<usize>, Output = str>
    + Index<RangeFull, Output = str>
    + Index<RangeInclusive<usize>, Output = str>
    + Index<RangeToInclusive<usize>, Output = str>
    + IndexMut<Range<usize>, Output = str>
    + IndexMut<RangeTo<usize>, Output = str>
    + IndexMut<RangeFrom<usize>, Output = str>
    + IndexMut<RangeFull, Output = str>
    + IndexMut<RangeInclusive<usize>, Output = str>
    + IndexMut<RangeToInclusive<usize>, Output = str>
{
    fn len(&self) -> usize;

    fn is_empty(&self) -> bool {
        self.len() == 0
    }

    fn push(&mut self, c: char);

    fn push_str(&mut self, s: &str);

    fn truncate(&mut self, new_len: usize);

    fn reserve(&mut self, additional: usize);

    fn drain(&mut self, range: Range<usize>) -> String;
}

impl<A: Allocator> StringBuilder for RcString<A> {
    #[inline(always)]
    fn len(&self) -> usize {
        RcString::len(self)
    }

    #[inline(always)]
    fn push(&mut self, c: char) {
        RcString::push(self, c)
    }

    fn push_str(&mut self, s: &str) {
        RcString::push_str(self, s)
    }

    fn truncate(&mut self, new_len: usize) {
        RcString::truncate(self, new_len);
    }

    fn reserve(&mut self, additional: usize) {
        RcString::reserve(self, additional);
    }

    fn drain(&mut self, range: Range<usize>) -> String {
        RcString::drain(self, range).collect()
    }
}

impl StringBuilder for String {
    #[inline(always)]
    fn len(&self) -> usize {
        String::len(self)
    }

    #[inline(always)]
    fn push(&mut self, c: char) {
        String::push(self, c)
    }

    fn push_str(&mut self, s: &str) {
        String::push_str(self, s)
    }

    fn truncate(&mut self, new_len: usize) {
        String::truncate(self, new_len);
    }

    fn reserve(&mut self, additional: usize) {
        String::reserve(self, additional);
    }

    fn drain(&mut self, range: Range<usize>) -> String {
        String::drain(self, range).collect()
    }
}

#[cfg(test)]
mod tests {
    use super::StringBuilder;
    use crate::rc::RcString;

    fn exercise<T: StringBuilder>(mut s: T) {
        assert_eq!(s.len(), 4);
        assert!(!s.is_empty());
        assert_eq!(&s[..], "abcd");
        assert_eq!(&s[1..3], "bc");
        assert_eq!(&s[2..], "cd");
        assert_eq!(&s[..2], "ab");
        assert_eq!(&s[1..=2], "bc");
        assert_eq!(&s[..=2], "abc");
        s[..1].make_ascii_uppercase();
        assert_eq!(&s[..], "Abcd");
        s.push('e');
        s.push_str("f");
        assert_eq!(&s[..], "Abcdef");
        s.truncate(2);
        assert_eq!(&s[..], "Ab");
    }

    #[test]
    #[cfg_attr(miri, ignore = "safe logic, no unsafe")]
    fn string_index_and_push() {
        exercise(String::from("abcd"));
    }

    #[test]
    #[cfg_attr(miri, ignore = "safe logic, no unsafe")]
    fn rc_string_index_and_push() {
        exercise(RcString::from("abcd"));
    }
}
