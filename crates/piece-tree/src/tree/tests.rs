use super::*;
use crate::chunk::{MIN_ADD_BYTES, count_lf};
use crate::test_util::Rng;

/// Cuts `text` (one exact chunk) into consecutive pieces of the given byte lengths.
fn cut(text: &str, lens: impl IntoIterator<Item = usize>) -> Vec<Piece> {
    if text.is_empty() {
        return Vec::new();
    }
    let mut rest = Piece::whole(Chunk::exact(text));
    let mut lens = lens.into_iter().peekable();
    let mut out = Vec::new();
    loop {
        let l = lens.next().expect("lengths cover the text");
        if lens.peek().is_none() {
            assert_eq!(l, rest.len());
            out.push(rest);
            return out;
        }
        let (a, b) = rest.split(l);
        out.push(a);
        rest = b;
    }
}

/// One piece per char of `text`.
fn char_pieces(text: &str) -> Vec<Piece> {
    cut(text, text.chars().map(char::len_utf8))
}

/// Pieces of varying lengths (1..=4 chars) covering `text`.
fn mixed_pieces(text: &str) -> Vec<Piece> {
    let bounds: Vec<usize> = text.char_indices().map(|(i, _)| i).chain([text.len()]).collect();
    let mut lens = Vec::new();
    let mut i = 0;
    while i + 1 < bounds.len() {
        let j = (i + 1 + i % 4).min(bounds.len() - 1);
        lens.push(bounds[j] - bounds[i]);
        i = j;
    }
    cut(text, lens)
}

fn sample(n: usize) -> String {
    (0..n)
        .map(|i| match i % 5 {
            2 => '\n',
            4 => 'é',
            _ => char::from(b'a' + (i % 26) as u8),
        })
        .collect()
}

fn append_all(ps: &[Piece]) -> Tree {
    ps.iter().cloned().fold(None, |t, p| join(t, p, None))
}

fn prepend_all(ps: &[Piece]) -> Tree {
    ps.iter().rev().cloned().fold(None, |t, p| join(None, p, t))
}

fn text_of(ps: &[Piece]) -> String {
    ps.iter().map(Piece::text).collect()
}

fn content(t: &Tree) -> String {
    fn walk(t: &Tree, out: &mut String) {
        if let Some(n) = t {
            walk(&n.left, out);
            out.push_str(n.piece.text());
            walk(&n.right, out);
        }
    }
    let mut s = String::new();
    walk(t, &mut s);
    s
}

fn assert_tree(t: &Tree, expected: &str) {
    let (_, len, lf) = check(t);
    assert_eq!(content(t), expected);
    assert_eq!(len, expected.len());
    assert_eq!(lf, expected.matches('\n').count());
}

#[test]
fn piece_line_queries() {
    let s = "\nab\ncd\n\né\n";
    let p = Piece::whole(Chunk::exact(s));
    assert_eq!((p.text(), p.len(), p.lf()), (s, s.len(), 5));
    for off in 0..=s.len() {
        let expected = s.as_bytes()[..off].iter().filter(|&&b| b == b'\n').count();
        assert_eq!(p.lf_before(off), expected, "off {off}");
    }
    let positions: Vec<usize> = s.match_indices('\n').map(|(i, _)| i).collect();
    for (k, &pos) in positions.iter().enumerate() {
        assert_eq!(p.nth_newline(k), pos);
    }
}

#[test]
fn piece_queries_are_relative_to_its_start() {
    let p = cut("x\nyy\nz\n", [2, 4, 1]).swap_remove(1); // "yy\nz"
    assert_eq!((p.text(), p.lf(), p.nl_first), ("yy\nz", 1, 1));
    assert_eq!(p.nth_newline(0), 2);
    assert_eq!((p.lf_before(2), p.lf_before(3)), (0, 1));
}

