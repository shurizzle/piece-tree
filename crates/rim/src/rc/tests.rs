use super::*;
use std::alloc::AllocError;
use std::collections::hash_map::DefaultHasher;
use std::hash::Hasher;

#[test]
fn sized_value_clones_and_drops() {
    let a = Rc::new(5u32);
    assert_eq!(*a, 5);
    let b = a.clone();
    assert_eq!(a.strong_count(), 2);
    assert!(Rc::ptr_eq(&a, &b));
    drop(a);
    assert_eq!(b.strong_count(), 1);
    assert_eq!(*b, 5);
}

#[test]
fn value_aligned_past_the_header() {
    let v = Rc::new(3u128);
    assert_eq!(*v, 3);
}

#[test]
fn zero_sized_value() {
    let z = Rc::new(());
    assert_eq!(*z, ());
    let c = z.clone();
    assert_eq!(z.strong_count(), 2);
    drop(c);
    assert_eq!(z.strong_count(), 1);
}

#[test]
fn string_value() {
    let s: Rc<str> = "héllo wörld".into();
    assert_eq!(&*s, "héllo wörld");
    let t = s.clone();
    assert!(Rc::ptr_eq(&s, &t));
    assert_eq!(s.strong_count(), 2);
    drop(t);
    assert_eq!(s.strong_count(), 1);
    assert_eq!(&*s, "héllo wörld");
}

#[test]
fn empty_string() {
    let s: Rc<str> = "".into();
    assert_eq!(&*s, "");
    assert_eq!(s.len(), 0);
}

#[test]
fn layout_matches_the_box() {
    for s in ["", "a", "héllo", &"x".repeat(64)] {
        let rc: Rc<str> = s.into();
        let (layout, _) = box_layout(Layout::for_value(s)).expect("layout");
        // SAFETY: a live `Rc` owns a valid box.
        let boxed = unsafe { rc.ptr.as_ref() };
        assert_eq!(Layout::for_value(boxed), layout);
    }
}

#[test]
fn rc_string_becomes_rc() {
    let r: Rc<str> = RcString::new().into();
    assert_eq!(&*r, "");
    let r: Rc<str> = RcString::from("héllo").into();
    assert_eq!(&*r, "héllo");
    assert_eq!(r.len(), 6);
    assert_eq!(r.strong_count(), 1);
    let c = r.clone();
    assert!(Rc::ptr_eq(&r, &c));
    assert_eq!(&*c, "héllo");
}

#[test]
fn rc_string_with_slack_is_shrunk() {
    let mut s = RcString::with_capacity(1000);
    s.push_str("héllo");
    assert_eq!(s.capacity(), 1000);
    let r: Rc<str> = s.into();
    assert_eq!(&*r, "héllo");
    // SAFETY: a live `Rc` owns a valid box.
    let boxed = unsafe { r.ptr.as_ref() };
    assert_eq!(Layout::for_value(boxed).size(), string_layout(6).expect("layout").0.size());
}

#[test]
fn rc_string_exact_capacity_keeps_the_allocation() {
    let mut s = RcString::with_capacity(2);
    s.push_str("ab");
    let before = s.data;
    let r: Rc<str> = s.into();
    // SAFETY: a live `Rc` owns a valid box.
    let boxed = unsafe { r.ptr.as_ref() };
    assert_eq!(boxed.value.as_ptr(), before.as_ptr());
}

#[test]
fn rc_string_grows_by_pushing() {
    let mut s = RcString::new();
    for _ in 0..100 {
        s.push_str("abc");
    }
    assert_eq!(s.len(), 300);
    s.truncate(298);
    assert_eq!(s.len(), 298);
    let r: Rc<str> = s.into();
    assert_eq!(r.len(), 298);
    assert_eq!(&*r, "abc".repeat(99) + "a");
}

#[test]
fn rc_string_clone_is_deep() {
    let mut a = RcString::from("one");
    let b = a.clone();
    a.push_str(" two");
    assert_eq!(&*a, "one two");
    assert_eq!(&*b, "one");
    let mut c = RcString::from("zzz");
    c.clone_from(&b);
    assert_eq!(&*c, "one");
}

#[test]
fn rc_string_pushes_chars_and_clears() {
    let mut s = RcString::new();
    assert!(s.is_empty());
    s.push('é');
    s.push_str("x");
    assert_eq!(&*s, "éx");
    assert_eq!(s.len(), 3);
    assert_eq!(s.as_bytes(), "éx".as_bytes());
    s.clear();
    assert!(s.is_empty());
    let r: Rc<str> = s.into();
    assert_eq!(&*r, "");
}

