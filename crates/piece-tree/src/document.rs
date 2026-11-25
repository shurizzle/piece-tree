use std::{
    io::{self, Write},
    mem,
    ops::Range,
};

use crate::{LineEnding, Text};

/// A [`Text`] with undo/redo history and an output line ending.
///
/// Every edit is one undo step; undo and redo just swap roots.
pub struct Document {
    text: Text,
    eol: LineEnding,
    undo: Vec<Text>,
    redo: Vec<Text>,
}

impl Document {
    /// Loads `s`, detecting its line ending and normalizing it internally to `\n`.
    pub fn new(s: &str) -> Self {
        Self { text: Text::from(s), eol: LineEnding::detect(s), undo: Vec::new(), redo: Vec::new() }
    }

    /// Like [`Document::new`], taking over `s`'s buffer when possible (no copy of large files).
    pub fn from_string(s: String) -> Self {
        let eol = LineEnding::detect(&s);
        Self { text: Text::from(s), eol, undo: Vec::new(), redo: Vec::new() }
    }

    pub fn text(&self) -> &Text {
        &self.text
    }

    pub fn eol(&self) -> LineEnding {
        self.eol
    }

    pub fn set_eol(&mut self, eol: LineEnding) {
        self.eol = eol;
    }

    pub fn insert(&mut self, off: usize, s: &str) {
        let next = self.text.insert(off, s);
        self.apply(next);
    }

    pub fn delete(&mut self, range: Range<usize>) {
        let next = self.text.delete(range);
        self.apply(next);
    }

    fn apply(&mut self, next: Text) {
        if next.ptr_eq(&self.text) {
            return;
        }
        self.undo.push(mem::replace(&mut self.text, next));
        self.redo.clear();
    }

    /// [`Text::replace_all`] as a single undo step; returns the match count.
    pub fn replace_all(&mut self, re: &crate::Regex, rep: &str) -> usize {
        let (next, n) = self.text.replace_all(re, rep);
        self.apply(next);
        n
    }

    /// Returns false when there is nothing to undo.
    pub fn undo(&mut self) -> bool {
        let Some(prev) = self.undo.pop() else { return false };
        self.redo.push(mem::replace(&mut self.text, prev));
        true
    }

    /// Returns false when there is nothing to redo.
    pub fn redo(&mut self) -> bool {
        let Some(next) = self.redo.pop() else { return false };
        self.undo.push(mem::replace(&mut self.text, next));
        true
    }

    /// Writes the text with `\n` converted to the document's line ending.
    pub fn write_to(&self, mut w: impl Write) -> io::Result<()> {
        let eol = self.eol.as_str().as_bytes();
        for chunk in self.text.chunks() {
            if self.eol == LineEnding::Lf {
                w.write_all(chunk.as_bytes())?;
                continue;
            }
            for (i, part) in chunk.split('\n').enumerate() {
                if i > 0 {
                    w.write_all(eol)?;
                }
                w.write_all(part.as_bytes())?;
            }
        }
        Ok(())
    }
}

#[cfg(test)]
mod tests {
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
}
