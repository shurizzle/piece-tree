//! Undo headers and entries, a port of Neovim's `undo.c` (`u_savecommon`, `u_getbot`, `u_sync`, `u_doit`, `u_undoredo`,
//! `undo_time`, `ex_undolist`, `u_undo_end`, `undo_fmt_time`).
//!
//! The texts stay in `Document` (one version per header, made by `Document::new_version`); this module keeps what Neovim keeps:
//! the headers in their tree (`uh_next` older, `uh_prev` newer, `uh_alt_next`/`uh_alt_prev` the branches), the entries (which
//! lines a change saved), the time and the cursor. Header ids are their `uh_seq` (the slot of a freed header stays), slot 0 is
//! the loaded text. Line numbers are Neovim's: 1-based, `top` is the line above the first saved one (0 = none), `bot` the line
//! below the last (`line_count + 1` = none, stored as 0 until the lines after are known).

use std::{
    mem,
    time::{SystemTime, UNIX_EPOCH},
};

use piece_tree::Text;

use super::buffers::{Mark, ULine};
use super::{Editor, VKind};

/// A Visual selection as `Editor::visual_pos` gives it: kind, anchor and cursor as line and byte column.
pub(super) type VisualPos = (VKind, (usize, usize), (usize, usize));

/// `u_entry_T`: the lines `top + 1 .. bot` as they were (`size` of them) before a change.
#[derive(Clone)]
pub(super) struct Entry {
    pub top: usize,
    /// 0: to the end of the buffer.
    pub bot: usize,
    pub size: usize,
    /// Line count when saved, for `ue_bot` while `getbot` of the header points here.
    lcount: usize,
    /// `ue_array`: the saved lines, as `size` lines of the text from the line with this 0-based index.
    src: Option<(Text, usize)>,
}

/// `u_header_T`: one undoable change.
pub(super) struct Header {
    /// Newest last (Neovim's list is newest first); an undo or redo reverses it, as it relinks the entries.
    pub entries: Vec<Entry>,
    /// `uh_getbot_entry`: the entry whose `bot` is still to be computed.
    getbot: Option<usize>,
    /// `uh_seq`, also the index.
    pub seq: usize,
    /// `uh_time`, seconds since the epoch.
    pub time: i64,
    /// `uh_cursor`: line and column (0-based) when the first line was saved.
    pub cursor: (usize, usize),
    /// `uh_namedm`: marks `a`-`z` as (name, line, column), 0-based, when the change began; after an undo the ones before it.
    pub namedm: Vec<(char, usize, usize)>,
    /// `uh_visual`: the last Visual selection (kind, anchor, cursor) likewise.
    pub visual: Option<VisualPos>,
    /// `UH_EMPTYBUF`: the buffer had no lines (`ML_EMPTY`) when the change began; after an undo or redo, when the other side had.
    pub emptybuf: bool,
    /// `UH_CHANGED`: `'modified'` before the change was undone, after it was redone (the other side of the step).
    pub changed: bool,
    /// The `Document` versions before and after the change.
    pub before_ver: usize,
    pub ver: usize,
    /// `uh_next` (older), `uh_prev` (newer), `uh_alt_next`, `uh_alt_prev`.
    pub next: Option<usize>,
    pub prev: Option<usize>,
    pub alt_next: Option<usize>,
    pub alt_prev: Option<usize>,
    /// `uh_save_nr`: which write of the file this change was the last one of (0: none).
    pub save_nr: usize,
    /// `uh_walk`.
    walk: usize,
    /// The header was freed (`'undolevels'`).
    freed: bool,
}

/// The undo state of a buffer (`b_u_*`).
pub(super) struct UndoTree {
    /// Index = `uh_seq`; 0 is the loaded text and has no entries.
    pub headers: Vec<Header>,
    /// `b_u_synced`: the next change makes a new header.
    pub synced: bool,
    /// `no_u_sync`: while above 0 a not forced `u_sync` does nothing.
    pub no_sync: u32,
    /// `ML_EMPTY`: the last line was deleted (or the buffer is new) and nothing was put back; only meaningful while the text is empty.
    pub empty: bool,
    /// `b_u_oldhead`, `b_u_newhead`, `b_u_curhead`.
    pub oldhead: Option<usize>,
    pub newhead: Option<usize>,
    pub curhead: Option<usize>,
    /// `b_u_numhead`.
    pub numhead: usize,
    /// `b_u_seq_last`, `b_u_seq_cur`, `b_u_time_cur`.
    pub seq_last: usize,
    pub seq_cur: usize,
    pub time_cur: i64,
    /// `b_u_save_nr_last`, `b_u_save_nr_cur`.
    pub save_nr_last: usize,
    pub save_nr_cur: usize,
    /// `'undolevels'`, copied in by the editor before a call that needs it.
    pub levels: i64,
    /// A header was freed since the `Document` versions only it used were let go (`Editor::trim_history`).
    pub freed_any: bool,
    /// `lastmark`.
    lastmark: usize,
}

pub(super) fn now() -> i64 {
    // Miri's isolation has no wall clock.
    #[cfg(miri)]
    return 0;
    #[cfg(not(miri))]
    SystemTime::now().duration_since(UNIX_EPOCH).map_or(0, |d| d.as_secs() as i64)
}

impl Header {
    fn new(seq: usize, time: i64, cursor: (usize, usize), emptybuf: bool, before_ver: usize) -> Self {
        Self {
            entries: Vec::new(),
            getbot: None,
            seq,
            time,
            cursor,
            namedm: Vec::new(),
            visual: None,
            emptybuf,
            changed: false,
            before_ver,
            ver: before_ver,
            next: None,
            prev: None,
            alt_next: None,
            alt_prev: None,
            save_nr: 0,
            walk: 0,
            freed: false,
        }
    }
}

impl UndoTree {
    pub fn new(empty: bool) -> Self {
        Self {
            headers: vec![Header::new(0, now(), (0, 0), false, 0)],
            synced: true,
            no_sync: 0,
            empty,
            oldhead: None,
            newhead: None,
            curhead: None,
            numhead: 0,
            seq_last: 0,
            seq_cur: 0,
            time_cur: 0,
            save_nr_last: 0,
            save_nr_cur: 0,
            levels: 1000,
            freed_any: false,
            lastmark: 0,
        }
    }

    /// `u_getbot`: `ue_bot` of the entry saved last, from the lines added or removed since (the open header is the newest one).
    fn getbot(&mut self, line_count: usize) {
        if let Some(id) = self.newhead {
            let h = &mut self.headers[id];
            if let Some(i) = h.getbot.take() {
                let e = &mut h.entries[i];
                // `E440`/`E441` cannot happen here: a bad `bot` assumes all the lines were deleted, as the C code does.
                let bot = (e.top + e.size + 1 + line_count).checked_sub(e.lcount).filter(|&b| (1..=line_count).contains(&b));
                e.bot = bot.unwrap_or(e.top + 1);
            }
        }
        self.synced = true;
    }

    /// `u_sync`: the next change starts a new header. Returns whether a header was open.
    pub fn sync(&mut self, force: bool, line_count: usize) -> bool {
        if self.synced || (!force && self.no_sync > 0) {
            return false;
        }
        if self.levels < 0 {
            self.synced = true;
            return true;
        }
        self.getbot(line_count);
        self.curhead = None;
        true
    }

