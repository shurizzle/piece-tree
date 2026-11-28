//! The argument list: `:args`, `:argadd`, `:argdelete`, `:argedit`, `:argument`, `:next`, `:previous`, `:first`, `:last`, and
//! `argc()`, `argv()`, `argidx()`, `##` (`arglist.c`).
// shortcut: one list for every window (no `:arglocal`), no `:argdo`, `:all`, `:argdedupe` and `s` forms, when windows have lists

use super::{Editor, script::full_name};

/// An entry of the list: the name as given and the buffer made for it (`aentry_T`).
#[derive(Clone)]
pub(super) struct ArgEntry {
    pub fname: String,
    pub fnum: usize,
}

/// `AL_SET`, `AL_ADD`, `AL_DEL`.
#[derive(Clone, Copy, PartialEq)]
enum What {
    Set,
    Add,
    Del,
}

/// `do_one_arg`: one argument of `s` with its backslashes taken out, and what is left after the blanks.
fn do_one_arg(s: &str) -> (String, &str) {
    let b = s.as_bytes();
    let mut out = String::new();
    let mut i = 0;
    while i < b.len() && b[i] != b' ' && b[i] != b'\t' {
        // A backslash before a char (a blank, a backslash) is taken out; `\\` before a non-special one is kept.
        if b[i] == b'\\' && i + 1 < b.len() {
            i += 1;
        }
        let l = s[i..].chars().next().map_or(1, char::len_utf8);
        out.push_str(&s[i..i + l]);
        i += l;
    }
    (out, s[i..].trim_start_matches([' ', '\t']))
}

impl Editor {
    /// `alist_name`: the name of the buffer of the entry when there is one, else the name as given.
    pub(super) fn alist_name(&self, a: &ArgEntry) -> String {
        match self.buffer(a.fnum) {
            Some(b) if b.path.is_some() => b.name(),
            _ => a.fname.clone(),
        }
    }

    /// `arg_all`: the names with a blank between and a backslash before a blank, a backslash or a backtick.
    pub(super) fn arg_all(&self) -> String {
        let mut out = String::new();
        for a in &self.arglist {
            if !out.is_empty() {
                out.push(' ');
            }
            for c in self.alist_name(a).chars() {
                if matches!(c, ' ' | '\\' | '`') {
                    out.push('\\');
                }
                out.push(c);
            }
        }
        out
    }

    /// `buflist_add(fname, BLN_LISTED)`: the buffer of a file, made (listed, not loaded) when there is none.
    fn buflist_add_listed(&mut self, fname: &str) -> usize {
        let path = std::path::PathBuf::from(full_name(fname, false));
        if let Some(id) = self.all_buffers().iter().find(|b| b.path.as_deref().is_some_and(|p| super::buffers::same_file(p, &path))).map(|b| b.id) {
            if let Some(b) = self.buffer_mut(id) {
                b.listed = true;
            }
            return id;
        }
        let id = self.buflist_add(&path.display().to_string());
        self.set_sfname(id, fname);
        if let Some(b) = self.buffer_mut(id) {
            b.listed = true;
        }
        id
    }

    /// `do_arglist`: change the list from the words of `str`; false after an error.
    fn do_arglist(&mut self, str: &str, what: What, after: usize, will_edit: bool) -> bool {
        let mut str = str.to_string();
        let mut escaped = true;
        // The default for `:argadd` is the current file.
        if what == What::Add && str.is_empty() {
            if self.buf.path.is_none() {
                return false;
            }
            str = self.buf.name();
            escaped = false;
        }
        let mut words = Vec::new();
        let mut rest = str.as_str();
        while !rest.is_empty() {
            if escaped {
                let (w, r) = do_one_arg(rest);
                words.push(w);
                rest = r;
            } else {
                words.push(rest.to_string());
                break;
            }
        }
        if what == What::Del {
            self.arglist_del_files(&words);
        } else {
            use super::script::expand::{EW_ADDSLASH, EW_DIR, EW_FILE, EW_NOTFOUND};
            let pats: Vec<&str> = words.iter().map(String::as_str).collect();
            let files = self.expand_wildcards(&pats, EW_DIR | EW_FILE | EW_ADDSLASH | EW_NOTFOUND).unwrap_or_default();
            if files.is_empty() {
                self.error("E479: No match");
                return false;
            }
            if what == What::Add {
                let after = after.min(self.arglist.len());
                let old = self.arglist.len();
                for (i, f) in files.iter().enumerate() {
                    let fnum = self.buflist_add_listed(f);
                    self.arglist.insert(after + i, ArgEntry { fname: f.clone(), fnum });
                }
                if old > 0 && self.win.arg_idx >= after {
                    self.win.arg_idx += files.len();
                }
            } else {
                self.arglist.clear();
                for (i, f) in files.iter().enumerate() {
                    // The first file takes over an empty buffer that is going to be edited.
                    let fnum = if will_edit && i == 0 && self.curbuf_reusable() {
                        self.buf.path = Some(std::path::PathBuf::from(full_name(f, false)));
                        self.buf.sfname = Some(f.clone());
                        self.buf.unloaded = true;
                        self.buf.id
                    } else {
                        self.buflist_add_listed(f)
                    };
                    self.arglist.push(ArgEntry { fname: f.clone(), fnum });
                }
            }
        }
        true
    }