#[test]
fn rc_string_truncate() {
    let mut s = RcString::from("héllo");
    s.truncate(100);
    assert_eq!(&*s, "héllo");
    s.truncate(4);
    assert_eq!(&*s, "hél");
    s.truncate(0);
    assert_eq!(&*s, "");
}

#[test]
#[should_panic(expected = "char boundary")]
fn rc_string_truncate_inside_a_char() {
    let mut s = RcString::from("é");
    s.truncate(1);
}

#[test]
fn rc_string_pop_and_remove() {
    let mut s = RcString::from("héx");
    assert_eq!(s.pop(), Some('x'));
    assert_eq!(s.pop(), Some('é'));
    assert_eq!(s.pop(), Some('h'));
    assert_eq!(s.pop(), None);

    let mut s = RcString::from("héx");
    assert_eq!(s.remove(0), 'h');
    assert_eq!(&*s, "éx");
    assert_eq!(s.remove(0), 'é');
    assert_eq!(&*s, "x");
}

#[test]
#[should_panic(expected = "cannot remove a char from the end of a string")]
fn rc_string_remove_at_the_end() {
    let mut s = RcString::from("ab");
    s.remove(2);
}

#[test]
#[should_panic(expected = "char boundary")]
fn rc_string_remove_inside_a_char() {
    let mut s = RcString::from("é");
    s.remove(1);
}

#[test]
fn rc_string_insert() {
    let mut s = RcString::from("ac");
    s.insert(1, 'b');
    assert_eq!(&*s, "abc");
    s.insert_str(0, "«");
    assert_eq!(&*s, "«abc");
    s.insert_str(s.len(), "»");
    assert_eq!(&*s, "«abc»");
}

#[test]
#[should_panic(expected = "char boundary")]
fn rc_string_insert_inside_a_char() {
    let mut s = RcString::from("é");
    s.insert(1, 'x');
}

#[test]
fn rc_string_retain() {
    let mut s = RcString::from("h1é2x");
    s.retain(|c| !c.is_ascii_digit());
    assert_eq!(&*s, "héx");
    s.retain(|_| false);
    assert_eq!(&*s, "");
}

#[test]
fn rc_string_split_off() {
    let mut s = RcString::from("héllo");
    let tail = s.split_off(3);
    assert_eq!(&*s, "hé");
    assert_eq!(&*tail, "llo");
    let empty = s.split_off(s.len());
    assert!(empty.is_empty());
}

#[test]
#[should_panic(expected = "char boundary")]
fn rc_string_split_off_inside_a_char() {
    let mut s = RcString::from("é");
    s.split_off(1);
}

#[test]
fn rc_string_drain() {
    let mut s = RcString::from("héllo wörld");
    {
        let mut drain = s.drain(1..4);
        assert_eq!(drain.as_str(), "él");
        assert_eq!(drain.as_bytes(), "él".as_bytes());
        assert_eq!(drain.len(), 2);
        assert_eq!(drain.next(), Some('é'));
        assert_eq!(drain.next_back(), Some('l'));
        assert_eq!(drain.next(), None);
        assert_eq!(drain.next_back(), None);
    }
    assert_eq!(&*s, "hlo wörld");

    let mut s = RcString::from("abc");
    assert_eq!(s.drain(..).collect::<String>(), "abc");
    assert_eq!(&*s, "");
    let mut s = RcString::from("abc");
    assert_eq!(s.drain(1..1).collect::<String>(), "");
    assert_eq!(&*s, "abc");
}

#[test]
#[should_panic(expected = "out of bounds")]
fn rc_string_drain_out_of_bounds() {
    let mut s = RcString::from("abc");
    let _ = s.drain(1..9);
}

#[test]
#[should_panic(expected = "char boundaries")]
fn rc_string_drain_inside_a_char() {
    let mut s = RcString::from("é");
    let _ = s.drain(0..1);
}

#[test]
fn rc_string_replace_range() {
    let mut s = RcString::from("héllo");
    s.replace_range(0..1, "H");
    assert_eq!(&*s, "Héllo");
    s.replace_range(1..3, "e");
    assert_eq!(&*s, "Hello");
    s.replace_range(5.., "!");
    assert_eq!(&*s, "Hello!");
    s.replace_range(..1, "J");
    assert_eq!(&*s, "Jello!");
}

