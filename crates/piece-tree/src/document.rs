use std::{
    io::{self, Write},
    ops::Range,
    time::{Duration, Instant},
};

use crate::{LineEnding, Regex, Text};

/// One change between two versions: `old_len` bytes at `start` became `new_len` bytes.
///
/// A list of edits applies in order: each `start` is an offset in the text left by the
/// previous edits.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Edit {
    pub start: usize,
    pub old_len: usize,
    pub new_len: usize,
}

impl Edit {
    /// The edit that undoes this one.
    pub fn inverse(self) -> Edit {
        Edit { start: self.start, old_len: self.new_len, new_len: self.old_len }
    }

    /// Where offset `off` of the old text ends up: before the edit it stays, after it shifts,
    /// inside a replaced range it moves to the range start. An insertion at `off` pushes it.
    pub fn map(self, off: usize) -> usize {
        if off < self.start {
            off
        } else if off >= self.start + self.old_len {
            off - self.old_len + self.new_len
        } else {
            self.start
        }
    }
}

/// Maps `off` through `edits` in order (see [`Edit::map`]).
pub fn map_offset(edits: &[Edit], off: usize) -> usize {
    edits.iter().fold(off, |o, e| e.map(o))
}

/// What [`Document::versions`] reports about one version.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Version {
    pub seq: usize,
    /// The version it was made from (the root reports itself).
    pub parent: usize,
    /// Number of edits from the parent.
    pub edits: usize,
    /// Whether no version was made from it (a branch tip).
    pub leaf: bool,
    pub time: Instant,
}

/// A version in the history tree.
struct State {
    text: Text,
    /// Index of the version this one was made from; the root points to itself.
    parent: usize,
    /// Edits from the parent's text to this one, as a range of `Document::log`.
    edits: Range<usize>,
    /// Child that `redo` goes to: the last one created or left by `undo`.
    redo: Option<usize>,
    time: Instant,
}

/// A [`Text`] with an undo tree and an output line ending.
///
/// Every effective edit (or every group of edits, see [`Document::begin_group`]) makes a new
/// version. Versions form a tree: editing after an undo starts a branch and keeps the old one,
/// reachable with [`Document::goto`], [`Document::earlier`] and [`Document::later`]. A version's
/// number ([`Document::seq`]) is its creation order, 0 being the loaded text. Moving between
/// versions only swaps roots; [`Document::last_edits`] says how offsets moved.
pub struct Document {
    eol: LineEnding,
    states: Vec<State>,
    cur: usize,
    /// Open [`Document::begin_group`] calls, and the version the open group writes into.
    depth: usize,
    group: Option<usize>,
    /// Every version's edits, back to back. The open group's version is always the newest, so its
    /// edits are the tail and can grow in place.
    log: Vec<Edit>,
    last: Vec<Edit>,
}

impl Document {
    /// Loads `s`, detecting its line ending and normalizing it internally to `\n`.
    pub fn new(s: &str) -> Self {
        Self::with_text(Text::from(s), LineEnding::detect(s))
    }

    /// Like [`Document::new`], taking over `s`'s buffer when possible (no copy of large files).
    pub fn from_string(s: String) -> Self {
        let eol = LineEnding::detect(&s);
        Self::with_text(Text::from(s), eol)
    }

    fn with_text(text: Text, eol: LineEnding) -> Self {
        let root = State { text, parent: 0, edits: 0..0, redo: None, time: Instant::now() };
        Self { eol, states: vec![root], cur: 0, depth: 0, group: None, log: Vec::new(), last: Vec::new() }
    }

    pub fn text(&self) -> &Text {
        &self.states[self.cur].text
    }

    pub fn eol(&self) -> LineEnding {
        self.eol
    }

    pub fn set_eol(&mut self, eol: LineEnding) {
        self.eol = eol;
    }

