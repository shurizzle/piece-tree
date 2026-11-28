//! Visual block operators: ports of `block_prep` and of the block branches of `op_yank`, `op_delete`, `op_replace`,
//! `op_tilde`, `op_insert`, `op_change`, `shift_block` (`ops.c`) and `do_put` (`register.c`) of Neovim.
//!
//! Columns are bytes inside a line here (as in C) and screen cells in `*_vcol`; a cursor column of the editor is a
//! cluster index, converted at the edges with `line_byte`/`line_col`.

use super::{
    Editor, Pos,
    graphemes::{self, Tabs},
    parse::{OP_LOWER, OP_TOGGLE, OP_UPPER},
    registers::RegKind,
    sorted,
};

/// The operator of a block (`oap->op_type`), as far as `block_prep` tells them apart.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) enum BOp {
    Delete,
    Yank,
    Change,
    Insert,
    Append,
    Replace,
    LShift,
    RShift,
    Tilde,
}

/// `oparg_T` of a Visual block: its corners, as (line, cluster column), and its screen columns (inclusive).
#[derive(Clone, Debug)]
pub(super) struct BlockOp {
    pub op: BOp,
    pub start: Pos,
    pub end: Pos,
    pub start_vcol: isize,
    pub end_vcol: isize,
    /// `$` was used: the block reaches the end of every line.
    pub is_max: bool,
}

/// `struct block_def`: what of one line is inside the block. `textcol`/`textlen` are bytes.
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub(super) struct BlockDef {
    pub startspaces: isize,
    pub endspaces: isize,
    pub textlen: usize,
    pub textcol: usize,
    pub start_vcol: isize,
    pub end_vcol: isize,
    pub is_short: bool,
    pub is_one_char: bool,
    pub pre_whitesp: isize,
    pub pre_whitesp_c: isize,
    pub end_char_vcols: isize,
    pub start_char_vcols: isize,
    pub is_max: bool,
}

/// What the first line of a block `I`, `A` or `c` knew before Insert mode, for `finish_block_insert`.
pub(super) struct BlockInsert {
    op: BlockOp,
    bd: BlockDef,
    pre_textlen: isize,
    ind_pre_col: usize,
    ind_pre_vcol: usize,
    /// Cursor (line, byte) where Insert began, `start_insert` of `op_insert`.
    start_insert: (usize, usize),
    /// `c`: the text is copied as `op_change` does, with `pre_indent` and the byte where it starts.
    change: Option<(usize, usize)>,
}

/// What `finish_block_insert` leaves for `leave_insert`: the cursor when the block was filled, and the `']` offset.
#[derive(Default)]
pub(super) struct BlockDone {
    pub cursor: Option<Pos>,
    pub op_end: Option<usize>,
}

fn white(s: &str) -> usize {
    s.len() - s.trim_start_matches([' ', '\t']).len()
}

fn is_white(b: Option<&u8>) -> bool {
    matches!(b, Some(b' ' | b'\t'))
}

/// `block_prep`: the part of `line` that the block `op` covers; `is_del` for an operator that removes or replaces it.
pub(super) fn block_prep(line: &str, tabs: Tabs, w: usize, op: &BlockOp, is_del: bool) -> BlockDef {
    let mut bd = BlockDef { is_max: op.is_max, ..BlockDef::default() };
    let mut cs = graphemes::cells(line, 0, 0, tabs, w, usize::MAX).peekable();
    let (mut vcol, mut incr, mut prev_pstart) = (0isize, 0isize, 0usize);
    while vcol < op.start_vcol {
        let Some(c) = cs.next() else { break };
        incr = c.cells as isize;
        vcol += incr;
        if is_white(line.as_bytes().get(c.a)) {
            bd.pre_whitesp += incr;
            bd.pre_whitesp_c += 1;
        } else {
            bd.pre_whitesp = 0;
            bd.pre_whitesp_c = 0;
        }
        prev_pstart = c.a;
    }
    bd.start_vcol = vcol;
    let mut pstart = cs.peek().map_or(line.len(), |c| c.a);
    bd.start_char_vcols = incr;
    if bd.start_vcol < op.start_vcol {
        // The line is too short.
        bd.end_vcol = bd.start_vcol;
        bd.is_short = true;
        if !is_del || op.op == BOp::Append {
            bd.endspaces = op.end_vcol - op.start_vcol + 1;
        }
    } else {
        // A partly selected multibyte char becomes spaces too.
        bd.startspaces = bd.start_vcol - op.start_vcol;
        if is_del && bd.startspaces != 0 {
            bd.startspaces = bd.start_char_vcols - bd.startspaces;
        }
        let mut pend = pstart;
        bd.end_vcol = bd.start_vcol;
        if bd.end_vcol > op.end_vcol {
            // It is all in one char.
            bd.is_one_char = true;
            if op.op == BOp::Insert {
                bd.endspaces = bd.start_char_vcols - bd.startspaces;
            } else if op.op == BOp::Append {
                bd.startspaces += op.end_vcol - op.start_vcol + 1;
                bd.endspaces = bd.start_char_vcols - bd.startspaces;
            } else {
                bd.startspaces = op.end_vcol - op.start_vcol + 1;
                if is_del && op.op != BOp::LShift {
                    // The sum does not work for a Visual replace: the Tab is split in two.
                    bd.startspaces = bd.start_char_vcols - (bd.start_vcol - op.start_vcol);
                    bd.endspaces = bd.end_vcol - op.end_vcol - 1;
                }
            }
        } else {
            let mut vcol = bd.end_vcol;
            let mut prev_pend = pend;
            while vcol <= op.end_vcol {
                let Some(c) = cs.next() else { break };
                prev_pend = c.a;
                incr = c.cells as isize;
                vcol += incr;
            }
            bd.end_vcol = vcol;
            pend = cs.peek().map_or(line.len(), |c| c.a);
            if bd.end_vcol <= op.end_vcol && (!is_del || matches!(op.op, BOp::Append | BOp::Replace)) {
                bd.is_short = true;
                if op.op == BOp::Append {
                    // `oap->inclusive` is set for a Visual block.
                    bd.endspaces = op.end_vcol - bd.end_vcol + 1;
                }
            } else if bd.end_vcol > op.end_vcol {
                bd.endspaces = bd.end_vcol - op.end_vcol - 1;
                if !is_del && bd.endspaces != 0 {
                    bd.endspaces = incr - bd.endspaces;
                    if pend != pstart {
                        pend = prev_pend;
                    }
                }
            }
        }
        bd.end_char_vcols = incr;
        if is_del && bd.startspaces != 0 {
            pstart = prev_pstart;
        }
        bd.textlen = pend.saturating_sub(pstart);
    }
    bd.textcol = pstart;
    bd
}