    /// `u_freeentries`.
    fn freeentries(&mut self, id: usize, uhpp: &mut Option<usize>) {
        if self.curhead == Some(id) {
            self.curhead = None;
        }
        if self.newhead == Some(id) {
            self.newhead = None;
        }
        if *uhpp == Some(id) {
            *uhpp = None;
        }
        let h = &mut self.headers[id];
        h.entries = Vec::new();
        h.getbot = None;
        h.freed = true;
        self.freed_any = true;
        self.numhead -= 1;
    }

    /// `u_freeheader`: one header, and the branch of redo it had, are gone.
    fn freeheader(&mut self, id: usize, uhpp: &mut Option<usize>) {
        if let Some(an) = self.headers[id].alt_next {
            self.freebranch(an, uhpp);
        }
        if let Some(ap) = self.headers[id].alt_prev {
            self.headers[ap].alt_next = None;
        }
        let (next, prev) = (self.headers[id].next, self.headers[id].prev);
        match next {
            None => self.oldhead = prev,
            Some(n) => self.headers[n].prev = prev,
        }
        match prev {
            None => self.newhead = next,
            Some(p) => {
                let mut u = Some(p);
                while let Some(x) = u {
                    self.headers[x].next = next;
                    u = self.headers[x].alt_next;
                }
            }
        }
        self.freeentries(id, uhpp);
    }

    /// `u_freebranch`: an alternate branch and the ones after it.
    fn freebranch(&mut self, id: usize, uhpp: &mut Option<usize>) {
        if Some(id) == self.oldhead {
            while let Some(o) = self.oldhead {
                self.freeheader(o, uhpp);
            }
            return;
        }
        if let Some(ap) = self.headers[id].alt_prev {
            self.headers[ap].alt_next = None;
        }
        let mut next = Some(id);
        while let Some(t) = next {
            if let Some(an) = self.headers[t].alt_next {
                self.freebranch(an, uhpp);
            }
            next = self.headers[t].prev;
            self.freeentries(t, uhpp);
        }
    }

    /// `u_unchanged`: the buffer was just written or read, so undoing any step makes it modified.
    pub fn unchanged(&mut self) {
        self.headers.iter_mut().filter(|h| !h.freed).for_each(|h| h.changed = true);
    }

    /// `u_savecommon` without the reload case: saves the lines between `top` and `bot` (see the module header) for the change
    /// about to be made; `newbot` is the new bottom line, 0 when not known; `ver` is the `Document` version it starts from.
    /// Returns whether it made a header.
    pub fn save(&mut self, (top, bot, newbot): (usize, usize, usize), line_count: usize, cursor: (usize, usize), src: Option<(Text, usize)>, ver: usize) -> bool {
        let size = bot - top - 1;
        let mut made = false;
        if self.synced {
            let ul = self.levels;
            // If we undid more than we redid, the entry lists before and including `curhead` go to an alternate branch.
            let mut old_curhead = self.curhead;
            if let Some(oc) = old_curhead {
                self.newhead = self.headers[oc].next;
                self.curhead = None;
            }
            // Free headers to keep the size right.
            while self.numhead as i64 > ul && self.oldhead.is_some() {
                let uhfree = self.oldhead.expect("checked");
                if Some(uhfree) == old_curhead {
                    self.freebranch(uhfree, &mut old_curhead);
                } else if self.headers[uhfree].alt_next.is_none() {
                    self.freeheader(uhfree, &mut old_curhead);
                } else {
                    let mut u = uhfree;
                    while let Some(a) = self.headers[u].alt_next {
                        u = a;
                    }
                    self.freebranch(u, &mut old_curhead);
                }
            }
            if ul < 0 {
                // No undo at all.
                if let Some(oc) = old_curhead {
                    self.freebranch(oc, &mut None);
                }
                self.synced = false;
                return false;
            }
            let id = self.headers.len();
            let mut h = Header::new(id, now(), cursor, self.empty, ver);
            h.next = self.newhead;
            h.alt_next = old_curhead;
            if let Some(oc) = old_curhead {
                h.alt_prev = self.headers[oc].alt_prev;
                if let Some(ap) = h.alt_prev {
                    self.headers[ap].alt_next = Some(id);
                }
                self.headers[oc].alt_prev = Some(id);
                if self.oldhead == Some(oc) {
                    self.oldhead = Some(id);
                }
            }
            if let Some(nh) = self.newhead {
                self.headers[nh].prev = Some(id);
            }
            self.seq_last += 1;
            self.seq_cur = self.seq_last;
            self.time_cur = h.time + 1;
            self.headers.push(h);
            self.newhead = Some(id);
            if self.oldhead.is_none() {
                self.oldhead = Some(id);
            }
            self.numhead += 1;
            made = true;
        } else {
            if self.levels < 0 {
                return false;
            }
            // A line saved a moment ago is not saved again (the last ten entries are looked at).
            if size == 1 {
                let h = &mut self.headers[self.newhead.expect("an open header")];
                let n = h.entries.len();
                for i in 0..10.min(n) {
                    let k = n - 1 - i;
                    let e = h.entries[k].clone();
                    // Lines were inserted or deleted since, or the line is part of a multi-line save: give up.
                    let moved = if h.getbot == Some(k) { e.lcount != line_count } else { e.top + e.size + 1 != if e.bot == 0 { line_count + 1 } else { e.bot } };
                    if moved || (e.size > 1 && top >= e.top && top + 2 <= e.top + e.size + 1) {
                        break;
                    }
                    if e.size == 1 && e.top == top {
                        if i > 0 {
                            self.getbot(line_count);
                            self.synced = false;
                            let h = &mut self.headers[self.newhead.expect("an open header")];
                            let e = h.entries.remove(k);
                            h.entries.push(e);
                        }
                        let h = &mut self.headers[self.newhead.expect("an open header")];
                        let last = h.entries.len() - 1;
                        if newbot != 0 {
                            h.entries[last].bot = newbot;
                        } else if bot > line_count {
                            h.entries[last].bot = 0;
                        } else {
                            h.entries[last].lcount = line_count;
                            h.getbot = Some(last);
                        }
                        return false;
                    }
                }
            }
            self.getbot(line_count);
        }
        let h = &mut self.headers[self.newhead.expect("an open header")];
        let mut e = Entry { top, bot: 0, size, lcount: 0, src: if size > 0 { src } else { None } };
        let mut wait = false;
        if newbot != 0 {
            e.bot = newbot;
        } else if bot <= line_count {
            e.lcount = line_count;
            wait = true;
        }
        h.entries.push(e);
        if wait {
            h.getbot = Some(h.entries.len() - 1);
        }
        self.synced = false;
        made
    }

    /// `u_update_save_nr`: the file was written; the change it holds is marked.
    pub fn update_save_nr(&mut self) {
        self.save_nr_last += 1;
        self.save_nr_cur = self.save_nr_last;
        let uhp = match self.curhead {
            Some(c) => self.headers[c].next,
            None => self.newhead,
        };
        if let Some(u) = uhp {
            self.headers[u].save_nr = self.save_nr_last;
        }
    }