#[test]
fn rc_string_extend_from_within() {
    let mut s = RcString::from("abc");
    s.extend_from_within(..);
    assert_eq!(&*s, "abcabc");
    s.extend_from_within(0..2);
    assert_eq!(&*s, "abcabcab");
    let mut s = RcString::from("abc");
    s.extend_from_within(..1);
    assert_eq!(&*s, "abca");
}

#[test]
fn rc_string_reserves() {
    let mut s = RcString::new();
    s.reserve(10);
    assert!(s.capacity() >= 10);
    let cap = s.capacity();
    s.reserve(1);
    assert_eq!(s.capacity(), cap);
    s.push_str("1234567890");
    assert!(s.capacity() >= 10);

    let mut s = RcString::new();
    s.reserve_exact(7);
    assert_eq!(s.capacity(), 7);
    s.push_str("1234567");
    assert!(s.try_reserve(3).is_ok());
    assert!(s.capacity() >= 10);
    assert!(s.try_reserve_exact(10).is_ok());
    assert_eq!(s.capacity(), 17);
    assert_eq!(s.try_reserve(usize::MAX).unwrap_err().to_string(), "capacity overflow");
}

#[test]
fn rc_string_shrinks() {
    let mut s = RcString::with_capacity(1000);
    s.push_str("abc");
    s.shrink_to(100);
    assert_eq!(s.capacity(), 100);
    assert_eq!(&*s, "abc");
    s.shrink_to_fit();
    assert_eq!(s.capacity(), 3);
    s.shrink_to(100);
    assert_eq!(s.capacity(), 3);
    assert_eq!(&*s, "abc");
}

#[test]
fn rc_string_into_bytes_and_box() {
    let s = RcString::from("héllo");
    assert_eq!(s.clone().into_bytes(), "héllo".as_bytes());
    let b = RcString::from("héllo").into_boxed_str();
    assert_eq!(&*b, "héllo");
}

#[test]
fn rc_string_raw_parts_roundtrip() {
    let s = RcString::from("héllo");
    let (ptr, len, cap) = s.into_raw_parts();
    // SAFETY: the parts come from `into_raw_parts` just now.
    let s = unsafe { RcString::from_raw_parts(ptr, len, cap) };
    assert_eq!(&*s, "héllo");
    assert_eq!(s.capacity(), cap);
}

#[test]
#[cfg_attr(miri, ignore = "leaks the allocation on purpose, which Miri reports")]
fn rc_string_leak() {
    let s = RcString::from("héllo");
    let leaked = s.leak();
    assert_eq!(leaked, "héllo");
    leaked.make_ascii_uppercase();
    assert_eq!(leaked, "HéLLO");
}

#[test]
fn rc_string_from_utf8() {
    let ok = RcString::from_utf8(vec![0x68, 0xc3, 0xa9]).unwrap();
    assert_eq!(&*ok, "hé");

    let err = RcString::from_utf8(vec![0xff]).unwrap_err();
    assert_eq!(err.as_bytes(), &[0xff]);
    assert_eq!(err.utf8_error().valid_up_to(), 0);
    assert_eq!(err.to_string(), "invalid utf-8 sequence of 1 bytes from index 0");
    assert_eq!(&*err.clone().into_utf8_lossy(), "\u{FFFD}");
    assert_eq!(err.into_bytes(), vec![0xff]);
}

#[test]
fn rc_string_from_utf8_lossy() {
    assert_eq!(RcString::from_utf8_lossy(b"h\xc3\xa9"), Cow::Borrowed("hé"));
    assert_eq!(&*RcString::from_utf8_lossy(b"h\xff"), "h\u{FFFD}");
    assert_eq!(&*RcString::from_utf8_lossy_owned(vec![0x68, 0xff]), "h\u{FFFD}");
    // SAFETY: the bytes are UTF-8.
    let s = unsafe { RcString::from_utf8_unchecked(vec![0x68, 0xc3, 0xa9]) };
    assert_eq!(&*s, "hé");
}

#[test]
fn rc_string_from_utf16() {
    let units: Vec<u16> = "hé💖".encode_utf16().collect();
    assert_eq!(&*RcString::from_utf16(&units).unwrap(), "hé💖");
    assert_eq!(&*RcString::from_utf16_lossy(&units), "hé💖");

    let err = RcString::from_utf16(&[0xdc00]).unwrap_err();
    assert_eq!(err.to_string(), "invalid utf-16: lone surrogate found");
    assert_eq!(&*RcString::from_utf16_lossy(&[0xdc00]), "\u{FFFD}");
}

