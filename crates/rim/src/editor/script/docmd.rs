//! Running command lines and scripts: Neovim's `do_cmdline` and `do_one_cmd` (`ex_docmd.c`),
//! `getsourceline` and `do_source` (`runtime.c`), and the error header of `emsg` (`message.c`).
//!
//! Not ported yet, with the commands that need them: reading further lines for a command
//! (`get_loop_line`, `:function`, `:append`), `:try` and exceptions, `:silent`.

use std::{collections::HashMap, fs, path::PathBuf, rc::Rc};

use super::{
    Res, Vars,
    cmdline::{self, BANG, EXTRA, NEEDARG, RANGE, TRLBAR, XFILE, ZEROR, skipwhite},
    range::AddrType,
    cstack::{CSL_HAD_CONT, CSL_HAD_ENDLOOP, CSL_HAD_FINA, CSL_HAD_LOOP, CSF_ACTIVE, CSF_FINALLY, CSF_FOR, CSF_TRY, CSF_WHILE, Cstack, rewind_conditionals},
};
use crate::editor::{
    Editor,
    ex::{Addr, Base, LineRange, abbr},
};

/// The lines of a file being sourced (`source_cookie_T`).
pub(super) struct SourceCookie {
    /// The physical lines, each with its newline when it has one.
    lines: Vec<String>,
    pos: usize,
    /// A line read ahead to see whether it continues the one before.
    nextline: Option<String>,
    pub(super) sourcing_lnum: usize,
    pub finished: bool,
}

impl Frame {
    /// The report of an exception that was thrown at `name` (`estack_push(ETYPE_EXCEPT, ..)`).
    pub(super) fn except(name: Rc<str>, lnum: usize) -> Self {
        Frame { kind: FrameKind::Except, name, lnum, cookie: SourceCookie::new("") }
    }

    /// A call of the function `name` (`estack_push_ufunc` with line 1).
    pub(super) fn new_func(name: Rc<str>) -> Self {
        Frame { kind: FrameKind::Func, name, lnum: 1, cookie: SourceCookie::new("") }
    }
}

impl SourceCookie {
    fn new(text: &str) -> Self {
        Self { lines: text.split_inclusive('\n').map(str::to_string).collect(), pos: 0, nextline: None, sourcing_lnum: 0, finished: false }
    }

    /// The lines of a buffer (no newlines), the first being line `first_lnum + 1`.
    fn from_lines(lines: Vec<String>, first_lnum: usize) -> Self {
        Self { lines, pos: 0, nextline: None, sourcing_lnum: first_lnum, finished: false }
    }

    /// `get_one_sourceline`: a line, without its newline unless that is escaped by `Ctrl-V`.
    fn get_one_sourceline(&mut self) -> Option<String> {
        self.sourcing_lnum += 1;
        let mut buf = String::new();
        let mut have_read = false;
        while self.pos < self.lines.len() {
            buf.push_str(&self.lines[self.pos]);
            self.pos += 1;
            have_read = true;
            if buf.ends_with('\n') {
                let b = buf.as_bytes();
                let len = b.len() as i64;
                let mut c = len - 2;
                while c >= 0 && b[c as usize] == 0x16 {
                    c -= 1;
                }
                if (len & 1) != (c & 1) {
                    // An escaped newline: the line goes on.
                    self.sourcing_lnum += 1;
                    continue;
                }
                buf.pop();
            }
            break;
        }
        have_read.then_some(buf)
    }

    /// `getsourceline`: the next line; with `do_concat` the `\` lines after it are joined (one line is read ahead then).
    fn getsourceline(&mut self, do_concat: bool) -> Option<String> {
        let mut line = if self.finished {
            None
        } else if let Some(n) = self.nextline.take() {
            self.sourcing_lnum += 1;
            Some(n)
        } else {
            self.get_one_sourceline()
        }?;
        if !do_concat {
            return Some(line);
        }
        self.sourcing_lnum -= 1;
        self.nextline = self.get_one_sourceline();
        let continues = |l: &str| {
            let p = skipwhite(l);
            p.starts_with('\\') || p.starts_with("\"\\ ")
        };
        if self.nextline.as_deref().is_some_and(continues) {
            while let Some(n) = self.nextline.as_deref() {
                // `concat_continued_line`
                let l = skipwhite(n);
                if !l.starts_with("\"\\ ") {
                    if l.is_empty() || !l.starts_with('\\') {
                        break;
                    }
                    line.push_str(&l[1..]);
                }
                self.nextline = self.get_one_sourceline();
            }
        }
        Some(line)
    }
}

/// Where the lines a command reads (`ea_getline`) come from: the state of one `do_cmdline` (`cmd_loop_cookie` and the
/// `lines_ga` of Neovim).
pub(super) struct Reader {
    /// The lines kept for `:while` and `:for` to run again, with their line numbers (`lines_ga`).
    pub lines: Vec<(String, usize)>,
    pub current_line: usize,
    /// `cmd_getline == get_loop_line`: the command reads through `lines`.
    pub loop_getline: bool,
    /// `cmd_loop_cookie.repeating`: the lines are replayed, not read.
    pub repeating: bool,
    /// What `get_loop_line` and a plain command read from when `lines` has nothing more (`fgetline`).
    pub base: ReaderBase,
}

pub(super) enum ReaderBase {
    /// The items of the List of `execute()` number `i` of `State::list_cookies` (`get_list_line`).
    List(usize),
    /// The lines of the user function call number `i` of `State::calls` (`get_func_line`).
    Func(usize),
    /// A typed command line: nothing can be read (`getexline` is not supported).
    None,
    /// The file being sourced (`getsourceline`).
    Source,
    /// The reader of the `do_cmdline` that called this one (`:execute` passes its `ea_getline`).
    Outer,
}

/// One entry of the execution stack (`estack_T`): a script being sourced.
/// What an entry of the execution stack is (`etype_T`).
#[derive(Clone, Copy, PartialEq)]
pub(super) enum FrameKind {
    Script,
    Func,
    /// An uncaught exception being reported (`ETYPE_EXCEPT`): named by where it was thrown.
    Except,
}

pub(super) struct Frame {
    pub(super) kind: FrameKind,
    pub(super) name: Rc<str>,
    /// The line being executed (`SOURCING_LNUM`); of an entry below the top, the line that sourced
    /// the next.
    pub(super) lnum: usize,
    pub(super) cookie: SourceCookie,
}