    /// `arglist_del_files`: each word is a pattern for the names to take out.
    fn arglist_del_files(&mut self, words: &[String]) {
        for w in words {
            let Ok(pat) = super::bufarg::file_pat_to_reg_pat(w) else { break };
            let Some(re) = super::bufarg::vim_regex_ic(&pat, cfg!(any(target_os = "macos", windows))) else { break };
            let mut didone = false;
            let mut i = 0;
            while i < self.arglist.len() {
                if re.is_match(&self.alist_name(&self.arglist[i])) {
                    didone = true;
                    self.arglist.remove(i);
                    if self.win.arg_idx > i {
                        self.win.arg_idx -= 1;
                    }
                } else {
                    i += 1;
                }
            }
            if !didone {
                self.error(format!("E480: No match: {w}"));
            }
        }
    }

    /// `do_argfile`: edit entry `argn`.
    fn do_argfile(&mut self, argn: isize, bang: bool) {
        let old = self.win.arg_idx;
        let count = self.arglist.len() as isize;
        if argn < 0 || argn >= count {
            if count <= 1 {
                self.error("E163: There is only one file to edit");
            } else if argn < 0 {
                self.error("E164: Cannot go before first file");
            } else {
                self.error("E165: Cannot go beyond last file");
            }
            return;
        }
        self.set_jump();
        let name = self.alist_name(&self.arglist[argn as usize]);
        // With 'hidden' only the same file is checked for changes.
        let other = !self.buf_hide() || !self.buf.path.as_deref().is_some_and(|p| super::buffers::same_file(p, std::path::Path::new(&full_name(&name, false))));
        if (!self.buf_hide() || !other) && !bang && self.buf.is_dirty() && (!other || self.buf_nwindows() <= 1) {
            self.error(super::ex::DIRTY);
            return;
        }
        self.win.arg_idx = argn as usize;
        if self.edit_file_ex(&name, bang, true, true).is_err() {
            self.win.arg_idx = old;
        } else {
            self.set_jump();
        }
    }