/// Byte at `at` of `s` as the cluster there: its length and its cells at virtual column `vcol`.
fn cluster_at(s: &str, at: usize, vcol: usize, tabs: Tabs) -> (usize, usize) {
    match graphemes::iter(&s[at..]).next() {
        Some(g) => (g.len(), graphemes::size(g, vcol, tabs, usize::MAX).0),
        None => (0, 1),
    }
}

impl Editor {
    /// `coladvance2` with `one_more` given: Visual mode when `do_pending_operator` asks for the corners of a block.
    pub(super) fn coladvance_om(&self, line: usize, wcol: usize, one_more: bool) -> usize {
        let one_more = usize::from(one_more);
        let s = self.buf.doc.text().line(line);
        let (mut col, mut idx) = (0, 0);
        for c in graphemes::cells(&s, 0, 0, self.buf.opts.tabs(), self.wrap_w(), usize::MAX) {
            if col > wcol {
                break;
            }
            (col, idx) = (c.end(), idx + 1);
        }
        if col > wcol || one_more == 0 { usize::saturating_sub(idx, 1) } else { idx }
    }

    /// `get_op_vcol`: the block of the Visual selection (anchor to cursor) for the operator `op`.
    pub(super) fn block_oparg(&self, op: BOp) -> BlockOp {
        let (a, b) = sorted(self.anchor, (self.win.line, self.win.col));
        let (tabs, w) = (self.buf.opts.tabs(), self.wrap_w());
        let vcols = |p: Pos| {
            let s = self.buf.doc.text().line(p.0);
            let (x, e) = graphemes::cell_range(&s, p.1, tabs, w);
            (x as isize, e as isize - 1)
        };
        let ((mut start_vcol, mut end_vcol), (s, e)) = (vcols(a), vcols(b));
        start_vcol = start_vcol.min(s);
        end_vcol = end_vcol.max(e);
        // A move that has not been looked at yet (`want_set`) ended `$`.
        let is_max = self.win.want_col == usize::MAX && !self.win.want_set;
        if is_max {
            // `$`: the end column of the longest line.
            end_vcol = (a.0..=b.0).map(|l| vcols((l, usize::MAX)).1).max().unwrap_or(0);
        }
        let end = (b.0, self.coladvance_om(b.0, end_vcol.max(0) as usize, true));
        let start = (a.0, self.coladvance_om(a.0, start_vcol.max(0) as usize, true));
        BlockOp { op, start, end, start_vcol, end_vcol, is_max }
    }

    fn prep(&self, line: &str, op: &BlockOp, is_del: bool) -> BlockDef {
        block_prep(line, self.buf.opts.tabs(), self.wrap_w(), op, is_del)
    }

    /// Replaces the text of line `l` (not its line break).
    fn put_line(&mut self, l: usize, new: &str) {
        let range = self.buf.doc.text().line_to_offset(l)..self.line_end_offset(l);
        self.edit_replace(range, new);
    }

