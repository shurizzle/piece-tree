use std::{collections::HashSet, thread};

use super::*;
use crate::test_util::Rng;

/// Compares every query of `t` against the model string `m`.
/// `full` checks every line; otherwise a random sample.
fn assert_same(t: &Text, m: &str, rng: &mut Rng, full: bool) {
    tree::check(&t.root);
    assert_eq!(t.to_string(), m);
    assert_eq!(t.chunks().collect::<String>(), m);
    assert_eq!((t.len(), t.is_empty()), (m.len(), m.is_empty()));
    let lines: Vec<&str> = m.split('\n').collect();
    assert_eq!(t.line_count(), lines.len());
    let starts: Vec<usize> = lines
        .iter()
        .scan(0, |off, l| {
            let start = *off;
            *off += l.len() + 1;
            Some(start)
        })
        .collect();
    let checked: Vec<usize> = if full {
        (0..lines.len()).collect()
    } else {
        (0..16).map(|_| rng.below(lines.len())).chain([0, lines.len() - 1]).collect()
    };
    for i in checked {
        assert_eq!(t.line_to_offset(i), starts[i], "line_to_offset({i})");
        assert_eq!(t.line(i), lines[i], "line({i})");
    }
    for _ in 0..16 {
        let off = rng.boundary(m);
        assert_eq!(t.offset_to_line(off), m[..off].matches('\n').count(), "offset_to_line({off})");
        let r = rng.range(m);
        assert_eq!(t.slice(r.clone()), &m[r]);
    }
    assert_eq!(t.offset_to_line(m.len()), lines.len() - 1);
    assert_chars(t, m, rng);
}

/// Char metrics of `t` against `m`: counts, both conversions, line columns.
fn assert_chars(t: &Text, m: &str, rng: &mut Rng) {
    let total = m.chars().count();
    assert_eq!(t.char_count(), total);
    assert_eq!((t.offset_to_char(m.len()), t.char_to_offset(total)), (total, m.len()));
    for _ in 0..16 {
        let off = rng.boundary(m);
        let ch = m[..off].chars().count();
        assert_eq!(t.offset_to_char(off), ch, "offset_to_char({off})");
        assert_eq!(t.char_to_offset(ch), off, "char_to_offset({ch})");
        let line = m[..off].matches('\n').count();
        let start = m[..off].rfind('\n').map_or(0, |i| i + 1);
        let col = m[start..off].chars().count();
        assert_eq!(t.offset_to_line_col(off), (line, col));
        assert_eq!(t.line_col_to_offset(line, col), off);
        let len = m[start..].split('\n').next().unwrap().chars().count();
        assert_eq!(t.line_char_len(line), len);
        assert_eq!(t.line_end(line), start + m[start..].find('\n').unwrap_or(m.len() - start));
    }
}

/// Random edits applied to `Text` and `String` in lockstep.
/// `cap`: deletes are forced above this size. `delete_pct`: delete probability.
fn differential(seed: u64, steps: usize, cap: usize, delete_pct: usize) {
    let mut rng = Rng(seed);
    let (mut t, mut m) = (Text::new(), String::new());
    let mut history = Vec::new();
    for step in 0..steps {
        let op = rng.below(100);
        if !m.is_empty() && (m.len() > cap || op < delete_pct) {
            let r = match rng.below(20) {
                0 => 0..m.len(),
                1 => 0..rng.boundary(&m),
                2 => rng.boundary(&m)..m.len(),
                _ => rng.range(&m),
            };
            t = t.delete(r.clone());
            m.replace_range(r, "");
        } else {
            let off = match rng.below(10) {
                0 => 0,
                1 => m.len(),
                _ => rng.boundary(&m),
            };
            let s = rng.text(6);
            t = t.insert(off, &s);
            m.insert_str(off, &s);
        }
        assert_same(&t, &m, &mut rng, m.len() < 512 || step % 64 == 0);
        if step % 25 == 0 {
            history.push((t.clone(), m.clone()));
        }
    }
    // Old versions are untouched by later edits.
    for (old, expected) in &history {
        assert_same(old, expected, &mut rng, false);
    }
}

#[test]
fn differential_small_texts_many_seeds() {
    for seed in 0..if cfg!(miri) { 2 } else { 40 } {
        differential(seed, if cfg!(miri) { 60 } else { 400 }, 48, 40);
    }
}

#[test]
#[cfg_attr(miri, ignore = "slow under Miri; same unsafe paths as the small tests")]
fn differential_medium() {
    for seed in [1, 2, 3] {
        differential(seed, 3000, 2_000, 30);
    }
}