    /// The lines `ex_undolist` shows (not sorted): the leaves of the tree with their number of changes.
    pub fn undolist(&mut self, now: i64) -> Vec<String> {
        let mut changes = 1usize;
        self.lastmark += 1;
        let mark = self.lastmark;
        self.lastmark += 1;
        let nomark = self.lastmark;
        let mut out = Vec::new();
        let mut uhp = self.oldhead;
        while let Some(id) = uhp {
            let (prev, alt_next, alt_prev, next) = {
                let h = &self.headers[id];
                (h.prev, h.alt_next, h.alt_prev, h.next)
            };
            let walk = |t: &Self, x: usize| t.headers[x].walk != nomark && t.headers[x].walk != mark;
            if prev.is_none() && self.headers[id].walk != nomark && self.headers[id].walk != mark {
                let h = &self.headers[id];
                let mut line = format!("{:6} {:7}  {}", h.seq, changes, fmt_time(h.time, now));
                if h.save_nr > 0 {
                    while line.len() < 33 {
                        line.push(' ');
                    }
                    line.push_str(&format!("  {:3}", h.save_nr));
                }
                out.push(line);
            }
            self.headers[id].walk = mark;
            if let Some(p) = prev.filter(|&p| walk(self, p)) {
                uhp = Some(p);
                changes += 1;
            } else if let Some(a) = alt_next.filter(|&a| walk(self, a)) {
                uhp = Some(a);
            } else if let Some(n) = next.filter(|&n| alt_prev.is_none() && walk(self, n)) {
                uhp = Some(n);
                changes -= 1;
            } else {
                self.headers[id].walk = nomark;
                if let Some(a) = alt_prev {
                    uhp = Some(a);
                } else {
                    uhp = next;
                    changes = changes.saturating_sub(1);
                }
            }
        }
        out
    }

    /// `u_undoredo`: swaps what the entries of header `seq` hold with what the buffer holds. `text` is the buffer before the
    /// move (the entries are applied to it in order, as Neovim does, to compare lines for the cursor), `cursor_line` the
    /// cursor line (0-based) and `text_empty` whether the text after the move is empty.
    pub fn swap(&mut self, seq: usize, mut text: Text, cursor_line: usize, text_empty: bool) -> Moved {
        let h = &mut self.headers[seq];
        let (uh_line, uh_col) = (h.cursor.0 as i64 + 1, h.cursor.1);
        let mut lc = text.line_count();
        let (mut old, mut new) = (0, 0);
        let mut cur = cursor_line as i64 + 1;
        let mut newlnum = i64::MAX;
        let (mut op_start, mut op_end) = (lc as i64, 0i64);
        let mut regions = Vec::new();
        let count = h.entries.len();
        for (k, e) in h.entries.iter_mut().rev().enumerate() {
            let top = e.top as i64;
            let bot = if e.bot == 0 { lc + 1 } else { e.bot };
            let oldsize = bot.saturating_sub(e.top + 1);
            let newsize = e.size;
            // The cursor: where the change began if that is in this entry, else the first line that differs.
            if uh_line >= top && uh_line <= top + newsize as i64 + 1 {
                cur = uh_line;
                newlnum = -1;
            } else if top < newlnum {
                let mut i = 0;
                while i < newsize && i < oldsize && e.src.as_ref().is_some_and(|(t, f)| t.line(f + i) == text.line(e.top + i)) {
                    i += 1;
                }
                if i == newsize && newlnum == i64::MAX && k + 1 == count {
                    newlnum = top;
                    cur = newlnum + 1;
                } else if i < newsize {
                    newlnum = top + i as i64;
                    cur = newlnum + 1;
                }
            }
            let saved = (oldsize > 0).then(|| (text.clone(), e.top));
            let empty_buffer = oldsize > 0 && oldsize >= lc;
            text = del_lines(&text, e.top, oldsize);
            if let Some((t, f)) = e.src.as_ref().filter(|_| newsize > 0) {
                let lines = t.slice(t.line_to_offset(*f)..t.line_end(f + newsize - 1)).into_owned();
                text = if empty_buffer && e.top == 0 { Text::from(lines.as_str()) } else { ins_lines(&text, e.top, &lines) };
            }
            regions.push((e.top, oldsize, newsize));
            // `'[` and `']`.
            if oldsize != newsize {
                let delta = newsize as i64 - oldsize as i64;
                if op_start > top + oldsize as i64 {
                    op_start += delta;
                }
                if op_end > top + oldsize as i64 {
                    op_end += delta;
                }
            }
            op_start = op_start.min(top + 1);
            if newsize == 0 && top + 1 > op_end {
                op_end = top + 1;
            } else if top + newsize as i64 > op_end {
                op_end = top + newsize as i64;
            }
            old += oldsize;
            new += newsize;
            (e.size, e.bot, e.src) = (oldsize, e.top + newsize + 1, saved);
            lc = lc + newsize - oldsize.min(lc + newsize);
        }
        h.entries.reverse();
        // The flags are swapped too; `ML_EMPTY` comes back only when the text is empty.
        (h.emptybuf, self.empty) = (self.empty, h.emptybuf && text_empty);
        // The cursor line is kept on a line, and a change that began on the line above it puts it back there.
        let mut line = cur.clamp(1, lc.max(1) as i64);
        if uh_line + 1 == line && line > 1 {
            line -= 1;
        }
        let col = if uh_line == line { Col::Header(uh_col) } else { Col::Wanted };
        let lc = lc as i64;
        Moved { old, new, line: line as usize - 1, col, op_start: op_start.min(lc) as usize, op_end: op_end.min(lc) as usize, regions, text }
    }
}

/// Where the cursor column goes after `u_undoredo`: the column the change began at, or `beginline(BL_SOL | BL_FIX)`.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) enum Col {
    Header(usize),
    Wanted,
}

/// What `UndoTree::swap` found: lines before and after in the regions, the cursor line (0-based) and column, the 1-based lines of
/// `'[` and `']`, the regions `(top, old size, new size)` for `mark_adjust`, and the text the entries made.
pub(super) struct Moved {
    pub old: usize,
    pub new: usize,
    pub line: usize,
    pub col: Col,
    pub op_start: usize,
    pub op_end: usize,
    pub regions: Vec<(usize, usize, usize)>,
    pub text: Text,
}

/// `text` without the `n` lines from the 0-based line `a` (and a line break with them).
fn del_lines(text: &Text, a: usize, n: usize) -> Text {
    if n == 0 {
        return text.clone();
    }
    let range = if a + n < text.line_count() {
        text.line_to_offset(a)..text.line_to_offset(a + n)
    } else if a > 0 {
        text.line_end(a - 1)..text.len()
    } else {
        0..text.len()
    };
    text.delete(range)
}

/// `text` with `lines` (no line break after the last) put before the 0-based line `at`.
fn ins_lines(text: &Text, at: usize, lines: &str) -> Text {
    if at < text.line_count() {
        text.insert(text.line_to_offset(at), &format!("{lines}\n"))
    } else {
        text.insert(text.len(), &format!("\n{lines}"))
    }
}

/// `undo_fmt_time`: "N seconds ago" for a change less than 100 seconds old, else the clock time (the date too after 12 hours).
pub(super) fn fmt_time(tt: i64, now: i64) -> String {
    let age = now - tt;
    if age < 100 {
        return format!("{age} second{} ago", if age == 1 { "" } else { "s" });
    }
    let fmt = if age < 60 * 60 * 12 { c"%H:%M:%S" } else { c"%Y/%m/%d %H:%M:%S" };
    let t = tt as libc::time_t;
    // SAFETY: `tm` is plain data that `localtime_r` fills in, and `strftime` writes at most `buf.len()` bytes and
    // reads the NUL-terminated format.
    let tm = unsafe {
        let mut tm: libc::tm = mem::zeroed();
        if libc::localtime_r(&t, &mut tm).is_null() {
            return String::new();
        }
        tm
    };
    let mut buf = [0u8; 80];
    // SAFETY: see above.
    let n = unsafe { libc::strftime(buf.as_mut_ptr().cast(), buf.len(), fmt.as_ptr(), &tm) };
    String::from_utf8_lossy(&buf[..n]).into_owned()
}