    /// Offset of byte `b` of line `l`, kept inside the line.
    fn byte_off(&self, l: usize, b: usize) -> usize {
        let s = self.buf.doc.text().line(l);
        self.buf.doc.text().line_to_offset(l) + s.floor_char_boundary(b.min(s.len()))
    }

    /// Cursor on byte `b` of line `l`, then kept on a char as Normal mode does.
    fn cursor_at_byte(&mut self, l: usize, b: usize) {
        self.win.line = l;
        let col = self.line_col(l, self.byte_off(l, b) - self.buf.doc.text().line_to_offset(l));
        self.set_col(col);
        self.clamp_normal();
    }

    /// The register text of the block (`op_yank_reg`): every line with the blanks that make the columns straight.
    fn block_text(&self, op: &BlockOp) -> (String, usize) {
        let mut parts = Vec::new();
        for l in op.start.0..=op.end.0 {
            let s = self.buf.doc.text().line(l);
            let bd = self.prep(&s, op, false);
            let text = s.get(bd.textcol..bd.textcol + bd.textlen).unwrap_or("");
            parts.push(format!("{}{text}{}", " ".repeat(bd.startspaces.max(0) as usize), " ".repeat(bd.endspaces.max(0) as usize)));
        }
        let mut width = op.end_vcol - op.start_vcol;
        if op.is_max && width > 0 {
            width -= 1;
        }
        (parts.join("\n"), width.max(0) as usize)
    }

    /// `y`, `d`, `x`, `c`, `s`, `I`, `A`, `~`, `u`, `U` of a Visual block.
    pub(super) fn block_op(&mut self, c: char, n: usize) {
        match c {
            'y' => self.block_yank(),
            'd' | 'x' => {
                self.block_delete(false);
            }
            'c' | 's' => self.block_change(),
            'I' => self.block_insert_op(BOp::Insert, n),
            'A' => self.block_insert_op(BOp::Append, n),
            _ => self.block_tilde(match c {
                '~' => OP_TOGGLE,
                'u' => OP_LOWER,
                _ => OP_UPPER,
            }),
        }
    }

    /// `op_yank` of a block.
    fn block_yank(&mut self) {
        let op = self.block_oparg(BOp::Yank);
        let (text, width) = self.block_text(&op);
        let reg = self.cur_reg;
        let lines = op.end.0 - op.start.0 + 1;
        self.store_reg(text, RegKind::Block(width), true);
        // `op_yank`: a message when more than 'report' lines were yanked.
        if lines > self.buf.opts.report && reg != Some('_') {
            let into = reg.map_or_else(String::new, |r| format!(" into \"{r}"));
            self.info(format!("block of {lines} lines yanked{into}"));
        }
        let (s, e) = (self.mark_off(op.start.0, op.start.1), self.mark_off(op.end.0, op.end.1));
        self.set_op_marks(s, e);
        self.win.line = op.start.0;
        self.set_col(op.start.1);
        self.clamp_normal();
    }

    /// `op_delete` of a block; `for_change` keeps the cursor where `op_change` wants it (the caller clamps).
    fn block_delete(&mut self, for_change: bool) -> BlockOp {
        let mut op = self.block_oparg(if for_change { BOp::Change } else { BOp::Delete });
        // `do_pending_operator`: the cursor is at the start of the block (`uh_cursor`).
        (self.win.line, self.win.col) = op.start;
        // `op_delete`, block mode.
        self.u_save_lines(op.start.0, op.end.0);
        // One `changed_lines` for the whole block.
        let tick0 = self.buf.changedtick;
        let (text, width) = self.block_text(&op);
        self.store_reg(text, RegKind::Block(width), false);
        let start_b = self.line_byte(op.start.0, op.start.1);
        let mut cursor_b = None;
        for l in op.start.0..=op.end.0 {
            let s = self.buf.doc.text().line(l).into_owned();
            let bd = self.prep(&s, &op, true);
            if bd.textlen == 0 {
                continue;
            }
            if l == op.start.0 {
                cursor_b = Some(bd.textcol + bd.startspaces.max(0) as usize);
            }
            let pad = " ".repeat((bd.startspaces + bd.endspaces).max(0) as usize);
            let new = format!("{}{pad}{}", &s[..bd.textcol], &s[bd.textcol + bd.textlen..]);
            self.put_line(l, &new);
        }
        self.win.line = op.start.0;
        match cursor_b {
            Some(b) => self.cursor_at_byte(op.start.0, b),
            None => {
                self.set_col(op.start.1);
                self.clamp_normal();
            }
        }
        // `'[` is the start, `']` the start column of the last line.
        let sb = self.line_byte(op.start.0, op.start.1);
        self.set_op_marks_bytes((op.start.0, sb), (op.end.0, start_b));
        let off = self.offset();
        self.set_dot(off);
        self.buf.changedtick = tick0 + 1;
        op.start.1 = self.win.col;
        op
    }

