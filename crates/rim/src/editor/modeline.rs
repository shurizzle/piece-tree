//! Modelines: port of `do_modelines` and `chk_modeline` of Neovim (`buffer.c`).

use super::{Editor, script::Frame};

/// `min_vim_version()`: the oldest Vim version Neovim says it is compatible with (`vim_versions[0]`).
const MIN_VIM_VERSION: i64 = 801;

/// `ascii_isspace`: blank, tab, newline, vertical tab, form feed, carriage return.
fn isspace(c: u8) -> bool {
    matches!(c, b' ' | b'\t' | b'\n' | 0x0b | 0x0c | b'\r')
}

/// `strtoimax` as `try_getdigits` uses it: blanks, an optional sign and digits; the index after them (unchanged
/// when there are no digits) and the number, or None on overflow.
fn try_getdigits(b: &[u8], mut e: usize) -> (usize, Option<i64>) {
    let mut i = e;
    while b.get(i).is_some_and(|&c| isspace(c)) {
        i += 1;
    }
    let neg = b.get(i) == Some(&b'-');
    if matches!(b.get(i), Some(b'-' | b'+')) {
        i += 1;
    }
    let start = i;
    let mut n: Option<i64> = Some(0);
    while let Some(d) = b.get(i).filter(|c| c.is_ascii_digit()) {
        let d = i64::from(d - b'0');
        n = n.and_then(|n| n.checked_mul(10)).and_then(|n| if neg { n.checked_sub(d) } else { n.checked_add(d) });
        i += 1;
    }
    if i > start {
        e = i;
    }
    (e, n)
}

/// Where the modeline starts in `b` (the index of `ex:`, `vi:` or `vim`), if the line has one.
fn find_modeline(b: &[u8]) -> Option<usize> {
    let at = |i: usize| b.get(i).copied().unwrap_or(0);
    let mut prev: Option<u8> = None;
    for s in 0..b.len() {
        if prev.is_none_or(isspace) {
            if (prev.is_some() && b[s..].starts_with(b"ex:")) || b[s..].starts_with(b"vi:") {
                return Some(s);
            }
            // Accept both "vim" and "Vim".
            if (b[s] == b'v' || b[s] == b'V') && at(s + 1) == b'i' && at(s + 2) == b'm' {
                let e = if matches!(at(s + 3), b'<' | b'=' | b'>') { s + 4 } else { s + 3 };
                let (e, vers) = try_getdigits(b, e);
                // Overflow: `continue` skips `prev = *s` too.
                let Some(vers) = vers else { continue };
                let after = b.get(e + 1..).unwrap_or(&[]);
                let white = after.iter().position(|&c| c != b' ' && c != b'\t').unwrap_or(after.len());
                let c3 = at(s + 3);
                if at(e) == b':'
                    && (b[s] != b'V' || after[white..].starts_with(b"set"))
                    && (c3 == b':'
                        || (MIN_VIM_VERSION >= vers && c3.is_ascii_digit())
                        || (MIN_VIM_VERSION < vers && c3 == b'<')
                        || (MIN_VIM_VERSION > vers && c3 == b'>')
                        || (MIN_VIM_VERSION == vers && c3 == b'='))
                {
                    return Some(s);
                }
            }
        }
        prev = Some(b[s]);
    }
    None
}

impl Editor {
    /// `do_modelines`: the modelines of the current buffer, in its first and then its last `modelines` lines.
    pub(super) fn do_modelines(&mut self) {
        let mut nmlines = usize::try_from(self.buf.opts.modelines).unwrap_or(0);
        if !self.buf.opts.modeline || nmlines == 0 {
            return;
        }
        let count = self.buf.doc.text().line_count();
        let mut lnum = 1;
        while self.buf.opts.modeline && lnum <= count && lnum <= nmlines {
            if !self.chk_modeline(lnum) {
                nmlines = 0;
            }
            lnum += 1;
        }
        let mut lnum = count;
        while self.buf.opts.modeline && lnum > 0 && lnum > nmlines && lnum > count.saturating_sub(nmlines) {
            if !self.chk_modeline(lnum) {
                nmlines = 0;
            }
            lnum -= 1;
        }
    }

    /// `chk_modeline`: line `lnum` (1-based) set the options of its modeline; false on an error.
    fn chk_modeline(&mut self, lnum: usize) -> bool {
        let line = self.buf.doc.text().line(lnum - 1).into_owned();
        let Some(mut s) = find_modeline(line.as_bytes()) else { return true };
        // Skip over "ex:", "vi:" or "vim:".
        let b = line.as_bytes();
        loop {
            s += 1;
            if b[s - 1] == b':' {
                break;
            }
        }
        let mut buf = b[s..].to_vec();
        let mut retval = true;
        self.scripts.stack.push(Frame::modeline(lnum));
        let (mut s, mut end) = (0, false);
        while !end {
            while matches!(buf.get(s), Some(b' ' | b'\t')) {
                s += 1;
            }
            if s >= buf.len() {
                break;
            }
            // Find the end of the set command: ':' or the end of the line. "\:" becomes ":".
            let mut e = s;
            while e < buf.len() && buf[e] != b':' {
                if buf[e] == b'\\' && buf.get(e + 1) == Some(&b':') {
                    buf.remove(e);
                }
                e += 1;
            }
            if e >= buf.len() {
                end = true;
            }
            // With "set" a terminating ':' is required and what follows it is not interpreted. "se" for Elvis.
            if buf[s..].starts_with(b"set ") || buf[s..].starts_with(b"se ") {
                if e >= buf.len() {
                    break;
                }
                end = true;
                s += if buf[s + 2] == b' ' { 3 } else { 4 };
            }
            // Skips an empty "::".
            if s < e {
                let arg = String::from_utf8_lossy(&buf[s..e]).into_owned();
                self.opt_modeline = true;
                let set = self.set_cmd_in(&arg, super::options::Scope::Local);
                self.opt_modeline = false;
                if let Err(m) = set {
                    self.error(m);
                    retval = false;
                    break;
                }
            }
            s = if e >= buf.len() { e } else { e + 1 };
        }
        self.scripts.stack.pop();
        retval
    }
}