#[test]
fn rc_string_from_utf16_endian() {
    let le: Vec<u8> = "hé".encode_utf16().flat_map(u16::to_le_bytes).collect();
    assert_eq!(&*RcString::from_utf16le(&le).unwrap(), "hé");
    assert_eq!(&*RcString::from_utf16le_lossy(&le), "hé");

    let be: Vec<u8> = "hé".encode_utf16().flat_map(u16::to_be_bytes).collect();
    assert_eq!(&*RcString::from_utf16be(&be).unwrap(), "hé");
    assert_eq!(&*RcString::from_utf16be_lossy(&be), "hé");

    let odd = b"\x68";
    let err = RcString::from_utf16le(odd).unwrap_err();
    assert_eq!(err.to_string(), "invalid utf-16: odd number of bytes");
    assert!(RcString::from_utf16be(odd).is_err());
    assert_eq!(&*RcString::from_utf16le_lossy(odd), "\u{FFFD}");
    assert_eq!(&*RcString::from_utf16be_lossy(odd), "\u{FFFD}");

    let lone_le = b"\x00\xdc";
    assert_eq!(&*RcString::from_utf16le_lossy(lone_le), "\u{FFFD}");
    assert!(RcString::from_utf16le(lone_le).is_err());
    let lone_be = b"\xdc\x00";
    assert_eq!(&*RcString::from_utf16be_lossy(lone_be), "\u{FFFD}");
    assert!(RcString::from_utf16be(lone_be).is_err());
}

#[test]
fn rc_string_conversions() {
    let s: RcString = "abc".into();
    assert_eq!(&*s, "abc");
    let mut owned = String::from("xyz");
    let s: RcString = (&mut owned[..]).into();
    assert_eq!(&*s, "xyz");
    let s: RcString = Box::<str>::from("box").into();
    assert_eq!(&*s, "box");
    let s: RcString = Cow::Borrowed("cow").into();
    assert_eq!(&*s, "cow");
    let s: RcString = 'é'.into();
    assert_eq!(&*s, "é");
    let orig: RcString = "orig".into();
    let s: RcString = (&orig).into();
    assert_eq!(&*s, "orig");

    let s: RcString = "42".parse().unwrap();
    assert_eq!(&*s, "42");
    let s = RcString::try_from(vec![0x61]).unwrap();
    assert_eq!(&*s, "a");
    assert!(RcString::try_from(vec![0xff]).is_err());
    let d: RcString = RcString::default();
    assert!(d.is_empty());
}

#[test]
fn rc_string_iterators() {
    let s: RcString = ['a', 'b', 'é'].into_iter().collect();
    assert_eq!(&*s, "abé");
    let s: RcString = [&'x', &'y'].into_iter().collect();
    assert_eq!(&*s, "xy");
    let s: RcString = ["a", "b"].into_iter().collect();
    assert_eq!(&*s, "ab");
    let s: RcString = [RcString::from("a"), RcString::from("b")].into_iter().collect();
    assert_eq!(&*s, "ab");
    let s: RcString = [Box::<str>::from("a"), Box::<str>::from("b")].into_iter().collect();
    assert_eq!(&*s, "ab");
    let s: RcString =
        [Cow::Borrowed("a"), Cow::Borrowed("b")].into_iter().collect();
    assert_eq!(&*s, "ab");

    let mut s = RcString::new();
    s.extend(['a', 'b']);
    s.extend([&'c']);
    s.extend(["d"]);
    s.extend([RcString::from("e")]);
    s.extend([Box::<str>::from("f")]);
    s.extend([Cow::Borrowed("g")]);
    assert_eq!(&*s, "abcdefg");
}

#[test]
fn rc_string_add_and_assign() {
    let s = RcString::from("a") + "b";
    assert_eq!(&*s, "ab");
    let mut s = RcString::from("a");
    s += "b";
    assert_eq!(&*s, "ab");
}

