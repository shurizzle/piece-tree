use std::mem;

use super::*;

fn output(doc: &Document) -> Vec<u8> {
    let mut out = Vec::new();
    doc.write_to(&mut out).unwrap();
    out
}

#[test]
fn eol_round_trip() {
    for eol in [LineEnding::Lf, LineEnding::Cr, LineEnding::CrLf] {
        let s = ["one", "", "two é", "three", ""].join(eol.as_str());
        let doc = Document::new(&s);
        assert_eq!(doc.eol(), eol);
        assert_eq!(doc.text().line_count(), 5);
        assert_eq!(output(&doc), s.as_bytes());
    }
}

#[test]
fn converts_eol_on_output() {
    let mut doc = Document::new("a\nb\n");
    doc.set_eol(LineEnding::CrLf);
    assert_eq!(output(&doc), b"a\r\nb\r\n");
}

#[test]
fn undo_redo_restore_exact_versions() {
    let mut doc = Document::new("hello world");
    let v0 = doc.text().clone();
    doc.insert(5, ",");
    let v1 = doc.text().clone();
    doc.delete(0..1);
    assert_eq!(doc.text().to_string(), "ello, world");

    assert!(doc.undo());
    assert!(doc.text().ptr_eq(&v1));
    assert!(doc.undo());
    assert!(doc.text().ptr_eq(&v0));
    assert!(!doc.undo());

    assert!(doc.redo());
    assert!(doc.text().ptr_eq(&v1));
    doc.insert(0, "!");
    assert!(!doc.redo(), "new edit clears redo");
}

#[test]
fn load_detects_and_normalizes() {
    let doc = Document::new("a\r\nb\r\n");
    assert_eq!(doc.eol(), LineEnding::CrLf);
    assert_eq!(doc.text().to_string(), "a\nb\n");
    let doc = Document::new("");
    assert_eq!((doc.eol(), doc.text().is_empty()), (LineEnding::Lf, true));
    assert!(output(&doc).is_empty());
}

#[test]
fn from_string_matches_new() {
    for s in ["a\r\nb\r\n", "x\ry", "", "plain\n"] {
        let (a, b) = (Document::new(s), Document::from_string(s.to_string()));
        assert_eq!((a.eol(), a.text().to_string()), (b.eol(), b.text().to_string()));
    }
}

#[test]
fn set_eol_changes_output_only() {
    let mut doc = Document::new("a\nb");
    let before = doc.text().clone();
    for (eol, bytes) in [
        (LineEnding::Cr, &b"a\rb"[..]),
        (LineEnding::CrLf, b"a\r\nb"),
        (LineEnding::Lf, b"a\nb"),
    ] {
        doc.set_eol(eol);
        assert_eq!(doc.eol(), eol);
        assert_eq!(output(&doc), bytes);
    }
    assert!(doc.text().ptr_eq(&before));
    assert!(!doc.undo(), "set_eol is not an undo step");
}

#[test]
fn output_conversion_across_piece_boundaries() {
    // Newlines at the start, middle and end of pieces.
    let mut doc = Document::new("\nmid\n");
    doc.insert(0, "start\n");
    doc.insert(doc.text().len(), "end");
    doc.insert(6, "\n");
    let model = doc.text().to_string();
    assert!(doc.text().chunks().count() >= 4);
    for eol in [LineEnding::Cr, LineEnding::CrLf] {
        doc.set_eol(eol);
        assert_eq!(output(&doc), model.replace('\n', eol.as_str()).as_bytes());
    }
}

#[test]
fn cr_and_lf_inserted_separately_are_two_breaks() {
    let mut doc = Document::new("ab");
    doc.insert(1, "\r");
    doc.insert(2, "\n");
    assert_eq!(doc.text().line_count(), 3);
}

/// Writer failing on the `n`-th call to `write`.
struct FailAt(usize);

impl Write for FailAt {
    fn write(&mut self, buf: &[u8]) -> io::Result<usize> {
        if self.0 == 0 {
            return Err(io::Error::other("disk full"));
        }
        self.0 -= 1;
        Ok(buf.len())
    }

    fn flush(&mut self) -> io::Result<()> {
        Ok(())
    }
}

#[test]
fn write_errors_propagate() {
    for eol in [LineEnding::Lf, LineEnding::Cr, LineEnding::CrLf] {
        let mut doc = Document::new("a\nb");
        doc.set_eol(eol);
        // Non-LF output writes "a", eol, "b": fail at each of them.
        let writes = if eol == LineEnding::Lf { 1 } else { 3 };
        for n in 0..writes {
            let err = doc.write_to(FailAt(n)).unwrap_err();
            assert_eq!(err.to_string(), "disk full");
        }
        let mut ok = FailAt(writes);
        assert!(doc.write_to(&mut ok).is_ok());
        assert!(ok.flush().is_ok());
    }
}