    /// `ex_next` and its relatives: `:next [files]`, `:Next`, `:previous`, `:first`, `:last`, `:rewind`, `:argument`.
    pub(super) fn ex_arglist_cmd(&mut self, name: &str, bang: bool, addr_count: u32, line1: i64, line2: i64, arg: &str) -> Result<(), String> {
        let count = self.arglist.len() as isize;
        match name {
            "args" => {
                if arg.is_empty() {
                    if self.arglist.is_empty() {
                        return Ok(());
                    }
                    let items: Vec<String> = self.arglist.iter().map(|a| self.alist_name(a)).collect();
                    let text = list_in_columns(&items, self.win.arg_idx, self.cols);
                    self.info(text);
                    return Ok(());
                }
                return self.ex_arglist_cmd("next", bang, addr_count, line1, line2, arg);
            }
            "next" => {
                // Changes to the buffer are checked first.
                if !self.buf_hide() && !bang && self.buf.is_dirty() {
                    self.error(super::ex::DIRTY);
                    return Ok(());
                }
                let i = if arg.is_empty() {
                    self.win.arg_idx as isize + line2 as isize
                } else {
                    if !self.do_arglist(arg, What::Set, 0, true) {
                        return Ok(());
                    }
                    0
                };
                self.do_argfile(i, bang);
            }
            "previous" | "Next" => {
                let i = self.win.arg_idx as isize - line2 as isize;
                // Past the last one already: the last one.
                if i >= count {
                    self.do_argfile(count - 1, bang);
                } else {
                    self.do_argfile(i, bang);
                }
            }
            "rewind" | "first" => self.do_argfile(0, bang),
            "last" => self.do_argfile(count - 1, bang),
            "argument" => {
                let i = if addr_count > 0 { line2 as isize - 1 } else { self.win.arg_idx as isize };
                self.do_argfile(i, bang);
            }
            "argadd" => {
                let after = if addr_count > 0 { line2 as usize } else { self.win.arg_idx + 1 };
                self.do_arglist(arg, What::Add, after, false);
            }
            "argedit" => {
                let mut i = if addr_count > 0 { line2 as usize } else { self.win.arg_idx + 1 };
                let reusable = self.curbuf_reusable();
                if !self.do_arglist(arg, What::Add, i, true) {
                    return Ok(());
                }
                if self.win.arg_idx == 0 && self.buf.doc.text().is_empty() && (self.buf.path.is_none() || reusable) {
                    i = 0;
                }
                if i < self.arglist.len() {
                    self.do_argfile(i as isize, bang);
                }
            }
            _ => {
                // `argdelete`
                if addr_count > 0 || arg.is_empty() {
                    let (mut l1, mut l2) = (line1 as isize, line2 as isize);
                    if addr_count == 0 {
                        if self.win.arg_idx >= self.arglist.len() {
                            self.error("E610: No argument to delete");
                            return Ok(());
                        }
                        l1 = self.win.arg_idx as isize + 1;
                        l2 = l1;
                    } else if l2 > count {
                        l2 = count;
                    }
                    if addr_count == 1 {
                        l1 = l2;
                    }
                    let n = l2 - l1 + 1;
                    if !arg.is_empty() {
                        self.error("E474: Invalid argument");
                    } else if n <= 0 {
                        self.error("E16: Invalid range");
                    } else {
                        self.arglist.drain(l1 as usize - 1..l2 as usize);
                        let idx = self.win.arg_idx as isize;
                        if idx >= l2 {
                            self.win.arg_idx = (idx - n) as usize;
                        } else if idx > l1 {
                            self.win.arg_idx = l1 as usize;
                        }
                        if self.arglist.is_empty() {
                            self.win.arg_idx = 0;
                        } else if self.win.arg_idx >= self.arglist.len() {
                            self.win.arg_idx = self.arglist.len() - 1;
                        }
                    }
                } else {
                    self.do_arglist(arg, What::Del, 0, false);
                }
            }
        }
        Ok(())
    }

    pub(super) fn arglist_len(&self) -> usize {
        self.arglist.len()
    }

    /// `argv()` with no index: the list of names.
    pub(super) fn arg_names(&self) -> Vec<String> {
        self.arglist.iter().map(|a| self.alist_name(a)).collect()
    }
}

/// `list_in_columns`: the items in columns as wide as the longest, the current one in `[ ]`.
fn list_in_columns(items: &[String], current: usize, columns: usize) -> String {
    use unicode_width::UnicodeWidthStr;
    let n = items.len();
    let width = items.iter().enumerate().map(|(i, s)| s.width() + if i == current { 2 } else { 0 }).max().unwrap_or(0) + 1;
    let mut out = String::new();
    if columns < width {
        // One per line.
        for (i, s) in items.iter().enumerate() {
            if i > 0 {
                out.push('\n');
            }
            out.push_str(&if i == current { format!("[{s}]") } else { s.clone() });
        }
        return out;
    }
    let ncol = (columns + 1) / width;
    let nrow = n / ncol + usize::from(!n.is_multiple_of(ncol));
    let mut cur_row = 1;
    let mut col = 0usize;
    for i in 0..nrow * ncol {
        let idx = i / ncol + (i % ncol) * nrow;
        if idx < n {
            let last_col = (i + 1) % ncol == 0;
            let text = if idx == current { format!("[{}]", items[idx]) } else { items[idx].clone() };
            col += text.width();
            out.push_str(&text);
            if last_col {
                if col > 0 && cur_row < nrow {
                    out.push('\n');
                    col = 0;
                }
                cur_row += 1;
            } else {
                while !col.is_multiple_of(width) {
                    out.push(' ');
                    col += 1;
                }
            }
        } else if col > 0 {
            if cur_row < nrow {
                out.push('\n');
            }
            col = 0;
            cur_row += 1;
        }
    }
    out
}