#[test]
fn piece_split_at_every_position() {
    let s = "ab\ncé\n\nd";
    let p = Piece::whole(Chunk::exact(s));
    for at in (1..s.len()).filter(|&i| s.is_char_boundary(i)) {
        let (a, b) = p.split(at);
        assert_eq!((a.text(), b.text()), (&s[..at], &s[at..]));
        assert_eq!(a.lf(), s[..at].matches('\n').count());
        assert_eq!(a.lf() + b.lf(), p.lf());
        assert_eq!(b.nl_first, a.nl_first + a.lf);
    }
}

#[test]
#[should_panic(expected = "invalid piece split")]
fn piece_split_rejects_start() {
    Piece::whole(Chunk::exact("ab")).split(0);
}

#[test]
#[should_panic(expected = "invalid piece split")]
fn piece_split_rejects_end() {
    Piece::whole(Chunk::exact("ab")).split(2);
}

#[test]
#[should_panic(expected = "char boundary")]
fn piece_split_rejects_inside_char() {
    Piece::whole(Chunk::exact("é")).split(1);
}

/// Stores `s` the way `Text::insert` does.
fn store(add: Option<&Arc<Chunk>>, s: &str) -> (Piece, Option<Arc<Chunk>>) {
    Piece::store(add, s, count_lf(s))
}

#[test]
fn store_creates_then_reuses_add_chunk() {
    let (a, add) = store(None, "ab\n");
    let add = add.expect("first store creates an add chunk");
    assert!(Arc::ptr_eq(&a.chunk, &add));
    let (b, next) = store(Some(&add), "c\nd");
    assert!(Arc::ptr_eq(&b.chunk, &add) && Arc::ptr_eq(next.as_ref().unwrap(), &add));
    assert_eq!((b.start, b.nl_first, b.text(), b.lf()), (3, 1, "c\nd", 1));
    assert_eq!(a.text(), "ab\n", "earlier piece unchanged");
}

#[test]
fn store_moves_to_a_bigger_chunk_when_full() {
    let (_, add) = store(None, &"x".repeat(MIN_ADD_BYTES));
    let add = add.unwrap();
    let (p, next) = store(Some(&add), "y");
    let next = next.unwrap();
    assert!(!Arc::ptr_eq(&next, &add) && Arc::ptr_eq(&p.chunk, &next));
    assert_eq!((p.start, p.text()), (0, "y"));
}

#[test]
fn try_extend_only_at_the_published_end() {
    let (p, add) = store(None, "ab");
    let add = add.unwrap();
    let longer = p.try_extend(&add, "c\n", 1).expect("piece ends at the published end");
    assert_eq!((longer.text(), longer.lf(), p.text()), ("abc\n", 1, "ab"));
    assert!(p.try_extend(&add, "x", 0).is_none(), "the chunk grew past `p`");
    assert_eq!(longer.try_extend(&add, "d", 0).unwrap().text(), "abc\nd");
    let other = Chunk::exact("q");
    assert!(longer.try_extend(&other, "x", 0).is_none(), "different chunk");
}

#[test]
fn extend_in_place_outcomes() {
    // Three pieces, the typed one (in the add chunk) first, in the middle and last: both subtrees
    // of the root are walked. Pieces of other chunks never end where the add chunk does.
    let (x, y) = (Piece::whole(Chunk::exact("xx")), Piece::whole(Chunk::exact("yy\n")));
    for at in 0..3 {
        let (typed, add) = store(None, "ab");
        let add = add.unwrap();
        let mut ps = vec![x.clone(), y.clone()];
        ps.insert(at, typed.clone());
        let before = text_of(&ps);
        let off: usize = ps[..=at].iter().map(Piece::len).sum();
        let (head, tail) = (text_of(&ps[..at]), text_of(&ps[at + 1..]));
        let mut t = append_all(&ps);

        // Another owner on the path: refused, nothing appended or changed.
        let keep = t.clone();
        assert_eq!(extend_in_place(&mut t, off, &add, "c\n", 1), InPlace::Shared);
        assert_eq!((add.fill().len, content(&t), content(&keep)), (2, before.clone(), before.clone()));
        drop(keep);

        // No piece ends inside `ab`, and the piece of another chunk ends elsewhere.
        assert_eq!(extend_in_place(&mut t, off - 1, &add, "c", 0), InPlace::Declined);
        let other = if at == 0 { off + 2 } else { 2 };
        assert_eq!(extend_in_place(&mut t, other, &add, "c", 0), InPlace::Declined, "another chunk");
        assert_eq!(add.fill().len, 2);

        // Unique path: grows in place, totals fixed, and again.
        assert_eq!(extend_in_place(&mut t, off, &add, "c\n", 1), InPlace::Done);
        assert_tree(&t, &format!("{head}abc\n{tail}"));
        assert_eq!(extend_in_place(&mut t, off + 2, &add, "d", 0), InPlace::Done);
        assert_tree(&t, &format!("{head}abc\nd{tail}"));
    }
    let (typed, add) = store(None, "ab");
    let add = add.unwrap();
    assert_eq!(extend_in_place(&mut None, 0, &add, "c", 0), InPlace::Declined, "empty tree");
    let mut t = append_all(&[typed]);
    assert_eq!(extend_in_place(&mut t, 0, &add, "c", 0), InPlace::Declined, "nothing ends at 0");
}