/// What the scripts of the editor keep: their `s:` variables, the files being sourced, the state
/// of the error messages.
#[derive(Default)]
pub(in crate::editor) struct State {
    /// `s:` variables of each script; 0 is for the commands typed.
    pub vars: Vec<Vars>,
    ids: HashMap<PathBuf, usize>,
    /// The script `s:` means now.
    pub cur: usize,
    pub(super) stack: Vec<Frame>,
    /// `did_emsg`: an error was reported since the last line was read (or since the start of the
    /// innermost `do_cmdline`).
    pub did_emsg: bool,
    /// `did_emsg++` of `emsg_multiline`: every error counts, where the flag above is only set (and cleared by `do_cmdline`).
    pub emsg_count: u64,
    /// `starting == 0`: the init file and the files of the command line are loaded (`has('vim_starting')` is true until then).
    pub started: bool,
    pub did_endif: bool,
    /// `do_cmdline` nesting (`cmdline_call_depth`).
    depth: usize,
    /// The `Reader` of each `do_cmdline` running, the innermost last.
    pub(super) readers: Vec<Reader>,
    /// `*eap->cmdlinep`: the whole command line the running command came from (a `trim` here document needs its indent).
    pub cmdlinep: String,
    /// The user functions (`func_hashtab`), by name.
    pub funcs: super::userfunc::Funcs,
    /// Every function by its number (`UFunc::id`), also the ones a redefinition or `:delfunction` took out of `funcs`.
    pub func_ids: HashMap<usize, std::rc::Rc<super::userfunc::UFunc>>,
    pub last_func_id: usize,
    /// `get_lambda_name`: the number of the last lambda.
    pub last_lambda: usize,
    /// `func_nr`: the number of the last function that went in a Dictionary (its name).
    pub last_dict_func: usize,
    /// `trylevel`: the `:try` conditionals open, over all the nested `do_cmdline`s.
    pub trylevel: usize,
    /// An exception is being thrown, and which (`did_throw`, `current_exception`).
    pub did_throw: bool,
    pub current_exception: Option<super::exceptions::ExRef>,
    /// An uncaught exception of the command that ran is thrown again in the `do_cmdline` that called it; `:return` or
    /// `:finish` of a nested one must find the conditionals of the outer.
    pub need_rethrow: bool,
    pub check_cstack: bool,
    /// An error under `abort`, a throw not caught: everything but finally clauses is cancelled.
    pub force_abort: bool,
    pub cause_abort: bool,
    pub suppress_errthrow: bool,
    /// The messages of the command that runs, to be thrown (`msg_list`).
    pub msg_list: Option<Vec<super::exceptions::Msg>>,
    /// The message that comes next is the one to throw if there are several (`emsg_severe`).
    pub emsg_severe: bool,
    /// The exceptions that were caught, the one of the innermost catch clause last.
    pub caught_stack: Vec<super::exceptions::ExRef>,
    /// What `trans_function_name` found about a Dictionary item.
    pub fudi: super::userfunc::FuncDict,
    /// `eval_lavars_used`: set while a lambda is skipped over; true when it uses a local variable or argument.
    pub lavars: Option<bool>,
    /// A term of the expression being evaluated has a value (see the value of a lambda that fails).
    pub eval_progress: bool,
    /// `current_sctx.sc_seq`: which run of the script this is (a script sourced again is another run), and the last one given.
    pub cur_seq: usize,
    pub last_seq: usize,
    /// A function typed at the prompt that waits for the lines of its body.
    pub pending_func: Option<super::userfunc::PendingFunc>,
    /// The running calls of user functions, the innermost last (`current_funccal`).
    pub calls: Vec<super::userfunc::FuncCall>,
    /// The line source the next `do_cmdline` reads from, when it is not the file being sourced (`get_func_line`).
    pub(super) next_base: Option<ReaderBase>,
    /// `'maxfuncdepth'`.
    pub maxfuncdepth: usize,
    /// `eap->line1` and `line2` of the `:call` that runs: `a:firstline` and `a:lastline`.
    pub call_range: (usize, usize),
    /// The range of the `:call` being run, for the function it calls first.
    pub call_range_cmd: Option<(usize, usize)>,
    /// A `range` function was called: `:call` calls it once for the whole range (`doesrange`).
    pub does_range: bool,
    /// A here document typed at the prompt that waits for its lines.
    pub pending_here: Option<super::heredoc::PendingHeredoc>,
    /// A typed `:append`, `:insert` or `:change` that waits for its lines.
    pub pending_append: Option<super::append::AppendState>,
    /// `eap->nextcmd` a command sets itself while it runs (a here document in a string).
    pub nextcmd: Option<String>,
    /// The running `do_cmdline` reads a sourced file (`getline_equal(.., getsourceline)`).
    pub sourcing: bool,
    /// `DOCMD_VERBOSE`: errors of `do_one_cmd` are followed by the command line.
    verbose: bool,
    /// `msg_silent` (`:silent`: messages are not shown) and `emsg_silent` (`:silent!`: errors are
    /// not shown and do not end the line).
    pub msg_silent: u32,
    pub emsg_silent: u32,
    /// `emsg_noredir`: an error under `:silent!` is not written to a redirection either (`execute()`).
    pub emsg_noredir: bool,
    /// The Lists `execute()` runs line by line: the List and the index of the next item (`GetListLineCookie`), kept in `for_watch` like a `:for` does.
    pub list_cookies: Vec<(super::value::List, std::rc::Rc<std::cell::Cell<usize>>)>,
    /// `emsg_skip`: while a command is only being walked over (to find where it ends) its errors are not given.
    pub emsg_skip: u32,
    /// `tv_equal_recurse_limit`.
    pub equal_limit: usize,
    /// `global_busy`: a `:global` runs its commands; their reports come once at the end.
    pub global_busy: bool,
    /// `called_emsg`: errors given so far, also when they were not shown (`:silent!`).
    pub called_emsg: usize,
    /// An error was given while `:global` ran its commands: `emsg` makes `global_busy` 2 and `global_exe` stops.
    pub global_error: bool,
    /// `sub_nsubs` and `sub_nlines`: what the `:s` of the command line (or of a `:global`) changed so far.
    pub sub_nsubs: usize,
    pub sub_nlines: usize,
    /// `KeyTyped`: the command line comes from the user, not from a script.
    pub typed: bool,
    /// The command that ran ends its line (an `:unlet` whose lvalue failed): no command after it.
    pub drop_next: bool,
    /// What follows the argument of the command that runs, up to the end of its line (`| echo 1`): a message that quotes
    /// its argument by pointer shows it too (`E716: Key not present in Dictionary: "zz | echo 1"`).
    pub arg_rest: String,
    /// The `:for` loops over a List (its address) with the index of the item they take next.
    pub for_watch: Vec<(usize, std::rc::Weak<std::cell::Cell<usize>>)>,
    /// `eval7`'s `recurse`: how deep the expression being evaluated nests.
    pub(super) expr_depth: usize,
    /// A command asked to quit.
    pub quitting: bool,
    /// `last_sourcing_name` and `last_sourcing_lnum` of `message.c`.
    pub(super) last_name: Option<Rc<str>>,
    last_lnum: usize,
}

