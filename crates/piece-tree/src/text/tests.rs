use std::{collections::HashSet, thread};

use super::*;
use crate::test_util::Rng;

/// Compares every query of `t` against the model string `m`.
/// `full` checks every line; otherwise a random sample.
fn assert_same(t: &Text, m: &str, rng: &mut Rng, full: bool) {
    // Under Miri the piece reads matter, not the sweeps: lines are sampled and the char metrics
    // (safe `str_indices`/std logic) are skipped.
    let full = full && !cfg!(miri);
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
    if !cfg!(miri) {
        assert_chars(t, m, rng);
    }
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
        differential(seed, if cfg!(miri) { 40 } else { 400 }, 48, 40);
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
#[cfg_attr(miri, ignore = "char metrics are safe str_indices/std logic: the piece reads are covered by the differentials")]
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

/// A line made of several pieces is converted in place, across piece boundaries.
#[test]
fn line_conversions_across_pieces() {
    let mut t = Text::from("aé日\nxyz");
    // "é" 2 bytes, "日" 3 bytes: pieces split mid-line at every kind of boundary.
    t = t.insert(1, "1").insert(4, "2🦀").insert(0, "<");
    let line: String = t.line(0).into_owned();
    assert_eq!(line, "<a1é2🦀日");
    assert!(t.line_count() == 2 && t.chunks().count() > 3);
    let chars = line.chars().count();
    assert_eq!(t.line_char_len(0), chars);
    for col in 0..=chars {
        let off = line.char_indices().nth(col).map_or(line.len(), |(i, _)| i);
        assert_eq!(t.line_col_to_offset(0, col), off, "col {col}");
        assert_eq!(t.offset_to_line_col(off), (0, col), "off {off}");
    }
    // `chars_in` on every sub-range, across pieces, and its range check.
    for a in 0..=line.len() {
        for b in a..=line.len() {
            if line.is_char_boundary(a) && line.is_char_boundary(b) {
                assert_eq!(t.chars_in(a..b), line[a..b].chars().count(), "{a}..{b}");
            }
        }
    }
    assert!(std::panic::catch_unwind(|| t.chars_in(std::ops::Range { start: 3, end: 2 })).is_err() && std::panic::catch_unwind(|| t.chars_in(0..99)).is_err());
    assert_eq!(t.line_col_to_offset(1, 3), line.len() + 1 + 3);
    assert_eq!(t.offset_to_line_col(line.len() + 1 + 2), (1, 2));
    let e = std::panic::catch_unwind(|| t.line_col_to_offset(0, chars + 1)).unwrap_err();
    assert!(e.downcast_ref::<String>().is_some_and(|m| m.contains("out of bounds")));
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

/// Seeds and fragmenting steps of the `apply_edits` tests; scaled down under Miri.
#[cfg(not(miri))]
const BATCH_SEEDS: u64 = 60;
#[cfg(miri)]
const BATCH_SEEDS: u64 = 4;
#[cfg(not(miri))]
const FRAG_STEPS: usize = 600;
#[cfg(miri)]
const FRAG_STEPS: usize = 150;

/// `edits` applied to the model string, from the end so earlier offsets stay valid (the replacement
/// is normalized like `Text` does).
fn apply_to_model(m: &mut String, edits: &[(Range<usize>, &str)]) {
    for (r, s) in edits.iter().rev() {
        m.replace_range(r.clone(), &s.replace("\r\n", "\n").replace('\r', "\n"));
    }
}

/// Random sorted, non-overlapping edits over `m`: empty ranges (inserts), deletions, replacements,
/// adjacent edits and several inserts at one offset.
fn random_batch(rng: &mut Rng, m: &str, k: usize, texts: &[String]) -> Vec<(Range<usize>, String)> {
    let mut cuts: Vec<usize> = (0..2 * k).map(|_| rng.boundary(m)).collect();
    cuts.sort_unstable();
    cuts.chunks(2)
        .map(|c| {
            let s = match rng.below(4) {
                0 => String::new(),
                _ => texts[rng.below(texts.len())].clone(),
            };
            (c[0]..c[1], s)
        })
        .collect()
}

fn as_refs(batch: &[(Range<usize>, String)]) -> Vec<(Range<usize>, &str)> {
    batch.iter().map(|(r, s)| (r.clone(), s.as_str())).collect()
}

/// A text of `pieces`-ish pieces: random single edits applied to the model in lockstep.
fn fragmented(rng: &mut Rng, steps: usize) -> (Text, String) {
    let (mut t, mut m) = (Text::from("seed line\nsecond ünïcode line\n"), String::from("seed line\nsecond ünïcode line\n"));
    for _ in 0..steps {
        let off = rng.boundary(&m);
        let s = rng.text(3);
        t = t.insert(off, &s);
        m.insert_str(off, &s);
        // Short deletes only: long ones would keep the text (and the piece count) small.
        let a = rng.boundary(&m);
        if rng.below(4) == 0
            && let Some(c) = m[a..].chars().next()
        {
            t = t.delete(a..a + c.len_utf8());
            m.replace_range(a..a + c.len_utf8(), "");
        }
    }
    (t, m)
}

#[test]
#[cfg_attr(miri, ignore = "batch and rebuild strategy logic, no unsafe: piece reads and Piece::sub are covered by the differentials and apply_edits_rejects_cutting_a_char_on_the_sparse_path")]
fn apply_edits_matches_the_model() {
    let texts: Vec<String> = ["a", "xyz\n", "é", "\n\n", "🦀 crab", "a\r\nb\rc", "line one\nline two\n"].map(String::from).to_vec();
    for seed in 0..BATCH_SEEDS {
        let mut rng = Rng(seed);
        // Small texts (few pieces: the rebuild path) and fragmented ones (the sparse path).
        let steps = [0, 3, 40, FRAG_STEPS * 2 / 3][seed as usize % 4];
        let (mut t, mut m) = fragmented(&mut rng, steps);
        for round in 0..6 {
            let k = [0, 1, 2, 3, 5, 12, 40][rng.below(7)];
            let batch = random_batch(&mut rng, &m, k, &texts);
            let edits = as_refs(&batch);
            let before = (t.clone(), m.clone());
            t = t.apply_edits(&edits);
            apply_to_model(&mut m, &edits);
            assert_same(&t, &m, &mut rng, m.len() < 512);
            // The version we started from is untouched.
            assert_same(&before.0, &before.1, &mut rng, false);
            let _ = round;
        }
    }
}

#[test]
#[cfg_attr(miri, ignore = "batch and rebuild strategy logic, no unsafe: piece reads and Piece::sub are covered by the differentials and apply_edits_rejects_cutting_a_char_on_the_sparse_path")]
fn apply_edits_uses_both_strategies() {
    // Same batch on a text with one piece (dense: rebuild) and on a fragmented one (sparse: path copies).
    let mut rng = Rng(9);
    let base: String = (0..200).map(|i| format!("line {i} é\n")).collect();
    let one_piece = Text::from(base.as_str());
    assert_eq!(one_piece.chunks().count(), 1);
    let (frag, fm) = fragmented(&mut rng, FRAG_STEPS);
    // More than 5 edits * REBUILD_PIECES_PER_EDIT pieces: a batch of 5 takes the sparse path.
    assert!(tree::min_pieces(frag.root()) > 5 * REBUILD_PIECES_PER_EDIT);
    for (t, m) in [(&one_piece, &base), (&frag, &fm)] {
        let batch = random_batch(&mut rng, m, 5, &["ins\n".into(), "é€".into()]);
        let edits = as_refs(&batch);
        let out = t.apply_edits(&edits);
        let mut model = m.clone();
        apply_to_model(&mut model, &edits);
        assert_same(&out, &model, &mut rng, false);
    }
}

/// Chars of the text of `char_to_offset_matches_the_model`.
const MODEL_CHARS: usize = 3000;

#[test]
#[cfg_attr(miri, ignore = "char metrics are safe str_indices/std logic: the piece reads are covered by the differentials")]
fn char_to_offset_matches_the_model() {
    // 1-4 byte chars, long enough for the SIMD counter to leave its short-string path, in several
    // chunks (the inserts split the loaded chunk and add their own): every char, the end, and
    // the chars that start a chunk.
    let mut m: String = (0..MODEL_CHARS).map(|i| ['a', 'é', '日', '🦀'][i * 7 % 4]).collect();
    let mut t = Text::from(m.as_str());
    for (at, ins) in [(4, "XY日"), (7, "é🦀"), (1, "z"), (9, "")] {
        let off = t.floor_char_boundary(m.len() * at / 10);
        t = t.insert(off, ins);
        m.insert_str(off, ins);
    }
    assert!(t.chunks().count() >= 6);
    let offs: Vec<usize> = m.char_indices().map(|(o, _)| o).collect();
    for (ch, &off) in offs.iter().enumerate() {
        assert_eq!(t.char_to_offset(ch), off, "char {ch}");
    }
    assert_eq!(t.char_to_offset(offs.len()), m.len());
    assert_eq!(t.char_count(), offs.len());
    assert_eq!(Text::new().char_to_offset(0), 0);
}

#[test]
fn insert_mut_matches_insert() {
    let texts: Vec<String> = ["a", "é", "xyz\n", "\n", "🦀 crab", "a\r\nb\rc", "", "\r"].map(String::from).to_vec();
    let big = "y".repeat(MAX_ADD_BYTES + 1);
    for seed in 0..BATCH_SEEDS / 3 {
        let mut rng = Rng(seed + 100);
        let (mut t, mut m) = fragmented(&mut rng, [0, 3, 40][seed as usize % 3]);
        let mut cursor = rng.boundary(&m);
        // Versions kept alive: they share nodes with `t`, so some inserts must copy, and none may change.
        let mut kept: Vec<(Text, String)> = Vec::new();
        for step in 0..80 {
            if step % 9 == 4 {
                kept.push((t.clone(), m.clone()));
            }
            // Mostly typing at the cursor (extends the piece in place), sometimes elsewhere.
            let off = if rng.below(4) == 0 { rng.boundary(&m) } else { cursor };
            let s = if rng.below(160) == 0 { &big } else { &texts[rng.below(texts.len())] };
            t.insert_mut(off, s);
            let norm = s.replace("\r\n", "\n").replace('\r', "\n");
            m.insert_str(off, &norm);
            cursor = off + norm.len();
            if step % 8 == 0 {
                assert_same(&t, &m, &mut rng, m.len() < 512);
            }
        }
        assert_same(&t, &m, &mut rng, false);
        for (kt, km) in &kept {
            assert_same(kt, km, &mut rng, false);
        }
    }
}

#[test]
fn insert_mut_edge_cases() {
    let mut t = Text::from("abc");
    let before = t.clone();
    t.insert_mut(1, "");
    assert!(t.ptr_eq(&before), "nothing to insert: same version");
    let mut empty = Text::new();
    empty.insert_mut(0, "x");
    empty.insert_mut(1, "y");
    assert_eq!(empty.to_string(), "xy");
    // The clone `before` keeps the old version while `t` grows.
    t.insert_mut(3, "d");
    t.insert_mut(4, "e");
    assert_eq!((t.to_string().as_str(), before.to_string().as_str()), ("abcde", "abc"));
}

#[test]
fn edits_in_place_match_the_model() {
    let texts: Vec<String> = ["a", "é", "xyz\n", "\n", "🦀 crab", "a\r\nb\rc", "", "line one\nline two\n"].map(String::from).to_vec();
    for seed in 0..BATCH_SEEDS / 3 {
        let mut rng = Rng(seed + 300);
        let (mut t, mut m) = fragmented(&mut rng, [0, 3, 40][seed as usize % 3]);
        let mut kept: Vec<(Text, String)> = Vec::new();
        for step in 0..80 {
            if step % 7 == 2 {
                kept.push((t.clone(), m.clone()));
            }
            if rng.below(3) == 0 && !m.is_empty() {
                // A short range (inside one piece most of the time), a whole line or the empty one.
                let a = rng.boundary(&m);
                let n = [0, 1, 2, 5, 40][rng.below(5)];
                let b = m[a..].char_indices().map(|(i, _)| a + i).chain([m.len()]).nth(n).unwrap_or(m.len());
                t.delete_mut(a..b);
                m.replace_range(a..b, "");
            } else {
                let off = rng.boundary(&m);
                let s = &texts[rng.below(texts.len())];
                t.insert_mut(off, s);
                m.insert_str(off, &s.replace("\r\n", "\n").replace('\r', "\n"));
            }
            if step % 8 == 0 {
                assert_same(&t, &m, &mut rng, m.len() < 512);
            }
        }
        assert_same(&t, &m, &mut rng, false);
        for (kt, km) in &kept {
            assert_same(kt, km, &mut rng, false);
        }
    }
}

#[test]
fn delete_mut_edge_cases() {
    let mut t = Text::from("héllo wörld");
    let before = t.clone();
    t.delete_mut(3..3);
    assert!(t.ptr_eq(&before), "empty range: same version");
    t.delete_mut(0..1);
    t.delete_mut(0..t.len());
    assert_eq!((t.to_string().as_str(), before.to_string().as_str()), ("", "héllo wörld"));
    t.delete_mut(0..0);
    assert!(t.is_empty());
}

#[test]
#[should_panic(expected = "out of bounds")]
fn delete_mut_rejects_out_of_bounds() {
    Text::from("ab").delete_mut(1..3);
}

#[test]
#[should_panic(expected = "invalid range")]
fn delete_mut_rejects_reversed_ranges() {
    #[allow(clippy::reversed_empty_ranges)]
    Text::from("abc").delete_mut(2..1);
}

#[test]
#[should_panic(expected = "char boundary")]
fn delete_mut_rejects_cutting_a_char() {
    Text::from("aé").delete_mut(0..2);
}

#[test]
#[should_panic(expected = "out of bounds")]
fn insert_mut_rejects_out_of_bounds() {
    Text::from("ab").insert_mut(3, "x");
}

#[test]
#[cfg_attr(miri, ignore = "batch and rebuild strategy logic, no unsafe: piece reads and Piece::sub are covered by the differentials and apply_edits_rejects_cutting_a_char_on_the_sparse_path")]
fn apply_edits_clustered_in_a_fragmented_text() {
    let mut rng = Rng(21);
    let (frag, fm) = fragmented(&mut rng, FRAG_STEPS);
    assert!(tree::min_pieces(frag.root()) > 5 * REBUILD_PIECES_PER_EDIT);
    let texts: Vec<String> = ["a", "xyz\n", "é", "\n\n", "line one\nline two\n"].map(String::from).to_vec();
    // Windows at the start, in the middle and at the end: a small span takes the cluster path, a
    // wide one (whole text) falls back to path copies; both must match the model.
    let (end, mid) = (fm.len(), fm.len() / 2);
    // Also spans of ~45% (rejected by the density estimate) and of ~15% (passes it, but holds
    // more pieces than the budget: rejected by the count).
    for (lo, hi) in [(0, 40), (mid, mid + 60), (end - 40, end), (0, end), (0, end * 45 / 100), (0, end * 15 / 100), (mid, mid + end / 20)] {
        let (lo, hi) = (fm.floor_char_boundary(lo), fm.floor_char_boundary(hi));
        let mut batch = random_batch(&mut rng, &fm[lo..hi], 6, &texts);
        batch.iter_mut().for_each(|(r, _)| *r = r.start + lo..r.end + lo);
        let edits = as_refs(&batch);
        let out = frag.apply_edits(&edits);
        let mut model = fm.clone();
        apply_to_model(&mut model, &edits);
        assert_same(&out, &model, &mut rng, false);
        assert_same(&frag, &fm, &mut rng, false);
    }
}

#[test]
#[cfg_attr(miri, ignore = "batch and rebuild strategy logic, no unsafe: piece reads and Piece::sub are covered by the differentials and apply_edits_rejects_cutting_a_char_on_the_sparse_path")]
fn apply_edits_edge_cases() {
    let mut rng = Rng(4);
    let t = Text::from("hello\nworld\n");
    // Nothing to change: the same version, for no edits and for edits that change nothing.
    assert!(t.apply_edits(&[]).ptr_eq(&t));
    assert!(t.apply_edits(&[(3..3, ""), (5..5, "")]).ptr_eq(&t));
    // Inserts at one offset apply in order; an edit may start where the previous one ends.
    let out = t.apply_edits(&[(0..0, "a"), (0..0, "b"), (0..2, "X"), (2..2, "Y"), (12..12, "!")]);
    assert_same(&out, "abXYllo\nworld\n!", &mut rng, true);
    // Everything deleted; insertion into the empty text; \r\n and \r normalized.
    assert_same(&t.apply_edits(&[(0..12, "")]), "", &mut rng, true);
    assert_same(&Text::new().apply_edits(&[(0..0, "x\r\ny\rz")]), "x\ny\nz", &mut rng, true);
    // A replacement past MAX_ADD_BYTES gets an exact chunk of its own, for both strategies.
    let big = "0123456789\n".repeat(MAX_ADD_BYTES / 8);
    let model = format!("{big}{}", "hello\nworld\n");
    assert_same(&t.apply_edits(&[(0..0, &big)]), &model, &mut rng, false);
    let (frag, fm) = fragmented(&mut rng, FRAG_STEPS / 2);
    let out = frag.apply_edits(&[(1..1, &big)]);
    assert_same(&out, &format!("{}{big}{}", &fm[..1], &fm[1..]), &mut rng, false);
    // Persistence: the source version is unchanged.
    assert_same(&t, "hello\nworld\n", &mut rng, true);
}

#[test]
#[should_panic(expected = "invalid range")]
fn apply_edits_rejects_unsorted_edits() {
    Text::from("abcdef").apply_edits(&[(3..4, "x"), (1..2, "y")]);
}

#[test]
#[should_panic(expected = "invalid range")]
fn apply_edits_rejects_overlapping_edits() {
    Text::from("abcdef").apply_edits(&[(1..4, "x"), (3..5, "y")]);
}

#[test]
#[should_panic(expected = "invalid range")]
#[allow(clippy::reversed_empty_ranges)] // the point of the test
fn apply_edits_rejects_reversed_ranges() {
    Text::from("abcdef").apply_edits(&[(4..2, "x")]);
}

#[test]
#[should_panic(expected = "out of bounds")]
fn apply_edits_rejects_out_of_bounds() {
    Text::from("abcdef").apply_edits(&[(2..7, "x")]);
}

#[test]
#[should_panic(expected = "char boundary")]
fn apply_edits_rejects_cutting_a_char() {
    // Dense strategy (one piece, three edits).
    Text::from("aé").apply_edits(&[(0..0, "x"), (2..2, "y"), (3..3, "z")]);
}

#[test]
#[should_panic(expected = "char boundary")]
fn apply_edits_rejects_cutting_a_char_on_the_sparse_path() {
    let mut rng = Rng(2);
    let (t, m) = fragmented(&mut rng, FRAG_STEPS / 2);
    let cut = m.find('é').expect("the seed text has an é") + 1;
    t.apply_edits(&[(cut..cut, "x")]);
}

#[test]
#[cfg_attr(miri, ignore = "batch and rebuild strategy logic, no unsafe: piece reads and Piece::sub are covered by the differentials and apply_edits_rejects_cutting_a_char_on_the_sparse_path")]
fn rebuild_choice_follows_the_piece_count() {
    let mut rng = Rng(8);
    // A single piece: the height alone says dense; no rebuild below the minimum batch.
    let one = Text::from("a\nb\n");
    assert_eq!((one.chunks().count(), one.rebuild_wins(REBUILD_MIN_EDITS - 1), one.rebuild_wins(REBUILD_MIN_EDITS)), (1, false, true));
    assert!(!Text::new().rebuild_wins(0));
    // Fragmented: the height bounds hold, a tiny batch is sparse by the bounds alone, and around
    // `pieces / REBUILD_PIECES_PER_EDIT` edits the exact count decides.
    let (t, _) = fragmented(&mut rng, FRAG_STEPS);
    let pieces = t.chunks().count();
    assert!(tree::min_pieces(t.root()) <= pieces && pieces < tree::max_pieces(t.root()));
    assert!(!t.rebuild_wins(REBUILD_MIN_EDITS));
    let threshold = pieces.div_ceil(REBUILD_PIECES_PER_EDIT);
    assert!(t.rebuild_wins(threshold), "{threshold} edits for {pieces} pieces");
    assert!(!t.rebuild_wins(threshold - 1), "{} edits for {pieces} pieces", threshold - 1);
    // Plenty of edits: dense by the bounds alone.
    assert!(t.rebuild_wins(tree::max_pieces(t.root())));
}

#[test]
#[cfg_attr(miri, ignore = "batch and rebuild strategy logic, no unsafe: piece reads and Piece::sub are covered by the differentials and apply_edits_rejects_cutting_a_char_on_the_sparse_path")]
fn piece_count_bounds_hold_on_every_shape() {
    let mut rng = Rng(21);
    let mut t = Text::new();
    for step in 0..400 {
        t = t.insert(rng.boundary(&t.to_string()), "x\ny");
        if step % 7 == 0 {
            let (n, h) = (t.chunks().count(), tree::height(t.root()));
            assert!(tree::min_pieces(t.root()) <= n && n <= tree::max_pieces(t.root()), "{n} pieces, height {h}");
            assert!(tree::has_at_most(t.root(), n) && (n == 0 || !tree::has_at_most(t.root(), n - 1)));
        }
    }
    assert_eq!((tree::min_pieces(&None), tree::max_pieces(&None)), (0, 0));
    assert!(tree::has_at_most(&None, 0));
}

#[cfg(not(miri))]
const COMPACT_STEPS: usize = 400;
#[cfg(miri)]
const COMPACT_STEPS: usize = 60;

/// `compact` keeps the content and leaves earlier versions alone; a compacted text keeps
/// working (edits on it, compacting again).
#[test]
fn compact_differential() {
    let mut rng = Rng(31);
    let (mut t, mut m) = (Text::from("start\n"), String::from("start\n"));
    let mut kept = Vec::new();
    for step in 0..COMPACT_STEPS {
        let off = rng.boundary(&m);
        if rng.below(3) == 0 && !m.is_empty() {
            let r = rng.range(&m);
            t = t.delete(r.clone());
            m.replace_range(r, "");
        } else {
            let s = rng.text(4);
            t = t.insert(off, &s);
            m.insert_str(off, &s);
        }
        if step % 20 == 19 {
            let before = (t.clone(), t.piece_count());
            let max = [0, 1, 5, 64, 1 << 20][rng.below(5)];
            t = t.compact(max);
            assert_same(&t, &m, &mut rng, true);
            assert!(t.piece_count() <= before.1);
            kept.push((before.0, m.clone()));
        }
    }
    for (old, expected) in &kept {
        assert_same(old, expected, &mut rng, false);
    }
}

#[test]
fn compact_merges_runs_up_to_max() {
    let mut t = Text::from("0123456789");
    for off in [8, 6, 4, 2] {
        t = t.insert(off, "x");
    }
    assert_eq!(t.piece_count(), 9);
    // Nothing merges: same version.
    assert!(t.compact(0).ptr_eq(&t));
    assert!(t.compact(1).ptr_eq(&t));
    assert!(Text::new().compact(10).ptr_eq(&Text::new()));
    let c = t.compact(5);
    tree::check(&c.root);
    assert_eq!(c.chunks().collect::<Vec<_>>(), ["01x23", "x45x", "67x89"]);
    let one = t.compact(usize::MAX);
    assert_eq!((one.piece_count(), one.to_string()), (1, "01x23x45x67x89".to_string()));
    // Merged runs live in owned chunks sized to the run.
    assert!(one.memory_bytes() >= 14);
    // Longer pieces than `max` stay as they are, shared.
    let big = Text::from("a".repeat(100).as_str()).insert(50, "b").insert(0, "c");
    assert_eq!(big.compact(10).chunks().map(str::len).collect::<Vec<_>>(), [1, 50, 1, 50]);
    assert!(big.compact(10).ptr_eq(&big));
    assert_eq!(big.compact(60).chunks().map(str::len).collect::<Vec<_>>(), [52, 50]);
    // The add chunk survives: typing goes on after compacting.
    let typed = one.insert(one.len(), "!");
    assert_eq!(typed.to_string(), "01x23x45x67x89!");
}

#[test]
fn piece_chunk_and_memory_counts() {
    let empty = Text::new();
    assert_eq!((empty.piece_count(), empty.chunk_count(), empty.memory_bytes()), (0, 0, 0));
    let t = Text::from("hello\nworld");
    assert_eq!((t.piece_count(), t.chunk_count()), (1, 1));
    assert!(t.memory_bytes() >= 11 + 4);
    // A small load leaves room in its chunk, so the insert lands there: one chunk, three pieces.
    let e = t.insert(5, "!!");
    assert_eq!((e.piece_count(), e.chunk_count()), (3, 1));
    assert!(e.memory_bytes() > t.memory_bytes());
    // A large load is sealed: inserts open an add chunk, still counted once deleted.
    let big = Text::from("a".repeat(crate::chunk::MAX_ADD_BYTES + 1).as_str());
    let d = big.insert(5, "!!").delete(5..7);
    assert_eq!((d.piece_count(), d.chunk_count()), (2, 2));
    // A word-storage add chunk reports its whole allocation.
    let typed = Text::new().insert(0, "x");
    assert_eq!(typed.chunk_count(), 1);
    assert!(typed.memory_bytes() >= crate::chunk::MIN_ADD_BYTES);
}