    pub fn insert(&mut self, off: usize, s: &str) {
        let next = self.text().insert(off, s);
        self.apply(next, &[Edit { start: off, old_len: 0, new_len: s.len() }]);
    }

    pub fn delete(&mut self, range: Range<usize>) {
        let next = self.text().delete(range.clone());
        self.apply(next, &[Edit { start: range.start, old_len: range.len(), new_len: 0 }]);
    }

    /// Replaces `range` with `s` as one change (one version, one [`Edit`]).
    pub fn splice(&mut self, range: Range<usize>, s: &str) {
        if self.text().slice(range.clone()) == s {
            // Same content (e.g. replacing a word with itself): not a change.
            self.last.clear();
            return;
        }
        let next = self.text().delete(range.clone()).insert(range.start, s);
        self.apply(next, &[Edit { start: range.start, old_len: range.len(), new_len: s.len() }]);
    }

    /// [`Text::apply_edits`] as one change (one version, one undo step). [`Document::last_edits`]
    /// lists one [`Edit`] per effective edit; with nothing to change there is no version.
    pub fn apply_edits(&mut self, edits: &[(Range<usize>, &str)]) {
        let (next, spans) = self.text().apply_edits_spans(edits);
        self.apply(next, &Text::edits_of(&spans));
    }

    /// Records `next` (with the edits that produced it) as a new version, or into the open group.
    fn apply(&mut self, next: Text, edits: &[Edit]) {
        self.last.clear();
        if next.ptr_eq(self.text()) {
            return;
        }
        self.last.extend_from_slice(edits);
        self.log.extend_from_slice(edits);
        if self.depth > 0 && self.group == Some(self.cur) {
            let s = &mut self.states[self.cur];
            s.text = next;
            s.edits.end = self.log.len();
            return;
        }
        let id = self.states.len();
        self.states[self.cur].redo = Some(id);
        let edits = self.log.len() - edits.len()..self.log.len();
        self.states.push(State { text: next, parent: self.cur, edits, redo: None, time: Instant::now() });
        self.cur = id;
        if self.depth > 0 {
            self.group = Some(id);
        }
    }

    /// Starts a group: until the matching [`Document::end_group`], effective edits make a single
    /// version (one undo step). Groups nest; only the outermost one counts. Moving in the history
    /// closes every open group.
    pub fn begin_group(&mut self) {
        self.last.clear();
        if self.depth == 0 {
            self.group = None;
        }
        self.depth += 1;
    }

    /// Ends a group; returns true when the outermost group made a version.
    pub fn end_group(&mut self) -> bool {
        self.last.clear();
        self.depth = self.depth.saturating_sub(1);
        self.depth == 0 && self.group.take().is_some()
    }

    /// Runs `f` inside a group.
    pub fn group<R>(&mut self, f: impl FnOnce(&mut Self) -> R) -> R {
        self.begin_group();
        let r = f(self);
        self.end_group();
        r
    }

    /// [`Text::replace_all`] as a single undo step; returns the match count.
    pub fn replace_all(&mut self, re: &Regex, rep: &str) -> usize {
        self.replace_matching(re, rep, |_| true)
    }

    /// [`Text::replace_matching`] as a single undo step; returns the replaced count.
    /// [`Document::last_edits`] lists one edit per replaced match.
    pub fn replace_matching(&mut self, re: &Regex, rep: &str, keep: impl FnMut(Range<usize>) -> bool) -> usize {
        let (next, edits) = self.text().replace_matching_edits(re, rep, keep);
        let n = edits.len();
        self.apply(next, &edits);
        n
    }

    /// Edits that the last call made to the current text: an edit's own change, or the path
    /// of a history move. Empty when the last call changed nothing (including
    /// `begin_group`/`end_group`), so mapping positions after every call never applies an
    /// edit twice. Use [`map_offset`] to keep positions such as marks in place.
    pub fn last_edits(&self) -> &[Edit] {
        &self.last
    }