#[test]
fn extend_in_place_declines_when_the_chunk_is_full() {
    let (p, add) = store(None, &"x".repeat(MIN_ADD_BYTES - 1));
    let add = add.unwrap();
    let mut t = append_all(&[p]);
    assert_eq!(extend_in_place(&mut t, MIN_ADD_BYTES - 1, &add, "yz", 0), InPlace::Declined);
    assert_eq!((add.fill().len as usize, len(&t)), (MIN_ADD_BYTES - 1, MIN_ADD_BYTES - 1));
    assert_eq!(extend_in_place(&mut t, MIN_ADD_BYTES - 1, &add, "y", 0), InPlace::Done);
    assert_eq!(len(&t), MIN_ADD_BYTES);
}

/// Steps of the in-place differential test; scaled down under Miri.
#[cfg(not(miri))]
const MUT_STEPS: usize = 600;
#[cfg(miri)]
const MUT_STEPS: usize = 30;

/// `insert_mut` and `delete_mut` give the text the persistent `insert_at` / `delete_range` give, with
/// valid balance and totals at every step, on trees of small and of big pieces; versions kept before
/// the edits never change, and nodes that nobody else owns are the same allocation afterwards.
#[test]
fn in_place_edits_match_the_persistent_ones() {
    let big = sample(if cfg!(miri) { 60 } else { 400 });
    let starts: [(&str, Vec<Piece>); 3] = [
        ("empty", Vec::new()),
        ("small pieces", mixed_pieces(&sample(if cfg!(miri) { 20 } else { 60 }))),
        ("big pieces", cut(&big, [big.len() / 3, big.len() / 3 + 1, big.len() - 2 * (big.len() / 3) - 1])),
    ];
    for (seed, (name, ps)) in starts.into_iter().enumerate() {
        let mut rng = Rng(seed as u64 + 5);
        let mut m = text_of(&ps);
        let (mut a, mut b) = (append_all(&ps), append_all(&ps));
        let mut kept: Vec<(Tree, String)> = Vec::new();
        for step in 0..MUT_STEPS {
            if step % 11 == 3 {
                kept.push((a.clone(), m.clone()));
            }
            if rng.below(3) != 0 || m.len() < 4 {
                let off = rng.boundary(&m);
                let s = rng.text(4);
                if s.is_empty() {
                    continue;
                }
                let p = Piece::whole(Chunk::exact(&s));
                insert_mut(&mut a, off, p.clone());
                b = insert_at(&b, off, p);
                m.insert_str(off, &s);
            } else {
                // Short ranges are mostly inside one piece; longer ones sometimes span several.
                let x = rng.boundary(&m);
                let y = m[x..].char_indices().map(|(i, _)| x + i).chain([m.len()]).nth(1 + rng.below(6)).unwrap_or(m.len());
                if x == y {
                    continue;
                }
                let before = content(&a);
                if !delete_mut(&mut a, x, y) {
                    assert_eq!(content(&a), before, "{name}: a refused delete changed the text");
                    a = delete_range(&a, x, y);
                }
                b = delete_range(&b, x, y);
                m.replace_range(x..y, "");
            }
            assert_tree(&a, &m);
            assert_tree(&b, &m);
        }
        for (t, s) in &kept {
            assert_tree(t, s);
        }
    }
}