    /// `op_replace` of a block: `r<c>` in Visual block mode.
    pub(super) fn block_replace(&mut self, c: char) {
        let mut op = self.block_oparg(BOp::Replace);
        (self.win.line, self.win.col) = op.start;
        // `op_replace`.
        self.u_save_lines(op.start.0, op.end.0);
        let tabs = self.buf.opts.tabs();
        let wide = graphemes::size(&c.to_string(), 0, tabs, usize::MAX).0 > 1;
        let split = c == '\r' || c == '\n';
        let start_b = self.line_byte(op.start.0, op.start.1);
        // `mb_adjust_opend`: the end is the last byte of the char it is on.
        let end_line = self.buf.doc.text().line(op.end.0).into_owned();
        let end_b = self.line_byte(op.end.0, op.end.1);
        let end_b = end_b + cluster_at(&end_line, end_b.min(end_line.len()), 0, tabs).0.saturating_sub(1);
        let mut l = op.start.0;
        while l <= op.end.0 {
            let s = self.buf.doc.text().line(l).into_owned();
            let mut bd = self.prep(&s, &op, true);
            if bd.textlen == 0 {
                l += 1;
                continue;
            }
            let mut numc = op.end_vcol - op.start_vcol + 1;
            if bd.is_short {
                numc -= (op.end_vcol - bd.end_vcol) + 1;
            }
            // A double-wide char can be replaced only up to half the times.
            if wide {
                if numc & 1 != 0 && !bd.is_short {
                    bd.endspaces += 1;
                }
                numc /= 2;
            }
            let head = format!("{}{}", &s[..bd.textcol], " ".repeat(bd.startspaces.max(0) as usize));
            let rest = &s[bd.textcol + bd.textlen..];
            if split {
                // Replacing with a line break splits the line.
                self.put_line(l, &format!("{head}\n{rest}"));
                op.end.0 += 1;
                l += 2;
                continue;
            }
            let mut new = format!("{head}{}", c.to_string().repeat(numc.max(0) as usize));
            if !bd.is_short {
                new.push_str(&" ".repeat(bd.endspaces.max(0) as usize));
                new.push_str(rest);
            }
            self.put_line(l, &new);
            l += 1;
        }
        self.set_op_marks_bytes((op.start.0, start_b), (op.end.0, end_b));
        let s = self.byte_off(op.start.0, start_b);
        self.set_dot(s);
        self.cursor_at_byte(op.start.0, start_b);
    }

    /// `op_tilde` of a block.
    fn block_tilde(&mut self, kind: char) {
        let op = self.block_oparg(BOp::Tilde);
        (self.win.line, self.win.col) = op.start;
        // `op_tilde`.
        self.u_save_lines(op.start.0, op.end.0);
        let f = super::case_fn(kind).expect("case operator");
        let mut changed = false;
        for l in op.start.0..=op.end.0 {
            let s = self.buf.doc.text().line(l).into_owned();
            let bd = self.prep(&s, &op, false);
            let Some(part) = s.get(bd.textcol..bd.textcol + bd.textlen) else { continue };
            let new = f(part);
            if new != part {
                changed = true;
                self.put_line(l, &format!("{}{new}{}", &s[..bd.textcol], &s[bd.textcol + bd.textlen..]));
            }
        }
        let (s, e) = (self.mark_off(op.start.0, op.start.1), self.mark_off(op.end.0, op.end.1));
        self.set_op_marks(s, e);
        if changed {
            let off = self.mark_off(op.start.0, 0);
            self.set_dot(off);
        }
        self.win.line = op.start.0;
        self.set_col(op.start.1);
        self.clamp_normal();
        // `op_tilde`: "N lines changed" over 'report' lines.
        let lines = op.end.0 - op.start.0 + 1;
        if lines > self.buf.opts.report {
            self.info(format!("{lines} line{} changed", if lines == 1 { "" } else { "s" }));
        }
    }

    /// `op_insert` before Insert mode: `I` and `A` of a block.
    fn block_insert_op(&mut self, kind: BOp, count: usize) {
        let op = self.block_oparg(kind);
        let l = op.start.0;
        self.win.line = l;
        self.set_col(op.start.1);
        let s = self.buf.doc.text().line(l).into_owned();
        let mut bd = self.prep(&s, &op, true);
        let ind_pre_col = white(&s);
        let ind_pre_vcol = self.buf.opts.indent_width(&s[..ind_pre_col]);
        let mut pre_textlen = (s.len() - bd.textcol) as isize;
        if kind == BOp::Append {
            pre_textlen -= bd.textlen as isize;
            // The cursor goes to the char right of the block.
            let b = (bd.textcol + bd.textlen).min(s.len());
            self.win.want_set = true;
            self.win.col = self.line_col(l, b);
            if bd.is_short && !bd.is_max {
                // The first line was too short: make it longer and adjust `bd`.
                self.u_save_cursor();
                let pad = " ".repeat(bd.endspaces.max(0) as usize);
                let off = self.line_end_offset(l);
                self.edit_insert(off, &pad);
                bd.textlen += pad.len();
                self.win.col = self.line_chars(l);
            }
        }
        let start_insert = (l, self.line_byte(l, self.win.col));
        self.block_insert = Some(BlockInsert { op, bd, pre_textlen, ind_pre_col, ind_pre_vcol, start_insert, change: None });
        let col = self.win.col;
        self.insert_at(col);
        // `edit(NUL, false, count1)`: the typed text is repeated `count` times.
        self.insert_repeat = (count, false);
    }

