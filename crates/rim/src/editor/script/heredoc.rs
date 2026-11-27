//! Here documents: `:let x =<< [trim] [eval] MARKER` (`heredoc_get` and `eval_all_expr_in_str` of `eval/vars.c`).

use super::{
    docmd::ReaderBase,
    expr::{self, at, skipwhite},
    value::{Enc, Value},
};
use crate::editor::Editor;

fn is_white(b: u8) -> bool {
    b == b' ' || b == b'\t'
}

/// A here document being read (`heredoc_get`'s locals).
pub(super) struct Heredoc {
    marker: String,
    /// The indent of the `:let` line (`trim`), taken off the lines compared with the marker.
    marker_indent_len: usize,
    /// `trim`: -1 until the first line says how much to take off.
    text_indent_len: i64,
    text_indent: String,
    evalstr: bool,
    eval_failed: bool,
    /// `*eap->cmdlinep`.
    cmdline: String,
    skip: bool,
    lines: Vec<String>,
}

/// What a typed here document assigns when its lines are all there: `:let` with its variables.
pub(super) struct HeredocTarget {
    pub arg: String,
    pub var_count: usize,
    pub semicolon: bool,
    pub is_const: bool,
}

/// A here document typed at the `:` prompt: the following lines typed are its text. `target` is None when it is
/// only being skipped (an inactive block).
pub(in crate::editor) struct PendingHeredoc {
    hd: Heredoc,
    target: Option<HeredocTarget>,
}

impl Editor {
    /// The first part of `heredoc_get`: the words before the marker and the marker itself. `cmd` is what follows `=<<`
    /// (without newlines). None after an error (given).
    fn heredoc_open(&mut self, cmdline: &str, cmd: &str, skip: bool) -> Option<Heredoc> {
        let mut cmd = cmd.trim_start_matches([' ', '\t']);
        let (mut marker_indent_len, mut text_indent_len) = (0usize, 0i64);
        let mut evalstr = false;
        // The optional words before the marker.
        loop {
            let word = |w: &str| cmd.starts_with(w) && cmd.as_bytes().get(w.len()).is_none_or(|&b| is_white(b));
            if word("trim") {
                cmd = cmd[4..].trim_start_matches([' ', '\t']);
                // The indent of the `:let` line is taken off the lines that are compared with the marker.
                marker_indent_len += cmdline.bytes().take_while(|&b| is_white(b)).count();
                text_indent_len = -1;
                continue;
            }
            if word("eval") {
                cmd = cmd[4..].trim_start_matches([' ', '\t']);
                evalstr = true;
                continue;
            }
            break;
        }
        if cmd.is_empty() || cmd.starts_with('"') {
            self.error("E172: Missing marker");
            return None;
        }
        let end = cmd.find([' ', '\t']).unwrap_or(cmd.len());
        let rest = cmd[end..].trim_start_matches([' ', '\t']);
        if !rest.is_empty() && !rest.starts_with('"') {
            self.error(format!("E488: Trailing characters: {}", &cmd[end..]));
            return None;
        }
        let marker = &cmd[..end];
        if marker.as_bytes()[0].is_ascii_lowercase() {
            self.error("E221: Marker cannot start with lower case letter");
            return None;
        }
        Some(Heredoc { marker: marker.to_string(), marker_indent_len, text_indent_len, text_indent: String::new(), evalstr, eval_failed: false, cmdline: cmdline.to_string(), skip, lines: Vec::new() })
    }

    /// One line of the text: true when it is the marker, which ends the here document.
    fn heredoc_feed(&mut self, hd: &mut Heredoc, theline: &str) -> bool {
        // With `trim` the indent of the `:let` line is skipped to find the marker.
        let mi = if hd.marker_indent_len > 0 && theline.as_bytes().starts_with(&hd.cmdline.as_bytes()[..hd.marker_indent_len]) { hd.marker_indent_len } else { 0 };
        if hd.marker == theline.get(mi..).unwrap_or("") {
            return true;
        }
        if hd.eval_failed {
            return false;
        }
        if hd.text_indent_len == -1 && !theline.is_empty() {
            // `trim`: the indent of the first line is taken off all.
            let n = theline.bytes().take_while(|&b| is_white(b)).count();
            hd.text_indent = theline[..n].to_string();
            hd.text_indent_len = n as i64;
        }
        let ti = if hd.text_indent_len >= 0 { hd.text_indent.bytes().zip(theline.bytes()).take_while(|(a, b)| a == b).count() } else { 0 };
        let text = &theline[ti..];
        if hd.evalstr && !hd.skip {
            match self.eval_all_expr_in_str(text) {
                Some(t) => hd.lines.push(t),
                None => hd.eval_failed = true,
            }
        } else {
            hd.lines.push(text.to_string());
        }
        false
    }

    /// A typed command line whose here document has no lines in it: they are typed next.
    pub(super) fn heredoc_is_typed(&self, cmd: &str) -> bool {
        self.scripts.typed && !cmd.contains('\n') && matches!(self.scripts.readers.last().map(|r| &r.base), None | Some(ReaderBase::None))
    }

