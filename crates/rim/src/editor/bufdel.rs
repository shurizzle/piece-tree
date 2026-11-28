//! `:bdelete`, `:bwipeout` and `:bunload`: `do_bufdel`, the unload branch of `do_buffer_ext`, `close_buffer` for a buffer no
//! window shows, `empty_curbuf`, `close_windows` (`buffer.c`, `window.c`), and the buffer numbers a range names
//! (`compute_buffer_local_count`, `ex_docmd.c`).

use super::{
    Editor,
    buffers::BufStart,
    script::{AddrType, strtoimax},
};

/// What `close_buffer` does to a buffer no window shows any more.
#[derive(Clone, Copy, PartialEq, Eq)]
pub(super) enum BufAction {
    /// `DOBUF_UNLOAD`: the text goes.
    Unload,
    /// `DOBUF_DEL`: unloaded and unlisted, as if it was new.
    Del,
    /// `DOBUF_WIPE`: gone from the list.
    Wipe,
}

/// `skiptowhite_esc`: the end of the word at the start of `s`; a backslash or Ctrl-V quotes the next char.
pub(super) fn skiptowhite_esc(s: &str) -> usize {
    let b = s.as_bytes();
    let mut p = 0;
    while p < b.len() && b[p] != b' ' && b[p] != b'\t' {
        if (b[p] == b'\\' || b[p] == 0x16) && p + 1 < b.len() {
            p += 1;
        }
        p += 1;
    }
    p
}

impl Editor {
    /// `mark_jumplist_forget_file(win, fnum)` for the current window.
    fn forget_jumps(&mut self, fnum: usize) {
        let w = &mut self.win;
        for i in (0..w.jumps.len()).rev() {
            if w.jumps[i].0 == fnum {
                if w.jump_idx > i {
                    w.jump_idx -= 1;
                }
                w.jumps.remove(i);
            }
        }
    }

    /// Numbers of the buffers in the list, in order.
    fn buffer_ids(&self) -> Vec<usize> {
        self.all_buffers().iter().map(|b| b.id).collect()
    }

    fn is_listed(&self, id: usize) -> bool {
        self.buffer(id).is_some_and(|b| b.listed)
    }

    fn is_unloaded(&self, id: usize) -> bool {
        self.buffer(id).is_some_and(|b| b.unloaded)
    }

    /// The first and the last number a `%` or `$` stands for: of every buffer, or of the loaded ones (0, 0 when none is).
    pub(super) fn buffer_bounds(&self, t: AddrType) -> (i64, i64) {
        let ids: Vec<usize> = self.buffer_ids().into_iter().filter(|&i| t != AddrType::LoadedBuffers || !self.is_unloaded(i)).collect();
        match (ids.first(), ids.last()) {
            (Some(&a), Some(&b)) => (a as i64, b as i64),
            _ => (0, 0),
        }
    }

    /// `compute_buffer_local_count`: the number of the buffer `offset` places after (or before) buffer `lnum` in the list.
    pub(super) fn buffer_local_count(&self, t: AddrType, lnum: i64, offset: i64) -> i64 {
        let ids = self.buffer_ids();
        let loaded = t == AddrType::LoadedBuffers;
        let mut at = 0;
        while at + 1 < ids.len() && (ids[at] as i64) < lnum {
            at += 1;
        }
        let step = |from: usize, forward: bool| -> Option<usize> { if forward { (from + 1 < ids.len()).then_some(from + 1) } else { from.checked_sub(1) } };
        let mut count = offset;
        while count != 0 {
            count += if count < 0 { 1 } else { -1 };
            let Some(mut n) = step(at, offset >= 0) else { break };
            at = n;
            if loaded {
                // Skip the buffers that are not loaded.
                while self.is_unloaded(ids[at]) {
                    let Some(m) = step(at, offset >= 0) else { break };
                    n = m;
                    at = n;
                }
            }
        }
        // The last buffer may not be loaded: go back.
        if loaded {
            while self.is_unloaded(ids[at]) {
                let Some(m) = step(at, offset < 0) else { break };
                at = m;
            }
        }
        ids[at] as i64
    }

    /// `close_windows(buf, keep_curwin)`: every window that shows `buf` goes, until one is left.
    pub(super) fn close_windows(&mut self, buf: usize, keep_curwin: bool) {
        loop {
            let ids = self.window_ids();
            if ids.len() <= 1 {
                break;
            }
            let shows = |e: &Editor, w: usize| if w == e.win.id { e.win.buf == buf } else { e.windows.iter().find(|x| x.id == w).is_some_and(|x| x.buf == buf) };
            let Some(&target) = ids.iter().rev().find(|&&w| shows(self, w) && (!keep_curwin || w != self.win.id)) else { break };
            if self.win_close(target, false).is_err() {
                break;
            }
        }
    }

