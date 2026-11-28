//! Where a command ends and the next one starts: the per-command rules of Neovim's `do_one_cmd`.
//!
//! Ported from `ex_docmd.c` (`separate_nextcmd`, `check_nextcmd`, `skip_cmd`), `ex_cmds.lua` (the
//! flags of each command), `ex_cmds.c` (`do_sub`, `ex_sort`, the argument loops that find their own
//! end), `eval/vars.c` (`ex_let`, `ex_unletlock`, `skip_var_list`), `eval.c` (`find_name_end`,
//! `ex_echo`) and `regexp.c` (`skip_regexp_ex`, `skip_anyof`). A command without the `TRLBAR` flag
//! finds its own end (`check_nextcmd` after parsing what it takes); the others go through
//! `separate_nextcmd`.

use super::exnames::NVIM_COMMANDS;
use crate::editor::Editor;

// ---- flags of `ex_cmds.lua`, the ones that decide how a command ends or what it may take ------

/// `|` and `"` end the argument.
pub(super) const TRLBAR: u32 = 1 << 0;
/// `"` is no comment.
pub(super) const NOTRLCOM: u32 = 1 << 1;
/// Arguments are allowed.
pub(super) const EXTRA: u32 = 1 << 2;
/// An argument is required.
pub(super) const NEEDARG: u32 = 1 << 3;
/// `!` is allowed.
pub(super) const BANG: u32 = 1 << 4;
/// A range is allowed.
pub(super) const RANGE: u32 = 1 << 5;
/// `Ctrl-V` is kept in the argument.
pub(super) const CTRLV: u32 = 1 << 6;
/// A count may follow.
pub(super) const COUNT: u32 = 1 << 7;
/// A register may follow.
pub(super) const REGSTR: u32 = 1 << 8;
/// `l`, `p`, `#` flags may follow.
pub(super) const FLAGS: u32 = 1 << 9;
/// A file name (`EX_FILE1`: `XFILE | NOSPC`).
pub(super) const XFILE: u32 = 1 << 10;
/// Line number zero is allowed (as a count too).
pub(super) const ZEROR: u32 = 1 << 11;
/// A buffer name or number.
pub(super) const BUFNAME: u32 = 1 << 12;
/// An unlisted buffer may be named too.
pub(super) const BUFUNL: u32 = 1 << 13;
/// One file name only (`EX_NOSPC`): a blank is part of the name.
pub(super) const NOSPC: u32 = 1 << 14;
/// A `+cmd` argument may come first (`EX_CMDARG`).
pub(super) const CMDARG: u32 = 1 << 15;
/// `++opt=val` arguments may come first (`EX_ARGOPT`).
pub(super) const ARGOPT: u32 = 1 << 16;

/// A command of rim: its shortest abbreviation, its name, and its flags.
pub(super) struct CmdDef {
    pub long: &'static str,
    pub argt: u32,
}

/// A command of rim; its abbreviations come from the table of Neovim (`find_command`).
const fn c(_short: &'static str, long: &'static str, argt: u32) -> CmdDef {
    CmdDef { long, argt }
}