/// Every outcome of `delete_mut` on one 16-byte piece placed first, in the middle and last of three:
/// prefix, suffix and middle cuts succeed (the middle one adds a node), the whole piece and a range
/// that spans pieces are refused with the text unchanged.
#[test]
fn delete_mut_cases() {
    let s = "0123456789abcdef";
    for at in 0..3 {
        let mut ps = vec![Piece::whole(Chunk::exact("xx")), Piece::whole(Chunk::exact(s)), Piece::whole(Chunk::exact("yy"))];
        ps.rotate_left(at);
        let first: usize = ps.iter().take_while(|p| p.len() != s.len()).map(Piece::len).sum();
        let spanning = if first > 0 { (first - 1, first + 2) } else { (first + 15, first + 17) };
        let cases = [
            (first, first + 3, true),
            (first + 13, first + 16, true),
            (first + 3, first + 5, true),
            (first, first + 16, false),
            (spanning.0, spanning.1, false),
        ];
        for (x, y, ok) in cases {
            let mut t = append_all(&ps);
            let mut m = text_of(&ps);
            assert_eq!(delete_mut(&mut t, x, y), ok, "at {at}, {x}..{y}");
            if ok {
                m.replace_range(x..y, "");
            }
            assert_tree(&t, &m);
        }
    }
}

#[test]
fn empty_tree_aggregates() {
    assert_eq!((height(&None), len(&None), lf(&None)), (0, 0, 0));
    assert_tree(&join2(None, None), "");
    assert!(matches!(split(None, 0), (None, None)));
}

#[test]
fn join_every_height_combination() {
    let s = sample(90);
    let ps = char_pieces(&s);
    let n = if cfg!(miri) { 6 } else { 42 };
    for a in 0..n {
        for b in 0..n {
            let (l, k, r) = (&ps[..a], &ps[a], &ps[a + 1..a + 1 + b]);
            let expected = text_of(&ps[..a + 1 + b]);
            assert_tree(&join(append_all(l), k.clone(), append_all(r)), &expected);
            assert_tree(&join(prepend_all(l), k.clone(), prepend_all(r)), &expected);
            assert_tree(&join(append_all(l), k.clone(), prepend_all(r)), &expected);
        }
    }
}

#[test]
fn join2_every_height_combination() {
    let s = sample(90);
    let ps = char_pieces(&s);
    let n = if cfg!(miri) { 6 } else { 42 };
    for a in 0..n {
        for b in 0..n {
            let expected = text_of(&ps[..a + b]);
            assert_tree(&join2(append_all(&ps[..a]), prepend_all(&ps[a..a + b])), &expected);
        }
    }
}

#[test]
fn split_at_every_offset() {
    // The 120-char text adds nothing new under Miri.
    for n in [0, 1, 2, 3, 7, 30, 120].into_iter().take(if cfg!(miri) { 6 } else { 7 }) {
        let s = sample(n);
        for t in [append_all(&mixed_pieces(&s)), prepend_all(&mixed_pieces(&s))] {
            for off in (0..=s.len()).filter(|&i| s.is_char_boundary(i)) {
                let (l, r) = split(t.clone(), off);
                assert_tree(&l, &s[..off]);
                assert_tree(&r, &s[off..]);
            }
            // Splitting shared trees never mutates them.
            assert_tree(&t, &s);
        }
    }
}

#[test]
fn expose_moves_out_of_unique_node() {
    let ps = char_pieces("ab");
    let child = node(None, ps[0].clone(), None).unwrap();
    let t = node(Some(child.clone()), ps[1].clone(), None).unwrap();
    drop(child);
    let (l, _, _) = expose(t);
    assert_eq!(Arc::count(l.as_ref().unwrap()), 1, "child moved, not cloned");
}