    /// The end of `close_buffer(win, buf, action)` for a buffer no window shows: its text goes; with `Del` it is unlisted and
    /// forgets what it knew (windows, marks, variables), with `Wipe` it leaves the list. A buffer without a file is deleted.
    pub(super) fn close_buffer_action(&mut self, id: usize, action: BufAction) {
        let del = action != BufAction::Unload || self.buffer(id).is_some_and(|b| b.path.is_none() && b.title.is_none());
        let global = self.global_opts.clone();
        let Some(b) = self.buffers.iter_mut().find(|b| b.id == id) else { return };
        b.unload();
        if action == BufAction::Wipe {
            self.buffers.retain(|b| b.id != id);
            // `mark_forget_file` for every window.
            for w in self.windows.iter_mut().chain([&mut self.win]) {
                for i in (0..w.jumps.len()).rev() {
                    if w.jumps[i].0 == id {
                        if w.jump_idx > i {
                            w.jump_idx -= 1;
                        }
                        w.jumps.remove(i);
                    }
                }
            }
        } else if del {
            // `free_buffer_stuff(buf, kBffClearWinInfo | kBffInitChangedtick)`, `b_p_bl = false`.
            (b.listed, b.wininfo, b.marks, b.vars, b.changes, b.change_idx, b.last_visual, b.last, b.opts) = (false, Vec::new(), std::collections::HashMap::new(), Default::default(), Vec::new(), 0, None, 0, global);
            // `buf_clear_file` ends with `unchanged()`, which counts for `b:changedtick` even when the flag was off.
            b.changedtick += 1;
        }
    }

    /// `empty_curbuf`: the last listed buffer goes, so the current window gets a new empty one.
    fn empty_curbuf(&mut self, close_others: bool, forceit: bool, action: BufAction) -> bool {
        if action == BufAction::Unload {
            self.error("E90: Cannot unload last buffer");
            return false;
        }
        let buf = self.buf.id;
        if close_others {
            self.close_windows(buf, true);
        }
        let ok = self.enew(forceit, false, false).is_ok();
        // `do_ecmd` may have made another buffer: the old one goes now.
        if buf != self.buf.id && self.buffer(buf).is_some() && !self.shown_in_a_window(buf) {
            self.close_buffer_action(buf, action);
        }
        ok
    }

    /// `do_buffer_ext` for `DOBUF_UNLOAD`, `DOBUF_DEL` and `DOBUF_WIPE`: `start` is `Current` (the current buffer) or `First`
    /// with the number of the buffer in `count`. True when it was done.
    fn do_buffer_del(&mut self, action: BufAction, start: BufStart, count: i64, forceit: bool) -> bool {
        let ids = self.buffer_ids();
        let cur = self.buf.id;
        let buf = match start {
            BufStart::First if count != 0 => ids.iter().copied().find(|&i| i as i64 == count),
            BufStart::First => ids.first().copied(),
            _ => Some(cur),
        };
        // Not found: nothing to say when deleting.
        let Some(buf) = buf else { return false };
        // An unloaded and unlisted buffer is not unloaded or deleted again, silently.
        if action != BufAction::Wipe && self.is_unloaded(buf) && !self.is_listed(buf) {
            return false;
        }
        if !forceit && self.buffer(buf).is_some_and(super::buffers::Buffer::is_dirty) {
            self.error(format!("E89: No write since last change for buffer {buf} (add ! to override)"));
            return false;
        }
        // The last listed buffer cannot go: it is made empty.
        let other_listed = ids.iter().any(|&i| i != buf && self.is_listed(i));
        if !other_listed && buf == cur {
            return self.empty_curbuf(true, forceit, action);
        }
        // The window of the buffer goes, unless it is the only one.
        while buf == self.buf.id && self.window_ids().len() > 1 {
            if self.win_close(self.win.id, false).is_err() {
                break;
            }
        }
        let clean = self.buf.opts.jumpoptions.split(',').any(|o| o == "clean");
        if buf != self.buf.id {
            // 'jumpoptions' `clean`: the buffer goes from the jump list.
            if clean {
                self.forget_jumps(buf);
            }
            self.close_windows(buf, false);
            if buf != self.buf.id && !self.shown_in_a_window(buf) {
                self.close_buffer_action(buf, action);
            }
            return true;
        }
        // The current buffer goes: another one is entered. The one visited last (the jump list), else a loaded one after the
        // current buffer, then before it, else an unloaded one, then any listed one.
        let (mut newbuf, mut bp): (Option<usize>, Option<usize>) = (None, None);
        if !self.win.jumps.is_empty() {
            if clean {
                self.forget_jumps(cur);
            }
            let len = self.win.jumps.len() as isize;
            if len > 0 {
                let mut idx = self.win.jump_idx as isize;
                let mut jumpidx = idx - 1;
                if clean {
                    // The cursor position is not in the list yet: start from the last entry.
                    if jumpidx + 1 == len {
                        jumpidx = len - 1;
                        idx = len - 1;
                        self.win.jump_idx = idx as usize;
                    }
                } else if jumpidx < 0 {
                    jumpidx = len - 1;
                }
                if clean {
                    jumpidx = jumpidx.max(0).min(len - 1);
                }
                let forward = jumpidx;
                while clean || jumpidx != idx {
                    let jb = self.win.jumps[jumpidx as usize].0;
                    let mut cand = self.buffer(jb).map(|_| jb);
                    if let Some(c) = cand {
                        if c == cur || !self.is_listed(c) {
                            cand = None;
                        } else if self.is_unloaded(c) {
                            // Skip an unloaded buffer, but keep it for later.
                            bp = bp.or(Some(c));
                            cand = None;
                        }
                    }
                    if cand.is_some() {
                        newbuf = cand;
                        if clean {
                            self.win.jump_idx = jumpidx as usize;
                        }
                        break;
                    }
                    // Older entries.
                    if jumpidx == 0 && idx == len {
                        break;
                    }
                    jumpidx -= 1;
                    if jumpidx < 0 {
                        jumpidx = len - 1;
                    }
                    if jumpidx == forward {
                        break;
                    }
                }
            }
        }
        if newbuf.is_none() {
            let at = ids.iter().position(|&i| i == cur).expect("the current buffer is listed");
            let mut forward = true;
            let mut b = ids.get(at + 1).copied();
            loop {
                match b {
                    None => {
                        if !forward {
                            break;
                        }
                        b = at.checked_sub(1).map(|i| ids[i]);
                        forward = false;
                    }
                    Some(x) => {
                        if self.is_listed(x) {
                            if !self.is_unloaded(x) {
                                newbuf = Some(x);
                                break;
                            }
                            bp = bp.or(Some(x));
                        }
                        let i = ids.iter().position(|&i| i == x).expect("in the list");
                        b = if forward { ids.get(i + 1).copied() } else { i.checked_sub(1).map(|i| ids[i]) };
                    }
                }
            }
        }
        // No loaded buffer: an unloaded one, then any listed one, then a neighbour.
        let newbuf = newbuf.or(bp).or_else(|| ids.iter().copied().find(|&i| i != cur && self.is_listed(i))).or_else(|| {
            let at = ids.iter().position(|&i| i == cur)?;
            ids.get(at + 1).copied().or_else(|| at.checked_sub(1).map(|i| ids[i]))
        });
        let Some(newbuf) = newbuf else { return self.empty_curbuf(false, forceit, action) };
        // `set_curbuf(buf, action, true)`: the other windows with the buffer close, the buffer goes after the switch.
        self.set_jump();
        self.close_windows(cur, false);
        self.switch_buffer(newbuf);
        self.close_buffer_action(cur, action);
        true
    }