impl State {
    pub fn new() -> Self {
        Self { vars: vec![Vars::default()], maxfuncdepth: 100, ..Self::default() }
    }

    /// `reset_last_sourcing`: the next error names its file and line again.
    pub fn reset_last_sourcing(&mut self) {
        self.last_name = None;
        self.last_lnum = 0;
    }

    /// `estack_sfile(ESTACK_NONE)`: `a[3]..b`.
    pub(super) fn chain_string(&self) -> String {
        // `estack_sfile`: "function One[123]..Two[456]..Three": the type is named when it changes (a script that follows a
        // function is "script a.vim").
        let n = self.stack.len();
        let mut last = FrameKind::Script;
        let mut out = Vec::new();
        for (i, f) in self.stack.iter().enumerate() {
            let mut t = String::new();
            if f.kind != last {
                t = match f.kind {
                    FrameKind::Script => "script ",
                    FrameKind::Func => "function ",
                    FrameKind::Except => "",
                }
                .to_string();
                last = f.kind;
            }
            out.push(if i + 1 < n && f.lnum != 0 { format!("{t}{}[{}]", f.name, f.lnum) } else { format!("{t}{}", f.name) });
        }
        out.join("..")
    }

    /// `msg_source`: the lines that go in front of an error: where it is, when that changed.
    /// What `get_emsg_source` and `get_emsg_lnum` give for an error that is not shown (`:silent!`):
    /// the same lines, with nothing remembered.
    pub fn error_header_silent(&self) -> Vec<String> {
        let mut out = Vec::new();
        let Some(top) = self.stack.last() else { return out };
        let other = self.last_name.as_deref() != Some(&*top.name);
        if other {
            out.push(format!("Error in {}:", self.chain_string()));
        }
        if (other || top.lnum != self.last_lnum) && top.lnum != 0 {
            out.push(format!("line {:>4}:", top.lnum));
        }
        out
    }

    pub fn error_header(&mut self) -> Vec<String> {
        let mut out = Vec::new();
        let Some(top) = self.stack.last() else {
            self.last_name = None;
            return out;
        };
        let (name, lnum) = (top.name.clone(), top.lnum);
        let other = self.last_name.as_deref() != Some(&*name);
        if other {
            out.push(format!("Error in {}:", self.chain_string()));
        }
        if (other || lnum != self.last_lnum) && lnum != 0 {
            out.push(format!("line {lnum:>4}:"));
            self.last_lnum = lnum;
        }
        if other {
            self.last_name = Some(name);
        }
        out
    }
}

/// Which getter of a `do_cmdline` a command reads through: its own `fgetline`, or `get_loop_line`.
#[derive(Clone, Copy)]
enum Getter {
    Base,
    Loop,
}

/// `has_loop_cmd`: the line starts with `:while` or `:for` (after modifiers).
fn has_loop_cmd(line: &str) -> bool {
    let mut p = line;
    loop {
        p = p.trim_start_matches([' ', '\t', ':']);
        let w = p.split(|c: char| !c.is_ascii_alphabetic()).next().unwrap_or("");
        if !w.is_empty() && abbr(w, "vert", "vertical") {
            p = &p[w.len()..];
        } else {
            break;
        }
    }
    p.starts_with("wh") || p.starts_with("for")
}

impl Editor {
    /// Runs the command line(s) `line`, which may hold `|`, comments and blocks. Returns false to quit.
    pub(in crate::editor) fn command(&mut self, line: &str) -> bool {
        self.do_cmdline(Some(line.to_string()), false, false, false)
    }

    /// `getsourceline`: the next line of the file being sourced; its number becomes the current one.
    fn getsourceline(&mut self, do_concat: bool) -> Option<String> {
        let f = self.scripts.stack.last_mut()?;
        f.lnum = f.cookie.sourcing_lnum + 1;
        f.cookie.getsourceline(do_concat)
    }

    /// The reader number `i` ends, through `:execute`, at a file, a function, or nothing.
    fn root_base(&self, mut i: usize) -> Option<usize> {
        loop {
            match self.scripts.readers[i].base {
                ReaderBase::Outer => i = i.checked_sub(1)?,
                ReaderBase::None => return None,
                _ => return Some(i),
            }
        }
    }

    /// `getline_equal(.., getsourceline)`.
    fn base_is_source(&self, i: usize) -> bool {
        self.root_base(i).is_some_and(|r| matches!(self.scripts.readers[r].base, ReaderBase::Source))
    }

    /// The running `do_cmdline` reads the lines of a user function: its call number.
    fn func_call_of(&self) -> Option<usize> {
        let top = self.scripts.readers.len().checked_sub(1)?;
        match self.scripts.readers[self.root_base(top)?].base {
            ReaderBase::Func(c) => Some(c),
            _ => None,
        }
    }

    fn base_is_func_without_abort(&self) -> bool {
        self.func_call_of().is_some_and(|c| self.scripts.calls[c].func.flags & super::userfunc::FC_ABORT == 0)
    }

    fn base_is_func_with_abort(&self) -> bool {
        self.func_call_of().is_some_and(|c| self.scripts.calls[c].func.flags & super::userfunc::FC_ABORT != 0)
    }

    /// `source_finished`: the file being sourced was finished by a `:finish`.
    fn input_finished_script(&self) -> bool {
        let Some(top) = self.scripts.readers.len().checked_sub(1) else { return false };
        self.base_is_source(top) && self.scripts.stack.last().is_some_and(|f| f.cookie.finished)
    }

    /// `source_finished` for a file and `func_has_ended` for a function: no more lines are to be read.
    fn input_finished(&self) -> bool {
        let Some(top) = self.scripts.readers.len().checked_sub(1) else { return false };
        match self.root_base(top).map(|r| &self.scripts.readers[r].base) {
            Some(ReaderBase::Source) => self.scripts.stack.last().is_some_and(|f| f.cookie.finished),
            Some(ReaderBase::Func(c)) => self.func_has_ended(*c),
            _ => false,
        }
    }

    /// The `Reader` of the running `do_cmdline`.
    fn rd(&mut self) -> &mut Reader {
        self.scripts.readers.last_mut().expect("a do_cmdline is running")
    }

    /// `eap->ea_getline`: the next line a command reads for itself (`:let x =<< END`), without joining `\` lines. None
    /// when nothing can be read: a typed command line, or the end of the file.
    pub(in crate::editor) fn ea_getline(&mut self, do_concat: bool) -> Option<String> {
        let top = self.scripts.readers.len().checked_sub(1)?;
        self.getline_at(top, if self.scripts.readers[top].loop_getline { Getter::Loop } else { Getter::Base }, do_concat)
    }