    /// Number of the current version (0 is the loaded text).
    pub fn seq(&self) -> usize {
        self.cur
    }

    /// Number of versions, current or not.
    pub fn history_len(&self) -> usize {
        self.states.len()
    }

    /// Every version in creation order, for undo-tree views (vim `:undolist` lists the leaves).
    pub fn versions(&self) -> impl Iterator<Item = Version> + '_ {
        // Children are created after their parent, so a version is a parent iff a later one says so.
        let mut parent_of_some = vec![false; self.states.len()];
        for s in &self.states[1..] {
            parent_of_some[s.parent] = true;
        }
        self.states.iter().enumerate().map(move |(seq, s)| Version {
            seq,
            parent: s.parent,
            edits: s.edits.len(),
            leaf: !parent_of_some[seq],
            time: s.time,
        })
    }

    /// Goes to the parent version. Returns false at the root.
    pub fn undo(&mut self) -> bool {
        if self.cur == 0 {
            self.close_groups();
            self.last.clear();
            return false;
        }
        self.goto(self.states[self.cur].parent)
    }

    /// Goes to the child version last created or left by `undo`. Returns false without one.
    pub fn redo(&mut self) -> bool {
        match self.states[self.cur].redo {
            Some(child) => self.goto(child),
            None => {
                self.close_groups();
                self.last.clear();
                false
            }
        }
    }

    /// Goes `n` versions back in creation order, across branches (vim `g-`, `:earlier`).
    pub fn earlier(&mut self, n: usize) -> bool {
        self.goto(self.cur.saturating_sub(n))
    }

    /// Goes `n` versions forward in creation order (vim `g+`, `:later`).
    pub fn later(&mut self, n: usize) -> bool {
        self.goto(self.cur.saturating_add(n).min(self.states.len() - 1))
    }

    /// Goes to the newest version made at least `d` before the current one (vim `:earlier 10s`).
    pub fn earlier_time(&mut self, d: Duration) -> bool {
        let now = self.states[self.cur].time;
        let target = self.states[..self.cur].iter().rposition(|s| now.duration_since(s.time) >= d).unwrap_or(0);
        self.goto(target)
    }

    /// Goes to the oldest version made at least `d` after the current one, or the newest.
    pub fn later_time(&mut self, d: Duration) -> bool {
        let now = self.states[self.cur].time;
        let last = self.states.len() - 1;
        let target = (self.cur..=last).find(|&i| self.states[i].time.duration_since(now) >= d).unwrap_or(last);
        self.goto(target)
    }

    /// Goes to version `seq` (clamped to the newest), through the closest common ancestor.
    /// Returns false when it is already the current one.
    pub fn goto(&mut self, seq: usize) -> bool {
        self.close_groups();
        self.last.clear();
        let target = seq.min(self.states.len() - 1);
        if target == self.cur {
            return false;
        }
        // Children always have larger indexes than their parent, so climbing from the larger
        // index finds the common ancestor.
        let (mut up, mut down) = (self.cur, target);
        let mut path = Vec::new();
        while up != down {
            if up > down {
                self.last.extend(self.log[self.states[up].edits.clone()].iter().rev().map(|e| e.inverse()));
                let p = self.states[up].parent;
                self.states[p].redo = Some(up);
                up = p;
            } else {
                path.push(down);
                down = self.states[down].parent;
            }
        }
        for &s in path.iter().rev() {
            self.last.extend_from_slice(&self.log[self.states[s].edits.clone()]);
            let p = self.states[s].parent;
            self.states[p].redo = Some(s);
        }
        self.cur = target;
        true
    }

    fn close_groups(&mut self) {
        self.depth = 0;
        self.group = None;
    }

    /// Writes the text with `\n` converted to the document's line ending.
    pub fn write_to(&self, mut w: impl Write) -> io::Result<()> {
        let eol = self.eol.as_str().as_bytes();
        for chunk in self.text().chunks() {
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
mod tests;