/// Flags as in `ex_cmds.lua` (v0.12.6); `stats` and `compact` are rim's own, taken as `:nohlsearch`.
pub(super) const CMDS: &[CmdDef] = &[
    c("w", "write", RANGE | BANG | XFILE | NOSPC | ARGOPT | TRLBAR),
    c("up", "update", RANGE | BANG | XFILE | NOSPC | ARGOPT | TRLBAR),
    c("wq", "wq", RANGE | BANG | XFILE | NOSPC | ARGOPT | TRLBAR),
    c("x", "xit", RANGE | BANG | XFILE | NOSPC | ARGOPT | TRLBAR),
    c("wqa", "wqall", BANG | XFILE | NOSPC | TRLBAR),
    c("xa", "xall", BANG | TRLBAR),
    c("q", "quit", BANG | RANGE | COUNT | TRLBAR),
    c("qa", "qall", BANG | TRLBAR),
    c("quita", "quitall", BANG | TRLBAR),
    c("clo", "close", BANG | RANGE | COUNT | TRLBAR),
    c("hid", "hide", BANG | RANGE | COUNT | EXTRA | TRLBAR),
    c("cd", "cd", BANG | XFILE | NOSPC | TRLBAR),
    c("chd", "chdir", BANG | XFILE | NOSPC | TRLBAR),
    c("lc", "lcd", BANG | XFILE | NOSPC | TRLBAR),
    c("lch", "lchdir", BANG | XFILE | NOSPC | TRLBAR),
    c("tcd", "tcd", BANG | XFILE | NOSPC | TRLBAR),
    c("tch", "tchdir", BANG | XFILE | NOSPC | TRLBAR),
    c("pw", "pwd", TRLBAR),
    c("ar", "args", BANG | XFILE | EXTRA | CMDARG | ARGOPT | TRLBAR),
    c("arga", "argadd", BANG | RANGE | ZEROR | XFILE | EXTRA | TRLBAR),
    c("argd", "argdelete", BANG | RANGE | XFILE | EXTRA | TRLBAR),
    c("arge", "argedit", BANG | NEEDARG | RANGE | ZEROR | XFILE | EXTRA | CMDARG | ARGOPT | TRLBAR),
    c("argu", "argument", BANG | RANGE | COUNT | EXTRA | CMDARG | ARGOPT | TRLBAR),
    c("n", "next", RANGE | BANG | XFILE | EXTRA | CMDARG | ARGOPT | TRLBAR),
    c("prev", "previous", EXTRA | RANGE | COUNT | BANG | CMDARG | ARGOPT | TRLBAR),
    c("N", "Next", EXTRA | RANGE | COUNT | BANG | CMDARG | ARGOPT | TRLBAR),
    c("fir", "first", EXTRA | BANG | CMDARG | ARGOPT | TRLBAR),
    c("la", "last", EXTRA | BANG | CMDARG | ARGOPT | TRLBAR),
    c("rew", "rewind", EXTRA | BANG | CMDARG | ARGOPT | TRLBAR),
    c("winc", "wincmd", NEEDARG | EXTRA | RANGE | COUNT | TRLBAR),
    c("on", "only", BANG | RANGE | COUNT | TRLBAR),
    c("dig", "digraphs", BANG | EXTRA | TRLBAR),
    c("res", "resize", RANGE | EXTRA | TRLBAR),
    c("vert", "vertical", NEEDARG | EXTRA | NOTRLCOM),
    c("ene", "enew", BANG | TRLBAR),
    c("new", "new", BANG | XFILE | NOSPC | RANGE | CMDARG | ARGOPT | TRLBAR),
    c("vne", "vnew", BANG | XFILE | NOSPC | RANGE | CMDARG | ARGOPT | TRLBAR),
    c("sp", "split", BANG | XFILE | NOSPC | RANGE | CMDARG | ARGOPT | TRLBAR),
    c("vs", "vsplit", BANG | XFILE | NOSPC | RANGE | CMDARG | ARGOPT | TRLBAR),
    c("e", "edit", BANG | XFILE | NOSPC | CMDARG | ARGOPT | TRLBAR),
    c("redr", "redraw", BANG | TRLBAR),
    c("f", "file", RANGE | ZEROR | BANG | XFILE | NOSPC | TRLBAR),
    c("bad", "badd", NEEDARG | XFILE | NOSPC | TRLBAR),
    c("balt", "balt", NEEDARG | XFILE | NOSPC | TRLBAR),
    c("bn", "bnext", BANG | RANGE | COUNT | CMDARG | TRLBAR),
    c("bp", "bprevious", BANG | RANGE | COUNT | CMDARG | TRLBAR),
    c("bN", "bNext", BANG | RANGE | COUNT | CMDARG | TRLBAR),
    c("br", "brewind", BANG | RANGE | CMDARG | TRLBAR),
    c("bf", "bfirst", BANG | RANGE | CMDARG | TRLBAR),
    c("bl", "blast", BANG | RANGE | CMDARG | TRLBAR),
    c("bm", "bmodified", BANG | RANGE | COUNT | CMDARG | TRLBAR),
    c("b", "buffer", BANG | RANGE | BUFNAME | BUFUNL | COUNT | EXTRA | CMDARG | TRLBAR),
    c("sb", "sbuffer", BANG | RANGE | BUFNAME | BUFUNL | COUNT | EXTRA | CMDARG | TRLBAR),
    c("sbn", "sbnext", RANGE | COUNT | CMDARG | TRLBAR),
    c("sbp", "sbprevious", RANGE | COUNT | CMDARG | TRLBAR),
    c("sbN", "sbNext", RANGE | COUNT | CMDARG | TRLBAR),
    c("sbr", "sbrewind", CMDARG | TRLBAR),
    c("sbf", "sbfirst", CMDARG | TRLBAR),
    c("sbl", "sblast", CMDARG | TRLBAR),
    c("sbm", "sbmodified", RANGE | COUNT | CMDARG | TRLBAR),
    c("ls", "ls", BANG | EXTRA | TRLBAR),
    c("buffers", "buffers", BANG | EXTRA | TRLBAR),
    c("files", "files", BANG | EXTRA | TRLBAR),
    c("bd", "bdelete", BANG | RANGE | BUFNAME | COUNT | EXTRA | TRLBAR),
    c("bw", "bwipeout", BANG | RANGE | BUFNAME | BUFUNL | COUNT | EXTRA | TRLBAR),
    c("bun", "bunload", BANG | RANGE | BUFNAME | COUNT | EXTRA | TRLBAR),
    c("syn", "syntax", EXTRA | NOTRLCOM),
    c("hi", "highlight", BANG | EXTRA | TRLBAR),
    c("noh", "nohlsearch", TRLBAR),
    c("mes", "messages", EXTRA | TRLBAR | RANGE),
    c("undol", "undolist", TRLBAR),
    c("undoj", "undojoin", TRLBAR),
    c("go", "goto", RANGE | COUNT | TRLBAR),
    c("ea", "earlier", TRLBAR | EXTRA),
    c("lat", "later", TRLBAR | EXTRA),
    c("u", "undo", BANG | RANGE | COUNT | ZEROR | TRLBAR),
    c("red", "redo", TRLBAR),
    c("se", "set", BANG | TRLBAR | EXTRA),
    c("setl", "setlocal", BANG | TRLBAR | EXTRA),
    c("setg", "setglobal", BANG | TRLBAR | EXTRA),
    c("d", "delete", RANGE | REGSTR | COUNT | TRLBAR),
    c("y", "yank", RANGE | REGSTR | COUNT | TRLBAR),
    c("m", "move", RANGE | EXTRA | TRLBAR),
    c("t", "t", RANGE | EXTRA | TRLBAR),
    c("co", "copy", RANGE | EXTRA | TRLBAR),
    c(">", ">", RANGE | COUNT | FLAGS | TRLBAR),
    c("<", "<", RANGE | COUNT | FLAGS | TRLBAR),
    c("j", "join", BANG | RANGE | COUNT | FLAGS | TRLBAR),
    c("a", "append", BANG | RANGE | ZEROR | TRLBAR),
    c("i", "insert", BANG | RANGE | TRLBAR),
    c("c", "change", BANG | RANGE | COUNT | TRLBAR),
    c("p", "print", RANGE | COUNT | FLAGS | TRLBAR),
    c("pu", "put", BANG | RANGE | REGSTR | ZEROR | TRLBAR),
    c("nu", "number", RANGE | COUNT | FLAGS | TRLBAR),
    c("#", "#", RANGE | COUNT | FLAGS | TRLBAR),
    c("l", "list", RANGE | COUNT | FLAGS | TRLBAR),
    c("k", "k", RANGE | EXTRA | TRLBAR),
    c("ma", "mark", RANGE | EXTRA | TRLBAR),
    c("=", "=", RANGE | EXTRA),
    c("norm", "normal", RANGE | BANG | EXTRA | NEEDARG | NOTRLCOM | CTRLV),
    c("sor", "sort", RANGE | BANG | EXTRA | NOTRLCOM),
    c("~", "~", RANGE | EXTRA),
    c("g", "global", RANGE | BANG | EXTRA),
    c("v", "vglobal", RANGE | EXTRA),
    c("r", "read", BANG | RANGE | ZEROR | XFILE | NOSPC | ARGOPT | TRLBAR),
    c("sav", "saveas", BANG | XFILE | NOSPC | TRLBAR),
    c("ret", "retab", TRLBAR | RANGE | BANG | EXTRA),
    c("stats", "stats", TRLBAR),
    c("compact", "compact", TRLBAR),
    c("let", "let", EXTRA | NOTRLCOM),
    c("cons", "const", EXTRA | NOTRLCOM),
    c("fu", "function", BANG | EXTRA),
    c("retu", "return", EXTRA | NOTRLCOM),
    c("try", "try", TRLBAR),
    c("cat", "catch", EXTRA),
    c("fina", "finally", TRLBAR),
    c("endt", "endtry", TRLBAR),
    c("th", "throw", EXTRA | NEEDARG),
    c("endf", "endfunction", TRLBAR),
    c("delf", "delfunction", BANG | NEEDARG | EXTRA),
    c("unl", "unlet", BANG | EXTRA | NEEDARG),
    c("lockv", "lockvar", BANG | EXTRA | NEEDARG),
    c("unlo", "unlockvar", BANG | EXTRA | NEEDARG),
    c("ec", "echo", EXTRA | NOTRLCOM),
    c("redi", "redir", BANG | XFILE | NOSPC | EXTRA | TRLBAR),
    c("echon", "echon", EXTRA | NOTRLCOM),
    c("echom", "echomsg", EXTRA | NOTRLCOM),
    c("echoe", "echoerr", EXTRA | NOTRLCOM),
    c("exe", "execute", EXTRA | NOTRLCOM),
    c("cal", "call", RANGE | NEEDARG | EXTRA | NOTRLCOM),
    c("defe", "defer", NEEDARG | EXTRA | NOTRLCOM),
    c("so", "source", RANGE | BANG | XFILE | NOSPC | TRLBAR),
    c("if", "if", EXTRA | NOTRLCOM),
    c("elsei", "elseif", EXTRA | NOTRLCOM),
    c("el", "else", TRLBAR),
    c("en", "endif", TRLBAR),
    c("wh", "while", EXTRA | NOTRLCOM),
    c("endw", "endwhile", TRLBAR),
    c("for", "for", EXTRA | NOTRLCOM),
    c("endfo", "endfor", TRLBAR),
    c("brea", "break", TRLBAR),
    c("con", "continue", TRLBAR),
    c("fini", "finish", TRLBAR),
    // `:s`, `:&`, `:&&`, `:~` have no flag of the kind that matters: `do_sub` finds its own end.
    c("s", "substitute", RANGE | EXTRA),
    c("&", "&", RANGE | EXTRA),
    c("&&", "&&", RANGE | EXTRA),
    c("~", "~", RANGE | EXTRA),
];