    /// The line `cmd_getline` of the `do_cmdline` number `i` gives (`get_loop_line`) or its `fgetline`.
    fn getline_at(&mut self, i: usize, getter: Getter, do_concat: bool) -> Option<String> {
        if matches!(getter, Getter::Loop) {
            let r = &mut self.scripts.readers[i];
            if r.current_line + 1 >= r.lines.len() {
                // Trying to read past `:endwhile` / `:endfor` (replaying) gives nothing.
                if r.repeating {
                    return None;
                }
                // The first time inside the loop: read it and keep it.
                let line = self.getline_at(i, Getter::Base, do_concat)?;
                let lnum = self.sourcing_lnum();
                let r = &mut self.scripts.readers[i];
                r.lines.push((line.clone(), lnum));
                r.current_line += 1;
                return Some(line);
            }
            r.current_line += 1;
            let (line, lnum) = r.lines[r.current_line].clone();
            self.set_sourcing_lnum(lnum);
            return Some(line);
        }
        match self.scripts.readers[i].base {
            ReaderBase::None => None,
            ReaderBase::Source => self.getsourceline(do_concat),
            ReaderBase::Func(c) => self.get_func_line(c),
            ReaderBase::List(c) => self.get_list_line(c),
            ReaderBase::Outer => {
                let parent = i.checked_sub(1)?;
                let g = if self.scripts.readers[parent].loop_getline { Getter::Loop } else { Getter::Base };
                self.getline_at(parent, g, do_concat)
            }
        }
    }

    /// `get_list_line`: the next item of the List `execute()` runs, as a line.
    fn get_list_line(&mut self, c: usize) -> Option<String> {
        let (list, next) = &self.scripts.list_cookies[c];
        let n = next.get();
        // `usize::MAX`: the last item was taken (`li` is NULL), what is added later is not read.
        let item = list.borrow().get(n).cloned().filter(|_| n != usize::MAX)?;
        next.set(if n + 1 < list.borrow().len() { n + 1 } else { usize::MAX });
        self.str_chk(&item)
    }

    fn set_sourcing_lnum(&mut self, lnum: usize) {
        if let Some(f) = self.scripts.stack.last_mut() {
            f.lnum = lnum;
        }
    }

    fn sourcing_lnum(&self) -> usize {
        self.scripts.stack.last().map_or(0, |f| f.lnum)
    }

    /// `do_cmdline`: runs `cmdline` and, when `sourcing`, the lines of the file being sourced after
    /// it (`repeat`: until all are read, `DOCMD_REPEAT`; else only to close the blocks `cmdline`
    /// opens). `verbose` is `DOCMD_VERBOSE`. Returns false to quit.
    pub(in crate::editor) fn do_cmdline(&mut self, cmdline: Option<String>, sourcing: bool, repeat: bool, verbose: bool) -> bool {
        // Every level of `:source` and `:execute` nests the whole command dispatcher: the stack
        // grows on demand, so the 200 levels of Neovim fit.
        stacker::maybe_grow(256 * 1024, 8 * 1024 * 1024, || self.do_cmdline_inner(cmdline, sourcing, repeat, verbose))
    }