#[cfg(not(miri))]
const UNDO_REDO_STEPS: usize = 2000;
#[cfg(miri)]
const UNDO_REDO_STEPS: usize = 200;

#[test]
fn undo_redo_differential() {
    let mut rng = crate::test_util::Rng(99);
    let mut doc = Document::new("");
    let (mut cur, mut undo, mut redo) = (String::new(), Vec::<String>::new(), Vec::<String>::new());
    for _ in 0..UNDO_REDO_STEPS {
        match rng.below(10) {
            0..=1 => {
                let expected = undo.pop().map(|prev| redo.push(mem::replace(&mut cur, prev)));
                assert_eq!(doc.undo(), expected.is_some());
            }
            2 => {
                let expected = redo.pop().map(|next| undo.push(mem::replace(&mut cur, next)));
                assert_eq!(doc.redo(), expected.is_some());
            }
            3..=5 if !cur.is_empty() => {
                let r = rng.range(&cur);
                let mut next = cur.clone();
                next.replace_range(r.clone(), "");
                doc.delete(r);
                if next != cur {
                    undo.push(mem::replace(&mut cur, next));
                    redo.clear();
                }
            }
            _ => {
                let off = rng.boundary(&cur);
                let s = rng.text(3);
                let mut next = cur.clone();
                next.insert_str(off, &s);
                doc.insert(off, &s);
                undo.push(mem::replace(&mut cur, next));
                redo.clear();
            }
        }
        assert_eq!(doc.text().to_string(), cur);
    }
}

#[test]
fn noop_edit_is_not_an_undo_step() {
    let mut doc = Document::new("x");
    doc.insert(0, "");
    doc.delete(1..1);
    assert!(!doc.undo());
}

/// Checks that `edits` turn `prev` into `cur`: replaced ranges get placeholders of the new
/// length, so the result must have `cur`'s length and agree with it outside the placeholders.
fn assert_edits(prev: &str, cur: &str, edits: &[Edit]) {
    let mut w: Vec<Option<u8>> = prev.bytes().map(Some).collect();
    for e in edits {
        assert!(e.start + e.old_len <= w.len(), "edit {e:?} out of {} bytes", w.len());
        w.splice(e.start..e.start + e.old_len, std::iter::repeat_n(None, e.new_len));
    }
    assert_eq!(w.len(), cur.len(), "{prev:?} -> {cur:?} by {edits:?}");
    for (i, (b, c)) in w.iter().zip(cur.bytes()).enumerate() {
        assert!(b.is_none_or(|b| b == c), "byte {i}: {prev:?} -> {cur:?} by {edits:?}");
    }
}

/// Model of the history tree: (text, parent, redo child).
struct Model {
    states: Vec<(String, usize, Option<usize>)>,
    cur: usize,
}

impl Model {
    fn path_goto(&mut self, target: usize) {
        let (mut up, mut down) = (self.cur, target);
        while up != down {
            if up > down {
                let p = self.states[up].1;
                self.states[p].2 = Some(up);
                up = p;
            } else {
                let p = self.states[down].1;
                self.states[p].2 = Some(down);
                down = p;
            }
        }
        self.cur = target;
    }
}

#[cfg(not(miri))]
const TREE_STEPS: usize = 600;
#[cfg(miri)]
const TREE_STEPS: usize = 60;