    /// `op_change` of a block up to Insert mode: delete the block, then insert on its first line.
    fn block_change(&mut self) {
        let start_b = {
            let o = self.block_oparg(BOp::Change);
            self.line_byte(o.start.0, o.start.1)
        };
        let op = self.block_delete(true);
        let l = op.start.0;
        // `op_change`: the cursor goes one char right when the delete left it before where the block started.
        if start_b > self.line_byte(l, self.win.col) && self.line_chars(l) > 0 {
            self.win.col += 1;
        }
        let s = self.buf.doc.text().line(l).into_owned();
        let (pre_textlen, pre_indent) = (s.len() as isize, white(&s));
        let textcol = self.line_byte(l, self.win.col);
        self.block_insert = Some(BlockInsert {
            op,
            bd: BlockDef::default(),
            pre_textlen,
            ind_pre_col: 0,
            ind_pre_vcol: 0,
            start_insert: (l, textcol),
            change: Some((pre_indent, textcol)),
        });
        let col = self.win.col;
        self.insert_at(col);
    }

    /// After Insert mode: copies the text typed on the first line of the block to the others (`op_insert`, `op_change`).
    pub(super) fn finish_block_insert(&mut self) -> BlockDone {
        let Some(bi) = self.block_insert.take() else { return BlockDone::default() };
        // A typed Ctrl-C (`got_int`) copies nothing.
        if self.interrupted {
            return BlockDone::default();
        }
        match bi.change {
            Some(c) => self.finish_change(bi, c),
            None => self.finish_insert(bi),
        }
    }

    fn finish_change(&mut self, bi: BlockInsert, (pre_indent, mut textcol): (usize, usize)) -> BlockDone {
        let op = bi.op;
        let mut pre_textlen = bi.pre_textlen;
        if op.start.0 == op.end.0 {
            return BlockDone::default();
        }
        let first = self.buf.doc.text().line(op.start.0).into_owned();
        // Auto-indenting may have changed the indent: the text starts after the new one.
        if textcol > pre_indent {
            let new_indent = white(&first);
            pre_textlen += new_indent as isize - pre_indent as isize;
            textcol = (textcol as isize + new_indent as isize - pre_indent as isize).max(0) as usize;
        }
        let ins_len = first.len() as isize - pre_textlen;
        if ins_len > 0
            && let Some(ins) = first.get(textcol..textcol + ins_len as usize)
        {
            for l in op.start.0 + 1..=op.end.0 {
                let s = self.buf.doc.text().line(l).into_owned();
                let bd = self.prep(&s, &op, true);
                if !bd.is_short {
                    self.put_line(l, &format!("{}{ins}{}", &s[..bd.textcol], &s[bd.textcol..]));
                }
            }
            // `changed_lines(start + 1, 0, ..)`: `'.` is the start of the second line.
            let off = self.mark_off(op.start.0 + 1, 0);
            self.set_dot(off);
        }
        BlockDone::default()
    }