#[test]
#[cfg_attr(miri, ignore = "slow under Miri; same unsafe paths as the small tests")]
fn differential_grow_only() {
    // Model checks are O(n) per step, so steps stay moderate.
    differential(7, 1200, usize::MAX, 0);
}

#[test]
#[cfg_attr(miri, ignore = "slow under Miri; same unsafe paths as the small tests")]
fn differential_delete_heavy() {
    differential(11, 4000, 4_000, 48);
}

#[test]
fn empty_text() {
    let t = Text::new();
    assert_eq!((t.len(), t.line_count(), t.is_empty()), (0, 1, true));
    assert_eq!(t.line(0), "");
    assert_eq!(t.line_to_offset(0), 0);
    assert_eq!(t.offset_to_line(0), 0);
    assert_eq!(t.slice(0..0), "");
    assert_eq!(t.chunks().count(), 0);
    assert_eq!(t.to_string(), "");
}

#[test]
fn empty_inputs_return_same_version() {
    let t = Text::from("abc");
    assert!(t.insert(1, "").ptr_eq(&t));
    assert!(t.delete(2..2).ptr_eq(&t));
    assert!(Text::from("").is_empty());
}

#[test]
fn delete_everything_gives_empty_text() {
    let t = Text::from("a\nb").insert(3, "\nc").delete(0..5);
    assert!(t.is_empty());
    assert!(t.ptr_eq(&Text::new()));
}

#[test]
fn ptr_eq_compares_versions_not_content() {
    let (a, b) = (Text::from("x"), Text::from("x"));
    assert!(a.ptr_eq(&a.clone()));
    assert!(!a.ptr_eq(&b), "same content, different version");
    assert!(!a.ptr_eq(&Text::new()));
    assert!(!Text::new().ptr_eq(&a));
    assert!(Text::new().ptr_eq(&Text::default()));
}

#[test]
fn normalizes_inserted_line_endings() {
    let t = Text::from("a\r\nb\rc");
    assert_eq!(t.to_string(), "a\nb\nc");
    assert_eq!(t.line_count(), 3);
    let t = t.insert(1, "\r\r\n");
    assert_eq!(t.to_string(), "a\n\n\nb\nc");
    assert_eq!(t.insert(0, "\r").len(), t.len() + 1);
}

#[test]
fn newline_only_and_trailing_newline_lines() {
    let t = Text::from("\n\n");
    assert_eq!(t.line_count(), 3);
    assert!((0..3).all(|i| t.line(i).is_empty()));
    assert_eq!((t.line_to_offset(1), t.line_to_offset(2)), (1, 2));

    let t = Text::from("abc\n");
    assert_eq!((t.line_count(), t.line(0).as_ref(), t.line(1).as_ref()), (2, "abc", ""));
    assert_eq!(t.line_to_offset(1), 4);
}

#[test]
fn offset_to_line_around_newlines() {
    let t = Text::from("ab\ncd\n");
    let expected = [0, 0, 0, 1, 1, 1, 2];
    for (off, line) in expected.into_iter().enumerate() {
        assert_eq!(t.offset_to_line(off), line, "offset {off}");
    }
}

#[test]
fn queries_across_many_pieces() {
    // One piece per char: inserting at the front never extends a piece.
    let s = "ab\n\ncé\n🦀d\n";
    let t = s.chars().rev().fold(Text::new(), |t, c| t.insert(0, c.encode_utf8(&mut [0; 4])));
    assert_eq!(t.chunks().count(), s.chars().count());
    assert_same(&t, s, &mut Rng(3), true);
}

#[test]
fn slice_borrows_within_a_piece_and_owns_across() {
    let t = Text::from(" world").insert(0, "hello");
    assert_eq!(t.chunks().count(), 2);
    assert!(matches!(t.slice(1..4), Cow::Borrowed("ell")));
    assert!(matches!(t.slice(6..11), Cow::Borrowed("world")));
    assert!(matches!(t.slice(3..3), Cow::Borrowed("")));
    assert!(matches!(t.slice(3..8), Cow::Owned(ref s) if s == "lo wo"));
    assert!(matches!(t.line(0), Cow::Owned(ref s) if s == "hello world"));
}

#[test]
fn chunks_are_in_order() {
    let t = Text::from("dddd").insert(0, "ccc").insert(0, "bb").insert(0, "a");
    assert_eq!(t.chunks().collect::<Vec<_>>(), ["a", "bb", "ccc", "dddd"]);
}

