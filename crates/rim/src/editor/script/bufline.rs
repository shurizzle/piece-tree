//! The builtins that read and write the lines of a buffer: ports of `eval/buffer.c` (`set_buffer_lines`,
//! `get_buffer_lines`, `change_other_buffer_prepare`).

use super::{
    Value,
    funcs::{int, tv_get_lnum},
};
use crate::editor::Editor;

/// `tv_get_lnum_buf`: `$` is the last line of `buf`, anything else a Number.
fn tv_get_lnum_buf(e: &mut Editor, v: &Value, buf: Option<usize>) -> i64 {
    if let (Value::Str(s), Some(b)) = (v, buf)
        && &**s == "$"
    {
        return e.buffer(b).map_or(0, |b| b.doc.text().line_count() as i64);
    }
    i64::from(e.nr_chk(v).unwrap_or(-1) as i32)
}

/// The mark that stands for the place a buffer without a window remembers (`with_buffer`).
const REMEMBER: char = '\u{1}';

impl Editor {
    /// `one_adjust_nodel` of the remembered place for lines `first..=last` (0-based) that go (`delta` is none: a deleted range, the
    /// place goes to the line before it) or for lines added before `first` (`delta` lines).
    fn adjust_remember(&mut self, first: usize, last: usize, delta: Option<isize>, after: isize) {
        let Some(m) = self.buf.marks.get_mut(&REMEMBER) else { return };
        if m.line >= first && m.line <= last {
            m.line = match delta {
                None => {
                    // The place of a line that is gone is the one before it, at the start of the line.
                    m.col = 0;
                    first.saturating_sub(1)
                }
                Some(d) => m.line.saturating_add_signed(d),
            };
        } else if after != 0 && m.line > last {
            m.line = m.line.saturating_add_signed(after);
        }
    }

    /// `change_other_buffer_prepare` / `_restore` around `f`: the buffer is the current one while it runs (in a window that
    /// shows it, else swapped in), so marks, the undo header and the cursor of that buffer follow the change.
    pub(super) fn with_buffer<R>(&mut self, id: usize, f: impl FnOnce(&mut Self) -> R) -> R {
        if id == self.buf.id {
            return f(self);
        }
        if let Some(w) = self.windows.iter().find(|w| w.buf == id).map(|w| w.id) {
            return self.with_window(w, f);
        }
        let j = self.buffers.iter().position(|b| b.id == id).expect("a known buffer");
        std::mem::swap(&mut self.buf, &mut self.buffers[j]);
        let saved = (self.win.line, self.win.col, self.win.top);
        // The window `aucmd_prepbuf` makes starts at the first line (the undo header keeps that cursor); the place the buffer
        // remembers for a window follows the edits as a mark does and is read back from it.
        let (l0, c0) = self.pos_of(self.buf.doc.text().floor_char_boundary(self.buf.last));
        // A buffer no window has been in remembers no place (line 0): it stays so.
        let remembered = self.buf.wininfo.first().is_some_and(|w| w.lnum > 0);
        if remembered {
            self.put_mark(REMEMBER, l0, c0);
        }
        (self.win.line, self.win.col) = (0, 0);
        let r = f(self);
        let m = self.buf.marks.remove(&REMEMBER);
        if !remembered {
            std::mem::swap(&mut self.buf, &mut self.buffers[j]);
            (self.win.line, self.win.col, self.win.top) = saved;
            return r;
        }
        let line = m.map_or(self.line_count() - 1, |m| m.line).min(self.line_count() - 1);
        // `check_cursor_col`: a column past the end of the line goes to its last char.
        let col = m.map_or(0, |m| self.buf.doc.text().line(line).len().min(m.col));
        let (col, n) = (self.pos_of(self.buf.doc.text().line_to_offset(line) + col).1, self.line_chars(line));
        self.buf.last = self.offset_of((line, col.min(n.saturating_sub(1))));
        std::mem::swap(&mut self.buf, &mut self.buffers[j]);
        (self.win.line, self.win.col, self.win.top) = saved;
        r
    }