impl Editor {
    /// `u_savecommon`: header and entry for a change to the lines between `top` and `bot` (Neovim's 1-based numbers). A new
    /// header is a new `Document` version, owned by a group that `u_sync` closes.
    pub(super) fn u_savecommon(&mut self, top: usize, bot: usize, newbot: usize) -> bool {
        self.u_savecommon_lc(top, bot, newbot, self.line_count())
    }

    /// `u_savecommon` for a buffer that will have `lc` lines by then (`:s` saves line by line before it changes the text).
    pub(super) fn u_savecommon_lc(&mut self, top: usize, bot: usize, newbot: usize, lc: usize) -> bool {
        let src = Some((self.buf.doc.text().clone(), top));
        self.u_savecommon_src(top, bot, newbot, lc, src, None)
    }

    /// `u_savecommon` where the lines saved are `src` (a text and the 0-based index of the first line in it).
    pub(super) fn u_savecommon_src(&mut self, top: usize, bot: usize, newbot: usize, lc: usize, src: Option<(Text, usize)>, cursor: Option<(usize, usize)>) -> bool {
        if top >= bot || bot > lc + 1 {
            return false;
        }
        let cursor = cursor.unwrap_or((self.win.line, self.win.col));
        self.buf.undo.levels = self.buf.opts.undolevels;
        let ver = self.buf.doc.seq();
        if self.buf.undo.save((top, bot, newbot), lc, cursor, src, ver) {
            self.buf.doc.begin_group();
            self.buf.doc.new_version();
            // `u_savecommon` makes a new undo step: the next change may start a new entry of the change list.
            self.buf.new_change = true;
            // `uh_namedm` and `uh_visual`: what undo gives back when the change took them away.
            let text = self.buf.doc.text().clone();
            let (named, visual) = (self.named_marks(&text), self.visual_pos(&text));
            let new_ver = self.buf.doc.seq();
            let id = self.buf.undo.newhead.expect("a header was just made");
            let h = &mut self.buf.undo.headers[id];
            (h.namedm, h.visual, h.ver) = (named, visual, new_ver);
            // `uh_flags = (b_changed ? UH_CHANGED : 0) + ..`: the edit has not been made yet.
            h.changed = self.buf.modified;
        }
        true
    }

    /// Marks `a`-`z` as (name, line, column) in `text`.
    pub(super) fn named_marks(&self, _text: &Text) -> Vec<(char, usize, usize)> {
        let mut v: Vec<_> = self.buf.marks.iter().filter(|(m, _)| m.is_ascii_lowercase()).map(|(&m, mk)| (m, mk.line, mk.col)).collect();
        v.sort_unstable();
        v
    }

    /// The last Visual selection as line and byte column pairs in `text`.
    pub(super) fn visual_pos(&self, _text: &Text) -> Option<VisualPos> {
        self.buf.last_visual.map(|(k, a, b)| (k, (a.line, a.col), (b.line, b.col)))
    }

    /// What `u_undoredo` does around the text that `Document` moved: `'[` `']`, marks `a`-`z` (`mark_adjust`, then the ones
    /// the header kept), the Visual selection, the jump mark and the cursor. `moved` has what the entries did to `before`.
    pub(super) fn undoredo_marks(&mut self, seq: usize, moved: &Moved, named: Vec<(char, usize, usize)>, visual: Option<VisualPos>) {
        // `mark_adjust(top + 1, top + oldsize, MAXLNUM, newsize - oldsize)` for every entry: a mark in the lines that go is deleted
        // (`'<` and `'>` go to the first of them).
        for &(top, old, new) in &moved.regions {
            if old != new {
                self.mark_adjust(top, old, None, new as isize - old as isize);
            }
            // `changed_lines(top + 1, 0, ..)` sets `'.`.
            if old > 0 || new > 0 {
                self.buf.marks.insert('.', Mark { line: top, col: 0 });
                self.add_change();
            }
        }
        let h = &mut self.buf.undo.headers[seq];
        let kept = mem::replace(&mut h.namedm, named);
        for (m, l, c) in kept {
            self.buf.marks.insert(m, Mark { line: l, col: c });
        }
        let h = &mut self.buf.undo.headers[seq];
        let restored = h.visual.take().map(|v| (v, visual));
        // `if (curhead->uh_visual.vi_start.lnum != 0)`: a header that has no Visual area stays without one.
        if let Some((_, before)) = &restored {
            h.visual = *before;
        }
        if let Some(((k, a, b), _)) = restored {
            let (pa, pb) = (a, b);
            self.buf.last_visual = Some((k, Mark { line: a.0, col: a.1 }, Mark { line: b.0, col: b.1 }));
            let ((l1, c1), (l2, c2)) = if pa <= pb { (pa, pb) } else { (pb, pa) };
            self.buf.marks.insert('<', Mark { line: l1, col: c1 });
            self.buf.marks.insert('>', Mark { line: l2, col: c2 });
        }
        self.check_visual_pos();
        let (s, e) = (self.mark_off(moved.op_start.saturating_sub(1), 0), self.mark_off(moved.op_end.saturating_sub(1), 0));
        self.set_op_marks(s, e);
        // The cursor: on the line found, at the column the change began at or where `beginline(BL_SOL | BL_FIX)` goes.
        self.win.line = moved.line;
        self.win.col = match moved.col {
            Col::Header(c) => c,
            Col::Wanted => self.col_wanted(moved.line),
        };
        // `check_cursor`: on a char of a line, without touching the column wanted.
        self.win.line = self.win.line.min(self.line_count() - 1);
        self.win.col = self.win.col.min(self.line_chars(self.win.line));
        self.clamp_normal();
    }

    /// `u_save`: the lines above `top` .. below `bot` are about to change.
    pub(super) fn u_save(&mut self, top: usize, bot: usize) -> bool {
        // `u_save_buf`: a save of one line also keeps it for `U`, before the step is made.
        if top < bot && bot <= self.line_count() + 1 && top + 2 == bot {
            self.u_saveline(top);
        }
        self.u_savecommon(top, bot, 0)
    }

    /// `u_saveline`: keeps 0-based `line` for `U` unless it is the one kept already.
    pub(super) fn u_saveline(&mut self, line: usize) {
        let text = self.buf.doc.text().clone();
        self.u_saveline_in(line, &text, None);
    }

    /// `u_saveline` for a line of `text`, the buffer as it still was (`:s` saves after it planned the new text).
    pub(super) fn u_saveline_in(&mut self, line: usize, text: &Text, col: Option<usize>) {
        if self.buf.u_line.as_ref().is_some_and(|u| u.line == line) || line >= text.line_count() {
            return;
        }
        let col = col.unwrap_or(if self.win.line == line { self.win.col } else { 0 });
        self.buf.u_line = Some(ULine { line, text: text.line(line).to_string(), col });
    }

    /// `u_clearline`: `U` has nothing to bring back (lines were added or taken away, or the text was read again).
    pub(super) fn u_clearline(&mut self) {
        self.buf.u_line = None;
    }

    /// `u_undoline`, the `U` command: the line kept swaps with the line as it is, so `U` undoes itself; the cursor takes the
    /// column kept and the column it had goes in its place.
    pub(super) fn u_undoline(&mut self) {
        let Some(ul) = self.buf.u_line.clone().filter(|u| u.line < self.line_count()) else {
            return self.beep_flush();
        };
        // A step of its own, as every `u_save*` call, but it does not touch the line kept.
        if !self.u_savecommon(ul.line, ul.line + 2, 0) {
            return;
        }
        let old = self.buf.doc.text().line(ul.line).to_string();
        let start = self.buf.doc.text().line_to_offset(ul.line);
        self.edit_replace(start..self.line_end_offset(ul.line), &ul.text);
        // `changed_bytes(lnum, 0)`.
        self.set_dot(start);
        let on_line = self.win.line == ul.line;
        self.buf.u_line = Some(ULine { line: ul.line, text: old, col: if on_line { self.win.col } else { ul.col } });
        (self.win.line, self.win.col) = (ul.line, ul.col);
        self.clamp_normal();
    }