#[test]
fn multibyte_boundaries_are_accepted() {
    let t = Text::from("é🦀ß");
    let t = t.insert(2, "|").insert(7, "|").insert(t.len() + 2, "|");
    assert_eq!(t.to_string(), "é|🦀|ß|");
    assert_eq!(t.delete(2..3).delete(6..7).to_string(), "é🦀ß|");
}

#[test]
#[cfg_attr(miri, ignore = "slow under Miri; same unsafe paths as the small tests")]
fn large_text() {
    let lines: Vec<String> = (0..100_000).map(|i| format!("line {i} ✓")).collect();
    let mut m = lines.join("\n");
    let mut t = Text::from(m.as_str());
    let mut rng = Rng(42);
    assert_same(&t, &m, &mut rng, false);
    for _ in 0..200 {
        let off = rng.boundary(&m);
        t = t.insert(off, "new\n");
        m.insert_str(off, "new\n");
        let start = rng.boundary(&m);
        let mut end = (start + rng.below(50)).min(m.len());
        while !m.is_char_boundary(end) {
            end -= 1;
        }
        t = t.delete(start..end);
        m.replace_range(start..end, "");
    }
    assert_same(&t, &m, &mut rng, false);
}

fn node_ptrs(t: &Tree, out: &mut HashSet<*const Node>) {
    if let Some(n) = t {
        out.insert(Arc::as_ptr(n));
        node_ptrs(&n.left, out);
        node_ptrs(&n.right, out);
    }
}

#[test]
#[cfg_attr(miri, ignore = "slow under Miri; same unsafe paths as the small tests")]
fn edits_copy_only_a_path() {
    let base = (0..4096).fold(Text::new(), |t, i| t.insert(0, if i % 7 == 0 { "\n" } else { "x" }));
    let (h, ..) = tree::check(&base.root);
    let mut old = HashSet::new();
    node_ptrs(&base.root, &mut old);
    for edited in [base.insert(2048, "y"), base.delete(100..3000), base.insert(0, "z"), base.delete(4000..4096)] {
        let mut new = HashSet::new();
        node_ptrs(&edited.root, &mut new);
        let fresh = new.difference(&old).count();
        assert!(fresh <= 4 * h as usize, "{fresh} new nodes for height {h}");
    }
}

#[test]
fn snapshots_are_shareable_across_threads() {
    let t = Text::from("shared\nsnapshot");
    let snapshot = t.clone();
    let reader = thread::spawn(move || (snapshot.line(1).into_owned(), snapshot.len()));
    let t = t.delete(0..7);
    assert_eq!(reader.join().unwrap(), ("snapshot".to_string(), 15));
    assert_eq!(t.to_string(), "snapshot");
}

#[test]
fn is_send_sync() {
    fn assert<T: Send + Sync>() {}
    assert::<Text>();
    assert::<Chunks<'_>>();
}

#[test]
#[should_panic(expected = "char boundary")]
fn insert_inside_char_panics() {
    Text::from("é").insert(1, "x");
}

#[test]
#[should_panic(expected = "out of bounds")]
fn insert_out_of_bounds_panics() {
    Text::from("ab").insert(3, "x");
}

#[test]
#[should_panic(expected = "invalid range")]
fn delete_reversed_range_panics() {
    #[allow(clippy::reversed_empty_ranges)]
    Text::from("abc").delete(2..1);
}

#[test]
#[should_panic(expected = "out of bounds")]
fn delete_out_of_bounds_panics() {
    Text::from("abc").delete(1..4);
}

#[test]
#[should_panic(expected = "char boundary")]
fn delete_start_inside_char_panics() {
    Text::from("aé").delete(2..3);
}

#[test]
#[should_panic(expected = "char boundary")]
fn delete_end_inside_char_panics() {
    Text::from("éa").delete(0..1);
}

#[test]
#[should_panic(expected = "out of bounds")]
fn offset_to_line_out_of_bounds_panics() {
    Text::from("ab").offset_to_line(3);
}

#[test]
#[should_panic(expected = "out of bounds")]
fn line_to_offset_out_of_bounds_panics() {
    Text::from("a\nb").line_to_offset(2);
}

#[test]
#[should_panic(expected = "out of bounds")]
fn line_out_of_bounds_panics() {
    Text::new().line(1);
}

#[test]
#[should_panic(expected = "invalid range")]
fn slice_reversed_range_panics() {
    #[allow(clippy::reversed_empty_ranges)]
    Text::from("abc").slice(2..1);
}

#[test]
#[should_panic(expected = "invalid range")]
fn slice_out_of_bounds_panics() {
    Text::from("abc").slice(0..4);
}