    fn do_cmdline_inner(&mut self, cmdline: Option<String>, sourcing: bool, repeat: bool, verbose: bool) -> bool {
        // An endless `:execute` or `:source` is caught here (`do_cmdline_start`: 200 levels).
        if self.scripts.depth >= 200 {
            self.error("E169: Command too recursive");
            return true;
        }
        self.scripts.depth += 1;
        // The messages of the commands that run here are kept apart to be thrown (`private_msg_list`).
        let saved_msg_list = self.scripts.msg_list.replace(Vec::new());
        let initial_trylevel = self.scripts.trylevel;
        // The outermost `do_cmdline` (not `DOCMD_NOWAIT`, not recursive) puts the messages of all its
        // commands below each other (`msg_scroll`), and waits for a key at the end if they do not fit.
        if self.scripts.depth == 1 {
            self.msgs.scroll = true;
            self.msgs.didout = false;
        }
        let saved_sourcing = std::mem::replace(&mut self.scripts.sourcing, sourcing);
        let saved_verbose = std::mem::replace(&mut self.scripts.verbose, verbose);
        let mut cstack = Cstack::new();
        // `fgetline`: a nested `do_cmdline` of `:execute` reads through the one that called it, while one of
        // `:source` reads its own file.
        let base = if let Some(b) = self.scripts.next_base.take() {
            b
        } else if !sourcing {
            ReaderBase::None
        } else if self.scripts.readers.last().is_some_and(|r| !matches!(r.base, ReaderBase::None)) && !repeat {
            ReaderBase::Outer
        } else {
            ReaderBase::Source
        };
        self.scripts.readers.push(Reader { lines: Vec::new(), current_line: 0, loop_getline: false, repeating: false, base });
        // `getline_equal(.., getsourceline)`: the lines come from a file being sourced (also through `:execute`).
        let top = self.scripts.readers.len() - 1;
        self.scripts.sourcing = self.base_is_source(top);
        let reading = !matches!(self.scripts.readers[top].base, ReaderBase::None);
        self.scripts.did_emsg = false;
        self.scripts.did_throw = false;
        let mut next_cmdline = cmdline;
        loop {
            if next_cmdline.is_none() && cstack.idx < 0 && !self.scripts.force_abort && !self.base_is_func_with_abort() {
                self.scripts.did_emsg = false;
            }
            if cstack.looplevel > 0 && self.rd().current_line < self.rd().lines.len() {
                if self.input_finished() {
                    break;
                }
                let r = self.rd();
                let (line, lnum) = r.lines[r.current_line].clone();
                next_cmdline = Some(line);
                self.set_sourcing_lnum(lnum);
            }
            if next_cmdline.is_none() {
                let line = if reading { self.getline_at(self.scripts.readers.len() - 1, Getter::Base, true) } else { None };
                match line {
                    Some(l) => next_cmdline = Some(l),
                    None => break,
                }
            }
            let cmd = next_cmdline.take().expect("a command line");
            let mut current_line_before = 0;
            if cstack.looplevel > 0 || has_loop_cmd(&cmd) {
                // Another getline for the command: it stores the lines it reads (a `:function` inside a loop) or takes them from the
                // stored ones.
                let lnum = self.sourcing_lnum();
                let r = self.rd();
                r.loop_getline = true;
                r.repeating = r.current_line < r.lines.len();
                if r.current_line == r.lines.len() {
                    r.lines.push((cmd.clone(), lnum));
                }
                current_line_before = r.current_line;
            } else {
                self.rd().loop_getline = false;
            }
            self.scripts.did_endif = false;
            next_cmdline = self.do_one_cmd(&cmd, &mut cstack);
            // Reset `did_emsg` for a function that is not aborted by an error.
            if self.scripts.did_emsg && !self.scripts.force_abort && self.base_is_func_without_abort() {
                self.scripts.did_emsg = false;
            }
            if cstack.looplevel > 0 {
                self.rd().current_line += 1;
                if cstack.lflags & (CSL_HAD_CONT | CSL_HAD_ENDLOOP) != 0 {
                    cstack.lflags &= !(CSL_HAD_CONT | CSL_HAD_ENDLOOP);
                    let top = usize::try_from(cstack.idx).ok();
                    if !self.scripts.did_emsg
                        && !self.scripts.did_throw
                        && let Some(t) = top
                        && cstack.flags[t] & (CSF_WHILE | CSF_FOR) != 0
                        && cstack.line[t] >= 0
                        && cstack.flags[t] & CSF_ACTIVE != 0
                    {
                        self.rd().current_line = cstack.line[t] as usize;
                        cstack.lflags |= CSL_HAD_LOOP;
                    } else if cstack.idx >= 0 {
                        let idx = cstack.idx - 1;
                        rewind_conditionals(&mut cstack, idx, CSF_WHILE | CSF_FOR);
                    }
                } else if cstack.lflags & CSL_HAD_LOOP != 0 {
                    cstack.lflags &= !CSL_HAD_LOOP;
                    let top = cstack.idx as usize;
                    cstack.line[top] = current_line_before as isize;
                }
            }
            if cstack.looplevel == 0 {
                if let Some(lnum) = self.rd().lines.last().map(|l| l.1) {
                    self.set_sourcing_lnum(lnum);
                    self.rd().lines.clear();
                }
                self.rd().current_line = 0;
            }
            // A `:finally` makes `did_emsg` and `did_throw` pending for the `:endtry`: they are reset here and the finally
            // clause is made active.
            if cstack.lflags & CSL_HAD_FINA != 0 {
                cstack.lflags &= !CSL_HAD_FINA;
                self.scripts.did_emsg = false;
                self.scripts.did_throw = false;
                let top = cstack.idx as usize;
                cstack.flags[top] |= CSF_ACTIVE | CSF_FINALLY;
            }
            // The global `trylevel` for the recursive calls from the commands of this loop.
            self.scripts.trylevel = initial_trylevel + cstack.trylevel;
            // The outermost try is left: the way that is not aborting is back.
            if self.scripts.trylevel == 0 && !self.scripts.did_emsg && !self.scripts.did_throw {
                self.scripts.force_abort = false;
            }
            // `DOCMD_REPEAT`: a sourced file goes on until its lines are all read.
            if self.scripts.quitting
                || ((self.scripts.did_emsg && self.scripts.force_abort) || self.scripts.did_throw) && cstack.trylevel == 0
                || !(next_cmdline.is_some() || cstack.idx >= 0 || repeat)
            {
                break;
            }
        }
        if cstack.idx >= 0 {
            // A file or function that ran to its end: the conditional that was not closed is reported.
            // Neovim exits at the `:qa`, nothing more is reported.
            if !self.scripts.quitting && (self.base_is_source(top) || self.func_call_of().is_some()) && !self.input_finished() && !self.scripts.did_throw && !self.aborting() {
                let fl = cstack.flags[cstack.idx as usize];
                let msg = if fl & CSF_TRY != 0 {
                    "E600: Missing :endtry"
                } else if fl & CSF_WHILE != 0 {
                    "E170: Missing :endwhile"
                } else if fl & CSF_FOR != 0 {
                    "E170: Missing :endfor"
                } else {
                    "E171: Missing :endif"
                };
                self.error(msg);
            }
            // `trylevel` is reset for a `:finish`, `:return` or a missing `:endtry`; whatever is pending goes.
            loop {
                let mut idx = self.cleanup_conditionals(&mut cstack, 0, true);
                if idx >= 0 {
                    idx -= 1;
                }
                rewind_conditionals(&mut cstack, idx, CSF_WHILE | CSF_FOR);
                if cstack.idx < 0 {
                    break;
                }
            }
            self.scripts.trylevel = initial_trylevel;
        }
        // An error message to be thrown (the missing `:endtry`, a failing `:execute` line...) is thrown now.
        let in_func = self.func_call_of().is_some();
        self.do_errthrow(Some(&mut cstack), if in_func { Some("endfunction") } else { None });
        if self.scripts.trylevel == 0 {
            // An exception that came out of the outermost try is reported and the commands stop.
            if self.scripts.did_throw {
                self.handle_did_throw();
            } else if self.scripts.did_emsg && self.scripts.force_abort {
                self.scripts.suppress_errthrow = true;
            }
        }
        // The `do_cmdline` that called this one must find the exception again, or the `:return` or `:finish`.
        if self.scripts.did_throw {
            self.scripts.need_rethrow = true;
        }
        if matches!(self.scripts.readers.last().map(|r| &r.base), Some(ReaderBase::Outer)) && !self.scripts.did_throw {
            self.scripts.check_cstack = true;
        }
        self.scripts.msg_list = saved_msg_list;
        self.scripts.readers.pop();
        self.scripts.sourcing = saved_sourcing;
        self.scripts.verbose = saved_verbose;
        self.scripts.depth -= 1;
        if self.scripts.depth == 0 {
            self.msgs.scroll = false;
            self.msgs.didout = false;
        }
        !self.scripts.quitting
    }