    fn finish_insert(&mut self, bi: BlockInsert) -> BlockDone {
        let BlockInsert { mut op, mut bd, mut pre_textlen, ind_pre_col, ind_pre_vcol, start_insert, .. } = bi;
        let l = op.start.0;
        // Insert mode ended on another line (a typed line break): nothing is copied.
        if self.win.line != l {
            return BlockDone::default();
        }
        let line = self.buf.doc.text().line(l).into_owned();
        let tabs = self.buf.opts.tabs();
        let mut start_b = self.line_byte(l, op.start.1);
        // `b_op_start` is `Insstart`, `b_op_start_orig` `Insstart_orig`.
        let at = |p: Option<Pos>| p.map_or((usize::MAX, 0), |(il, ic)| (il, self.line_byte(il, ic)));
        let (_, ins_b) = at(self.ins_start);
        let (orig_line, orig_b) = at(self.ins_start_orig.or(self.ins_start));
        // A Tab typed in the indent may have turned the blanks before it into a Tab: the start moved left.
        if l == orig_line && orig_b < start_b {
            start_b = orig_b;
        }
        let ind_post_col = white(&line);
        let (mut did_indent, mut ind_post_vcol) = (false, 0);
        if ins_b > ind_pre_col && ind_post_col > ind_pre_col {
            bd.textcol += ind_post_col - ind_pre_col;
            ind_post_vcol = self.buf.opts.indent_width(&line[..ind_post_col]);
            bd.start_vcol += ind_post_vcol as isize - ind_pre_vcol as isize;
            did_indent = true;
        }
        // The cursor may have moved before the text was typed: adjust the block, unless the indent explains it.
        if l == orig_line && !bd.is_max && !did_indent {
            let ci = graphemes::col_of(&line, orig_b);
            let t = graphemes::cell_range(&line, ci, tabs, self.wrap_w()).0 as isize;
            if op.op == BOp::Insert && start_b != orig_b {
                start_b = orig_b;
                pre_textlen -= t - op.start_vcol;
                op.start_vcol = t;
            } else if op.op == BOp::Append && start_b >= orig_b {
                start_b = orig_b;
                pre_textlen += bd.textlen as isize;
                pre_textlen -= t - op.start_vcol;
                op.start_vcol = t;
                op.op = BOp::Insert;
            }
        }
        // Blanks of the indent may have changed: take the block again.
        let moved = did_indent && bd.textcol > ind_post_col;
        let dv = ind_post_vcol as isize - ind_pre_vcol as isize;
        if moved {
            op.start_vcol += dv;
            op.end_vcol += dv;
        }
        let mut bd2 = self.prep(&line, &op, true);
        if moved {
            op.start_vcol -= dv;
            op.end_vcol -= dv;
        }
        if !bd.is_max || bd2.textlen < bd.textlen {
            if op.op == BOp::Append {
                pre_textlen += bd2.textlen as isize - bd.textlen as isize;
                if bd2.endspaces != 0 {
                    bd2.textlen = bd2.textlen.saturating_sub(1);
                }
            }
            bd.textcol = bd2.textcol;
            bd.textlen = bd2.textlen;
        }
        let len = line.len();
        let (mut add, mut offset) = (bd.textcol, 0usize);
        if op.op == BOp::Append {
            add += bd.textlen;
            // `$` and the cursor moved right in Insert mode: the block ends before the text typed there.
            if bd.is_max && start_insert.0 == self.ins_start.map_or(usize::MAX, |p| p.0) && start_insert.1 > ins_b {
                offset = start_insert.1 - ins_b;
                add = add.saturating_sub(offset);
                if op.end_vcol > offset as isize {
                    op.end_vcol -= offset as isize + 1;
                } else {
                    return BlockDone::default();
                }
            }
        }
        let add = add.min(len);
        let ins_len = (len - add) as isize - pre_textlen - offset as isize;
        let mut done = BlockDone::default();
        if pre_textlen >= 0
            && ins_len > 0
            && let Some(text) = line.get(add..add + ins_len as usize)
        {
            // `op_insert`: the lines after the first.
            self.u_save(op.start.0 + 1, op.end.0 + 2);
            done.op_end = self.block_insert_lines(&op, text, op.op == BOp::Insert, &mut bd);
            if op.start.0 < op.end.0 {
                let off = self.mark_off(op.start.0 + 1, 0);
                self.set_dot(off);
            }
            done.cursor = Some((l, self.line_col(l, self.byte_off(l, start_b) - self.buf.doc.text().line_to_offset(l))));
        }
        done
    }

    /// `block_insert`: `s` goes into every line after the first, before (`b_insert`) or after the block. Returns the
    /// offset of `']`, the end of the text in the last line.
    fn block_insert_lines(&mut self, op: &BlockOp, s: &str, b_insert: bool, bd: &mut BlockDef) -> Option<usize> {
        // These two live across the lines, as in C: a `$` append on a short line reuses the last one.
        let (mut spaces, mut count) = (0isize, 0isize);
        let mut op_end = None;
        for l in op.start.0 + 1..=op.end.0 {
            let old = self.buf.doc.text().line(l).into_owned();
            *bd = self.prep(&old, op, true);
            if bd.is_short && b_insert {
                continue;
            }
            let (ts_val, mut offset);
            if b_insert {
                ts_val = bd.start_char_vcols;
                spaces = bd.startspaces;
                if spaces != 0 {
                    count = ts_val - 1;
                }
                offset = bd.textcol;
            } else {
                ts_val = bd.end_char_vcols;
                if !bd.is_short {
                    spaces = if bd.endspaces != 0 { ts_val - bd.endspaces } else { 0 };
                    if spaces != 0 {
                        count = ts_val - 1;
                    }
                    offset = (bd.textcol + bd.textlen).saturating_sub(usize::from(spaces != 0));
                } else {
                    // `$`: just append at the end of the line.
                    if !bd.is_max {
                        spaces = (op.end_vcol - bd.end_vcol) + 1;
                    }
                    count = spaces;
                    offset = bd.textcol + bd.textlen;
                }
            }
            if spaces > 0 {
                // Do not copy part of a multibyte char.
                offset = old.floor_char_boundary(offset.min(old.len()));
            }
            spaces = spaces.max(0);
            let offset0 = offset.min(old.len());
            let mut new = String::with_capacity(old.len() + s.len() + spaces as usize);
            new.push_str(&old[..offset0]);
            new.push_str(&" ".repeat(spaces as usize));
            new.push_str(s);
            let (mut rest, mut end) = (offset0, offset0 + s.len());
            if spaces > 0 && !bd.is_short {
                if old.as_bytes().get(offset0) == Some(&b'\t') {
                    // A Tab is split: the blanks after the text, and the Tab is not copied.
                    new.push_str(&" ".repeat((ts_val - spaces).max(0) as usize));
                    rest += 1;
                    count += 1;
                } else {
                    count = spaces;
                }
            }
            if spaces > 0 {
                end += count.max(0) as usize;
            }
            new.push_str(&old[rest..]);
            if l == op.end.0 {
                // `']` is where the text ends in the last line, not in the first.
                op_end = Some(self.buf.doc.text().line_to_offset(l) + end);
            }
            self.put_line(l, &new);
        }
        op_end
    }