/// `find_ex_command`: the first command of Neovim's table the typed `name` is a prefix of.
pub(super) fn find_command(name: &str) -> Option<&'static str> {
    if name.is_empty() || name == "def" {
        return None;
    }
    NVIM_COMMANDS.iter().find(|n| n.starts_with(name)).copied()
}

/// Whether `name` is (an abbreviation of) a command modifier, which Neovim also has as a command.
pub(super) fn is_modifier(name: &str) -> bool {
    matches!(find_command(name), Some("aboveleft" | "belowright" | "botright" | "browse" | "confirm" | "filter" | "hide" | "horizontal" | "keepalt" | "keepjumps" | "keepmarks" | "keeppatterns" | "leftabove" | "lockmarks" | "noautocmd" | "noswapfile" | "rightbelow" | "sandbox" | "silent" | "tab" | "topleft" | "unsilent" | "verbose" | "vertical" | "vim9cmd" | "legacy"))
}

/// `cmd_exists`: 2 for a command (or modifier) written in full, 1 for an abbreviation, 0 when there is none.
pub(super) fn cmd_exists(name: &str) -> i64 {
    // (name, shortest abbreviation) of `cmdmods`.
    const MODS: &[(&str, usize)] = &[
        ("aboveleft", 3), ("belowright", 3), ("botright", 2), ("browse", 3), ("confirm", 4), ("filter", 4), ("hide", 3), ("horizontal", 3),
        ("keepalt", 5), ("keepjumps", 5), ("keepmarks", 3), ("keeppatterns", 5), ("leftabove", 5), ("lockmarks", 3), ("noautocmd", 3),
        ("noswapfile", 3), ("rightbelow", 6), ("sandbox", 3), ("silent", 3), ("tab", 3), ("topleft", 2), ("unsilent", 3), ("verbose", 4),
        ("vertical", 4), ("vim9cmd", 4), ("legacy", 3),
    ];
    for &(m, minlen) in MODS {
        if !name.is_empty() && m.starts_with(name) && name.len() >= minlen {
            return if name.len() == m.len() { 2 } else { 1 };
        }
    }
    // ":2match" and ":3match": the number is skipped.
    let cmd = if name.starts_with(['2', '3']) { &name[1..] } else { name };
    let end = cmd.find(|c: char| !c.is_ascii_alphabetic()).unwrap_or(cmd.len());
    // A command that is not a name: `!`, `&&`, `<`...
    let end = if end == 0 && cmd.starts_with(['!', '#', '&', '*', '<', '=', '>', '@', '~']) { if cmd.starts_with("&&") { 2 } else { 1 } } else { end };
    let (word, rest) = cmd.split_at(end);
    if name.starts_with(|c: char| c.is_ascii_digit()) && word != "match" && !"match".starts_with(word) {
        return 0;
    }
    if !rest.trim_start_matches([' ', '\t']).is_empty() {
        return 0;
    }
    match lookup(word) {
        Some(d) => {
            let full = find_command(word).unwrap_or(d.long);
            if full == word { 2 } else { 1 }
        }
        None => 0,
    }
}

/// What the numbers before the command count (`addr_type` of `ex_cmds.lua`).
pub(super) fn addr_type(long: &str) -> super::range::AddrType {
    use super::range::AddrType::{Arguments, Buffers, Lines, LoadedBuffers, None, Other, Windows};
    match long {
        "quit" | "close" | "only" | "hide" => Windows,
        "argadd" | "argdelete" | "argedit" | "argument" => Arguments,
        "file" | "resize" | "wincmd" | "next" | "previous" | "Next" | "new" | "vnew" | "split" | "vsplit" | "bnext" | "bprevious" | "bNext" | "bmodified" | "sbnext" | "sbprevious" | "sbNext" | "sbmodified" | "brewind" | "bfirst" | "blast" | "messages" | "goto" | "undo" => Other,
        "buffer" | "sbuffer" | "bdelete" | "bwipeout" => Buffers,
        "bunload" => LoadedBuffers,
        "write" | "wq" | "xit" | "append" | "insert" | "change" | "delete" | "yank" | "move" | "t" | "copy" | ">" | "<" | "join" | "print" | "put" | "number" | "#" | "list" | "k" | "mark" | "=" | "normal" | "sort" | "global" | "vglobal" | "read" | "retab" | "call" | "source" | "substitute" | "&" | "&&" | "~" => Lines,
        _ => None,
    }
}

/// `getargcmd`: a `+cmd` at the start of `arg`, and what is left after it: the command (`$` for a bare `+`) with the
/// backslashes before a blank or a backslash taken out.
pub(in crate::editor) fn getargcmd(arg: &str) -> (Option<String>, &str) {
    let Some(r) = arg.strip_prefix('+') else { return (None, arg) };
    if r.is_empty() || r.starts_with([' ', '\t']) {
        return (Some("$".into()), skipwhite(r));
    }
    let b = r.as_bytes();
    let (mut out, mut i) = (String::new(), 0);
    while i < b.len() && !b[i].is_ascii_whitespace() {
        if b[i] == b'\\' && i + 1 < b.len() {
            i += 1;
        }
        let l = r[i..].chars().next().map_or(1, char::len_utf8);
        out.push_str(&r[i..i + l]);
        i += l;
    }
    (Some(out), skipwhite(&r[i..]))
}