    /// `set_buffer_lines`: sets (or appends after) line `lnum` of `buf` to `lines`; 0 is OK, 1 is FAIL.
    pub(super) fn set_buffer_lines(&mut self, buf: usize, lnum_arg: i64, append: bool, lines: &Value) -> i64 {
        let lnum = lnum_arg + i64::from(append);
        let Some(b) = self.buffer(buf) else { return 1 };
        if (buf != self.buf.id && b.unloaded) || lnum < 1 {
            return 1;
        }
        let items: Vec<Value> = match lines {
            Value::List(l) => {
                let v = l.borrow().iter().cloned().collect::<Vec<_>>();
                if v.is_empty() {
                    // Nothing to append always succeeds.
                    return 0;
                }
                v
            }
            v => vec![v.clone()],
        };
        let one = !matches!(lines, Value::List(_));
        // `typval_tostring(tv, false)`: a String as it is, anything else as `string()` shows it.
        let strings: Vec<String> = items
            .iter()
            .map(|v| match v {
                Value::Str(s) => s.to_string(),
                v => v.encode(super::value::Enc::String).0,
            })
            // A line break in a String is stored as the NUL of the buffer (`ml_replace` takes NL for NUL).
            .map(|s| s.replace('\n', "\0"))
            .collect();
        self.with_buffer(buf, |e| {
            let append_lnum = if append { lnum as usize - 1 } else { e.line_count() };
            let (mut lnum, mut ret, mut added) = (lnum, 1, 0usize);
            let (tick0, mut replaced) = (e.buf.changedtick, 0u64);
            for line in &strings {
                ret = 1;
                if lnum > e.line_count() as i64 + 1 {
                    break;
                }
                let idx = lnum as usize - 1;
                if !append && lnum <= e.line_count() as i64 {
                    // An existing line is replaced.
                    if e.u_savecommon(idx, idx + 2, idx + 2) {
                        let start = e.buf.doc.text().line_to_offset(idx);
                        let end = e.line_end_offset(idx);
                        e.edit_replace(start..end, line);
                        // `changed_bytes(lnum, 0)`.
                        e.set_dot(start);
                        replaced += 1;
                        if e.win.line == idx {
                            e.clamp_normal();
                        }
                        ret = 0;
                    }
                } else if added > 0 || e.u_save(idx, idx + 1) {
                    added += 1;
                    if idx >= e.line_count() {
                        let end = e.buf.doc.text().len();
                        e.edit_insert(end, &format!("\n{line}"));
                    } else {
                        let start = e.buf.doc.text().line_to_offset(idx);
                        e.edit_insert(start, &format!("{line}\n"));
                    }
                    ret = 0;
                }
                if one {
                    break;
                }
                lnum += 1;
            }
            // `inserted_bytes` counts once per replaced line, `appended_lines_mark` once for all the appended ones.
            e.buf.changedtick = tick0 + replaced + u64::from(added > 0);
            if added > 0 {
                // `appended_lines_mark` moved the marks; a cursor below the new lines goes with the text.
                let first = lnum_arg.max(0) as usize + usize::from(!append);
                let at = if append { lnum_arg as usize } else { first.saturating_sub(1) };
                // `appended_lines_mark` -> `changed_lines(append_lnum + 1, 0, ..)`.
                let off = e.buf.doc.text().line_to_offset(append_lnum.min(e.line_count() - 1));
                e.set_dot(off);
                if e.win.line >= at && append {
                    e.win.line += added;
                }
                // `mark_adjust` also moves the cursor lines the buffer remembers for the windows that left it.
                if append {
                    e.adjust_remember(append_lnum, usize::MAX, Some(added as isize), 0);
                }
                for w in &mut e.buf.wininfo {
                    if append && w.lnum > append_lnum {
                        w.lnum += added;
                    }
                }
                e.clamp_normal();
            }
            ret
        })
    }

    /// `get_buffer_lines`: lines `start..=end` of `buf` as a List, or line `start` as a String.
    fn get_buffer_lines(&self, buf: Option<usize>, start: i64, end: i64, retlist: bool) -> Value {
        let empty = || if retlist { Value::list(Vec::new()) } else { Value::Str(String::new().into()) };
        let Some(b) = buf.and_then(|b| self.buffer(b)).filter(|b| !b.unloaded) else { return empty() };
        if start < 0 || end < start {
            return empty();
        }
        let text = b.doc.text();
        let count = text.line_count() as i64;
        // A NUL of the buffer is a line break to a script.
        let line = |n: i64| text.line(n as usize - 1).replace('\0', "\n");
        if retlist {
            let (s, en) = (start.max(1), end.min(count));
            return Value::list((s..=en).map(|n| Value::Str(line(n).into())).collect());
        }
        if (1..=count).contains(&start) { Value::Str(line(start).into()) } else { empty() }
    }
}

pub(super) fn f_setline(e: &mut Editor, a: &[Value]) -> Value {
    let before = e.scripts.emsg_count;
    let lnum = tv_get_lnum(e, &a[0]);
    if e.scripts.emsg_count != before {
        return int(0);
    }
    let id = e.buf.id;
    int(e.set_buffer_lines(id, lnum, false, &a[1]))
}