    /// `op_shift` of a block: `>` and `<` in Visual block mode.
    pub(super) fn block_shift(&mut self, right: bool, amount: usize) {
        let op = self.block_oparg(if right { BOp::RShift } else { BOp::LShift });
        (self.win.line, self.win.col) = op.start;
        // `op_shift`.
        self.u_save_lines(op.start.0, op.end.0);
        let block_b = self.line_byte(op.start.0, op.start.1);
        for l in op.start.0..=op.end.0 {
            let s = self.buf.doc.text().line(l).into_owned();
            // An empty line has nothing to shift.
            if !s.is_empty()
                && let Some(new) = self.shift_block_line(&s, &op, amount, !right)
            {
                self.put_line(l, &new);
            }
        }
        let (s, e) = (self.mark_off(op.start.0, op.start.1), self.last_char_off(op.end.0));
        self.set_op_marks(s, e);
        let off = self.mark_off(op.start.0, 0);
        self.set_dot(off);
        self.cursor_at_byte(op.start.0, block_b);
        // `op_shift`: a message when more than 'report' lines were shifted.
        let count = op.end.0 - op.start.0 + 1;
        if count > self.buf.opts.report {
            let (c, t) = (if right { '>' } else { '<' }, if amount == 1 { "" } else { "s" });
            self.info(format!("{count} line{} {c}ed {amount} time{t}", if count == 1 { "" } else { "s" }));
        }
    }

    /// `shift_block` for one line: the new text of the line, none when it does not change (a short line).
    fn shift_block_line(&self, s: &str, op: &BlockOp, amount: usize, left: bool) -> Option<String> {
        let tabs = self.buf.opts.tabs();
        let mut bd = self.prep(s, op, true);
        if bd.is_short {
            return None;
        }
        let o = &self.buf.opts;
        let sw = if o.shiftwidth != 0 { o.shiftwidth } else { tabs.at(o.indent_width(&s[..white(s)]), left) };
        let mut total = (amount * sw) as isize;
        let width_at = |at: usize, vcol: isize| -> (usize, isize) {
            let (n, cells) = cluster_at(s, at, vcol.max(0) as usize, tabs);
            (n, cells as isize)
        };
        if !left {
            total += bd.pre_whitesp;
            let mut ws_vcol = bd.start_vcol - bd.pre_whitesp;
            let mut textstart = bd.textcol;
            if bd.startspaces != 0 {
                if cluster_at(s, textstart, 0, tabs).0 == 1 {
                    textstart += 1;
                } else {
                    ws_vcol = 0;
                    bd.startspaces = 0;
                }
            }
            let mut vcol = bd.start_vcol;
            while is_white(s.as_bytes().get(textstart)) {
                let incr = width_at(textstart, vcol).1;
                textstart += 1;
                total += incr;
                vcol += incr;
            }
            let (tabs_n, spaces) =
                if o.expandtab { (0, total) } else { let (t, sp) = tabs.fromto(ws_vcol.max(0) as usize, (ws_vcol + total).max(0) as usize); (t as isize, sp as isize) };
            // A Tab that is split is allowed.
            let col_pre = bd.pre_whitesp_c - isize::from(bd.startspaces != 0);
            let textcol = (bd.textcol as isize - col_pre).max(0) as usize;
            Some(format!("{}{}{}{}", &s[..textcol], "\t".repeat(tabs_n.max(0) as usize), " ".repeat(spaces.max(0) as usize), &s[textstart..]))
        } else {
            let mut non_white = bd.textcol;
            if bd.startspaces != 0 {
                non_white += cluster_at(s, non_white, 0, tabs).0;
            }
            let mut non_white_col = bd.start_vcol;
            while is_white(s.as_bytes().get(non_white)) {
                non_white_col += width_at(non_white, non_white_col).1;
                non_white += 1;
            }
            let block_space_width = non_white_col - op.start_vcol;
            let destination_col = non_white_col - block_space_width.min(total);
            let mut verbatim_end = bd.textcol;
            let mut verbatim_width = bd.start_vcol;
            if bd.startspaces != 0 {
                verbatim_width -= bd.start_char_vcols;
            }
            while verbatim_width < destination_col && verbatim_end < s.len() {
                let (n, incr) = width_at(verbatim_end, verbatim_width);
                if verbatim_width + incr > destination_col {
                    break;
                }
                verbatim_width += incr;
                verbatim_end += n;
            }
            let fill = (destination_col - verbatim_width).max(0) as usize;
            Some(format!("{}{}{}", &s[..verbatim_end], " ".repeat(fill), &s[non_white..]))
        }
    }