#[test]
fn expose_clones_shared_node() {
    let ps = char_pieces("ab");
    let t = node(node(None, ps[0].clone(), None), ps[1].clone(), None).unwrap();
    let keep = t.clone();
    let (l, _, _) = expose(t);
    assert_eq!(Arc::count(l.as_ref().unwrap()), 2, "child shared with `keep`");
    assert_tree(&Some(keep), "ab");
}

#[test]
fn rotations_preserve_order() {
    let ps = char_pieces("abc");
    let right_heavy = node(None, ps[0].clone(), node(None, ps[1].clone(), node(None, ps[2].clone(), None)));
    let t = rotate_left(right_heavy);
    assert_tree(&t, "abc");
    assert_eq!(t.as_ref().unwrap().piece.text(), "b");

    let left_heavy = node(node(node(None, ps[0].clone(), None), ps[1].clone(), None), ps[2].clone(), None);
    let t = rotate_right(left_heavy);
    assert_tree(&t, "abc");
    assert_eq!(t.as_ref().unwrap().piece.text(), "b");
}

#[test]
#[cfg_attr(miri, ignore = "slow under Miri; same unsafe paths as the small tests")]
fn height_stays_logarithmic() {
    let s = sample(20_000);
    let ps = char_pieces(&s);
    let max_height = |n: usize| (1.4405 * ((n + 2) as f64).log2()).floor() as u8;
    for t in [append_all(&ps), prepend_all(&ps)] {
        let (h, _, _) = check(&t);
        assert!(h <= max_height(ps.len()), "height {h} for {} pieces", ps.len());
    }
}

/// Byte ranges of `ps` in order.
fn spans(ps: &[Piece]) -> Vec<(usize, usize)> {
    let mut off = 0;
    ps.iter()
        .map(|p| {
            off += p.len();
            (off - p.len(), off)
        })
        .collect()
}

#[test]
fn sub_piece_ranges() {
    let s = "ab\ncé\n\nd";
    let p = Piece::whole(Chunk::exact(s));
    let bounds: Vec<usize> = (0..=s.len()).filter(|&i| s.is_char_boundary(i)).collect();
    for &from in &bounds {
        for &to in bounds.iter().filter(|&&to| to > from) {
            let q = p.sub(from, to);
            assert_eq!(q.text(), &s[from..to]);
            assert_eq!(q.lf(), s[from..to].matches('\n').count());
            assert_eq!(q.newlines().len(), q.lf());
        }
    }
}

#[test]
#[should_panic(expected = "invalid sub-piece")]
fn sub_rejects_empty_range() {
    Piece::whole(Chunk::exact("ab")).sub(1, 1);
}

#[test]
#[should_panic(expected = "invalid sub-piece")]
fn sub_rejects_end_past_len() {
    Piece::whole(Chunk::exact("ab")).sub(0, 3);
}

#[test]
#[should_panic(expected = "char boundary")]
fn sub_rejects_start_inside_char() {
    Piece::whole(Chunk::exact("éa")).sub(1, 3);
}

#[test]
#[should_panic(expected = "char boundary")]
fn sub_rejects_end_inside_char() {
    Piece::whole(Chunk::exact("aé")).sub(0, 2);
}

#[test]
fn extend_at_every_offset() {
    let s = sample(if cfg!(miri) { 10 } else { 40 });
    let ps = mixed_pieces(&s);
    let z = Piece::whole(Chunk::exact("Z\n"));
    for t in [append_all(&ps), prepend_all(&ps)] {
        let (h, ..) = check(&t);
        for off in 0..=s.len() {
            let target = spans(&ps).iter().position(|&(_, end)| end == off);
            let mut calls = 0;
            let out = extend_at(&t, off, |p| {
                calls += 1;
                assert_eq!(p.text(), ps[target.unwrap()].text(), "called on the piece ending at {off}");
                Some(z.clone())
            });
            match target {
                None => assert!(out.is_none() && calls == 0, "no piece ends at {off}"),
                Some(i) => {
                    let mut expected: Vec<&str> = ps.iter().map(Piece::text).collect();
                    expected[i] = "Z\n";
                    let out = out.unwrap();
                    assert_tree(&out, &expected.concat());
                    assert_eq!((calls, check(&out).0), (1, h), "one call, same shape");
                }
            }
            assert!(extend_at(&t, off, |_| None).is_none(), "declined");
        }
        assert_tree(&t, &s);
    }
    assert!(extend_at(&None, 0, |_| unreachable!()).is_none());
}