/// `getargopt`: one `++opt` or `++opt=val` at the start of `arg` and what is left; none for one that is not valid. The forced
/// 'fileformat', 'fileencoding', 'binary', `++bad` and `++p` are checked and then not applied.
// shortcut: `++ff`, `++enc`, `++bin`, `++nobin`, `++bad` and `++p` are read and validated but do not change how a file is read or written
pub(super) fn getargopt(arg: &str) -> Result<&str, Option<usize>> {
    let a = &arg[2..];
    let alpha = |s: &str| s.as_bytes().first().is_some_and(u8::is_ascii_alphabetic);
    if a.starts_with("bin") || a.starts_with("nobin") {
        let r = a.strip_prefix("no").unwrap_or(a);
        // `checkforcmd(&arg, "binary", 3)`.
        let i = "binary".bytes().zip(r.bytes()).take_while(|(x, y)| x == y).count();
        return if i >= 3 && !r.as_bytes().get(i).is_some_and(u8::is_ascii_alphabetic) { Ok(skipwhite(&r[i..])) } else { Err(None) };
    }
    if a.starts_with("edit") && !alpha(&a[4..]) {
        return Ok(skipwhite(&a[4..]));
    }
    if a.starts_with('p') && !alpha(&a[1..]) {
        return Ok(skipwhite(&a[1..]));
    }
    let (kind, r) = if let Some(r) = a.strip_prefix("fileformat") {
        ('f', r)
    } else if let Some(r) = a.strip_prefix("ff") {
        ('f', r)
    } else if let Some(r) = a.strip_prefix("encoding") {
        ('e', r)
    } else if let Some(r) = a.strip_prefix("enc") {
        ('e', r)
    } else if let Some(r) = a.strip_prefix("bad") {
        ('b', r)
    } else {
        return Err(None);
    };
    let v = r.strip_prefix('=').ok_or(None)?;
    let i = v.find(|c: char| c.is_ascii_whitespace()).unwrap_or(v.len());
    let val = &v[..i];
    let ok = match kind {
        'f' => matches!(val, "unix" | "dos" | "mac"),
        'b' => val.eq_ignore_ascii_case("keep") || val.eq_ignore_ascii_case("drop") || val.chars().count() == 1,
        _ => true,
    };
    // The line is cut after the value for the message.
    if ok { Ok(skipwhite(&v[i..])) } else { Err(Some(arg.len() - v.len() + i)) }
}

/// The commands of the buffer list (`ex_buffer` and its relatives): their `+cmd` runs also when going to the buffer failed.
pub(super) fn is_buffer_cmd(long: &str) -> bool {
    matches!(long, "buffer" | "sbuffer" | "bnext" | "bprevious" | "bNext" | "brewind" | "bfirst" | "blast" | "bmodified" | "sbnext" | "sbprevious" | "sbNext" | "sbrewind" | "sbfirst" | "sblast" | "sbmodified")
}

/// The command `name` stands for when rim has it.
pub(super) fn lookup(name: &str) -> Option<&'static CmdDef> {
    match find_command(name) {
        Some(long) => CMDS.iter().find(|d| d.long == long),
        // The commands of rim that Neovim does not have (`:stats`, `:compact`).
        None => CMDS.iter().find(|d| !name.is_empty() && !NVIM_COMMANDS.contains(&d.long) && d.long.starts_with(name)),
    }
}

/// The command modifiers in front of a command (`parse_command_modifiers`).
#[derive(Default, Debug)]
pub(super) struct Mods {
    pub silent: bool,
    /// `silent!`.
    pub errsilent: bool,
    pub unsilent: bool,
    pub vertical: bool,
    /// `:hide cmd` (`CMOD_HIDE`): a buffer the command leaves stays loaded.
    pub hide: bool,
}

/// `parse_command_modifiers`: what is left of `text` after the modifiers, or where the line goes on
/// when it has no command (`Err`: a comment, an empty command, a newline).
pub(super) fn parse_modifiers(text: &str) -> Result<(&str, Mods), Option<&str>> {
    let mut mods = Mods::default();
    let mut pos = 0;
    // `checkforcmd`: `cmd` at `at`, at least `len` chars of it, not followed by a letter.
    let check = |at: usize, cmd: &str, len: usize| -> Option<usize> {
        let s = &text[at..];
        let i = cmd.bytes().zip(s.bytes()).take_while(|(a, b)| a == b).count();
        (i >= len && !s.as_bytes().get(i).is_some_and(u8::is_ascii_alphabetic)).then(|| at + i + (s[i..].len() - skipwhite(&s[i..]).len()))
    };
    loop {
        pos += text[pos..].len() - text[pos..].trim_start_matches([' ', '\t', ':']).len();
        let cmd = &text[pos..];
        if cmd.starts_with('"') {
            return Err(cmd.find('\n').map(|i| &cmd[i + 1..]));
        }
        if let Some(rest) = cmd.strip_prefix('\n') {
            return Err(Some(rest));
        }
        if cmd.is_empty() {
            return Err(None);
        }
        let p = pos + (cmd.len() - skip_range(cmd).len());
        let start = pos;
        // Where the text goes on after a modifier (none: the next word is not one).
        let next: Option<usize> = match text[p..].bytes().next() {
            Some(b'a') => check(start, "aboveleft", 3),
            Some(b'b') => check(start, "belowright", 3).or_else(|| check(start, "browse", 3)).or_else(|| check(start, "botright", 2)),
            Some(b'c') => check(start, "confirm", 4),
            Some(b'k') => check(start, "keepmarks", 3).or_else(|| check(start, "keepalt", 5)).or_else(|| check(start, "keeppatterns", 5)).or_else(|| check(start, "keepjumps", 5)),
            // `:filter {pat} cmd` is not supported: it is then no modifier, as when it has no pattern.
            Some(b'h') => check(start, "horizontal", 3).or_else(|| {
                if p == start {
                    let n = check(p, "hide", 3).filter(|&n| !ends_excmd(text.as_bytes().get(n).copied()))?;
                    mods.hide = true;
                    Some(n)
                } else {
                    None
                }
            }),
            Some(b'l') => check(start, "lockmarks", 3).or_else(|| check(start, "leftabove", 5)),
            Some(b'n') => check(start, "noautocmd", 3).or_else(|| check(start, "noswapfile", 3)),
            Some(b'r') => check(start, "rightbelow", 6),
            Some(b's') => check(start, "sandbox", 3).or_else(|| {
                let n = check(start, "silent", 3)?;
                mods.silent = true;
                // `silent!`: the `!` follows the word without a blank.
                if text[n..].starts_with('!') && !text[..n].ends_with([' ', '\t']) {
                    mods.errsilent = true;
                    return Some(n + 1 + (text[n + 1..].len() - skipwhite(&text[n + 1..]).len()));
                }
                Some(n)
            }),
            // `:tab` takes an optional count; rim has no tab pages, so it is only skipped.
            Some(b't') => check(p, "tab", 3).map(|n| {
                let m = n + (text[n..].len() - text[n..].trim_start_matches(|c: char| c.is_ascii_digit()).len());
                m + (text[m..].len() - skipwhite(&text[m..]).len())
            }).or_else(|| check(start, "topleft", 2)),
            Some(b'u') => check(start, "unsilent", 3).inspect(|_| mods.unsilent = true),
            // The level of `:verbose` is `cmod_verbose`; rim has no 'verbose' messages.
            Some(b'v') => check(start, "vertical", 4).inspect(|_| mods.vertical = true).or_else(|| check(p, "verbose", 4)),
            _ => None,
        };
        match next {
            Some(n) => pos = n,
            None => return Ok((&text[pos..], mods)),
        }
    }
}