    /// `u_save_cursor`: the cursor line.
    pub(super) fn u_save_cursor(&mut self) -> bool {
        let cur = self.win.line + 1;
        self.u_save(cur - 1, cur + 1)
    }

    /// `u_save` for the lines `first ..= last` (0-based, as the rest of the editor numbers them).
    pub(super) fn u_save_lines(&mut self, first: usize, last: usize) -> bool {
        self.u_save(first, last + 2)
    }

    /// `u_save_cursor` with the cursor on `line` (0-based): operators save the line they start on while the cursor is elsewhere.
    pub(super) fn u_save_line(&mut self, line: usize) -> bool {
        self.u_save_lines(line, line)
    }

    /// `u_savedel`: `nlines` lines from `lnum` are deleted.
    pub(super) fn u_savedel(&mut self, lnum: usize, nlines: usize) -> bool {
        let all = nlines == self.line_count();
        let ok = self.u_savecommon(lnum - 1, lnum + nlines, if all { 2 } else { lnum });
        // `ml_delete` of the last line makes the buffer `ML_EMPTY`; `mark_adjust` deletes the marks of the lines.
        if ok && all {
            self.buf.undo.empty = true;
        }
        if ok {
            self.marks_delete_lines(lnum - 1, nlines);
        }
        ok
    }

    /// `do_sub`'s saves for the matches that replace text (`items`, in order, each in the coordinates the previous ones leave):
    /// `u_inssub` for every line break in a replacement, `u_save_cursor` once for the whole command, `u_savesub` for the
    /// line when it is finished and `u_savedel` for the lines a match took. The buffer has `lc` lines before the first.
    pub(super) fn sub_undo(&mut self, items: &[SubItem], before: &Text, did_save: &mut bool) {
        let mut lc = before.line_count();
        let mut shift: isize = 0;
        let mut i = 0;
        while i < items.len() {
            let line = items[i].line;
            let mut lnum = (line as isize + 1 + shift) as usize;
            // The line is finished when its last match is done, or at a match that takes the lines after it.
            let mut open = false;
            let mut last = i;
            while i < items.len() && items[i].line == line {
                let it = &items[i];
                // `u_savesub`: the line as the buffer holds it.
                let src = it.half.as_deref().map_or_else(|| (before.clone(), line), |h| (Text::from(h), 0));
                for _ in 0..it.crs {
                    self.u_savecommon_src(lnum - 1, lnum, lnum + 1, lc, None, Some((lnum - 1, 0)));
                    lc += 1;
                    lnum += 1;
                    shift += 1;
                }
                if !*did_save {
                    // `u_save_cursor()`: the line is kept for `U` too, with column 0 (`do_sub` has put the cursor there).
                    self.u_saveline_in(lnum - 1, before, Some(0));
                    self.u_savecommon_src(lnum - 1, lnum + 1, 0, lc, Some((before.clone(), line)), Some((lnum - 1, 0)));
                    *did_save = true;
                }
                open = true;
                last = i;
                if it.takes > 0 {
                    self.u_savecommon_src(lnum - 1, lnum + 1, lnum + 1, lc, Some(src), Some((lnum - 1, 0)));
                    let newbot = if it.takes == lc { 2 } else { lnum + 1 };
                    self.u_savecommon_src(lnum, lnum + 1 + it.takes, newbot, lc, Some((before.clone(), line + 1)), Some((lnum - 1, 0)));
                    self.marks_delete_lines(line + 1, it.takes);
                    lc -= it.takes;
                    shift -= it.takes as isize;
                    open = false;
                }
                i += 1;
            }
            if open {
                let src = items[last].half.as_deref().map_or_else(|| (before.clone(), line), |h| (Text::from(h), 0));
                self.u_savecommon_src(lnum - 1, lnum + 1, lnum + 1, lc, Some(src), Some((lnum - 1, 0)));
            }
        }
    }

    /// `mark_adjust(first, last, MAXLNUM, ..)`: the marks `a`-`z`, `'^`, `'.`, `'"` and `''` in the `n` lines from the 0-based line
    /// `first` are deleted (the others stay on the first line that goes, as `ONE_ADJUST_NODEL` does).
    pub(super) fn marks_delete_lines(&mut self, first: usize, n: usize) {
        self.mark_adjust(first, n, None, 0);
    }

    /// `u_find_first_changed`: after a reload saved for undo (`'undoreload'`), undoing it puts the cursor on the first line
    /// that differs from the text `old` it replaced, or on the first one added or deleted at the end.
    pub(super) fn u_find_first_changed(&mut self, old: &Text) {
        let (new, size) = (self.buf.doc.text(), old.line_count());
        let nl = new.line_count();
        let mut lnum = 1;
        while lnum < nl && lnum <= size && new.line(lnum - 1) == old.line(lnum - 1) {
            lnum += 1;
        }
        let differs = lnum < nl && lnum <= size;
        if differs || nl != size {
            let id = self.buf.undo.newhead.expect("the reload made a header");
            self.buf.undo.headers[id].cursor = (lnum - 1, 0);
        }
    }

    /// `u_sync`: the next change makes a new undo step.
    pub(super) fn u_sync(&mut self, force: bool) {
        self.buf.undo.levels = self.buf.opts.undolevels;
        if self.buf.undo.sync(force, self.line_count()) {
            self.buf.doc.end_group();
        }
        // With 'undolevels' below 0 no header is made, but the edits still make versions.
        if (self.buf.undo.freed_any || self.buf.opts.undolevels < 0) && self.buf.undo.synced {
            self.trim_history();
        }
    }

    /// The `Document` versions that no header (`u_freeheader`, `u_freebranch`: `'undolevels'`) can reach any more are let go:
    /// everything that is not the subtree of the newest version all the live headers and the current text have in common.
    /// The versions are renumbered in creation order, so the headers get their new numbers.
    fn trim_history(&mut self) {
        self.buf.undo.freed_any = false;
        let parents: Vec<usize> = self.buf.doc.versions().map(|v| v.parent).collect();
        // The common ancestor of the versions in use: the newest of them goes to its parent until one is left.
        let mut set: Vec<usize> = vec![self.buf.doc.seq()];
        for h in self.buf.undo.headers.iter().skip(1).filter(|h| !h.freed) {
            set.extend([h.before_ver, h.ver]);
        }
        set.sort_unstable();
        set.dedup();
        while set.len() > 1 {
            let newest = set.pop().expect("more than one");
            if let Err(at) = set.binary_search(&parents[newest]) {
                set.insert(at, parents[newest]);
            }
        }
        let keep = set[0];
        if keep == 0 {
            return;
        }
        const DROPPED: usize = usize::MAX;
        let mut id = vec![DROPPED; parents.len()];
        id[keep] = 0;
        let mut next = 1;
        for i in keep + 1..parents.len() {
            if id[parents[i]] != DROPPED {
                id[i] = next;
                next += 1;
            }
        }
        let dropped = self.buf.doc.drop_history_before(keep);
        debug_assert!(dropped, "the current version is in the subtree");
        for h in self.buf.undo.headers.iter_mut().skip(1).filter(|h| !h.freed) {
            (h.before_ver, h.ver) = (id[h.before_ver], id[h.ver]);
            debug_assert!(h.before_ver != DROPPED && h.ver != DROPPED);
        }
    }

