//! Insert mode Tab and Backspace with 'smarttab', 'softtabstop' and 'varsofttabstop': `ins_tab` of Neovim's `edit.c`, and
//! the part of `ins_bs` that deletes up to the previous 'shiftwidth' or 'softtabstop'.

use super::{Editor, graphemes};

fn white(b: u8) -> bool {
    b == b' ' || b == b'\t'
}

impl Editor {
    /// `inindent(0)`: nothing but blanks before the cursor.
    pub(super) fn inindent(&self) -> bool {
        let line = self.buf.doc.text().line(self.win.line);
        line.bytes().take_while(|&b| white(b)).count() >= self.win.col
    }

    /// `ins_tab`: the Tab key in Insert mode (and in Replace mode, where the first blank replaces a char).
    pub(super) fn ins_tab(&mut self) {
        let o = &self.buf.opts;
        let (et, sta, sw, sts) = (o.expandtab, o.smarttab, o.sw_value(), o.sts_value());
        let vsts = !o.vsts_array.is_empty();
        let ind = self.inindent();
        // 'tabstop' (or the stops of 'vartabstop') is not the 'shiftwidth'.
        let differs = match o.vts_array[..] {
            [] => o.tabstop != sw,
            [one] => one != sw,
            _ => true,
        };
        // When nothing special, the Tab is a char like any other.
        if !et && !(sta && ind && differs) && !vsts && sts == 0 {
            if self.replacing.is_some() {
                self.replace_char('\t');
            } else {
                self.insert("\t");
            }
            return;
        }
        let vcol = self.cell_of((self.win.line, self.win.col)).0;
        let pad = if sta && ind {
            // A Tab in the indent is a 'shiftwidth'.
            sw - vcol % sw
        } else if vsts || sts != 0 {
            o.sts_tabs().pad(vcol)
        } else {
            o.tabs().pad(vcol)
        };
        // The first blank replaces a char in Replace mode; the others are inserted.
        if self.replacing.is_some() {
            self.replace_char(' ');
            for _ in 1..pad {
                self.insert(" ");
                if let Some(r) = &mut self.replacing {
                    r.push(None);
                }
            }
        } else {
            self.insert(&" ".repeat(pad));
        }
        // Without 'expandtab' the blanks are turned into Tabs where they fit.
        if !et && (vsts || sts > 0 || (sta && ind)) {
            self.blanks_to_tabs();
        }
    }

    /// The end of `ins_tab`: the blanks before the cursor become as many Tabs as fit and the spaces that are left.
    fn blanks_to_tabs(&mut self) {
        let (l, col) = (self.win.line, self.win.col);
        let line = self.buf.doc.text().line(l).into_owned();
        let tabs = self.buf.opts.tabs();
        let wrap = self.wrap_w();
        let cursor = graphemes::byte_of(&line, col);
        let mut first = cursor;
        while first > 0 && white(line.as_bytes()[first - 1]) {
            first -= 1;
        }
        // In Replace mode the chars before where Insert mode began are left alone.
        if self.replacing.is_some()
            && let Some((il, ic)) = self.ins_start
            && il == l
        {
            first = first.max(graphemes::byte_of(&line, ic));
        }
        // `getvcol` of a byte: the first cell of its cluster.
        let vcol_of = |b: usize| graphemes::cell_range(&line, graphemes::col_of(&line, b), tabs, wrap).0;
        let (want, mut vcol) = (vcol_of(cursor), vcol_of(first));
        let mut out = line.as_bytes().to_vec();
        let (mut ptr, mut changed) = (first, None);
        while ptr < out.len() && white(out[ptr]) {
            let size = tabs.pad(vcol);
            if vcol + size > want {
                break;
            }
            if out[ptr] != b'\t' {
                out[ptr] = b'\t';
                changed.get_or_insert(ptr);
            }
            ptr += 1;
            vcol += size;
        }
        let Some(at) = changed else { return };
        // `Insstart` may have to move back to the first char changed.
        if let Some((il, ic)) = self.ins_start
            && il == l
        {
            let c = graphemes::col_of(&line, at);
            if c < ic {
                self.ins_start = Some((il, c));
            }
        }
        // The spaces that are needed stay; the rest of the blanks before the cursor goes.
        let mut kept = 0;
        while vcol < want && ptr < out.len() && out[ptr] == b' ' {
            vcol += 1;
            ptr += 1;
            kept += 1;
        }
        let start = self.buf.doc.text().line_to_offset(l);
        let run = std::str::from_utf8(&out[first..ptr]).expect("blanks");
        self.edit_replace(start + first..start + cursor, run);
        // The replace stack follows: each blank that went joins its entry with the one before.
        if self.replacing.is_some() {
            for _ in ptr..cursor {
                self.replace_join(kept);
            }
        }
        self.win.col = graphemes::col_of(&line, first) + (ptr - first);
        self.win.want_set = true;
    }