/// `skip_range`: the text after the range at the start of `cmd`.
pub(super) fn skip_range(cmd: &str) -> &str {
    let b = cmd.as_bytes();
    let mut i = 0;
    while i < b.len() && b" \t0123456789.$%'/?-+,;\\".contains(&b[i]) {
        if b[i] == b'\\' {
            if matches!(b.get(i + 1), Some(b'?' | b'/' | b'&')) {
                i += 1;
            } else {
                break;
            }
        } else if b[i] == b'\'' {
            i += 1;
        } else if b[i] == b'/' || b[i] == b'?' {
            let delim = b[i];
            i += 1;
            while i < b.len() && b[i] != delim {
                if b[i] == b'\\' && i + 1 < b.len() {
                    i += 1;
                }
                i += 1;
            }
        }
        if i < b.len() {
            i += 1;
        }
    }
    let mut rest = &cmd[i.min(cmd.len())..];
    rest = rest.trim_start_matches([' ', '\t', ':']);
    if let Some(r) = rest.strip_prefix('*') {
        rest = skipwhite(r);
    }
    rest
}

// ---- characters and text ----------------------------------------------------------------------

fn is_white(b: u8) -> bool {
    b == b' ' || b == b'\t'
}

/// `skipwhite`.
pub(super) fn skipwhite(s: &str) -> &str {
    s.trim_start_matches([' ', '\t'])
}

/// `ends_excmd`: nothing, `|`, a comment or a newline.
pub(super) fn ends_excmd(c: Option<u8>) -> bool {
    matches!(c, None | Some(b'|' | b'"' | b'\n'))
}

/// `check_nextcmd`: what follows when `s` (after blanks) starts with `|` or a newline.
pub(in crate::editor) fn check_nextcmd(s: &str) -> Option<&str> {
    let t = skipwhite(s);
    t.strip_prefix(['|', '\n'])
}

/// `find_nextcmd`: what follows the first `|` or newline.
fn find_nextcmd(s: &str) -> Option<&str> {
    s.find(['|', '\n']).map(|i| &s[i + 1..])
}

/// The next char boundary after `i` (`MB_PTR_ADV`).
fn adv(s: &str, i: usize) -> usize {
    i + s[i..].chars().next().map_or(1, char::len_utf8)
}

/// `del_trailing_spaces`: blanks at the end go, unless escaped; the first char stays.
fn del_trailing_spaces(v: &mut Vec<u8>) {
    while v.len() > 1 && is_white(v[v.len() - 1]) && v[v.len() - 2] != b'\\' && v[v.len() - 2] != 0x16 {
        v.pop();
    }
}

/// `separate_nextcmd`: for a `TRLBAR` command, the argument cut at the first `|`, comment or newline
/// not escaped by a backslash (which goes), `Ctrl-V` handled, trailing blanks removed; and what
/// follows the `|`.
pub(super) fn separate_nextcmd(arg: &str, argt: u32, long: &str) -> (String, Option<String>) {
    let mut v: Vec<u8> = arg.as_bytes().to_vec();
    let mut next = None;
    let mut p = 0;
    while p < v.len() {
        let c = v[p];
        if c == 0x16 {
            if argt & (CTRLV | XFILE) != 0 {
                p += 1;
            } else {
                v.remove(p);
            }
            if p >= v.len() {
                break;
            }
        } else if (c == b'"' && argt & NOTRLCOM == 0 && !(long == "@" && p == 0)) || (c == b'|' && !matches!(long, "append" | "change" | "insert")) || c == b'\n' {
            // No `b` in 'cpoptions' (the default): a backslash in front takes the char literally.
            if p > 0 && v[p - 1] == b'\\' {
                v.remove(p - 1);
                p -= 1;
            } else {
                next = check_nextcmd(&String::from_utf8_lossy(&v[p..])).map(str::to_string);
                v.truncate(p);
                break;
            }
        }
        p += 1;
    }
    if argt & NOTRLCOM == 0 {
        del_trailing_spaces(&mut v);
    }
    (String::from_utf8_lossy(&v).into_owned(), next)
}

/// `one_letter_cmd` for `:k`: it can be followed directly by any character (`:ka`), but `:kee[pmarks]` is another command.
pub(in crate::editor) fn one_letter_k(t: &str) -> bool {
    let b = t.as_bytes();
    b.first() == Some(&b'k') && (b.get(1) != Some(&b'e') || b.get(2) != Some(&b'e'))
}

/// `find_ex_command`: `:dl`, `:dell`, `:delp`... are `:delete` with the `l` or `p` flag. The flag is the last letter of `name`.
pub(in crate::editor) fn delete_flag(name: &str) -> Option<u8> {
    let (head, last) = name.split_at(name.len().checked_sub(1)?);
    if head.is_empty() || !name.starts_with('d') || !"delete".starts_with(head) || !matches!(last, "l" | "p") {
        return None;
    }
    Some(if last == "l" { EXFLAG_LIST } else { EXFLAG_PRINT })
}

/// `one_letter_cmd` for `:s`: it can be followed directly by `c`, `g`, `i`, `I` or `r` (the flags), but `:sre[wind]`,
/// `:scr[iptnames]`, `:scs[cope]`, `:sim[alt]`, `:sig[ns]` and `:sil[ent]` are other commands.
pub(in crate::editor) fn one_letter_s(t: &str) -> bool {
    let b = t.as_bytes();
    let g = |i: usize| b.get(i).copied().unwrap_or(0);
    g(0) == b's'
        && ((g(1) == b'c' && (g(2) == 0 || (g(2) != b's' && g(2) != b'r' && (g(3) == 0 || (g(3) != b'i' && g(4) != b'p')))))
            || g(1) == b'g'
            || (g(1) == b'i' && g(2) != b'm' && g(2) != b'l' && g(2) != b'g')
            || g(1) == b'I'
            || (g(1) == b'r' && g(2) != b'e'))
}

/// What `do_one_cmd` reads before the arguments of a command: `parse_register`, `parse_count`, `get_flags`.
#[derive(Clone, Debug, Default)]
pub(in crate::editor) struct Prefix {
    /// The expression after `:put =` (`set_expr_line`): the rest of the line.
    pub expr: Option<String>,
    /// `eap->regname`.
    pub reg: Option<char>,
    /// The count (`parse_count`), always positive here.
    pub count: Option<usize>,
    /// `eap->flags`: a bit of `EXFLAG_*`.
    pub flags: u8,
}

pub(in crate::editor) const EXFLAG_LIST: u8 = 1;
pub(in crate::editor) const EXFLAG_NR: u8 = 2;
pub(in crate::editor) const EXFLAG_PRINT: u8 = 4;

