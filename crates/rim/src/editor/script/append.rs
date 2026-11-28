//! `:append`, `:insert` and `:change` (`ex_append` and `ex_change` of Neovim's `ex_cmds.c`): the lines that follow
//! the command, up to a line with only a `.`, go into the buffer.

use super::docmd::ReaderBase;
use crate::editor::Editor;

impl Editor {
    /// `ex_change`: the lines of the range go, then `:insert` takes their place.
    pub(super) fn ex_change(&mut self, line1: usize, line2: usize, forceit: bool, arg: &str, next: &mut Option<String>) {
        // `append_indent` of the first line comes from the first line of the range, before it goes (autoindent is on, `!` switches it off).
        // The lines that go are saved first (`u_save` fails when they are past the end: nothing is done then).
        if line2 >= line1 && line2 <= self.line_count() {
            self.u_save(line1 - 1, line2 + 1);
        }
        let first_indent = (!forceit && line1 >= 1 && line1 <= self.line_count()).then(|| self.indent_cols(line1));
        if !self.buffer_is_empty() {
            // `ml_delete` until the range is gone or the buffer is empty.
            let last = line2.min(self.line_count());
            if line1 >= 1 && line1 <= last {
                self.delete_lines(line1 - 1, last - 1);
            }
        }
        self.ex_append("change", line1, forceit, arg, next, first_indent);
    }

    /// `ML_EMPTY`: a buffer with no text.
    // shortcut: rim does not tell a buffer without lines from one with a single empty line, both count as empty; when the buffer gets a flag for it
    fn buffer_is_empty(&self) -> bool {
        self.line_count() == 1 && self.buf.doc.text().is_empty()
    }

    /// The indent of 1-based line `lnum` in columns (`get_indent_lnum`).
    fn indent_cols(&self, lnum: usize) -> usize {
        let line = self.buf.doc.text().line(lnum - 1);
        let blanks = line.len() - line.trim_start_matches([' ', '\t']).len();
        self.buf.opts.indent_width(&line[..blanks])
    }

    /// `ex_append`: `long` is `append` (after `line2`), `insert` or `change` (before it). A text after `|` is the first
    /// line. The next lines come from the file or function being read; without one (`execute()`, a command line that
    /// holds newlines) from what follows the command in `next`; typed at the prompt, they are typed next.
    pub(super) fn ex_append(&mut self, long: &str, line2: usize, forceit: bool, arg: &str, next: &mut Option<String>, change_indent: Option<usize>) {
        let mut arg = arg;
        let mut st = self.append_begin(long, line2, forceit, change_indent);
        let reading = self.scripts.readers.last().is_some_and(|r| !matches!(r.base, ReaderBase::None));
        let typed = self.scripts.typed && next.is_none() && !reading;
        loop {
            self.append_next_indent(&mut st);
            let theline = if let Some(rest) = arg.strip_prefix('|') {
                // The text after the trailing bar.
                let t = rest.to_string();
                arg = "";
                t
            } else if typed {
                // `getexline`: the lines are typed next, with the indent in front.
                self.scripts.pending_append = Some(st);
                return;
            } else if !reading {
                // No getline function: the lines that follow, until there are no more.
                let Some(n) = next.take() else { break };
                match n.split_once('\n') {
                    Some((l, rest)) => {
                        *next = Some(rest.to_string());
                        l.to_string()
                    }
                    None => n,
                }
            } else {
                match self.ea_getline(true) {
                    Some(l) => l,
                    None => break,
                }
            };
            if self.append_feed(&mut st, &theline) {
                break;
            }
        }
        self.append_finish(&st);
    }

    fn append_begin(&mut self, long: &str, line2: usize, forceit: bool, change_indent: Option<usize>) -> AppendState {
        // Autoindent is on in Neovim, the `!` flag toggles it.
        let ai = !forceit;
        let mut lnum = line2;
        if long != "append" {
            lnum = lnum.saturating_sub(1);
        }
        let empty = self.buffer_is_empty();
        // When the buffer is empty the dummy line is deleted.
        if empty && lnum == 1 {
            lnum = 0;
        }
        // The first indent comes from the line the command starts on (for `:change`, from the first line that went).
        let append_indent = if long == "change" { change_indent } else { (ai && line2 > 0).then(|| self.indent_cols(line2.min(self.line_count()))) };
        AppendState {
            long: long.to_string(),
            line2,
            lnum,
            empty,
            ai,
            append_indent,
            indent: 0,
            // The column the cursor wants is not touched by the lines going in.
            want_col: self.win.want_col,
            did_undo: false,
        }
    }