    /// `replace_join`: the `off`-th entry of the replace stack from the top (the one of a char typed `off` chars ago) is
    /// merged into the one before it: what it replaced is put back with that one.
    fn replace_join(&mut self, off: usize) {
        let Some(stack) = &mut self.replacing else { return };
        let n = stack.len();
        if off >= n || n - 1 - off == 0 {
            return;
        }
        let at = n - 1 - off;
        let joined = stack.remove(at);
        stack[at - 1] = match (stack[at - 1].take(), joined) {
            (Some(a), Some(b)) => Some(a + &b),
            (a, b) => a.or(b),
        };
    }

    /// The branch of `ins_bs` for a Backspace in Insert mode that deletes one 'shiftwidth' (with 'smarttab', in the indent)
    /// or 'softtabstop' (after a Tab, or a space that was not just typed): to the previous stop, filling with spaces. False
    /// when it is not that case; the cursor is not in column 0.
    pub(super) fn ins_bs_stops(&mut self) -> bool {
        let o = &self.buf.opts;
        let (sta, sts) = (o.smarttab, o.sts_value() != 0 || !o.vsts_array.is_empty());
        let in_indent = self.inindent();
        let line = self.buf.doc.text().line(self.win.line).into_owned();
        let cursor = graphemes::byte_of(&line, self.win.col);
        let prev = line.as_bytes()[cursor - 1];
        if !((sta && in_indent) || (sts && (prev == b'\t' || (prev == b' ' && !self.inserted_space)))) {
            return false;
        }
        self.inserted_space = false;
        // The column of the cursor, and the start of the last run of blanks before it.
        let tabs = o.tabs();
        let (mut vcol, mut space_vcol, mut space_at, mut prev_space) = (0, 0, 0, false);
        for c in graphemes::cells(&line, 0, 0, tabs, usize::MAX, cursor) {
            if c.a >= cursor {
                break;
            }
            let cur_space = white(line.as_bytes()[c.a]);
            if !prev_space && cur_space {
                (space_at, space_vcol) = (c.a, c.vcol);
            }
            (vcol, prev_space) = (c.end(), cur_space);
        }
        // The column where it should end up.
        let mut want = vcol.saturating_sub(1);
        if sta && in_indent {
            want -= want % o.sw_value();
        } else {
            want = o.sts_tabs().start(want);
        }
        // Where to stop deleting: the last blank that still ends before it.
        while space_at < cursor && space_vcol + if line.as_bytes()[space_at] == b'\t' { tabs.pad(space_vcol) } else { 1 } <= want {
            space_vcol += if line.as_bytes()[space_at] == b'\t' { tabs.pad(space_vcol) } else { 1 };
            space_at += 1;
        }
        let extra = want.saturating_sub(space_vcol);
        if self.replacing.is_some() {
            // Replace mode: back over each char, putting back what it replaced, except before where Insert mode began; the
            // blanks that make up the column are inserted and count as typed.
            let want_col = graphemes::col_of(&line, space_at);
            while self.win.col > want_col {
                match self.ins_start {
                    Some((il, ic)) if il == self.win.line && self.win.col - 1 < ic => self.move_left(),
                    _ => self.replace_bs(),
                }
            }
            for _ in 0..extra {
                self.insert(" ");
                if let Some(r) = &mut self.replacing {
                    r.push(None);
                }
            }
        } else {
            let start = self.buf.doc.text().line_to_offset(self.win.line);
            self.edit_replace(start + space_at..start + cursor, &" ".repeat(extra));
            self.win.col = graphemes::col_of(&line, space_at) + extra;
        }
        self.win.want_set = true;
        true
    }
}