/// The register, the count and the `l`/`p`/`#` flags the command takes, and what is left of `arg`.
pub(in crate::editor) fn parse_prefix(argt: u32, arg: &str, reading: bool) -> Result<(Prefix, &str), &'static str> {
    let mut p = Prefix::default();
    let mut a = arg;
    let first = a.as_bytes().first().copied();
    if argt & REGSTR != 0 && first.is_some() && !(argt & COUNT != 0 && first.is_some_and(|b| b.is_ascii_digit())) {
        // `valid_yank_reg(.., writing)`: the commands with a register write to it.
        let c = a.chars().next().unwrap_or('\0');
        // `:put` reads the register: `valid_yank_reg(.., false)` also takes `/`, `.`, `%`, `:` and `=`.
        if c.is_ascii_alphanumeric() || "#\"-_*+".contains(c) || (reading && "/.%:=".contains(c)) {
            p.reg = Some(c);
            a = &a[c.len_utf8()..];
            // `=`: the rest of the line is the expression, as it is.
            if c == '=' && !a.is_empty() {
                p.expr = Some(a.to_string());
                a = "";
            }
            a = skipwhite(a);
        }
    }
    if argt & COUNT != 0 && a.as_bytes().first().is_some_and(u8::is_ascii_digit) {
        let digits = a.bytes().take_while(u8::is_ascii_digit).count();
        // A buffer command takes a number as its count only when nothing else follows it.
        let alone = a.as_bytes().get(digits).is_none_or(|&b| is_white(b));
        if argt & BUFNAME == 0 || alone {
            let n: i64 = a[..digits].parse().unwrap_or(i64::MAX);
            a = skipwhite(&a[digits..]);
            if n <= 0 && argt & ZEROR == 0 {
                return Err("E939: Positive count required");
            }
            p.count = Some(n as usize);
        }
    }
    if argt & FLAGS != 0 {
        while let Some(c) = a.chars().next().filter(|c| matches!(c, 'l' | 'p' | '#')) {
            p.flags |= match c {
                'l' => EXFLAG_LIST,
                'p' => EXFLAG_PRINT,
                _ => EXFLAG_NR,
            };
            a = skipwhite(&a[1..]);
        }
    }
    Ok((p, a))
}

// ---- names of variables: eval.c `find_name_end`, eval/vars.c `skip_var_list` -------------------

fn isnamec(b: u8) -> bool {
    b.is_ascii_alphanumeric() || b == b'_' || b == b':' || b == b'#'
}

fn isnamec1(b: u8) -> bool {
    b.is_ascii_alphabetic() || b == b'_'
}

fn isdictc(b: Option<u8>) -> bool {
    b.is_some_and(|b| b.is_ascii_alphanumeric() || b == b'_')
}

pub(super) const FNE_INCL_BR: u32 = 1;
pub(super) const FNE_CHECK_START: u32 = 2;

/// `find_name_end`: the end of the variable name at the start of `arg`, `[...]` and `.key`
/// included with `FNE_INCL_BR`.
pub(super) fn find_name_end(arg: &str, flags: u32) -> usize {
    let b = arg.as_bytes();
    if flags & FNE_CHECK_START != 0 && b.first().is_none_or(|&c| !isnamec1(c) && c != b'{') {
        return 0;
    }
    let (mut mb_nest, mut br_nest) = (0i32, 0i32);
    let mut p = 0;
    while p < b.len() && (isnamec(b[p]) || b[p] == b'{' || (flags & FNE_INCL_BR != 0 && (b[p] == b'[' || (b[p] == b'.' && isdictc(b.get(p + 1).copied())))) || mb_nest != 0 || br_nest != 0) {
        if b[p] == b'\'' {
            p += 1;
            while p < b.len() && b[p] != b'\'' {
                p = adv(arg, p);
            }
            if p >= b.len() {
                break;
            }
        } else if b[p] == b'"' {
            p += 1;
            while p < b.len() && b[p] != b'"' {
                if b[p] == b'\\' && p + 1 < b.len() {
                    p += 1;
                }
                p = adv(arg, p);
            }
            if p >= b.len() {
                break;
            }
        } else if br_nest == 0 && mb_nest == 0 && b[p] == b':' {
            let len = p;
            if (len > 1 && b[p - 1] != b'}') || (len == 1 && !b"abglstvw".contains(&b[0])) {
                break;
            }
        }
        if mb_nest == 0 {
            if b[p] == b'[' {
                br_nest += 1;
            } else if b[p] == b']' {
                br_nest -= 1;
            }
        }
        if br_nest == 0 {
            if b[p] == b'{' {
                mb_nest += 1;
            } else if b[p] == b'}' {
                mb_nest -= 1;
            }
        }
        p = adv(arg, p);
    }
    p
}

/// `skip_var_one`.
fn skip_var_one(arg: &str) -> usize {
    let b = arg.as_bytes();
    if b.first() == Some(&b'@') && b.len() > 1 {
        return 2.min(arg.len());
    }
    let skip = usize::from(matches!(b.first(), Some(b'$' | b'&')));
    skip + find_name_end(&arg[skip..], FNE_INCL_BR | FNE_CHECK_START)
}

/// `skip_var_list`: the end of `name` or `[a, b; rest]`; none for an invalid list.
pub(super) fn skip_var_list(arg: &str) -> Result<usize, String> {
    skip_var_list_n(arg).map(|(end, ..)| end)
}

/// `skip_var_list` with what it counts: the end, the number of variables of a list and whether a `;` was in it.
pub(super) fn skip_var_list_n(arg: &str) -> Result<(usize, usize, bool), String> {
    if !arg.starts_with('[') {
        return Ok((skip_var_one(arg), 0, false));
    }
    let bad = |p: usize| format!("E475: Invalid argument: {}", &arg[p..]);
    let mut p = 0;
    let mut semicolon = false;
    let mut count = 0;
    loop {
        p += 1;
        p += arg[p..].len() - skipwhite(&arg[p..]).len();
        let s = p + skip_var_one(&arg[p..]);
        if s == p {
            return Err(bad(p));
        }
        count += 1;
        p = s + (arg[s..].len() - skipwhite(&arg[s..]).len());
        match arg.as_bytes().get(p) {
            Some(b']') => return Ok((p + 1, count, semicolon)),
            Some(b';') => {
                if semicolon {
                    return Err("E452: Double ; in list of variables".into());
                }
                semicolon = true;
            }
            Some(b',') => {}
            _ => return Err(bad(p)),
        }
    }
}

// ---- regexps: regexp.c `skip_regexp_ex`, `skip_anyof` -----------------------------------------

/// `get_char_class` and friends: after the `[` at `p`, a `[:name:]`, `[=x=]` or `[.x.]` is
/// skipped whole.
fn skip_class(s: &str, p: usize) -> usize {
    const NAMES: &[&str] = &[
        "alnum", "alpha", "backspace", "blank", "cntrl", "digit", "escape", "fname", "graph", "ident", "keyword", "lower", "print", "punct", "return", "space", "tab", "upper", "xdigit",
    ];
    let b = s.as_bytes();
    if b.get(p + 1) == Some(&b':') && b.get(p + 2..p + 5).is_some_and(|x| x.iter().all(u8::is_ascii_lowercase)) {
        for n in NAMES {
            if s[p + 2..].starts_with(n) && s[p + 2 + n.len()..].starts_with(":]") {
                return p + n.len() + 4;
            }
        }
    }
    for d in *b"=." {
        if b.get(p + 1) == Some(&d) && p + 2 < b.len() {
            let l = s[p + 2..].chars().next().map_or(1, char::len_utf8);
            if b.get(p + l + 2) == Some(&d) && b.get(p + l + 3) == Some(&b']') {
                return p + l + 4;
            }
        }
    }
    p
}