    /// `may_sync_undo`, called as a typed key is read: not in Insert mode or in a command line unless a cursor key moved
    /// (`arrow_used`), and not for keys that come from `:normal`, a macro or `.`.
    pub(super) fn may_sync_undo(&mut self) {
        let typed = !self.replaying && self.macro_depth == 0;
        let typing = matches!(self.mode, super::Mode::Insert | super::Mode::Command(_) | super::Mode::Search(_) | super::Mode::Expr(_) | super::Mode::Confirm);
        if typed && (!typing || self.arrow_used) {
            self.u_sync(false);
        }
    }

    /// `u_undoredo`: one header undone or redone: the text moves to the version before or after it, the entries are swapped and
    /// the marks and the cursor follow. Returns the lines in the regions before and after.
    fn u_undoredo(&mut self, id: usize, undo: bool) -> (usize, usize) {
        let before = self.buf.doc.text().clone();
        // `setpcmark()` and a copy of the marks come first.
        self.set_jump();
        let (named, visual) = (self.named_marks(&before), self.visual_pos(&before));
        let h = &self.buf.undo.headers[id];
        // The entries swap sides every time (with `'undolevels'` 0 an undo of the same change again is a redo): go to the other one.
        let target = if self.buf.doc.seq() == h.before_ver { h.ver } else { h.before_ver };
        self.buf.doc.goto(target);
        let moved = self.buf.undo.swap(id, before.clone(), self.win.line, self.buf.doc.text().is_empty());
        // `u_undoredo` ends with `changed()` or `unchanged()` by the old flags, and keeps the current ones in the header.
        self.buf.modified = mem::replace(&mut self.buf.undo.headers[id].changed, self.buf.modified);
        debug_assert!(moved.text.to_string() == self.buf.doc.text().to_string(), "the entries do not make the text `Document` moved to");
        self.map_marks(&before);
        self.undoredo_marks(id, &moved, named, visual);
        // "Remember where we are for `g-`, `:earlier 10s` and `:earlier 1f`."
        let t = &mut self.buf.undo;
        let h = &t.headers[id];
        t.seq_cur = if undo { h.next.map_or(0, |n| t.headers[n].seq) } else { h.seq };
        if h.save_nr != 0 {
            t.save_nr_cur = if undo { h.save_nr - 1 } else { h.save_nr };
        }
        t.time_cur = h.time;
        (moved.old, moved.new)
    }

    /// `u_undo`: `count` steps back. An undo step still open is closed and is the one step done.
    pub(super) fn u_undo(&mut self, mut count: usize) {
        if !self.buf.undo.synced {
            self.u_sync(true);
            count = 1;
        }
        self.u_doit(count, true, false);
    }

    /// `u_redo`.
    pub(super) fn u_redo(&mut self, count: usize) {
        self.u_doit(count, false, false);
    }

    /// `u_doit`: undo or redo `startcount` times.
    pub(super) fn u_doit(&mut self, startcount: usize, undoes: bool, quiet: bool) {
        let ul = self.buf.opts.undolevels;
        self.buf.undo.levels = ul;
        self.u_newcount = 0;
        self.u_oldcount = if self.buf.undo.empty && self.buf.doc.text().is_empty() { -1 } else { 0 };
        for i in 0..startcount {
            let id = if undoes {
                let t = &mut self.buf.undo;
                match t.curhead {
                    None => t.curhead = t.newhead,
                    Some(c) if ul > 0 => t.curhead = t.headers[c].next,
                    Some(_) => {}
                }
                match t.curhead.filter(|_| t.numhead > 0) {
                    Some(id) => id,
                    None => {
                        // Stick `curhead` at the end.
                        t.curhead = t.oldhead;
                        self.beep_flush();
                        if i == 0 {
                            self.info("Already at oldest change");
                            return;
                        }
                        break;
                    }
                }
            } else {
                match self.buf.undo.curhead.filter(|_| ul > 0) {
                    Some(id) => id,
                    None => {
                        self.beep_flush();
                        if i == 0 {
                            self.info("Already at newest change");
                            return;
                        }
                        break;
                    }
                }
            };
            let (o, n) = self.u_undoredo(id, undoes);
            (self.u_oldcount, self.u_newcount) = (self.u_oldcount + o as i64, self.u_newcount + n as i64);
            if !undoes {
                // Advance for the next redo; `newhead` is set at the end of the redoable changes.
                let t = &mut self.buf.undo;
                if t.headers[id].prev.is_none() {
                    t.newhead = Some(id);
                }
                t.curhead = t.headers[id].prev;
            }
        }
        self.u_undo_end(undoes, false, quiet);
    }

    /// `u_undo_end`: "N fewer lines; before #3  2 seconds ago".
    fn u_undo_end(&mut self, mut did_undo: bool, absolute: bool, quiet: bool) {
        if quiet || self.scripts.global_busy {
            return;
        }
        let mut new = self.u_newcount;
        if self.buf.undo.empty && self.buf.doc.text().is_empty() {
            new -= 1;
        }
        let mut old = self.u_oldcount - new;
        let what = match old {
            -1 => "more line",
            ..-1 => "more lines",
            1 => "line less",
            2.. => "fewer lines",
            _ => {
                old = new;
                if new == 1 { "change" } else { "changes" }
            }
        };
        let t = &self.buf.undo;
        let uhp = match t.curhead {
            // For `:undo N` a "after #N" message is preferred.
            Some(c) if absolute && t.headers[c].next.is_some() => {
                did_undo = false;
                t.headers[c].next
            }
            Some(c) if did_undo => Some(c),
            Some(c) => t.headers[c].next,
            None => t.newhead,
        };
        let time = uhp.map_or(String::new(), |u| fmt_time(t.headers[u].time, now()));
        let seq = uhp.map_or(0, |u| t.headers[u].seq);
        self.info(format!("{} {what}; {} #{seq}  {time}", old.abs(), if did_undo { "before" } else { "after" }));
        // `smsg_keep`.
        self.keep_msg = Some((self.msgs.seq, false));
    }