#[test]
#[should_panic(expected = "char boundary")]
fn slice_inside_char_panics() {
    Text::from("é").slice(0..1);
}

#[test]
fn typing_extends_one_piece() {
    let mut t = Text::from("start\n");
    for c in "hello\nworld".chars() {
        t = t.insert(t.len(), c.encode_utf8(&mut [0; 4]));
    }
    assert_eq!(t.chunks().count(), 1);
    assert_same(&t, "start\nhello\nworld", &mut Rng(5), true);
}

#[test]
fn typing_in_the_middle_extends_the_typed_piece() {
    let mut t = Text::from("ab");
    for (i, c) in ["x", "y", "\n", "z"].into_iter().enumerate() {
        t = t.insert(1 + i, c);
    }
    assert_eq!(t.chunks().collect::<Vec<_>>(), ["a", "xy\nz", "b"]);
}

#[test]
fn diverging_versions_do_not_extend_each_other() {
    let base = Text::from("ab");
    let a = base.insert(2, "A");
    // `base`'s piece no longer ends at the chunk's published end.
    let b = base.insert(2, "B");
    let a2 = a.insert(3, "A");
    assert_eq!((base.to_string(), a2.to_string(), b.to_string()), ("ab".into(), "abAA".into(), "abB".into()));
    assert_eq!(b.chunks().count(), 2);
    assert_eq!(a2.chunks().count(), 2, "`a` extended into a new region, not over `B`");
}

#[test]
#[cfg_attr(miri, ignore = "slow under Miri; chunk growth is covered by chunk:: and tree:: tests")]
fn typing_continues_in_a_new_chunk_when_full() {
    let mut t = Text::new();
    let mut m = String::new();
    for i in 0..2000 {
        let s = if i % 9 == 0 { "\n" } else { "abc" };
        t = t.insert(t.len(), s);
        m.push_str(s);
    }
    assert!(t.chunks().count() > 1, "several chunks filled");
    assert!(t.chunks().count() < 10, "each chunk holds one extended piece");
    assert_same(&t, &m, &mut Rng(8), true);
}

#[test]
fn large_insert_gets_its_own_chunk_and_keeps_the_add_chunk() {
    // Just above `MAX_ADD_BYTES`, so it gets its own exact chunk.
    let big = "line\n".repeat(MAX_ADD_BYTES / 5 + 1);
    let t = Text::from("ab").insert(1, &big);
    assert_eq!(t.chunks().count(), 3);
    let t = t.insert(t.len(), "c");
    assert_eq!(t.chunks().last(), Some("bc"), "typing after `b` still extends its piece");
}

#[test]
fn delete_keeps_extending_the_typed_piece() {
    let t = Text::from("abc").delete(2..3).insert(2, "X");
    assert_eq!(t.chunks().collect::<Vec<_>>(), ["ab", "X"], "\"c\" was published after \"ab\"");
    let t = Text::from("abc").insert(3, "d").delete(3..4).insert(3, "e");
    assert_eq!(t.to_string(), "abce");
}

#[test]
fn concurrent_edits_on_shared_versions() {
    let base = Text::from("shared\n");
    let workers: Vec<_> = (0..8)
        .map(|w| {
            let mut t = base.clone();
            thread::spawn(move || {
                let mut m = String::from("shared\n");
                for i in 0..if cfg!(miri) { 5 } else { 300 } {
                    let s = format!("{w}:{i}\n");
                    let off = if i % 3 == 0 { 0 } else { t.len() };
                    t = t.insert(off, &s);
                    m.insert_str(off, &s);
                }
                (t, m)
            })
        })
        .collect();
    for w in workers {
        let (t, m) = w.join().unwrap();
        assert_same(&t, &m, &mut Rng(9), false);
    }
    assert_eq!(base.to_string(), "shared\n");
}

#[test]
fn line_fast_and_fallback_paths() {
    // Pieces: "ab\ncd" | "ef\ngh\n" | "ij"
    let t = Text::from("ij").insert(0, "ef\ngh\n").insert(0, "ab\ncd");
    assert_eq!(t.chunks().count(), 3);
    assert!(matches!(t.line(0), Cow::Borrowed("ab")), "line 0 inside the first piece");
    assert!(matches!(t.line(1), Cow::Owned(ref s) if s == "cdef"), "spans two pieces");
    assert!(matches!(t.line(2), Cow::Borrowed("gh")), "inside the middle piece");
    assert!(matches!(t.line(3), Cow::Borrowed("ij")), "last line, last piece");
    // Line 0 spanning pieces, and a last line spanning pieces.
    let t = Text::from("b\nd").insert(0, "a");
    assert!(matches!(t.line(0), Cow::Owned(ref s) if s == "ab"));
    let t = Text::from("x").insert(0, "a\nb");
    assert!(matches!(t.line(1), Cow::Owned(ref s) if s == "bx"));
    // Text ending with `\n`: the last line is empty and starts past the piece.
    let t = Text::from("a\n");
    assert!(matches!(t.line(1), Cow::Borrowed("")));
}