/// `skip_anyof`: the `]` closing the collection that starts after the `[` (`p` is after it).
fn skip_anyof(s: &str, mut p: usize) -> usize {
    let b = s.as_bytes();
    if b.get(p) == Some(&b'^') {
        p += 1;
    }
    if matches!(b.get(p), Some(b']' | b'-')) {
        p += 1;
    }
    while p < b.len() && b[p] != b']' {
        let l = s[p..].chars().next().map_or(1, char::len_utf8);
        if l > 1 {
            p += l;
        } else if b[p] == b'-' {
            p += 1;
            if p < b.len() && b[p] != b']' {
                p = adv(s, p);
            }
        } else if b[p] == b'\\' && b.get(p + 1).is_some_and(|c| b"]^-n\\".contains(c) || b"nrtebdoxuU".contains(c)) {
            p += 2;
        } else if b[p] == b'[' {
            let q = skip_class(s, p);
            // Not a class name: the `[` is a char like another.
            p = if q == p { p + 1 } else { q };
        } else {
            p += 1;
        }
    }
    p
}

/// `skip_regexp_ex` with 'magic': the end of the pattern in `s` from `start`, at the delimiter
/// `dirc` (or the end of `s`).
pub(super) fn skip_regexp(s: &str, start: usize, dirc: u8) -> usize {
    #[derive(PartialEq, PartialOrd)]
    enum Magic {
        None,
        Off,
        On,
        All,
    }
    let mut magic = Magic::On;
    let b = s.as_bytes();
    let mut p = start;
    while p < b.len() {
        if b[p] == dirc {
            break;
        }
        if (b[p] == b'[' && magic >= Magic::On) || (b[p] == b'\\' && b.get(p + 1) == Some(&b'[') && magic <= Magic::Off) {
            let q = p + if b[p] == b'[' { 1 } else { 2 };
            p = skip_anyof(s, q);
            if p >= b.len() {
                break;
            }
        } else if b[p] == b'\\' && p + 1 < b.len() {
            p += 1;
            if b[p] == b'v' {
                magic = Magic::All;
            } else if b[p] == b'V' {
                magic = Magic::None;
            }
        }
        p = adv(s, p);
    }
    p
}

/// `skip_substitute`: the end of the replacement, after its delimiter (if there is one).
fn skip_substitute(s: &str, start: usize, delim: u8) -> usize {
    let b = s.as_bytes();
    let mut p = start;
    while p < b.len() {
        if b[p] == delim {
            return p + 1;
        }
        if b[p] == b'\\' && p + 1 < b.len() {
            p += 1;
        }
        p = adv(s, p);
    }
    p
}

// ---- commands that find their own end ---------------------------------------------------------

/// What a command takes of its argument and what follows. `None` as the rest: the line goes on
/// no further (a comment, or no `|`).
pub(super) type End = (String, Option<String>);

/// An argument taken whole, without a next command.
fn whole(arg: &str) -> End {
    (arg.to_string(), None)
}

/// An argument cut at byte `end`, `next` being what check_nextcmd finds from `end`.
fn cut(arg: &str, end: usize) -> End {
    (arg[..end].to_string(), check_nextcmd(&arg[end..]).map(str::to_string))
}

/// `eval0` as `ex_call`, `ex_if`, `ex_let`… use it: where the expression at the start of `s`
/// stops. On a failure the command reports the error when it runs; `eval0` still leaves
/// `eap->nextcmd`: what `check_nextcmd` finds where it stopped, unless that starts with `|`.
fn expr_end(e: &mut Editor, s: &str) -> Result<usize, Option<String>> {
    let (res, p) = e.eval0_ev(s, false);
    match res {
        Ok(_) => Ok(p),
        Err(_) => Err(check_nextcmd(&s[p..]).filter(|n| !n.starts_with('|')).map(str::to_string)),
    }
}

/// What follows `=<<` of a `:let` that starts a here document.
pub(super) fn heredoc_arg(arg: &str) -> Option<&str> {
    let argend = skip_var_list(arg).ok()?;
    skipwhite(&arg[argend..]).strip_prefix("=<<")
}

/// `ex_let`: a variable list and `=`, or the names to show.
fn let_end(e: &mut Editor, arg: &str) -> End {
    let Ok(argend) = skip_var_list(arg) else { return whole(arg) };
    let expr = skipwhite(&arg[argend..]);
    let off = arg.len() - expr.len();
    let concat = expr.starts_with("..=");
    let has_assign = expr.starts_with('=') || (expr.len() > 1 && b"+-*/%.".contains(&expr.as_bytes()[0]) && expr.as_bytes()[1] == b'=');
    if !has_assign && !concat {
        if arg.starts_with('[') {
            return whole(arg);
        }
        // `list_arg_vars`: names to show, until the command ends.
        let mut p = 0;
        while !ends_excmd(arg.as_bytes().get(p).copied()) {
            let e = p + find_name_end(&arg[p..], FNE_INCL_BR | FNE_CHECK_START);
            let after = e + (arg[e..].len() - skipwhite(&arg[e..]).len());
            if !arg.as_bytes().get(e).copied().is_some_and(is_white) && !ends_excmd(arg.as_bytes().get(e).copied()) {
                return whole(arg);
            }
            p = after;
        }
        return cut(arg, p);
    }
    if expr.starts_with("=<<") {
        // The text lines of a heredoc come with the line-reading commands (`:function`, `:append`).
        return whole(arg);
    }
    let op = if expr.starts_with('=') {
        1
    } else if expr.starts_with("..") {
        3
    } else {
        2
    };
    let rhs_start = off + op;
    let rhs = skipwhite(&arg[rhs_start..]);
    let rhs_off = arg.len() - rhs.len();
    match expr_end(e, rhs) {
        Ok(end) => cut(arg, rhs_off + end),
        Err(next) => (arg.to_string(), next),
    }
}

/// `ex_unletlock`: names separated by blanks.
fn unlet_end(arg: &str) -> End {
    let mut p = 0;
    loop {
        let b = arg.as_bytes();
        let name_end = if b.get(p) == Some(&b'$') {
            let e = p + 1 + arg[p + 1..].find(|c: char| !(c.is_ascii_alphanumeric() || c == '_')).unwrap_or(arg.len() - p - 1);
            if e == p + 1 {
                return whole(arg);
            }
            e
        } else {
            let e = p + find_name_end(&arg[p..], FNE_INCL_BR | FNE_CHECK_START);
            if e == p {
                return whole(arg);
            }
            e
        };
        if !b.get(name_end).copied().is_some_and(is_white) && !ends_excmd(b.get(name_end).copied()) {
            return whole(arg);
        }
        p = name_end + (arg[name_end..].len() - skipwhite(&arg[name_end..]).len());
        if ends_excmd(b.get(p).copied()) {
            return cut(arg, p);
        }
    }
}