    /// `undo_time`: go `step` changes (`sec`: seconds, `file`: writes of the file) back (negative) or forward, or (`absolute`) to
    /// change number `step`, through the tree of changes.
    pub(super) fn undo_time(&mut self, step: i64, sec: bool, file: bool, absolute: bool) {
        // First make sure the current undoable change is synced.
        if !self.buf.undo.synced {
            self.u_sync(true);
        }
        self.buf.undo.levels = self.buf.opts.undolevels;
        self.u_newcount = 0;
        self.u_oldcount = if self.buf.undo.empty && self.buf.doc.text().is_empty() { -1 } else { 0 };
        let (mut dosec, mut dofile, mut above, mut did_undo) = (sec, file, false, true);
        let (mut target, mut closest): (i64, i64);
        let t = &self.buf.undo;
        // "target" is the change below which we want to be; "closest" starts at a value we can't reach.
        if absolute {
            target = step;
            closest = -1;
        } else {
            if dosec {
                target = t.time_cur + step;
            } else if dofile {
                if step < 0 {
                    // Back to a previous write: the changes since the last one count as a write.
                    let uhp = match t.curhead {
                        Some(c) => t.headers[c].next,
                        None => t.newhead,
                    };
                    target = t.save_nr_cur as i64 + step + i64::from(!uhp.is_some_and(|u| t.headers[u].save_nr != 0));
                    if target <= 0 {
                        // Before the first write: before the oldest change, by its number.
                        dofile = false;
                    }
                } else {
                    target = t.save_nr_cur as i64 + step;
                    if target > t.save_nr_last as i64 {
                        // After the last write: after the latest change.
                        target = t.seq_last as i64 + 1;
                        dofile = false;
                    }
                }
            } else {
                target = t.seq_cur as i64 + step;
            }
            if step < 0 {
                target = target.max(0);
                closest = -1;
            } else {
                closest = if dosec { now() + 1 } else if dofile { t.save_nr_last as i64 + 2 } else { t.seq_last as i64 + 2 };
                if target >= closest {
                    target = closest - 1;
                }
            }
        }
        let closest_start = closest;
        let mut closest_seq = t.seq_cur as i64;
        let (mut mark, mut nomark) = (0, 0);
        let mut found = false;
        if target != 0 {
            // May do this twice: 1. search for "target", update "closest"; 2. if not found, search for "closest" (by number).
            for round in 1..=2 {
                let t = &mut self.buf.undo;
                t.lastmark += 1;
                mark = t.lastmark;
                t.lastmark += 1;
                nomark = t.lastmark;
                let mut uhp = if t.curhead.is_none() { t.newhead } else { t.curhead };
                while let Some(id) = uhp {
                    t.headers[id].walk = mark;
                    let h = &t.headers[id];
                    let val = if dosec { h.time } else if dofile { h.save_nr as i64 } else { h.seq as i64 };
                    let hseq = h.seq as i64;
                    if round == 1 && !(dofile && val == 0) {
                        // Remember the header that is closest to the target, at least in the right direction.
                        let right = if step < 0 { hseq <= t.seq_cur as i64 } else { hseq > t.seq_cur as i64 };
                        let better = if dosec && val == closest {
                            if step < 0 { hseq < closest_seq } else { hseq > closest_seq }
                        } else {
                            closest == closest_start
                                || if val > target {
                                    if closest > target { val - target <= closest - target } else { val - target <= target - closest }
                                } else if closest > target {
                                    target - val <= closest - target
                                } else {
                                    target - val <= target - closest
                                }
                        };
                        if right && better {
                            closest = val;
                            closest_seq = hseq;
                        }
                    }
                    // Quit searching when we found a match; for a time we go on looking for the best number.
                    if target == val && !dosec {
                        target = hseq;
                        found = true;
                        break;
                    }
                    let fresh = |x: usize| t.headers[x].walk != nomark && t.headers[x].walk != mark;
                    let (prev, alt_next, alt_prev, next) = (h.prev, h.alt_next, h.alt_prev, h.next);
                    if let Some(p) = prev.filter(|&p| fresh(p)) {
                        uhp = Some(p);
                    } else if let Some(a) = alt_next.filter(|&a| fresh(a)) {
                        uhp = Some(a);
                    } else if let Some(n) = next.filter(|&n| alt_prev.is_none() && fresh(n)) {
                        // Go up, but if still at the start we don't go through this change.
                        if Some(id) == t.curhead {
                            t.headers[id].walk = nomark;
                        }
                        uhp = Some(n);
                    } else {
                        // Backtrack; this one is useless.
                        t.headers[id].walk = nomark;
                        uhp = if alt_prev.is_some() { alt_prev } else { next };
                    }
                }
                if found {
                    break;
                }
                if absolute {
                    self.error(format!("E830: Undo number {step} not found"));
                    return;
                }
                if closest == closest_start {
                    self.info(if step < 0 { "Already at oldest change" } else { "Already at newest change" });
                    return;
                }
                target = closest_seq;
                dosec = false;
                dofile = false;
                if step < 0 {
                    above = true;
                }
            }
        }
        // If we found it: follow the path to go to where we want to be.
        if found || target == 0 {
            // First go up the tree as much as needed.
            loop {
                let t = &self.buf.undo;
                let uhp = match t.curhead {
                    None => t.newhead,
                    Some(c) => t.headers[c].next,
                };
                let Some(id) = uhp else { break };
                if (target > 0 && t.headers[id].walk != mark) || (t.headers[id].seq as i64 == target && !above) {
                    break;
                }
                self.buf.undo.curhead = Some(id);
                let (o, n) = self.u_undoredo(id, true);
                (self.u_oldcount, self.u_newcount) = (self.u_oldcount + o as i64, self.u_newcount + n as i64);
                if target > 0 {
                    self.buf.undo.headers[id].walk = nomark;
                }
            }
            // When back to the origin, redo is not needed. Otherwise go down the tree, branching off where needed.
            if target > 0 {
                loop {
                    let t = &mut self.buf.undo;
                    let Some(mut uhp) = t.curhead else { break };
                    // Go back to the first branch with a mark.
                    while let Some(ap) = t.headers[uhp].alt_prev.filter(|&a| t.headers[a].walk == mark) {
                        uhp = ap;
                    }
                    // Find the last branch with a mark, that's the one.
                    let mut last = uhp;
                    while let Some(an) = t.headers[last].alt_next.filter(|&a| t.headers[a].walk == mark) {
                        last = an;
                    }
                    if last != uhp {
                        // Make the used branch the first entry in the list of alternatives to make `u` and CTRL-R take this branch.
                        while let Some(ap) = t.headers[uhp].alt_prev {
                            uhp = ap;
                        }
                        if let Some(an) = t.headers[last].alt_next {
                            t.headers[an].alt_prev = t.headers[last].alt_prev;
                        }
                        let lap = t.headers[last].alt_prev.expect("last is not the first of its branches");
                        t.headers[lap].alt_next = t.headers[last].alt_next;
                        t.headers[last].alt_prev = None;
                        t.headers[last].alt_next = Some(uhp);
                        t.headers[uhp].alt_prev = Some(last);
                        if t.oldhead == Some(uhp) {
                            t.oldhead = Some(last);
                        }
                        uhp = last;
                        if let Some(n) = t.headers[uhp].next {
                            t.headers[n].prev = Some(uhp);
                        }
                    }
                    t.curhead = Some(uhp);
                    if t.headers[uhp].walk != mark {
                        break; // must have reached the target
                    }
                    // Stop when going backwards in time and didn't find the exact header we were looking for.
                    if t.headers[uhp].seq as i64 == target && above {
                        t.seq_cur = (target - 1) as usize;
                        break;
                    }
                    let (o, n) = self.u_undoredo(uhp, false);
                    (self.u_oldcount, self.u_newcount) = (self.u_oldcount + o as i64, self.u_newcount + n as i64);
                    // Advance `curhead` to below the header we last used; at the leaf `newhead` is this one.
                    let t = &mut self.buf.undo;
                    if t.headers[uhp].prev.is_none() {
                        t.newhead = Some(uhp);
                    }
                    t.curhead = t.headers[uhp].prev;
                    did_undo = false;
                    if t.headers[uhp].seq as i64 == target {
                        break; // found it!
                    }
                    match t.headers[uhp].prev {
                        Some(p) if t.headers[p].walk == mark => {}
                        _ => break, // "Need to redo more but can't find it": `internal_error("undo_time()")`.
                    }
                }
            }
        }
        self.u_undo_end(did_undo, absolute, false);
    }

    /// `ex_undolist`.
    pub(super) fn ex_undolist(&mut self) {
        let mut lines = self.buf.undo.undolist(now());
        if lines.is_empty() {
            return self.info("Nothing to undo");
        }
        lines.sort();
        self.info(format!("number changes  when               saved\n{}", lines.join("\n")));
    }