#[test]
fn from_string_takes_over_large_texts() {
    // Just above `MAX_ADD_BYTES`: the owned path.
    let s = "line ✓\n".repeat(MAX_ADD_BYTES / 9 + 1);
    let (ptr, expected) = (s.as_ptr(), s.clone());
    let t = Text::from(s);
    assert_eq!(t.chunks().count(), 1);
    assert_eq!(t.chunks().next().unwrap().as_ptr(), ptr, "no copy");
    assert_same(&t, &expected, &mut Rng(4), false);
    let t = t.insert(3, "x");
    assert_eq!(t.line(0), "linxe ✓");
}

#[test]
fn from_string_normalizes_and_handles_small_texts() {
    // Above `MAX_ADD_BYTES` after normalization (`a\r\n` → `a\n`), so the owned path.
    let n = MAX_ADD_BYTES / 2 + 1;
    let t = Text::from("a\r\n".repeat(n));
    assert_eq!((t.len(), t.line_count()), (2 * n, n + 1));
    assert_eq!(t.chunks().count(), 1);
    assert!(!t.to_string().contains('\r'));
    let small = Text::from("x\ry".to_string());
    assert_eq!(small.to_string(), "x\ny");
    assert!(Text::from(String::new()).is_empty());
}

/// Char metrics on a long piece of a sealed chunk, through edits.
#[test]
fn char_metrics_on_long_pieces() {
    let mut rng = Rng(11);
    let big: String = (0..).map(|_| rng.text(4)).take_while({
        let mut n = 0;
        move |s: &String| {
            n += s.len();
            n < 3 * MAX_ADD_BYTES
        }
    }).collect();
    let (mut t, mut m) = (Text::from(big.clone()), big);
    assert!(t.chunks().count() == 1);
    assert_same(&t, &m, &mut rng, false);
    for _ in 0..40 {
        let off = rng.boundary(&m);
        let s = rng.text(3);
        t = t.insert(off, &s);
        m.insert_str(off, &s);
        let r = rng.range(&m);
        let r = r.start..r.start + (r.end - r.start).min(64);
        let r = r.start..(r.start..=r.end).rev().find(|&e| m.is_char_boundary(e)).unwrap();
        t = t.delete(r.clone());
        m.replace_range(r, "");
        assert_same(&t, &m, &mut rng, false);
    }
    // Every char position of a long indexed piece, both ways.
    let t = Text::from("é".repeat(768));
    for ch in (0..=768).step_by(7) {
        assert_eq!((t.char_to_offset(ch), t.offset_to_char(2 * ch)), (2 * ch, ch));
    }
}

#[test]
fn char_metrics_panics() {
    let t = Text::from("aé\nb");
    assert_eq!(std::panic::catch_unwind(|| t.offset_to_char(2)).unwrap_err().downcast_ref::<&str>(), Some(&"offset not on a char boundary"));
    for f in [
        &(|| _ = t.offset_to_char(9)) as &(dyn Fn() + std::panic::RefUnwindSafe),
        &|| _ = t.char_to_offset(9),
        &|| _ = t.line_col_to_offset(0, 3),
        &|| _ = t.line_end(2),
    ] {
        let e = std::panic::catch_unwind(f).unwrap_err();
        let msg = e.downcast_ref::<String>().cloned().unwrap_or_default();
        assert!(msg.contains("out of bounds"), "{msg}");
    }
    assert_eq!(t.line_col_to_offset(0, 2), 3);
    assert_eq!(Text::new().char_to_offset(0), 0);
}

#[test]
fn char_boundaries() {
    let mut t = Text::from("aé");
    t = t.insert(3, "🦀x");
    let m = "aé🦀x";
    for off in 0..=m.len() + 2 {
        assert_eq!(t.is_char_boundary(off), m.is_char_boundary(off), "{off}");
        assert_eq!(t.floor_char_boundary(off), m.floor_char_boundary(off.min(m.len())), "{off}");
    }
    assert!(Text::new().is_char_boundary(0) && !Text::new().is_char_boundary(1));
}