/// `ex_echo` and `ex_execute`: expressions up to a `|`; a `"` starts the next string. It stops
/// where an expression fails, and `check_nextcmd` looks for the next command from there.
fn echo_end(e: &mut Editor, arg: &str) -> End {
    let mut p = 0;
    while !matches!(arg.as_bytes().get(p), None | Some(b'|' | b'\n')) {
        if e.skip_expr(arg, &mut p).is_err() {
            return (arg.to_string(), check_nextcmd(&arg[p..]).map(str::to_string));
        }
        p = skipwhite_at(arg, p);
    }
    cut(arg, p)
}

fn skipwhite_at(s: &str, p: usize) -> usize {
    p + (s[p..].len() - skipwhite(&s[p..]).len())
}

/// `ex_for`: `{var} in {expr}`.
fn for_end(e: &mut Editor, arg: &str) -> End {
    let Ok(varend) = skip_var_list(arg) else { return whole(arg) };
    let rest = skipwhite(&arg[varend..]);
    let b = rest.as_bytes();
    if b.first() != Some(&b'i') || b.get(1) != Some(&b'n') || !(b.len() == 2 || is_white(b[2])) {
        return whole(arg);
    }
    let expr = skipwhite(&rest[2..]);
    let off = arg.len() - expr.len();
    match expr_end(e, expr) {
        Ok(end) => cut(arg, off + end),
        Err(next) => (arg.to_string(), next),
    }
}

/// `do_sub`: `/pat/rep/flags count` and what follows; with no pattern, the flags and count of the
/// previous substitute.
fn sub_end(long: &str, arg: &str) -> End {
    let b = arg.as_bytes();
    let mut p = 0;
    // `:s` takes a pattern unless the arg starts with a flag, a digit, `|` or `"`.
    let pattern = long == "substitute" && !b.is_empty() && !is_white(b[0]) && !b"0123456789cegriIp|\"".contains(&b[0]);
    if pattern {
        let delim = b[0];
        if delim.is_ascii_alphanumeric() || delim == b'"' || delim == b'|' {
            return whole(arg);
        }
        if delim == b'\\' {
            // `\/`, `\?`, `\&`: an empty pattern, the delimiter is the next char.
            if !b.get(1).is_some_and(|c| b"/?&".contains(c)) {
                return whole(arg);
            }
            p = 2;
        } else {
            p = skip_regexp(arg, 1, delim);
            if b.get(p) == Some(&delim) {
                p += 1;
            }
        }
        p = skip_substitute(arg, p, delim);
    }
    // `sub_parse_flags`: `&` keeps the flags, then any of `gcnerp#liI`.
    if b.get(p) == Some(&b'&') {
        p += 1;
    }
    while b.get(p).is_some_and(|c| b"gcnerp#liI".contains(c)) {
        p += 1;
    }
    p += arg[p..].len() - skipwhite(&arg[p..]).len();
    while b.get(p).is_some_and(u8::is_ascii_digit) {
        p += 1;
    }
    p += arg[p..].len() - skipwhite(&arg[p..]).len();
    if p < b.len() && b[p] != b'"' {
        return match check_nextcmd(&arg[p..]) {
            Some(n) => (arg[..p].to_string(), Some(n.to_string())),
            None => whole(arg),
        };
    }
    (arg[..p].to_string(), None)
}

/// `ex_sort`: flags and a pattern, up to the command's end.
fn sort_end(arg: &str) -> End {
    let b = arg.as_bytes();
    let mut p = 0;
    let mut have_pattern = false;
    while p < b.len() {
        let c = b[p];
        if !(is_white(c) || b"ilrnfboxu".contains(&c)) {
            if c == b'"' {
                return (arg[..p].to_string(), None);
            }
            if let Some(n) = check_nextcmd(&arg[p..]) {
                return (arg[..p].to_string(), Some(n.to_string()));
            }
            if c.is_ascii_alphabetic() || have_pattern {
                return whole(arg);
            }
            let s = skip_regexp(arg, p + 1, c);
            if s >= b.len() {
                return whole(arg);
            }
            have_pattern = true;
            p = s;
        }
        p += 1;
    }
    whole(arg)
}

/// What the commands that find their own end take of `arg` (after the name and the blanks), and
/// what follows them. `None` when `long` is not one of them.
pub(super) fn own_end(e: &mut Editor, long: &str, arg: &str) -> Option<End> {
    Some(match long {
        "let" | "const" => let_end(e, arg),
        "function" | "delfunction" | "catch" => whole(arg),
        "return" => match arg.as_bytes().first() {
            None | Some(b'|' | b'\n') => cut(arg, 0),
            _ => match expr_end(e, arg) {
                Ok(end) => cut(arg, end),
                Err(next) => (arg.to_string(), next),
            },
        },
        "unlet" | "lockvar" | "unlockvar" => unlet_end(arg),
        "echo" | "echon" | "echomsg" | "echoerr" | "execute" => echo_end(e, arg),
        "call" | "if" | "elseif" | "while" | "throw" => match expr_end(e, arg) {
            Ok(end) => cut(arg, end),
            Err(next) => (arg.to_string(), next),
        },
        "for" => for_end(e, arg),
        "substitute" | "&" | "&&" | "~" => sub_end(long, arg),
        "sort" => sort_end(arg),
        // `ex_syntax` hands its argument to a subcommand; the ones rim has end at a `|`.
        "syntax" => match find_nextcmd(arg) {
            Some(n) => (arg[..arg.len() - n.len() - 1].to_string(), Some(n.to_string())),
            None => whole(arg),
        },
        "=" => match check_nextcmd(arg) {
            Some(n) => (String::new(), Some(n.to_string())),
            None => whole(arg),
        },
        "normal" | "vertical" => whole(arg),
        "global" | "vglobal" => {
            // Only a newline ends them (and a backslash in front of it does not).
            let mut v: Vec<u8> = arg.as_bytes().to_vec();
            let mut i = 0;
            while i < v.len() {
                if v[i] == b'\\' && v.get(i + 1) == Some(&b'\n') {
                    v.remove(i);
                } else if v[i] == b'\n' {
                    let next = String::from_utf8_lossy(&v[i + 1..]).into_owned();
                    v.truncate(i);
                    return Some((String::from_utf8_lossy(&v).into_owned(), Some(next)));
                }
                i += 1;
            }
            (String::from_utf8_lossy(&v).into_owned(), None)
        }
        _ => return None,
    })
}

/// `skip_cmd`: commands that do nothing inside an inactive `:if`/`:while`. The others (the block
/// commands, and the ones that handle `|` themselves) still run to find their end and keep the
/// nesting right.
pub(super) fn skipped_when_inactive(long: &str) -> bool {
    !matches!(
        long,
        "while" | "endwhile" | "for" | "endfor" | "if" | "elseif" | "else" | "endif" | "call" | "defer" | "echo" | "echoerr" | "echomsg" | "echon" | "execute" | "let" | "const" | "unlet" | "lockvar" | "unlockvar" | "function" | "delfunction" | "return" | "try" | "catch" | "finally" | "endtry" | "throw" | "substitute" | "&" | "&&" | "~" | "syntax" | "vertical"
    )
}
