use std::thread;

use super::*;

fn read(c: &Chunk, at: Fill, len: usize, lf: usize) -> (&str, &[u32]) {
    // SAFETY: tests read only spans returned by `try_append`.
    unsafe { (c.str(at.len, len as u32), c.newlines(at.nl, lf as u32)) }
}

#[test]
fn exact_publishes_text_and_newlines() {
    let s = "a\nb\n\nc";
    let c = Chunk::exact(s);
    assert_eq!(c.fill(), Fill { len: 6, nl: 3 });
    assert_eq!((c.cap, c.nl_cap), (6, 3));
    assert_eq!(read(&c, Fill { len: 0, nl: 0 }, 6, 3), (s, &[1, 3, 4][..]));
    assert!(c.try_append("x", 0, None).is_none(), "exact chunks are sealed");
}

#[test]
fn exact_without_newlines() {
    let c = Chunk::exact("é🦀");
    assert_eq!((c.fill(), c.nl_cap), (Fill { len: 6, nl: 0 }, 0));
    assert_eq!(read(&c, Fill { len: 0, nl: 0 }, 6, 0).0, "é🦀");
}

#[test]
#[should_panic(expected = "empty chunk")]
fn empty_chunk_is_rejected() {
    Chunk::with_capacity(0, 0);
}

#[test]
fn fits_u32_accepts_max() {
    assert_fits_u32(0);
    assert_fits_u32(u32::MAX as usize);
}

#[test]
#[cfg(target_pointer_width = "64")]
#[should_panic(expected = "larger than 4 GiB")]
fn fits_u32_rejects_larger() {
    assert_fits_u32(u32::MAX as usize + 1);
}

#[test]
fn count_lf_counts_newlines() {
    assert_eq!((count_lf(""), count_lf("a"), count_lf("\n\né\n")), (0, 0, 3));
}

#[test]
fn add_chunks_grow_geometrically() {
    let first = Chunk::for_add(None, 1, 0);
    assert_eq!((first.cap as usize, first.nl_cap as usize), (MIN_ADD_BYTES, MIN_ADD_BYTES / 4));
    let second = Chunk::for_add(Some(&first), 1, 0);
    assert_eq!(second.cap as usize, 2 * MIN_ADD_BYTES);

    let mut c = first;
    for _ in 0..16 {
        c = Chunk::for_add(Some(&c), 1, 0);
    }
    assert_eq!(c.cap as usize, MAX_ADD_BYTES, "growth stops at the maximum");
}

#[test]
fn add_chunk_fits_the_first_text() {
    let c = Chunk::for_add(None, 1000, 0);
    assert_eq!(c.cap, 1024, "next power of two above the minimum");
    let c = Chunk::for_add(None, 10, 200);
    assert_eq!(c.nl_cap, 200, "dense newlines get enough slots");
}

#[test]
fn appends_are_contiguous_and_published() {
    let c = Chunk::for_add(None, 1, 0);
    let a = c.try_append("ab\n", 1, None).unwrap();
    let b = c.try_append("\ncd\n", 2, None).unwrap();
    assert_eq!((a, b), (Fill { len: 0, nl: 0 }, Fill { len: 3, nl: 1 }));
    assert_eq!(c.fill(), Fill { len: 7, nl: 3 });
    assert_eq!(read(&c, a, 3, 1), ("ab\n", &[2][..]));
    assert_eq!(read(&c, b, 4, 2), ("\ncd\n", &[3, 6][..]));
}

#[test]
fn conditional_append_requires_the_published_end() {
    let c = Chunk::for_add(None, 1, 0);
    c.try_append("ab", 0, None).unwrap();
    assert!(c.try_append("x", 0, Some(1)).is_none());
    assert_eq!(c.try_append("x", 0, Some(2)), Some(Fill { len: 2, nl: 0 }));
    assert_eq!(c.fill(), Fill { len: 3, nl: 0 });
}

#[test]
fn append_respects_byte_capacity() {
    let c = Chunk::for_add(None, 1, 0);
    let full = "x".repeat(MIN_ADD_BYTES - 1);
    c.try_append(&full, 0, None).unwrap();
    assert!(c.try_append("yz", 0, None).is_none());
    assert!(c.try_append("y", 0, None).is_some(), "exactly fills the chunk");
    assert_eq!(c.fill().len as usize, MIN_ADD_BYTES);
}

#[test]
fn append_respects_newline_capacity() {
    let c = Chunk::for_add(None, 1, 0);
    let slots = c.nl_cap as usize;
    let lines = "\n".repeat(slots);
    c.try_append(&lines, slots, None).unwrap();
    let before = c.fill();
    assert!(c.try_append("\n", 1, None).is_none(), "bytes fit, newline slots do not");
    assert_eq!(c.fill(), before, "a refused append publishes nothing");
    assert!(c.try_append("ok", 0, None).is_some(), "text without newlines still fits");
}

#[test]
fn concurrent_appends_get_disjoint_spans() {
    let c = Chunk::for_add(None, MAX_ADD_BYTES, 0);
    let workers: Vec<_> = (0..8)
        .map(|w| {
            let c = c.clone();
            thread::spawn(move || {
                (0..if cfg!(miri) { 5 } else { 200 })
                    .map(|i| {
                        let s = format!("w{w}-{i}\n");
                        (c.try_append(&s, 1, None).expect("capacity is ample"), s)
                    })
                    .collect::<Vec<_>>()
            })
        })
        .collect();
    let spans: Vec<(Fill, String)> = workers.into_iter().flat_map(|w| w.join().unwrap()).collect();
    for (at, s) in &spans {
        let (text, nl) = read(&c, *at, s.len(), 1);
        assert_eq!(text, s);
        assert_eq!(nl, &[at.len + s.len() as u32 - 1]);
    }
    let total: usize = spans.iter().map(|(_, s)| s.len()).sum();
    assert_eq!(c.fill(), Fill { len: total as u32, nl: spans.len() as u32 });
}

#[test]
fn chunk_is_send_sync() {
    fn assert<T: Send + Sync>() {}
    assert::<Chunk>();
}

#[test]
fn from_string_takes_over_the_buffer() {
    let mut s = String::with_capacity(64);
    s.push_str("ab\n\ncé\n");
    let ptr = s.as_ptr();
    let c = Chunk::from_string(s);
    assert_eq!(c.bytes_ptr().cast_const(), ptr, "no copy");
    assert_eq!(c.fill(), Fill { len: 8, nl: 3 });
    assert_eq!(read(&c, Fill { len: 0, nl: 0 }, 8, 3), ("ab\n\ncé\n", &[2, 3, 7][..]));
    assert!(c.try_append("x", 0, None).is_none(), "owned chunks are sealed");
}

#[test]
fn from_string_without_newlines() {
    let c = Chunk::from_string("é🦀".to_string());
    assert_eq!(c.fill(), Fill { len: 6, nl: 0 });
    assert_eq!(read(&c, Fill { len: 0, nl: 0 }, 6, 0).0, "é🦀");
}

#[test]
#[should_panic(expected = "empty chunk")]
fn from_string_rejects_empty() {
    Chunk::from_string(String::new());
}