#[test]
fn history_tree_differential() {
    let mut rng = crate::test_util::Rng(7);
    let mut doc = Document::new("ab\ncd");
    let mut m = Model { states: vec![("ab\ncd".into(), 0, None)], cur: 0 };
    // Model group: open depth, and the state it writes into.
    let (mut depth, mut target): (usize, Option<usize>) = (0, None);
    for step in 0..TREE_STEPS {
        let prev = doc.text().to_string();
        let moved = match rng.below(14) {
            0 => {
                assert_eq!(doc.undo(), m.cur != 0, "step {step}");
                true
            }
            1 => {
                assert_eq!(doc.redo(), m.states[m.cur].2.is_some(), "step {step}");
                true
            }
            2 => {
                let n = rng.below(4);
                assert_eq!(doc.earlier(n), n > 0 && m.cur > 0);
                true
            }
            3 => {
                let n = rng.below(4);
                assert_eq!(doc.later(n), n > 0 && m.cur + 1 < m.states.len());
                true
            }
            4 => {
                let t = rng.below(m.states.len() + 2);
                assert_eq!(doc.goto(t), t.min(m.states.len() - 1) != m.cur);
                true
            }
            5 => {
                doc.begin_group();
                if depth == 0 {
                    target = None;
                }
                depth += 1;
                false
            }
            6 => {
                depth = depth.saturating_sub(1);
                let made = depth == 0 && target.is_some();
                if depth == 0 {
                    target = None;
                }
                assert_eq!(doc.end_group(), made, "step {step}");
                false
            }
            _ => {
                let mut next = prev.clone();
                match rng.below(3) {
                    0 if !prev.is_empty() => {
                        let r = rng.range(&prev);
                        next.replace_range(r.clone(), "");
                        doc.delete(r);
                    }
                    1 if !prev.is_empty() => {
                        let r = rng.range(&prev);
                        let s = rng.text(2);
                        next.replace_range(r.clone(), &s);
                        doc.splice(r, &s);
                    }
                    _ => {
                        let off = rng.boundary(&prev);
                        let s = rng.text(2);
                        next.insert_str(off, &s);
                        doc.insert(off, &s);
                    }
                }
                if next != prev {
                    if depth > 0 && target == Some(m.cur) {
                        m.states[m.cur].0 = next;
                    } else {
                        let id = m.states.len();
                        m.states[m.cur].2 = Some(id);
                        m.states.push((next, m.cur, None));
                        m.cur = id;
                        if depth > 0 {
                            target = Some(id);
                        }
                    }
                }
                false
            }
        };
        if moved {
            // Every history call closes the groups, even when it does not move.
            (depth, target) = (0, None);
            if doc.seq() != m.cur {
                m.path_goto(doc.seq());
            }
        }
        let cur = &m.states[m.cur].0;
        assert_eq!(doc.text().to_string(), *cur, "step {step}");
        assert_edits(&prev, cur, doc.last_edits());
        assert_eq!((doc.seq(), doc.history_len()), (m.cur, m.states.len()), "step {step}");
    }
}

#[test]
fn groups_make_one_step() {
    let mut doc = Document::new("");
    doc.group(|d| {
        d.insert(0, "ab");
        d.group(|d| d.insert(2, "c"));
        d.delete(0..1);
    });
    assert_eq!((doc.text().to_string().as_str(), doc.seq()), ("bc", 1));
    assert!(doc.last_edits().is_empty(), "end_group itself changes nothing");
    assert!(doc.undo());
    assert_eq!(doc.text().to_string(), "");
    assert_eq!(
        doc.last_edits(),
        [Edit { start: 0, old_len: 0, new_len: 1 }, Edit { start: 2, old_len: 1, new_len: 0 }, Edit { start: 0, old_len: 2, new_len: 0 }]
    );
    // An empty group makes nothing; an undo inside a group closes it.
    doc.begin_group();
    assert!(!doc.end_group());
    doc.begin_group();
    doc.insert(0, "x");
    assert!(doc.undo());
    doc.insert(0, "y");
    assert!(!doc.end_group(), "the undo closed the group");
    assert_eq!(doc.history_len(), 4);
    assert!(!doc.end_group(), "unbalanced end_group is harmless");
}

#[test]
fn branches_survive_and_redo_follows_the_last_visit() {
    let mut doc = Document::new("");
    doc.insert(0, "a"); // 1
    doc.undo();
    doc.insert(0, "b"); // 2, a sibling of 1
    assert!(doc.undo());
    assert!(doc.redo());
    assert_eq!(doc.text().to_string(), "b");
    assert!(doc.earlier(1));
    assert_eq!(doc.text().to_string(), "a");
    assert_eq!(doc.last_edits(), [Edit { start: 0, old_len: 1, new_len: 0 }, Edit { start: 0, old_len: 0, new_len: 1 }]);
    assert!(doc.undo() && doc.redo());
    assert_eq!(doc.text().to_string(), "a", "redo goes back where undo came from");
    assert!(doc.later(5) && !doc.later(1));
    assert_eq!(doc.seq(), 2);
    assert!(!doc.goto(9) && doc.goto(0) && !doc.earlier(3));
    assert!(!doc.redo() || doc.text().to_string() == "b");
}

#[test]
fn time_travel() {
    let mut doc = Document::new("");
    for (i, s) in ["a", "b", "c"].into_iter().enumerate() {
        doc.insert(i, s);
    }
    let base = doc.states[0].time;
    for (i, st) in doc.states.iter_mut().enumerate() {
        st.time = base + Duration::from_secs(10 * i as u64);
    }
    assert!(doc.earlier_time(Duration::from_secs(15)));
    assert_eq!(doc.seq(), 1);
    assert!(!doc.earlier_time(Duration::from_secs(1000)) || doc.seq() == 0);
    assert_eq!(doc.seq(), 0);
    assert!(doc.later_time(Duration::from_secs(20)));
    assert_eq!(doc.seq(), 2);
    assert!(doc.later_time(Duration::from_secs(1000)));
    assert_eq!(doc.seq(), 3);
    assert!(!doc.later_time(Duration::ZERO));
}