    /// The indent of the line to read next (`indent` of the loop of `ex_append`).
    pub(in crate::editor) fn append_next_indent(&mut self, st: &mut AppendState) {
        st.indent = 0;
        if st.ai {
            if let Some(i) = st.append_indent.take() {
                st.indent = i;
            } else if st.lnum > 0 {
                st.indent = self.indent_cols(st.lnum.min(self.line_count()));
            }
        }
    }

    /// One line of the text: true when it is the `.` that ends it.
    fn append_feed(&mut self, st: &mut AppendState, theline: &str) -> bool {
        // Look for the "." after the autoindent.
        let (mut vcol, mut skipped) = (0, 0);
        for c in theline.chars() {
            if st.indent <= vcol {
                break;
            }
            match c {
                ' ' => vcol += 1,
                '\t' => vcol += 8 - vcol % 8,
                _ => break,
            }
            skipped += 1;
        }
        if theline.chars().skip(skipped).eq(".".chars()) {
            return true;
        }
        // Don't use autoindent if nothing was typed after it.
        let theline = if theline.chars().nth(skipped).is_none() { "" } else { theline };
        if !st.did_undo {
            self.u_save(st.lnum, st.lnum + 1 + usize::from(st.empty));
            st.did_undo = true;
        }
        self.insert_lines(st.lnum, theline);
        st.lnum += 1;
        if st.empty {
            // The dummy line of the empty buffer is now the last one.
            let n = self.line_count();
            self.delete_lines(n - 1, n - 1);
            st.empty = false;
        }
        false
    }

    /// The marks and the cursor, once the text is in.
    fn append_finish(&mut self, st: &AppendState) {
        let (line2, lnum) = (st.line2, st.lnum);
        // `'[` and `']`: the first and the last line of the text added (column 0).
        let count = self.line_count();
        let mut start = if line2 < count { line2 + 1 } else { count };
        if st.long != "append" {
            start = start.saturating_sub(1);
        }
        let end = if line2 < lnum { lnum } else { start };
        for (mark, l) in [('[', start), (']', end)] {
            let l = l.clamp(1, count) - 1;
            let off = self.buf.doc.text().line_to_offset(l);
            self.put_off(mark, off);
        }
        // `appended_lines_mark` for the last line: `'.` is its start.
        if line2 < lnum {
            let off = self.mark_off(end.clamp(1, count) - 1, 0);
            self.set_dot(off);
        }
        // `beginline(BL_SOL | BL_FIX)` with 'nostartofline': the column stays where the cursor wanted it.
        let l = lnum.clamp(1, count) - 1;
        self.win.line = l;
        self.win.want_col = st.want_col;
        self.win.col = self.col_wanted(l);
        self.clamp_normal();
    }

    /// The prompt of a typed `:append` starts with the indent (`init_ccline`).
    pub(in crate::editor) fn append_prompt(&self) -> String {
        " ".repeat(self.scripts.pending_append.as_ref().map_or(0, |a| a.indent))
    }

    /// One line typed for `:append`; `abort` (Esc, Ctrl-C) ends the text (`getexline` gives NULL).
    pub(in crate::editor) fn append_typed_line(&mut self, line: &str, abort: bool) {
        let Some(mut st) = self.scripts.pending_append.take() else { return };
        if abort || self.append_feed(&mut st, line) {
            self.append_finish(&st);
            return;
        }
        self.append_next_indent(&mut st);
        self.scripts.pending_append = Some(st);
    }
}

/// The state of an `:append` between its lines: what `ex_append` keeps in locals.
pub(in crate::editor) struct AppendState {
    long: String,
    line2: usize,
    lnum: usize,
    empty: bool,
    ai: bool,
    append_indent: Option<usize>,
    indent: usize,
    want_col: usize,
    /// `did_undo`: the lines were saved for undo.
    did_undo: bool,
}