    /// `do_bufdel`: `:bdelete`, `:bwipeout` and `:bunload` with their range or list of numbers and names.
    pub(super) fn do_bufdel(&mut self, action: BufAction, arg: &str, addr_count: u32, start: i64, end: i64, forceit: bool) -> Result<(), String> {
        if addr_count == 0 {
            self.do_buffer_del(action, BufStart::Current, 0, forceit);
            return Ok(());
        }
        let mut arg = arg;
        let mut bnr = if addr_count == 2 {
            // Both a range and an argument is not allowed.
            if !arg.is_empty() {
                return Err(format!("E488: Trailing characters: {arg}"));
            }
            start
        } else {
            end
        };
        let (mut deleted, mut do_current) = (0, 0);
        loop {
            // The current buffer goes last: when it goes, the next buffer would become the current one and be loaded.
            if bnr == self.buf.id as i64 {
                do_current = bnr;
            } else if self.do_buffer_del(action, BufStart::First, bnr, forceit) {
                deleted += 1;
            }
            // The next number or name.
            if addr_count == 2 {
                bnr += 1;
                if bnr > end {
                    break;
                }
            } else {
                arg = arg.trim_start_matches([' ', '\t']);
                if arg.is_empty() {
                    break;
                }
                if !arg.as_bytes()[0].is_ascii_digit() {
                    let p = skiptowhite_esc(arg);
                    bnr = self.buflist_findpat_shown(&arg[..p], arg, action == BufAction::Wipe);
                    if bnr < 0 {
                        break;
                    }
                    arg = &arg[p..];
                } else {
                    // `getdigits_int`: what is not an int is 0.
                    let (n, at) = strtoimax(arg, 0);
                    bnr = n.filter(|n| i32::try_from(*n).is_ok()).unwrap_or(0);
                    arg = &arg[at..];
                }
            }
        }
        if do_current != 0 && self.do_buffer_del(action, BufStart::First, do_current, forceit) {
            deleted += 1;
        }
        if deleted == 0 {
            return Err(match action {
                BufAction::Unload => "E515: No buffers were unloaded",
                BufAction::Del => "E516: No buffers were deleted",
                BufAction::Wipe => "E517: No buffers were wiped out",
            }
            .into());
        }
        if deleted >= self.buf.opts.report {
            let what = match action {
                BufAction::Unload => "unloaded",
                BufAction::Del => "deleted",
                BufAction::Wipe => "wiped out",
            };
            let s = if deleted == 1 { "" } else { "s" };
            self.info(format!("{deleted} buffer{s} {what}"));
        }
        Ok(())
    }
}