pub(super) fn f_append(e: &mut Editor, a: &[Value]) -> Value {
    let before = e.scripts.emsg_count;
    let lnum = tv_get_lnum(e, &a[0]);
    if e.scripts.emsg_count != before {
        return int(0);
    }
    let id = e.buf.id;
    int(e.set_buffer_lines(id, lnum, true, &a[1]))
}

/// `buf_set_append_line`.
fn buf_set_append_line(e: &mut Editor, a: &[Value], append: bool) -> Value {
    let before = e.scripts.emsg_count;
    let Some(buf) = e.tv_get_buf(&a[0]) else { return int(1) };
    let lnum = tv_get_lnum_buf(e, &a[1], Some(buf));
    if e.scripts.emsg_count != before {
        return int(0);
    }
    int(e.set_buffer_lines(buf, lnum, append, &a[2]))
}

pub(super) fn f_setbufline(e: &mut Editor, a: &[Value]) -> Value {
    buf_set_append_line(e, a, false)
}

pub(super) fn f_appendbufline(e: &mut Editor, a: &[Value]) -> Value {
    buf_set_append_line(e, a, true)
}

/// `tv_get_buf_from_arg`: the type is checked (an error is given), the buffer is looked up without messages.
fn buf_from_arg(e: &mut Editor, v: &Value) -> Option<usize> {
    if !super::funcs::check_str_or_nr(e, v) {
        return None;
    }
    e.tv_get_buf(v)
}

fn getbufline(e: &mut Editor, a: &[Value], retlist: bool) -> Value {
    let before = e.scripts.emsg_count;
    let buf = buf_from_arg(e, &a[0]);
    let lnum = tv_get_lnum_buf(e, &a[1], buf);
    if e.scripts.emsg_count != before {
        return int(0);
    }
    let end = match a.get(2) {
        None => lnum,
        Some(v) => tv_get_lnum_buf(e, v, buf),
    };
    e.get_buffer_lines(buf, lnum, end, retlist)
}

pub(super) fn f_getbufline(e: &mut Editor, a: &[Value]) -> Value {
    getbufline(e, a, true)
}

pub(super) fn f_getbufoneline(e: &mut Editor, a: &[Value]) -> Value {
    getbufline(e, a, false)
}

/// `deletebufline(buf, first [, last])`: 0 when the lines are gone.
pub(super) fn f_deletebufline(e: &mut Editor, a: &[Value]) -> Value {
    let before = e.scripts.emsg_count;
    let Some(buf) = e.tv_get_buf(&a[0]) else { return int(1) };
    let first = tv_get_lnum_buf(e, &a[1], Some(buf));
    if e.scripts.emsg_count != before {
        return int(1);
    }
    let last = match a.get(2) {
        None => first,
        Some(v) => tv_get_lnum_buf(e, v, Some(buf)),
    };
    let Some(b) = e.buffer(buf) else { return int(1) };
    let count = b.doc.text().line_count() as i64;
    if (buf != e.buf.id && b.unloaded) || first < 1 || first > count || last < first {
        return int(1);
    }
    let last = last.min(count);
    e.with_buffer(buf, |e| {
        let (f, l) = (first as usize - 1, last as usize - 1);
        // `u_save(first - 1, last + 1)`.
        if !e.u_save(f, l + 2) {
            return int(1);
        }
        let all = l + 1 >= e.line_count();
        let start = e.buf.doc.text().line_to_offset(f);
        let end = if all {
            e.buf.doc.text().len()
        } else {
            e.buf.doc.text().line_to_offset(l + 1)
        };
        // Deleting through the last line takes the line break before the first one with it.
        let start = if all && f > 0 { e.buf.doc.text().line_end(f - 1) } else { start };
        e.edit_delete(start..end);
        let n = l - f + 1;
        // `deleted_lines_mark`: `'.` on the first line gone; the remembered place moves as a mark that is not deleted.
        e.adjust_remember(f, l, None, -(n as isize));
        for w in &mut e.buf.wininfo {
            // `one_adjust_nodel` on the line a window left it at (1-based; 0 is not a place).
            if w.lnum > f && w.lnum <= l + 1 {
                w.lnum = f.max(1);
            } else if w.lnum > l + 1 {
                w.lnum -= n;
            }
        }
        if all && f == 0 {
            // `ml_delete` of the last line leaves the buffer `ML_EMPTY`: an undo counts the lines it brings back.
            e.buf.undo.empty = true;
        }
        // `changed_lines(first, 0, ..)`: the line `first` even when the lines that were below it are gone.
        e.put_mark('.', f, 0);
        e.add_change();
        e.dot_set = true;
        if e.win.line > l {
            e.win.line -= n;
        } else if e.win.line > f {
            e.win.line = f;
        }
        let lines = e.line_count();
        e.win.line = e.win.line.min(lines - 1);
        e.clamp_normal();
        int(0)
    })
}