    /// `do_one_cmd`: the first command of `cmdline`; returns what follows it (after a `|`).
    fn do_one_cmd(&mut self, cmdline: &str, cstack: &mut Cstack) -> Option<String> {
        let mut errormsg: Option<String> = None;
        let mut next: Option<String> = None;
        let saved_cmdlinep = std::mem::replace(&mut self.scripts.cmdlinep, cmdline.to_string());
        let verbose = self.scripts.verbose;
        let mut err_cmdline = cmdline.to_string();
        // The name of the command, for the exception of an error it gives (`cmdnames[ea.cmdidx].cmd_name`).
        let mut cmd_name: Option<&'static str> = None;
        let mut saved_msg_silent: Option<u32> = None;
        let mut did_esilent = 0;
        'doend: {
            // 1. Blanks and `:`, the command modifiers.
            let (s, mods) = match cmdline::parse_modifiers(cmdline) {
                Ok(r) => r,
                Err(n) => {
                    next = n.map(str::to_string);
                    break 'doend;
                }
            };
            // `apply_cmdmod`
            if mods.silent || mods.unsilent {
                saved_msg_silent = Some(self.scripts.msg_silent);
            }
            if mods.silent {
                self.scripts.msg_silent += 1;
            }
            if mods.unsilent {
                self.scripts.msg_silent = 0;
            }
            if mods.errsilent {
                self.scripts.emsg_silent += 1;
                did_esilent = 1;
            }
            let skip = self.scripts.did_emsg || self.scripts.did_throw || (cstack.idx >= 0 && cstack.flags[cstack.idx as usize] & CSF_ACTIVE == 0);
            // 2. The command (to know what the range counts), then the range.
            let name_of = |t: &str| -> usize {
                let n = t.bytes().take_while(u8::is_ascii_alphabetic).count();
                if n == 0 && t.starts_with(['@', '!', '=', '>', '<', '&', '~', '#']) { 1 } else { n }
            };
            let peek = cmdline::skip_range(s);
            let addr_t = cmdline::lookup(&peek[..name_of(peek)]).map_or(AddrType::Lines, |d| cmdline::addr_type(d.long));
            let range = match self.parse_cmd_address(s, addr_t, skip) {
                Ok(r) => r,
                Err(e) => {
                    errormsg = (!e.is_empty()).then_some(e);
                    break 'doend;
                }
            };
            // Where the range parse stopped: a range without a command goes to the line, or with `|`
            // shows it. The command itself is the one found by skipping the range as text
            // (`find_excmd_after_range`): what lies between the two, like the `.` of `5.d`, is ignored.
            let parse_end = s[range.end..].trim_start_matches([' ', '\t', ':']);
            let after_range = peek;
            let range_len = s.len() - after_range.len();
            if parse_end.is_empty() || parse_end.starts_with('"') || cmdline::check_nextcmd(parse_end).is_some() {
                next = cmdline::check_nextcmd(parse_end).map(str::to_string);
                if skip {
                    break 'doend;
                }
                if parse_end.starts_with('|') {
                    if let Some(e) = self.invalid_range(&range, AddrType::Lines, true) {
                        errormsg = Some(e.into());
                        break 'doend;
                    }
                    if let Err(e) = self.print(range.to_line_range(false).as_ref()) {
                        errormsg = Some(e);
                    }
                } else if range.addr_count != 0 {
                    // `ex_range_without_command`: the cursor goes to the last line given.
                    let line2 = range.line2.min(self.line_count() as i64);
                    if line2 < 0 {
                        errormsg = Some("E16: Invalid range".into());
                    } else if let Err(e) = self.goto_line(Some(&LineRange { first: Addr { base: Base::Line(line2 as usize), offset: 0 }, last: None, semi: false })) {
                        errormsg = Some(e);
                    }
                }
                break 'doend;
            }
            // `find_ex_command`: a name is letters, or one of `@!=><&~#`.
            let n = name_of(after_range);
            let (name, argtxt) = (&after_range[..n], &after_range[n..]);
            let argpos = s.len() - argtxt.len();
            let Some(def) = cmdline::lookup(name) else {
                // The modifiers are commands too (`ex_wrongmodifier`) and none takes a range: `3silent echo 1` is E481.
                if !skip && range.addr_count > 0 && cmdline::is_modifier(name) {
                    errormsg = Some("E481: No range allowed".into());
                } else if !skip {
                    // Sourcing, the command line is added where every error of this kind gets it.
                    errormsg = Some(if verbose { "E492: Not an editor command".into() } else { format!("E492: Not an editor command: {cmdline}") });
                }
                break 'doend;
            };
            let long = def.long;
            cmd_name = Some(long);
            let argt = def.argt;
            // 3. `!`, and what the command allows.
            let forceit = argtxt.starts_with('!') && !matches!(long, "substitute" | "&" | "&&" | "~");
            if !skip && argt & RANGE == 0 && range.addr_count > 0 {
                errormsg = Some("E481: No range allowed".into());
                break 'doend;
            }
            if argt & BANG == 0 && forceit {
                errormsg = Some("E477: No ! allowed".into());
                break 'doend;
            }
            let mut range = range;
            if !skip && argt & RANGE != 0 {
                if range.line1 > range.line2 {
                    if verbose {
                        errormsg = Some("E493: Backwards range given".into());
                        break 'doend;
                    }
                    // Neovim asks, except under `:silent` (it swaps) and `:global` (it does not swap: the range fails below).
                    if self.scripts.msg_silent == 0 && !self.scripts.global_busy {
                        // The question waits for a key, which only a typed line of the outermost level, outside a block, can do:
                        // the command goes on from the answer as `yes`, the range settled.
                        // shortcut: in a block (`:if`, `:for`), `:execute`, `:normal` or a function, the swap is made without asking
                        if self.scripts.typed && self.scripts.depth == 1 && cstack.idx < 0 {
                            let yes = format!("{}{},{}{}", &cmdline[..cmdline.len() - s.len()], range.line2, range.line1, &s[range_len..]);
                            self.ask_yesno("Backwards range given, OK to swap", yes);
                            break 'doend;
                        }
                    }
                    std::mem::swap(&mut range.line1, &mut range.line2);
                }
                if let Some(e) = self.invalid_range(&range, addr_t, true) {
                    errormsg = Some(e.into());
                    break 'doend;
                }
            }
            // `correct_range`: line 0 is line 1 unless the command takes it.
            let zero_ok = argt & ZEROR != 0;
            let range_text = match range.to_line_range(zero_ok) {
                None => String::new(),
                Some(LineRange { first: Addr { base: Base::Line(a), .. }, last: None, .. }) => a.to_string(),
                Some(LineRange { first: Addr { base: Base::Line(a), .. }, last: Some(Addr { base: Base::Line(b), .. }), .. }) => format!("{a},{b}"),
                Some(_) => String::new(),
            };
            let _ = range_len;
            // 4. The argument, up to where the command ends.
            // `ea.arg`: after the `!` and the blanks.
            let rest = argtxt.strip_prefix('!').filter(|_| forceit).unwrap_or(argtxt);
            let mut arg_in = skipwhite(rest);
            // `:>>>`: each `>` or `<` after the name shifts once more.
            if matches!(long, ">" | "<") {
                arg_in = skipwhite(arg_in.trim_start_matches(long));
            }
            let head_len = argpos + (argtxt.len() - arg_in.len());
            let after_bang = arg_in;
            let usefilter = (long == "write" && after_bang.starts_with('!')) || (long == "read" && (forceit || after_bang.starts_with('!')));
            let (arg, nextcmd) = if argt & TRLBAR != 0 && !usefilter {
                cmdline::separate_nextcmd(arg_in, argt, long)
            } else if usefilter {
                // A newline ends a shell command; a backslash in front of it does not.
                let mut v: Vec<u8> = arg_in.as_bytes().to_vec();
                let mut nx = None;
                let mut i = 0;
                while i < v.len() {
                    if v[i] == b'\\' && v.get(i + 1) == Some(&b'\n') {
                        v.remove(i);
                    } else if v[i] == b'\n' {
                        nx = Some(String::from_utf8_lossy(&v[i + 1..]).into_owned());
                        v.truncate(i);
                        break;
                    }
                    i += 1;
                }
                (String::from_utf8_lossy(&v).into_owned(), nx)
            } else if skip && cmdline::skipped_when_inactive(long) {
                // `skip_cmd`: the command is not run, so nothing finds where it ends.
                (arg_in.to_string(), None)
            } else {
                cmdline::own_end(self, long, arg_in).unwrap_or_else(|| (arg_in.to_string(), None))
            };
            // `*ea.cmdlinep`, as the commands that cut their line (`NUL` in place) leave it.
            if argt & TRLBAR != 0 || usefilter {
                err_cmdline = format!("{}{}{arg}", &cmdline[..cmdline.len() - s.len()], &s[..head_len]);
            }
            next = nextcmd;
            let bare = skipwhite(&arg);
            // 5. The register, count and flags, then the arguments that are not allowed or missing.
            let rest = match cmdline::after_prefix(argt, bare) {
                Ok(r) => r,
                Err(e) => {
                    errormsg = Some(e.into());
                    break 'doend;
                }
            };
            if argt & (EXTRA | XFILE) == 0 && !rest.is_empty() && !rest.starts_with('"') && (!rest.starts_with('|') || argt & TRLBAR == 0) {
                errormsg = Some(format!("E488: Trailing characters: {rest}"));
                break 'doend;
            }
            if argt & NEEDARG != 0 && bare.is_empty() {
                errormsg = Some("E471: Argument required".into());
                break 'doend;
            }
            if skip && cmdline::skipped_when_inactive(long) {
                break 'doend;
            }
            // `ex_sort` returns before it reads its arguments when there are fewer than two lines.
            if long == "sort" {
                let n = self.line_count();
                match self.lines(range.to_line_range(false).as_ref(), (1, n)) {
                    Ok((a, b)) if b.saturating_sub(a) < 1 => next = None,
                    Ok(_) => {}
                    Err(e) => {
                        errormsg = Some(e);
                        break 'doend;
                    }
                }
            }
            // 6. Execute it.
            let res: Res<()> = match long {
                "if" => self.ex_if(cstack, bare),
                "elseif" | "else" => self.ex_else(cstack, long == "elseif", bare),
                "endif" => self.ex_endif(cstack),
                "while" | "for" => self.ex_while(cstack, long == "for", bare),
                "endwhile" | "endfor" => self.ex_endwhile(cstack, long == "endfor"),
                "continue" => self.ex_continue(cstack),
                "break" => self.ex_break(cstack),
                "finish" => self.ex_finish(cstack),
                "try" => self.ex_try(cstack),
                "catch" => {
                    let r = self.ex_catch(cstack, bare);
                    if let Some(n) = self.scripts.nextcmd.take() {
                        next = Some(n);
                    }
                    r
                }
                "finally" => self.ex_finally(cstack),
                "endtry" => self.ex_endtry(cstack),
                "throw" => {
                    self.ex_throw(cstack, skip, bare);
                    Ok(())
                }
                "append" | "insert" | "change" if !skip => {
                    let (l1, l2) = (range.line1.max(0) as usize, range.line2.max(0) as usize);
                    if long == "change" {
                        self.ex_change(l1, l2, forceit, bare, &mut next);
                    } else {
                        self.ex_append(long, l2, forceit, bare, &mut next, None);
                    }
                    Ok(())
                }
                "function" => {
                    self.ex_function(skip, forceit, bare);
                    if let Some(n) = self.scripts.nextcmd.take() {
                        next = Some(n);
                    }
                    Ok(())
                }
                "delfunction" => {
                    self.ex_delfunction(skip, forceit, bare);
                    if let Some(n) = self.scripts.nextcmd.take() {
                        next = Some(n);
                    }
                    Ok(())
                }
                "return" => {
                    self.ex_return(cstack, skip, bare);
                    if let Some(n) = self.scripts.nextcmd.take() {
                        next = Some(n);
                    } else {
                        next = None;
                    }
                    Ok(())
                }
                "endfunction" if !skip => {
                    self.ex_endfunction();
                    Ok(())
                }
                // A here document in an inactive block is read and thrown away.
                "let" if skip => {
                    if let Some(h) = cmdline::heredoc_arg(bare) {
                        let cmdline = self.scripts.cmdlinep.clone();
                        if self.heredoc_is_typed(h) {
                            self.heredoc_pend(&cmdline, h, true, None);
                        } else {
                            let (_, nextcmd) = self.heredoc_get(&cmdline, h, true);
                            if nextcmd.is_some() {
                                next = nextcmd;
                            }
                        }
                    }
                    Ok(())
                }
                _ if skip => Ok(()),
                _ => {
                    // `:vertical` changes the commands that split a window; on any other it does nothing.
                    let prefix = if mods.vertical && matches!(long, "split" | "new" | "resize") { "vertical " } else { "" };
                    let text = format!("{prefix}{range_text}{}{arg}", &s[range_len..head_len]);
                    self.scripts.arg_rest = arg_in.get(arg.trim_end_matches([' ', '\t']).len()..).unwrap_or("").to_string();
                    if !self.command_one(&text) {
                        self.scripts.quitting = true;
                    }
                    if std::mem::take(&mut self.scripts.drop_next) {
                        next = None;
                    }
                    if let Some(n) = self.scripts.nextcmd.take() {
                        next = Some(n);
                    }
                    Ok(())
                }
            };
            if let Err(e) = res {
                errormsg = Some(e);
            }
        }
        // The command called `do_cmdline` and an uncaught exception, a `:return` or a `:finish` came out of it: this one has
        // to find the conditionals of its own.
        if errormsg.is_none() {
            if self.scripts.need_rethrow {
                self.do_throw(cstack);
            } else if self.scripts.check_cstack {
                if self.input_finished_script() {
                    self.do_finish(cstack, true);
                } else if let Some(c) = self.func_call_of()
                    && self.scripts.calls[c].returned
                {
                    self.do_return(cstack, true, false, None);
                }
            }
            self.scripts.need_rethrow = false;
            self.scripts.check_cstack = false;
        }
        if let Some(mut e) = errormsg.filter(|e| !e.is_empty()) {
            // Only when nothing reported it already.
            if !self.scripts.did_emsg {
                if verbose {
                    // `DOCMD_VERBOSE` (sourcing): the command line follows the message.
                    e = format!("{e}: {err_cmdline}");
                }
                self.error(e);
            }
        }
        // The messages of the command that failed are thrown as an exception.
        self.do_errthrow(Some(cstack), cmd_name);
        self.scripts.cmdlinep = saved_cmdlinep;
        // `undo_cmdmod`
        if let Some(save) = saved_msg_silent {
            if !self.scripts.did_emsg || self.scripts.msg_silent > save {
                self.scripts.msg_silent = save;
            }
            self.scripts.emsg_silent = self.scripts.emsg_silent.saturating_sub(did_esilent);
            // "silent reg" or "silent echo x" inside "redir" leaves msg_col somewhere in the line: back to the first column.
            if self.msgs.redirecting() {
                self.msgs.silent_col = 0;
                self.msgs.start_col = 0;
            }
        }
        next.filter(|n| !n.is_empty())
    }

    /// `cmd_source`: `:source {file}`, or the lines of the buffer without one. Returns false to quit.
    pub(in crate::editor) fn source_cmd(&mut self, range: Option<&LineRange>, bang: bool, arg: &str) -> Res<bool> {
        if !arg.is_empty() && range.is_some() {
            return Err("E481: No range allowed".into());
        }
        if arg.is_empty() {
            if bang {
                return Err("E471: Argument required".into());
            }
            return Ok(self.source_buffer(range));
        }
        if bang {
            // `openscript`: Normal mode commands from a file are not supported.
            return Err(":source! is not supported (Normal mode commands from a file)".into());
        }
        let full = PathBuf::from(fix_fname(&expand_env(arg)));
        if full.is_dir() {
            self.info(format!("Cannot source a directory: \"{arg}\""));
            return Err(format!("E484: Can't open file {arg}"));
        }
        let bytes = fs::read(&full).map_err(|_| format!("E484: Can't open file {arg}"))?;
        Ok(self.source_text(full.display().to_string(), SourceCookie::new(&String::from_utf8_lossy(&bytes))))
    }

    /// `do_source` on the lines `range` of the current buffer (`cmd_source_buffer`).
    fn source_buffer(&mut self, range: Option<&LineRange>) -> bool {
        let n = self.line_count();
        let (a, b) = match self.lines(range, (1, n)) {
            Ok(r) => r,
            Err(e) => {
                self.error(e);
                return true;
            }
        };
        let name = match &self.buf.path {
            Some(p) => p.display().to_string(),
            None => format!(":source buffer={}", self.buf.id),
        };
        let text = self.buf.doc.text();
        let lines: Vec<String> = (a.max(1)..=b).map(|l| text.line(l - 1).into_owned()).collect();
        self.source_text(name, SourceCookie::from_lines(lines, a.max(1) - 1))
    }

    /// `do_source_ext` once the lines are read: runs them with `name` on the execution stack.
    fn source_text(&mut self, name: String, cookie: SourceCookie) -> bool {
        let next = self.scripts.vars.len();
        let id = *self.scripts.ids.entry(PathBuf::from(&name)).or_insert(next);
        if id == next {
            self.scripts.vars.push(Vars::default());
        }
        let before = std::mem::replace(&mut self.scripts.cur, id);
        self.scripts.last_seq += 1;
        let before_seq = std::mem::replace(&mut self.scripts.cur_seq, self.scripts.last_seq);
        self.scripts.stack.push(Frame { kind: FrameKind::Script, name: name.into(), lnum: 0, cookie });
        let go = self.do_cmdline(None, true, true, true);
        self.scripts.stack.pop();
        self.scripts.cur = before;
        self.scripts.cur_seq = before_seq;
        go
    }

    /// `do_source` for the init file: runs `path` if it exists.
    pub(in crate::editor) fn source_file(&mut self, path: &std::path::Path) -> Res<bool> {
        let full = PathBuf::from(fix_fname(&path.display().to_string()));
        let bytes = fs::read(&full).map_err(|_| format!("E484: Can't open file {}", path.display()))?;
        Ok(self.source_text(full.display().to_string(), SourceCookie::new(&String::from_utf8_lossy(&bytes))))
    }
}