    /// `ex_undojoin`: the next change goes into the last undo step.
    pub(super) fn ex_undojoin(&mut self) {
        let t = &self.buf.undo;
        if t.newhead.is_none() {
            return; // nothing changed before
        }
        if t.curhead.is_some() {
            return self.error("E790: undojoin is not allowed after undo");
        }
        if !t.synced || self.buf.opts.undolevels < 0 {
            return; // already unsynced, or no entries
        }
        self.buf.undo.synced = false;
        self.buf.doc.reopen_group();
    }

    /// `u_undo_and_forget`: undo and remove the branch from the tree. Returns false when nothing was undone.
    pub(super) fn u_undo_and_forget(&mut self, mut count: usize) -> bool {
        if !self.buf.undo.synced {
            self.u_sync(true);
            count = 1;
        }
        self.u_doit(count, true, true);
        let t = &mut self.buf.undo;
        let Some(to_forget) = t.curhead else { return false };
        // Delete the current redo header; the redo header becomes the next alternative branch (if any).
        t.newhead = t.headers[to_forget].next;
        t.curhead = t.headers[to_forget].alt_next;
        if let Some(ch) = t.curhead {
            t.headers[to_forget].alt_next = None;
            t.headers[ch].alt_prev = t.headers[to_forget].alt_prev;
            t.seq_cur = t.headers[ch].next.map_or(0, |n| t.headers[n].seq);
        } else if let Some(nh) = t.newhead {
            t.seq_cur = t.headers[nh].seq;
        }
        if let Some(ap) = t.headers[to_forget].alt_prev {
            t.headers[ap].alt_next = t.curhead;
        }
        if let Some(nh) = t.newhead {
            t.headers[nh].prev = t.curhead;
        }
        if t.seq_last == t.headers[to_forget].seq {
            t.seq_last -= 1;
        }
        t.freebranch(to_forget, &mut None);
        true
    }
}

/// A match `:s` replaces: the line it starts on (0-based), the lines after it that it takes, the line breaks in its replacement.
#[derive(Clone, Debug)]
pub(super) struct SubItem {
    pub line: usize,
    pub takes: usize,
    pub crs: usize,
    /// The text of the buffer line when this match is handled, if an earlier match that took lines already put the text so far
    /// into it (`ml_replace` before the next match): that line is saved then, not the original one.
    pub half: Option<String>,
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg_attr(miri, ignore = "safe editor logic; the unsafe of rim is reached by the reader_*, rc and env tests")]
    #[test]
    fn one_header_per_sync_and_one_entry_per_line() {
        let mut u = UndoTree::new(false);
        // Three changes of the same line: one entry (the line is not saved again).
        assert!(u.save((2, 4, 0), 10, (1, 0), None, 0));
        assert!(!u.save((2, 4, 0), 10, (1, 0), None, 0));
        assert!(!u.save((2, 4, 0), 10, (1, 0), None, 0));
        assert_eq!(u.headers.len(), 2);
        assert_eq!(u.headers[1].entries.len(), 1);
        // Another line: a second entry; the first one's `bot` is computed then.
        assert!(!u.save((4, 6, 0), 10, (3, 0), None, 0));
        assert_eq!(u.headers[1].entries.len(), 2);
        assert_eq!(u.headers[1].entries[0].bot, 4);
        assert!(u.sync(false, 10));
        assert!(!u.sync(false, 10), "already synced");
        assert!(u.save((1, 3, 0), 10, (0, 0), None, 0));
        assert_eq!(u.headers.len(), 3);
    }

    #[cfg_attr(miri, ignore = "safe editor logic; the unsafe of rim is reached by the reader_*, rc and env tests")]
    #[test]
    fn a_line_saved_before_moves_to_the_end_of_the_list() {
        let mut u = UndoTree::new(false);
        u.save((0, 2, 0), 5, (0, 0), None, 0);
        u.save((2, 4, 0), 5, (0, 0), None, 0);
        u.save((4, 6, 0), 5, (0, 0), None, 0);
        // Line 1 again: the entry for it becomes the newest.
        assert!(!u.save((0, 2, 0), 5, (0, 0), None, 0));
        let tops: Vec<usize> = u.headers[1].entries.iter().map(|e| e.top).collect();
        assert_eq!(tops, [2, 4, 0]);
    }

    #[cfg_attr(miri, ignore = "safe editor logic; the unsafe of rim is reached by the reader_*, rc and env tests")]
    #[test]
    fn inserted_lines_end_the_reuse_and_count() {
        let mut u = UndoTree::new(false);
        // A line is replaced by three (the change adds two lines), then undone and redone.
        u.save((1, 3, 0), 4, (1, 0), None, 0);
        assert!(u.sync(true, 6));
        assert_eq!(u.headers[1].entries[0].bot, 5);
        let m = u.swap(1, Text::from("a\nb\nc\nd\ne\nf"), 0, false);
        assert_eq!((m.old, m.new), (3, 1));
        let m = u.swap(1, Text::from("a\nb\nc\nd"), 0, false);
        assert_eq!((m.old, m.new), (1, 3));
        // Lines added at the end of the buffer: `bot` stays 0.
        let mut u = UndoTree::new(false);
        u.save((3, 4, 0), 3, (0, 0), None, 0);
        assert_eq!(u.headers[1].entries[0].bot, 0);
        assert!(u.sync(true, 4));
        let m = u.swap(1, Text::from("a\nb\nc\nd"), 0, false);
        assert_eq!((m.old, m.new), (1, 0));
    }

    #[cfg_attr(miri, ignore = "safe editor logic; the unsafe of rim is reached by the reader_*, rc and env tests")]
    #[test]
    fn times_are_ages_then_clock_times() {
        assert_eq!(fmt_time(1000, 1000), "0 seconds ago");
        assert_eq!(fmt_time(1000, 1001), "1 second ago");
        assert_eq!(fmt_time(1000, 1099), "99 seconds ago");
    }

    #[test]
    #[cfg_attr(miri, ignore = "strftime and localtime_r are C library calls Miri does not run")]
    fn clock_times_have_the_shape_of_strftime() {
        let t = fmt_time(1_000_000_000, 1_000_000_100);
        assert_eq!((t.len(), t.matches(':').count()), (8, 2), "{t}");
        let t = fmt_time(1_000_000_000, 1_000_000_000 + 13 * 3600);
        assert_eq!((t.len(), t.matches('/').count()), (19, 2), "{t}");
    }

    /// `u_savesub` after a match that took lines saves the line as the buffer holds it then: the text so far.
    #[cfg_attr(miri, ignore = "safe editor logic; the unsafe of rim is reached by the reader_*, rc and env tests")]
    #[test]
    fn a_join_saves_the_half_changed_line() {
        use super::super::tests::ed;
        let mut e = ed("a\nb\nc\nd\ne\nf\ng\nh\ni\nj\nk\nl\nm\nn");
        e.command("%s/\\n/-/g");
        let h = &e.buf.undo.headers[e.buf.undo.newhead.unwrap()];
        let lines: Vec<String> = h.entries.iter().filter(|en| en.size == 1 && en.top == 0).filter_map(|en| en.src.as_ref().map(|(t, f)| t.line(*f).to_string())).collect();
        // The first save is the original line, the next ones the line as the buffer holds it after each join.
        assert_eq!(&lines[..3], ["a", "a-b", "a-b-c"]);
        assert_eq!(lines.last().map(String::as_str), Some("a-b-c-d-e-f-g-h-i-j-k-l-m-n"));
    }
}