#[test]
fn insert_at_every_offset() {
    let s = sample(if cfg!(miri) { 10 } else { 40 });
    let ps = mixed_pieces(&s);
    let z = Piece::whole(Chunk::exact("Z\n"));
    for t in [append_all(&ps), prepend_all(&ps), None] {
        let s = if t.is_none() { "" } else { s.as_str() };
        for off in (0..=s.len()).filter(|&i| s.is_char_boundary(i)) {
            let out = insert_at(&t, off, z.clone());
            assert_tree(&out, &format!("{}Z\n{}", &s[..off], &s[off..]));
        }
        assert_tree(&t, s);
    }
}

#[test]
fn insert_at_keeps_balance_under_many_inserts() {
    let s = sample(if cfg!(miri) { 40 } else { 300 });
    let ps = char_pieces(&s);
    let (mut t, mut m) = (None, String::new());
    for (i, p) in ps.iter().enumerate() {
        // Alternate front, back and middle positions.
        let off = match i % 3 {
            0 => 0,
            1 => m.len(),
            _ => (0..=m.len() / 2).rev().find(|&o| m.is_char_boundary(o)).unwrap(),
        };
        t = insert_at(&t, off, p.clone());
        m.insert_str(off, p.text());
        assert_tree(&t, &m);
    }
}

#[test]
fn delete_in_every_range() {
    let s = sample(if cfg!(miri) { 8 } else { 24 });
    let ps = mixed_pieces(&s);
    let bounds: Vec<usize> = (0..=s.len()).filter(|&i| s.is_char_boundary(i)).collect();
    for t in [append_all(&ps), prepend_all(&ps)] {
        for &a in &bounds {
            for &b in bounds.iter().filter(|&&b| b > a) {
                let inside = spans(&ps).iter().any(|&(start, end)| start <= a && b <= end);
                match delete_in(&t, a, b) {
                    Some(out) => {
                        assert!(inside, "{a}..{b} spans pieces");
                        assert_tree(&out, &format!("{}{}", &s[..a], &s[b..]));
                    }
                    None => assert!(!inside, "{a}..{b} lies in one piece"),
                }
            }
        }
        assert_tree(&t, &s);
    }
}

#[test]
fn delete_in_removes_the_only_piece() {
    let t = append_all(&char_pieces("x"));
    assert_tree(&delete_in(&t, 0, 1).unwrap(), "");
}

#[test]
fn from_pieces_is_balanced_and_ordered() {
    let s = sample(if cfg!(miri) { 20 } else { 200 });
    let ps = char_pieces(&s);
    for n in 0..=ps.len() {
        let t = from_pieces(ps[..n].to_vec());
        assert_tree(&t, &text_of(&ps[..n]));
    }
}

#[test]
fn pieces_in_every_range() {
    let s = sample(if cfg!(miri) { 8 } else { 24 });
    let t = append_all(&mixed_pieces(&s));
    let bounds: Vec<usize> = (0..=s.len()).filter(|&i| s.is_char_boundary(i)).collect();
    for &a in &bounds {
        for &b in bounds.iter().filter(|&&b| b >= a) {
            let mut out = Vec::new();
            pieces_in(&t, a, b, &mut out);
            assert_eq!(text_of(&out), &s[a..b]);
            // The counting walk agrees with the pieces collected, right at the limit.
            assert!(has_at_most_in(&t, a, b, out.len()));
            assert!(out.is_empty() || !has_at_most_in(&t, a, b, out.len() - 1));
        }
    }
    let mut out = Vec::new();
    pieces_in(&None, 0, 1, &mut out);
    assert!(out.is_empty());
    assert!(has_at_most_in(&None, 0, 1, 0));
}