/// `fix_fname` (`vim_FullName` forced): the directory of the file made absolute with its symbolic
/// links and `..` resolved (`path_full_dir_name`), the file name itself as written. When the
/// directory is not there the name stays as it is.
fn fix_fname(name: &str) -> String {
    let (dir, file) = match name.rfind('/') {
        Some(i) => (&name[..=i], &name[i + 1..]),
        None if name == ".." => ("..", ""),
        None => ("", name),
    };
    // A trailing `/..` belongs to the directory.
    let (dir, file) = if file == ".." { (name, "") } else { (dir, file) };
    let Ok(abs) = std::fs::canonicalize(if dir.is_empty() { "." } else { dir }) else { return name.to_string() };
    let abs = abs.display().to_string();
    if file.is_empty() { abs } else if abs.ends_with('/') { format!("{abs}{file}") } else { format!("{abs}/{file}") }
}

/// `expand_env_esc(.., one = true)`: `~` at the start and `$VAR`, `${VAR}` anywhere are replaced by
/// what the environment has; one that is not set stays as written. A backslash keeps the next char.
pub(super) fn expand_env(s: &str) -> String {
    let src = skipwhite(s);
    let b = src.as_bytes();
    let (mut out, mut i, mut at_start) = (String::new(), 0, true);
    let idc = |c: u8| c.is_ascii_alphanumeric() || c == b'_';
    while i < b.len() {
        let mut copy = true;
        if b[i] == b'$' || (b[i] == b'~' && at_start) {
            let (var, tail): (Option<String>, usize) = if b[i] == b'$' {
                if b.get(i + 1) == Some(&b'{') {
                    let end = src[i + 2..].find('}').map(|e| i + 2 + e);
                    match end {
                        Some(e) => (std::env::var(&src[i + 2..e]).ok(), e + 1),
                        None => (None, i + 1),
                    }
                } else {
                    let mut t = i + 1;
                    while t < b.len() && idc(b[t]) {
                        t += 1;
                    }
                    (std::env::var(&src[i + 1..t]).ok(), t)
                }
            } else if b.get(i + 1).is_none_or(|c| *c == b'/' || b" ,\t\n".contains(c)) {
                (std::env::var("HOME").ok(), i + 1)
            } else {
                // `~user`: home directories of other users are not looked up.
                (None, i + 1)
            };
            if let Some(v) = var.filter(|v| !v.is_empty()) {
                out.push_str(&v);
                // A path separator right after a value that ends in one is not doubled.
                i = if v.ends_with('/') && b.get(tail) == Some(&b'/') { tail + 1 } else { tail };
                copy = false;
            }
        }
        if copy {
            at_start = false;
            if b[i] == b'\\' && i + 1 < b.len() {
                out.push('\\');
                i += 1;
            }
            let l = src[i..].chars().next().map_or(1, char::len_utf8);
            out.push_str(&src[i..i + l]);
            i += l;
        }
    }
    out
}