#[test]
fn rc_string_deref_and_index() {
    let mut s = RcString::from("héllo");
    assert!(s.starts_with('h'));
    assert_eq!(AsRef::<str>::as_ref(&s), "héllo");
    assert_eq!(<RcString as AsRef<[u8]>>::as_ref(&s), "héllo".as_bytes());
    assert_eq!(&s[..1], "h");
    assert_eq!(&s[1..3], "é");
    let text: &mut str = s.as_mut();
    text.make_ascii_uppercase();
    assert_eq!(&*s, "HéLLO");
    let upper = &mut s[..1];
    upper.make_ascii_lowercase();
    assert_eq!(&*s, "héLLO");
}

#[test]
fn rc_string_display_debug_write() {
    use std::fmt::Write;
    let mut s = RcString::from("a\tb");
    assert_eq!(s.to_string(), "a\tb");
    assert_eq!(format!("{s:?}"), "\"a\\tb\"");
    write!(s, "{}", 1).unwrap();
    assert_eq!(&*s, "a\tb1");
    s.write_char('é').unwrap();
    assert_eq!(&*s, "a\tb1é");
}

#[test]
fn rc_string_comparisons() {
    let s = RcString::from("abc");
    assert_eq!(s, RcString::from("abc"));
    assert_eq!(s, "abc");
    assert_eq!("abc", s);
    assert_eq!(s, *"abc");
    assert_eq!(*"abc", s);
    assert_eq!(s, String::from("abc"));
    assert_eq!(String::from("abc"), s);
    assert_eq!(s, Cow::Borrowed("abc"));
    assert_eq!(Cow::Borrowed("abc"), s);

    let longer = RcString::from("abd");
    assert!(s < longer);
    assert!(s < "abd");
    assert!("abd" > s);
    let longer = String::from("abd");
    assert!(s < longer);
    assert!(longer > s);
    assert!(s > Cow::Borrowed("ab"));
    assert!(Cow::Borrowed("ab") < s);
    assert_eq!(s.cmp(&RcString::from("abc")), Ordering::Equal);
    assert_eq!(s.partial_cmp(&RcString::from("abd")), Some(Ordering::Less));

    let mut h1 = DefaultHasher::new();
    let mut h2 = DefaultHasher::new();
    s.hash(&mut h1);
    "abc".hash(&mut h2);
    assert_eq!(h1.finish(), h2.finish());
}

#[test]
fn rc_string_layout_matches_the_box() {
    for n in 0..40 {
        let text = "y".repeat(n);
        let mut s = RcString::with_capacity(n + 3);
        s.push_str(&text);
        let r: Rc<str> = s.into();
        // SAFETY: a live `Rc` owns a valid box.
        let boxed = unsafe { r.ptr.as_ref() };
        assert_eq!(Layout::for_value(boxed), string_layout(n).expect("layout").0);
        assert_eq!(&*r, text);
    }
}

/// Grows up to a small size, then fails: lets the `AllocError` arm of `try_reserve` run.
#[derive(Clone, Copy)]
struct Tiny;

unsafe impl Allocator for Tiny {
    fn allocate(&self, layout: Layout) -> Result<NonNull<[u8]>, AllocError> {
        if layout.size() > 64 {
            return Err(AllocError);
        }
        Global.allocate(layout)
    }

    unsafe fn deallocate(&self, ptr: NonNull<u8>, layout: Layout) {
        // SAFETY: the caller passes an allocation of this allocator, from `Global`.
        unsafe { Global.deallocate(ptr, layout) }
    }
}

#[test]
fn rc_string_allocator_failure() {
    let mut s = RcString::with_capacity_in(8, Tiny);
    s.push_str("abc");
    let err = s.try_reserve(1000).unwrap_err();
    assert_eq!(err.to_string(), "memory allocation failed");
    assert_eq!(&*s, "abc");
    assert!(s.try_reserve(1).is_ok());
    let text = RcString::from_str_in("tiny", Tiny);
    assert_eq!(&*text, "tiny");
    assert_eq!(text.capacity(), 4);
}

#[test]
fn try_reserve_error_debug() {
    let mut s = RcString::new();
    let err = s.try_reserve(usize::MAX).unwrap_err();
    assert!(format!("{err:?}").contains("CapacityOverflow"));
}

#[test]
fn from_utf8_error_is_an_error() {
    let err = RcString::from_utf8(vec![0xff]).unwrap_err();
    let as_error: &dyn Error = &err;
    assert!(as_error.source().is_none());
    assert_eq!(format!("{err:?}"), "FromUtf8Error { bytes: [255], error: Utf8Error { valid_up_to: 0, error_len: Some(1) } }");
}