    pub(super) fn heredoc_get(&mut self, cmdline: &str, cmd: &str, skip: bool) -> (Option<Vec<String>>, Option<String>) {
        // A newline in the argument: the lines come from the argument.
        let (cmd, mut line_arg) = match cmd.find('\n') {
            Some(i) => (&cmd[..i], Some(&cmd[i + 1..])),
            None => (cmd, None),
        };
        if line_arg.is_none() && matches!(self.scripts.readers.last().map(|r| &r.base), None | Some(ReaderBase::None)) {
            self.error("E991: Cannot use =<< here");
            return (None, None);
        }
        let Some(mut hd) = self.heredoc_open(cmdline, cmd, skip) else { return (None, None) };
        loop {
            let theline = match line_arg {
                Some("") => None,
                Some(rest) => {
                    let (l, r) = rest.split_once('\n').unwrap_or((rest, ""));
                    line_arg = Some(r);
                    Some(l.to_string())
                }
                None => self.ea_getline(false),
            };
            let Some(theline) = theline else {
                self.error(format!("E990: Missing end marker '{}'", hd.marker));
                break;
            };
            if self.heredoc_feed(&mut hd, &theline) {
                break;
            }
        }
        // What follows the here document in the argument is the next command.
        let next = line_arg.filter(|r| !r.is_empty()).map(str::to_string);
        (if hd.eval_failed { None } else { Some(hd.lines) }, next)
    }

    /// A here document typed at the `:` prompt: the lines that are typed next are its text (`getexline`). `target` is
    /// what to assign when they are all there, None when the command is only being skipped.
    // shortcut: the `:let` of a typed here document ends the typed line, so it is run when its last line comes; a
    // command typed before it on the same line has run already (Neovim does the same: nothing follows a here document)
    pub(super) fn heredoc_pend(&mut self, cmdline: &str, cmd: &str, skip: bool, target: Option<HeredocTarget>) {
        if let Some(hd) = self.heredoc_open(cmdline, cmd, skip) {
            self.scripts.pending_here = Some(PendingHeredoc { hd, target });
        }
    }

    /// A here document or a function body waits for typed lines.
    #[cfg(test)]
    pub(in crate::editor) fn typed_input_pending(&self) -> bool {
        self.scripts.pending_here.is_some() || self.scripts.pending_func.is_some() || self.scripts.pending_append.is_some()
    }

    /// Esc or Ctrl-C at the lines typed for a here document or a function.
    #[cfg(test)]
    pub(in crate::editor) fn typed_abort(&mut self) {
        if self.scripts.pending_append.is_some() {
            self.append_typed_line("", true);
        } else if self.scripts.pending_func.is_some() {
            self.func_abort();
        } else {
            self.heredoc_abort();
        }
    }

    /// Esc or Ctrl-C at the lines of a here document.
    pub(in crate::editor) fn heredoc_abort(&mut self) {
        self.scripts.typed = true;
        self.heredoc_typed_line("", true);
        self.scripts.typed = false;
    }

    /// One line typed while a here document is pending; `abort` (Esc or Ctrl-C) ends it as a missing end marker, the
    /// lines so far being the result (`getexline` gives NULL).
    pub(in crate::editor) fn heredoc_typed_line(&mut self, line: &str, abort: bool) {
        let Some(mut p) = self.scripts.pending_here.take() else { return };
        if abort {
            self.error(format!("E990: Missing end marker '{}'", p.hd.marker));
        } else if !self.heredoc_feed(&mut p.hd, line) {
            self.scripts.pending_here = Some(p);
            return;
        }
        if let (false, Some(t)) = (p.hd.eval_failed, p.target) {
            let rhs = Value::list(p.hd.lines.into_iter().map(|s| Value::Str(s.into())).collect());
            self.ex_let_vars(&t.arg, 0, &rhs, t.semicolon, t.var_count, t.is_const, Some('='));
        }
    }
    /// `eval_all_expr_in_str`: `{expr}` in `s` is replaced by its value, `{{` and `}}` are a brace. None for an error.
    fn eval_all_expr_in_str(&mut self, s: &str) -> Option<String> {
        let mut out = String::new();
        let mut p = 0;
        while p < s.len() {
            let lit = p;
            while p < s.len() && !matches!(s.as_bytes()[p], b'{' | b'}') {
                p += 1;
            }
            let mut escaped = false;
            if p < s.len() && at(s, p + 1) == s.as_bytes()[p] {
                // An escaped brace: it belongs to the literal text.
                p += 1;
                escaped = true;
            } else if p < s.len() && s.as_bytes()[p] == b'}' {
                self.error(format!("E1278: Stray '}}' without a matching '{{': {s}"));
                return None;
            }
            out.push_str(&s[lit..p]);
            if p >= s.len() {
                break;
            }
            if escaped {
                p += 1;
                continue;
            }
            p = self.eval_one_expr_in_str(s, p, &mut out)?;
        }
        Some(out)
    }

    /// `eval_one_expr_in_str`: the expression in the `{` at `p`, its value added to `out`; the position after the `}`.
    fn eval_one_expr_in_str(&mut self, s: &str, p: usize, out: &mut String) -> Option<usize> {
        let block_start = skipwhite(s, p + 1);
        if block_start >= s.len() {
            self.error(format!("E1279: Missing '}}': {}", &s[p..]));
            return None;
        }
        // `skip_expr`: the end of the expression, without evaluating it.
        let mut block_end = block_start;
        match self.eval1(s, &mut block_end, false) {
            Ok(_) => {}
            Err(expr::Fail::Msg(m)) => {
                self.error(m);
                return None;
            }
            Err(_) => return None,
        }
        block_end = skipwhite(s, block_end);
        if at(s, block_end) != b'}' {
            self.error(format!("E1279: Missing '}}': {}", &s[p..]));
            return None;
        }
        // `eval_to_string`: a List or Dictionary is its `string()`, anything else its text.
        match self.eval(&s[block_start..block_end]) {
            Ok(v) => {
                out.push_str(&match v {
                    Value::List(_) | Value::Dict(_) => v.encode(Enc::String).0,
                    v => self.tv_str(&v),
                });
                Some(block_end + 1)
            }
            Err(m) => {
                self.error(m);
                None
            }
        }
    }
}