#[test]
fn splice_and_edit_mapping() {
    let mut doc = Document::new("hello world");
    doc.splice(0..5, "bye");
    assert_eq!(doc.text().to_string(), "bye world");
    assert_eq!(doc.last_edits(), [Edit { start: 0, old_len: 5, new_len: 3 }]);
    doc.splice(0..3, "bye");
    assert!(doc.last_edits().is_empty() && doc.seq() == 1, "same content is not a change");
    let e = Edit { start: 4, old_len: 2, new_len: 5 };
    assert_eq!((e.map(3), e.map(4), e.map(5), e.map(6), e.map(9)), (3, 4, 4, 9, 12));
    let ins = Edit { start: 2, old_len: 0, new_len: 3 };
    assert_eq!((ins.map(1), ins.map(2)), (1, 5));
    assert_eq!(map_offset(&[e, ins], 9), 15);
    assert_eq!(e.inverse().inverse(), e);
}

#[test]
fn replace_matching_logs_one_edit_per_match() {
    let mut doc = Document::new("a1 b22 c333");
    let prev = doc.text().to_string();
    let re = Regex::new(r"\d+").unwrap();
    assert_eq!(doc.replace_matching(&re, "<$0>", |m| m.start != 4), 2);
    assert_eq!(doc.text().to_string(), "a<1> b22 c<333>");
    assert_eq!(doc.last_edits(), [Edit { start: 1, old_len: 1, new_len: 3 }, Edit { start: 10, old_len: 3, new_len: 5 }]);
    assert_edits(&prev, "a<1> b22 c<333>", doc.last_edits());
    assert_eq!(doc.replace_all(&Regex::new("z").unwrap(), "y"), 0);
    assert!(doc.last_edits().is_empty());
}

#[test]
fn apply_edits_is_one_version_with_one_edit_per_change() {
    let mut doc = Document::new("one two three four five six");
    let prev = doc.text().to_string();
    let versions = doc.history_len();
    // Replace, delete, insert (twice at one offset) and a no-op in one batch, given in original offsets.
    let edits = [(0..3, "1"), (4..8, ""), (8..8, "<"), (8..8, ">"), (14..14, ""), (19..23, "4\r\n")];
    doc.apply_edits(&edits);
    let cur = "1 <>three four 4\n six";
    assert_eq!(doc.text().to_string(), cur);
    assert_eq!(doc.history_len(), versions + 1, "one version");
    // The no-op edit is left out; every start is in the text left by the previous edits.
    assert_eq!(
        doc.last_edits(),
        [
            Edit { start: 0, old_len: 3, new_len: 1 },
            Edit { start: 2, old_len: 4, new_len: 0 },
            Edit { start: 2, old_len: 0, new_len: 1 },
            Edit { start: 3, old_len: 0, new_len: 1 },
            Edit { start: 15, old_len: 4, new_len: 2 },
        ]
    );
    assert_edits(&prev, cur, doc.last_edits());
    // One undo step goes back to the previous text, one redo forward again.
    assert!(doc.undo());
    assert_eq!(doc.text().to_string(), prev);
    assert!(doc.redo());
    assert_eq!(doc.text().to_string(), cur);
}

#[test]
fn apply_edits_without_effect_makes_no_version() {
    let mut doc = Document::new("abc");
    doc.insert(3, "d");
    let versions = doc.history_len();
    doc.apply_edits(&[]);
    assert!(doc.last_edits().is_empty());
    doc.apply_edits(&[(1..1, ""), (2..2, "")]);
    assert!(doc.last_edits().is_empty());
    assert_eq!((doc.history_len(), doc.text().to_string()), (versions, "abcd".to_string()));
}

#[test]
fn apply_edits_joins_an_open_group() {
    let mut doc = Document::new("abc");
    let versions = doc.history_len();
    doc.group(|d| {
        d.insert(0, "x");
        d.apply_edits(&[(1..2, "B"), (3..3, "!")]);
    });
    // The insert at 3 is in the original "xabc": before the `c`.
    assert_eq!(doc.text().to_string(), "xBb!c");
    assert_eq!(doc.history_len(), versions + 1, "one group, one version");
}

#[test]
fn versions_describe_the_tree() {
    let mut doc = Document::new("");
    doc.insert(0, "a"); // 1
    doc.insert(1, "b"); // 2
    doc.undo();
    doc.splice(0..1, "xy"); // 3, sibling of 2
    let v: Vec<_> = doc.versions().map(|v| (v.seq, v.parent, v.edits, v.leaf)).collect();
    assert_eq!(v, [(0, 0, 0, false), (1, 0, 1, false), (2, 1, 1, true), (3, 1, 1, true)]);
    assert!(doc.versions().all(|v| v.time >= doc.states[0].time));
}