    /// `do_put` of a block register: every line goes into the next text line at one screen column.
    pub(super) fn put_block(&mut self, text: &str, y_width: usize, after: bool, count: usize) {
        // `do_put`, block register: the lines the text goes into (the register's lines, up to the end of the buffer).
        let lines = text.split('\n').count();
        self.u_save(self.win.line, (self.win.line + lines + 2).min(self.line_count() + 1));
        // Owned: the text is edited while the stops are used.
        let vts = self.buf.opts.vts_array.clone();
        let tabs = Tabs { ts: self.buf.opts.tabstop, vts: &vts };
        let w = self.wrap_w();
        let (cl, cc) = (self.win.line, self.win.col);
        let first = self.buf.doc.text().line(cl).into_owned();
        let at_nul = cc >= graphemes::count(&first);
        let (a, e) = graphemes::cell_range(&first, cc, tabs, w);
        let mut cursor_b = self.line_byte(cl, cc);
        let col = if after && !at_nul {
            // The next char: put after its last cell.
            cursor_b += cluster_at(&first, cursor_b, 0, tabs).0;
            e as isize
        } else {
            a as isize
        };
        let (mut nr_lines, mut textcol, mut totlen) = (0i64, 0isize, 0isize);
        let pieces: Vec<&str> = text.split('\n').collect();
        for (i, piece) in pieces.iter().enumerate() {
            let l = cl + i;
            if l >= self.line_count() {
                let end = self.buf.doc.text().len();
                self.edit_insert(end, "\n");
                nr_lines += 1;
            }
            let old = self.buf.doc.text().line(l).into_owned();
            let (mut vcol, mut incr, mut ptr, mut last_a) = (0isize, 0isize, 0usize, 0usize);
            for c in graphemes::cells(&old, 0, 0, tabs, w, usize::MAX) {
                if vcol >= col {
                    break;
                }
                incr = c.cells as isize;
                vcol = c.end() as isize;
                (last_a, ptr) = (c.a, c.e);
            }
            textcol = ptr as isize;
            let shortline = vcol < col || (vcol == col && ptr == old.len());
            let (mut startspaces, mut endspaces, mut delcount) = (0isize, 0isize, 0usize);
            if vcol < col {
                startspaces = col - vcol;
            } else if vcol > col {
                endspaces = vcol - col;
                startspaces = incr - endspaces;
                textcol = last_a as isize;
                delcount = 1;
                if old.as_bytes().get(last_a) != Some(&b'\t') {
                    // Only a Tab can be split into spaces: other chars move to after the block.
                    delcount = 0;
                    endspaces = 0;
                }
            }
            let yanklen = piece.len() as isize;
            // The blanks that fill the right side of the block.
            let mut spaces = y_width as isize + 1;
            for g in graphemes::iter(piece) {
                spaces -= graphemes::size(g, 0, tabs, usize::MAX).0 as isize;
            }
            let spaces = spaces.max(0);
            let tc = textcol as usize;
            let mut new = String::with_capacity(old.len() + count * (piece.len() + spaces as usize));
            new.push_str(&old[..tc]);
            new.push_str(&" ".repeat(startspaces.max(0) as usize));
            totlen = count as isize * (yanklen + spaces) + startspaces + endspaces;
            for j in 0..count {
                new.push_str(piece);
                // The block's trailing blanks only when there is text behind.
                if (j + 1 < count || !shortline) && spaces > 0 {
                    new.push_str(&" ".repeat(spaces as usize));
                } else {
                    totlen -= spaces;
                }
            }
            new.push_str(&" ".repeat(endspaces.max(0) as usize));
            new.push_str(&old[tc + delcount..]);
            self.put_line(l, &new);
            if i == 0 {
                cursor_b += startspaces.max(0) as usize;
            }
        }
        // `'[` is the cursor column of the first line, `']` the end of the text in the last.
        let last = cl + pieces.len() - 1;
        self.set_op_marks_bytes((cl, cursor_b), (last, (textcol + totlen - 1).max(0) as usize));
        let dot = self.mark_off(cl, 0);
        self.set_dot(dot);
        self.msgmore(nr_lines);
        self.cursor_at_byte(cl, cursor_b);
    }
}
