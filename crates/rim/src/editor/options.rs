//! `:set` options.

use super::highlight::Env;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Background {
    Dark,
    Light,
}

#[derive(Clone, Debug, PartialEq, Eq)]
pub(super) struct Options {
    pub number: bool,
    pub relativenumber: bool,
    pub cursorline: bool,
    /// Long lines continue on the next screen rows instead of scrolling sideways.
    pub wrap: bool,
    /// Tab display width, and the width Tab inserts.
    pub tabstop: usize,
    /// `'vartabstop'` as it was set (`b_p_vts`: `0` stays `0`), and the stops it holds (`b_p_vts_array`: its last value
    /// repeats; empty: every `tabstop`).
    pub vartabstop: String,
    pub vts_array: Vec<usize>,
    /// `'isfname'` (global): the chars a file name is made of.
    pub isfname: String,
    /// `'shell'` and `'suffixes'` (global).
    pub shell: String,
    pub suffixes: String,
    /// `'splitbelow'` and `'splitright'` (global): where a new window goes, and which neighbour a closed one gives its room to.
    pub splitbelow: bool,
    pub splitright: bool,
    /// `'hidden'` (global): a buffer that leaves its last window stays loaded.
    pub hidden: bool,
    /// `'smarttab'` (global): Tab and Backspace in an indent work by `shiftwidth`.
    pub smarttab: bool,
    /// `'softtabstop'`: Tab and Backspace in Insert mode move by this many columns (0: off, negative: `shiftwidth`).
    pub softtabstop: i64,
    /// `'undolevels'`: how many undo steps are kept (-1: none).
    pub undolevels: i64,
    /// `'undoreload'` (global): a reload of a buffer with up to this many lines is saved for undo (-1: always).
    pub undoreload: i64,
    /// `'modified'`: scratch fields between `Editor::ff_in` and `Editor::ff_out`: `Buffer::modified` (`b_changed`, which `:set`
    /// and `!` work on), whether `'fileformat'` differs from when the file was read (shown as modified too), and whether
    /// the option was set.
    pub modified: bool,
    pub ff_changed: bool,
    pub modified_set: bool,
    /// `'varsofttabstop'` as it was set, and its stops (as `vartabstop`).
    pub varsofttabstop: String,
    pub vsts_array: Vec<usize>,
    /// The first of the two messages a bad value of an option gives (`tabstop_set` says what is wrong, then `:set` names the
    /// argument): the caller shows it before the error that is returned.
    pub first_error: Option<String>,
    /// Tab and `>`/`<` insert spaces rather than tabs; `:retab` writes spaces.
    pub expandtab: bool,
    /// Width of one `>`/`<` shift; 0 means `tabstop`.
    pub shiftwidth: usize,
    /// Tabs show as `>` and spaces, line ends as `$`.
    pub list: bool,
    /// Searches ignore case; with `smartcase`, only while the pattern has no uppercase letter.
    pub ignorecase: bool,
    pub smartcase: bool,
    /// Matches of the last search are highlighted; incsearch: the pattern being typed is.
    pub hlsearch: bool,
    pub incsearch: bool,
    /// Lines kept above and below the cursor when scrolling.
    pub scrolloff: usize,
    /// Changes of more lines than this are reported (`'report'`).
    pub report: usize,
    /// Selects the built-in highlight groups (`:highlight`).
    pub background: Background,
    /// Colors come from the `gui*` keys of `:highlight` (truecolor), falling back to the `cterm*` ones.
    pub termguicolors: bool,
    /// Pieces above which the idle compaction runs (`Editor::idle`); 0 disables it.
    pub compactat: usize,
    /// Kind of file, detected from the name when the buffer opens; empty when unknown.
    /// Kind of file, detected from the name when the buffer opens; empty when unknown.
    pub filetype: String,
    /// Windows get a status row: never (0), only with several windows (1), always (2).
    pub laststatus: usize,
    /// The message row shows the mode (`-- INSERT --`) and the pending keys.
    pub showmode: bool,
    pub showcmd: bool,
    /// `messagesopt`: a message of several rows waits for a key (`hit-enter`) or is dropped at the
    /// next one (`wait:N`, whose delay is not honored); lines of `:messages` history kept.
    pub msg_hit_enter: bool,
    pub msg_wait: Option<usize>,
    pub msg_history: usize,
    /// `shortmess`: flags that shorten messages (`T`: cut the middle of a long one, `t`: the start of a file message).
    pub shortmess: String,
    /// `'modifiable'`: the text can be changed (`E21` otherwise).
    pub modifiable: bool,
    /// `'readonly'`: writing the file needs `!` (`E45`); a change warns once (`W10`).
    pub readonly: bool,
    /// `'bufhidden'`: what happens when the buffer is no longer in a window: `hide`, `unload`, `delete`, `wipe`, or the default.
    pub bufhidden: String,
    /// `buftype=nofile`: the buffer is never modified and cannot be written.
    pub nofile: bool,
    /// Output taller than the screen waits in a pager (`-- More --`) instead of showing its last rows.
    pub more: bool,
    /// Rows of the command-line window (`cmdwinheight`).
    pub cmdwinheight: usize,
    /// Command-line completion: show a menu, what each press of `wildchar` does, the menu style and
    /// matching (`pum`, `fuzzy`), file names that never match, the key that completes.
    pub wildmenu: bool,
    pub wildmode: String,
    pub wildoptions: String,
    /// `'jumpoptions'` (global): `clean` is the one that is read (`:bdelete`); `stack` and `view` are kept as set.
    pub jumpoptions: String,
    pub wildignore: String,
    pub wildignorecase: bool,
    pub wildchar: String,
    pub wildcharm: String,
    /// Rows of the popup menu at most (0: as many as fit) and its least width.
    pub pumheight: usize,
    pub pumwidth: usize,
    /// Key on the command line that opens the command-line window (empty: none).
    pub cedit: String,
    /// Windows: every split or close evens the sizes out (`equalalways`); the least rows and columns
    /// the current window gets (`winheight`, `winwidth`) and the other ones keep (`winminheight`, `winminwidth`).
    /// Mouse: the modes it works in (`n`ormal, `v`isual, `i`nsert, `c`ommand line, hit-`r`eturn, `a`ll)
    /// and the lines and columns the wheel scrolls (`ver:N,hor:N`).
    pub mouse: String,
    pub mousescroll: String,
    pub equalalways: bool,
    pub winheight: usize,
    pub winminheight: usize,
    pub winwidth: usize,
    pub winminwidth: usize,
    /// Modelines (`vim: set ts=2:`) of a file are obeyed, in its first and last `modelines` lines.
    pub modeline: bool,
    pub modelines: usize,
    /// `fileformat`: `unix`, `dos` or `mac`. The line ending itself lives in the `Document`; this holds the
    /// value between `Editor::ff_in` and `Editor::ff_out`, which keep the two the same around every use of an option.
    pub fileformat: String,
    /// `'endofline'`: the file read ended with a line break, and a write gives one back.
    pub endofline: bool,
    /// `'fixendofline'`: a write adds the last line break even when `'endofline'` is off.
    pub fixendofline: bool,
    /// `'binary'`: no last line break unless `'endofline'` is on; `'expandtab'` and `'modeline'` off.
    pub binary: bool,
    /// The `'nobin'` copies of `'expandtab'` and `'modeline'` (`set_options_bin`).
    nobin_expandtab: bool,
    nobin_modeline: bool,
}

impl Default for Options {
    fn default() -> Self {
        Self {
            number: true,
            relativenumber: true,
            cursorline: true,
            wrap: true,
            tabstop: 4,
            vartabstop: String::new(),
            vts_array: Vec::new(),
            first_error: None,
            smarttab: true,
            hidden: true,
            isfname: "@,48-57,/,.,-,_,+,,,#,$,%,~,=".into(),
            shell: std::env::var("SHELL").ok().filter(|s| !s.is_empty()).unwrap_or_else(|| "sh".into()),
            suffixes: ".bak,~,.o,.h,.info,.swp,.obj".into(),
            splitbelow: false,
            splitright: false,
            softtabstop: 0,
            undolevels: 1000,
            undoreload: 10000,
            modified: false,
            ff_changed: false,
            modified_set: false,
            varsofttabstop: String::new(),
            vsts_array: Vec::new(),
            expandtab: true,
            shiftwidth: 0,
            list: false,
            ignorecase: false,
            smartcase: false,
            hlsearch: true,
            incsearch: true,
            scrolloff: 0,
            report: 2,
            background: Background::Dark,
            termguicolors: false,
            compactat: 10_000,
            filetype: String::new(),
            laststatus: 1,
            showmode: true,
            showcmd: true,
            msg_hit_enter: true,
            msg_wait: None,
            msg_history: 500,
            shortmess: "ltToOCF".into(),
            nofile: false,
            modifiable: true,
            readonly: false,
            bufhidden: String::new(),
            more: true,
            cmdwinheight: 7,
            wildmenu: true,
            wildmode: "full".into(),
            wildoptions: "pum,tagfile".into(),
            jumpoptions: "clean".into(),
            wildignore: String::new(),
            wildignorecase: false,
            wildchar: "<Tab>".into(),
            wildcharm: String::new(),
            pumheight: 0,
            pumwidth: 15,
            cedit: "<C-F>".into(),
            mouse: "nvi".into(),
            mousescroll: "ver:3,hor:6".into(),
            equalalways: true,
            winheight: 1,
            winminheight: 1,
            winwidth: 20,
            winminwidth: 1,
            modeline: true,
            modelines: 5,
            fileformat: "unix".into(),
            endofline: true,
            fixendofline: true,
            binary: false,
            nobin_expandtab: true,
            nobin_modeline: true,
        }
    }
}

/// `tabstop_set`: the stops in `arg` (`4`, `4,8`); none for an empty one or `0`.
pub(super) fn tabstop_set(arg: &str) -> Result<Vec<usize>, String> {
    if arg.is_empty() || arg == "0" {
        return Ok(Vec::new());
    }
    let b = arg.as_bytes();
    let mut count = 1;
    for (i, &c) in b.iter().enumerate() {
        if i == 0 || b[i - 1] == b',' {
            let digits = arg[i..].trim_start_matches(['+', '-']).bytes().take_while(u8::is_ascii_digit).count();
            let sign_len = arg[i..].len() - arg[i..].trim_start_matches(['+', '-']).len();
            let v: i64 = arg[i..i + sign_len + digits].parse().unwrap_or(if arg[i..].starts_with('-') { -1 } else { 0 });
            if v <= 0 {
                return Err(if digits > 0 { "E487: Argument must be positive".into() } else { format!("E475: Invalid argument: {}", &arg[i..]) });
            }
        }
        if c.is_ascii_digit() {
            continue;
        }
        if c == b',' && i > 0 && b[i - 1] != b',' && i + 1 < b.len() {
            count += 1;
            continue;
        }
        return Err(format!("E475: Invalid argument: {arg}"));
    }
    let _ = count;
    arg.split(',')
        .map(|n| n.parse::<usize>().ok().filter(|&n| (1..=9999).contains(&n)).ok_or_else(|| format!("E475: Invalid argument: {n}")))
        .collect()
}

/// `find_dup_item` and `stropt_remove_val` for a comma list: the first place where `value` is whole items is cut out, with
/// the comma after it (before it when it is not the first).
fn comma_remove(old: &str, value: &str) -> String {
    let ob = old.as_bytes();
    let at = (0..old.len()).find(|&s| {
        (s == 0 || ob[s - 1] == b',') && old[s..].starts_with(value) && ob.get(s + value.len()).is_none_or(|&c| c == b',')
    });
    let Some(s) = at else { return old.to_string() };
    let (mut start, mut len) = (s, value.len());
    if s == 0 {
        len += usize::from(old[len..].starts_with(','));
    } else {
        start -= 1;
        len += 1;
    }
    format!("{}{}", &old[..start], &old[start + len..])
}

/// Every option: long name, short name, and whether it is a flag (`:set nox`, `:set invx`).
pub(super) const NAMES: &[(&str, Option<&str>, bool)] = &[
    ("number", Some("nu"), true),
    ("relativenumber", Some("rnu"), true),
    ("cursorline", Some("cul"), true),
    ("wrap", None, true),
    ("tabstop", Some("ts"), false),
    ("vartabstop", Some("vts"), false),
    ("smarttab", Some("sta"), true),
    ("hidden", Some("hid"), true),
    ("modifiable", Some("ma"), true),
    ("readonly", Some("ro"), true),
    ("bufhidden", Some("bh"), false),
    ("isfname", Some("isf"), false),
    ("shell", Some("sh"), false),
    ("suffixes", Some("su"), false),
    ("splitbelow", Some("sb"), true),
    ("splitright", Some("spr"), true),
    ("softtabstop", Some("sts"), false),
    ("undolevels", Some("ul"), false),
    ("undoreload", Some("ur"), false),
    ("modified", Some("mod"), true),
    ("varsofttabstop", Some("vsts"), false),
    ("expandtab", Some("et"), true),
    ("shiftwidth", Some("sw"), false),
    ("list", None, true),
    ("ignorecase", Some("ic"), true),
    ("smartcase", Some("scs"), true),
    ("hlsearch", Some("hls"), true),
    ("incsearch", Some("is"), true),
    ("scrolloff", Some("so"), false),
    ("report", None, false),
    ("background", Some("bg"), false),
    ("termguicolors", Some("tgc"), true),
    ("compactat", None, false),
    ("filetype", Some("ft"), false),
    ("laststatus", Some("ls"), false),
    ("showmode", Some("smd"), true),
    ("showcmd", Some("sc"), true),
    ("more", None, true),
    ("buftype", Some("bt"), false),
    ("cmdwinheight", Some("cwh"), false),
    ("messagesopt", Some("mopt"), false),
    ("shortmess", Some("shm"), false),
    ("wildmenu", Some("wmnu"), true),
    ("wildmode", Some("wim"), false),
    ("wildoptions", Some("wop"), false),
    ("jumpoptions", Some("jop"), false),
    ("wildignore", Some("wig"), false),
    ("wildignorecase", Some("wic"), true),
    ("wildchar", Some("wc"), false),
    ("wildcharm", Some("wcm"), false),
    ("pumheight", Some("ph"), false),
    ("pumwidth", Some("pw"), false),
    ("cedit", None, false),
    ("mouse", None, false),
    ("mousescroll", None, false),
    ("equalalways", Some("ea"), true),
    ("winheight", Some("wh"), false),
    ("winminheight", Some("wmh"), false),
    ("winwidth", Some("wiw"), false),
    ("winminwidth", Some("wmw"), false),
    ("modeline", Some("ml"), true),
    ("endofline", Some("eol"), true),
    ("fixendofline", Some("fixeol"), true),
    ("binary", Some("bin"), true),
    ("modelines", Some("mls"), false),
    ("fileformat", Some("ff"), false),
];

/// Every flag of `'shortmess'` (`SHM_ALL`).
const SHM_ALL: &str = "rmlwaWtToOsAIcCqFSnfxi";

/// `stropt_remove_dupflags`: of a flag that appears more than once only the last one stays.
fn dedupe_flags(s: &str) -> String {
    let chars: Vec<char> = s.chars().collect();
    chars.iter().enumerate().filter(|&(i, c)| !chars[i + 1..].contains(c)).map(|(_, &c)| c).collect()
}

/// The message of an error of `set_value`: an `E539` keeps its text, the others are the generic one.
fn shm_err(m: String, generic: &'static str) -> std::borrow::Cow<'static, str> {
    if m.starts_with("E539") { m.into() } else { generic.into() }
}

/// Long name of an option given by its long or vim short name.
pub(super) fn long(name: &str) -> Option<&'static str> {
    NAMES.iter().find(|&&(l, s, _)| l == name || s == Some(name)).map(|n| n.0)
}

impl Options {
    /// Whether `args` of `:set` name `scrolloff`.
    pub fn names_scrolloff(args: &str) -> bool {
        args.split_whitespace().any(|a| {
            let a = a.strip_prefix("no").or_else(|| a.strip_prefix("inv")).unwrap_or(a);
            long(&a[..a.find(|c: char| !c.is_ascii_alphabetic()).unwrap_or(a.len())]) == Some("scrolloff")
        })
    }

    /// Copies the options of global scope in Neovim (`scope = { 'global' }` in `options.lua`) to `to`.
    pub fn copy_global(&self, to: &mut Options) {
        (to.background, to.termguicolors, to.report, to.modelines) = (self.background, self.termguicolors, self.report, self.modelines);
        (to.hlsearch, to.incsearch, to.ignorecase, to.smartcase) = (self.hlsearch, self.incsearch, self.ignorecase, self.smartcase);
        (to.laststatus, to.showmode, to.showcmd) = (self.laststatus, self.showmode, self.showcmd);
        (to.msg_hit_enter, to.msg_wait, to.msg_history) = (self.msg_hit_enter, self.msg_wait, self.msg_history);
        to.shortmess = self.shortmess.clone();
        to.smarttab = self.smarttab;
        to.hidden = self.hidden;
        (to.shell, to.suffixes, to.isfname) = (self.shell.clone(), self.suffixes.clone(), self.isfname.clone());
        (to.splitbelow, to.splitright) = (self.splitbelow, self.splitright);
        to.undoreload = self.undoreload;
        to.cmdwinheight = self.cmdwinheight;
        to.more = self.more;
        (to.wildmenu, to.wildmode, to.wildoptions) = (self.wildmenu, self.wildmode.clone(), self.wildoptions.clone());
        to.jumpoptions = self.jumpoptions.clone();
        (to.wildignore, to.wildignorecase) = (self.wildignore.clone(), self.wildignorecase);
        (to.wildchar, to.wildcharm, to.pumheight, to.pumwidth) = (self.wildchar.clone(), self.wildcharm.clone(), self.pumheight, self.pumwidth);
        to.cedit = self.cedit.clone();
        (to.mouse, to.mousescroll) = (self.mouse.clone(), self.mousescroll.clone());
        (to.equalalways, to.winheight, to.winminheight, to.winwidth, to.winminwidth) = (self.equalalways, self.winheight, self.winminheight, self.winwidth, self.winminwidth);
    }

    /// The value of option `name` (long or short name) for `&name` in an expression: a number
    /// (flags as 0 or 1) or a string.
    pub fn lookup(&self, name: &str) -> Option<super::script::Value> {
        use super::script::Value;
        let shown = self.show(long(name)?);
        Some(match shown.split_once('=') {
            Some((_, v)) if matches!(long(name), Some("vartabstop" | "varsofttabstop")) => Value::Str(v.into()),
            Some((_, v)) => v.parse().map_or_else(|_| Value::Str(v.into()), Value::Int),
            None => Value::Int(i64::from(!shown.starts_with("no"))),
        })
    }

    /// Whether `name` is a Number option (a String option can hold digits only: `'vartabstop'` set to `5`).
    fn is_number(&self, name: &str) -> bool {
        !matches!(name, "vartabstop" | "varsofttabstop") && self.show(name).split_once('=').is_some_and(|(_, v)| v.parse::<i64>().is_ok())
    }

    /// `:let &name`: the kind of the option, None when there is none.
    pub fn kind(&mut self, name: &str) -> Option<OptKind> {
        let name = long(name)?;
        Some(if self.flag(name).is_some() {
            OptKind::Flag
        } else if self.is_number(name) {
            OptKind::Number
        } else {
            OptKind::Text
        })
    }

    /// `set_option` for a Number option: its range is checked (`validate_num_option`).
    pub fn set_number(&mut self, name: &str, n: i64) -> Result<(), &'static str> {
        let name = long(name).ok_or("E355: Unknown option")?;
        let n = self.validate_num(name, n)?;
        self.set_value(name, &n.to_string(), name).map_err(|_| "E474: Invalid argument")
    }

    /// `set_option` for a String option.
    pub fn set_text(&mut self, name: &str, s: &str) -> Result<(), std::borrow::Cow<'static, str>> {
        let name = long(name).ok_or("E355: Unknown option")?;
        self.set_value(name, s, name).map_err(|m| shm_err(m, "E474: Invalid argument"))
    }

    /// `set_options_bin`: `'binary'` on saves `'expandtab'` and `'modeline'` and turns them off (rim has
    /// no `'textwidth'`/`'wrapmargin'`); off gives them back.
    fn set_bin(&mut self, on: bool) {
        if on == self.binary {
            return;
        }
        if on {
            (self.nobin_expandtab, self.nobin_modeline) = (self.expandtab, self.modeline);
            (self.expandtab, self.modeline) = (false, false);
        } else {
            (self.expandtab, self.modeline) = (self.nobin_expandtab, self.nobin_modeline);
        }
        self.binary = on;
    }

    /// `set_option` for a flag.
    pub fn set_flag(&mut self, name: &str, on: bool) {
        let Some(name) = long(name) else { return };
        if name == "binary" {
            self.set_bin(on);
            return;
        }
        self.modified_set |= name == "modified";
        if let Some(f) = self.flag(name) {
            *f = on;
        }
    }

    /// `shortmess()`: the flag `c` is in `'shortmess'`, or `a` stands for it (`SHM_ALL_ABBREVIATIONS`).
    pub fn shortmess(&self, c: char) -> bool {
        self.shortmess.contains(c) || (self.shortmess.contains('a') && "rmlw".contains(c))
    }

    /// `get_sw_value`: the size of a shift: 'shiftwidth', else 'tabstop' (the first stop of 'vartabstop').
    pub fn sw_value(&self) -> usize {
        if self.shiftwidth != 0 { self.shiftwidth } else { self.tabs().at(0, false) }
    }

    /// `get_sts_value`: 'softtabstop', or the shift size when it is negative.
    pub fn sts_value(&self) -> usize {
        if self.softtabstop < 0 { self.sw_value() } else { self.softtabstop as usize }
    }

    /// The stops 'softtabstop' and 'varsofttabstop' make.
    pub fn sts_tabs(&self) -> super::graphemes::Tabs<'_> {
        super::graphemes::Tabs { ts: self.sts_value(), vts: &self.vsts_array }
    }

    /// The tab stops of the buffer.
    pub fn tabs(&self) -> super::graphemes::Tabs<'_> {
        super::graphemes::Tabs { ts: self.tabstop, vts: &self.vts_array }
    }

    /// `indent_size_ts`: the cells of `blanks` (spaces and Tabs) from the start of a line.
    pub fn indent_width(&self, blanks: &str) -> usize {
        let tabs = self.tabs();
        blanks.bytes().fold(0, |col, b| col + if b == b'\t' { tabs.pad(col) } else { 1 })
    }

    /// `shift_line`: the indent a line of `cols` cells gets from `amount` shifts to the right or left. 'shiftwidth' is the
    /// size of a shift, else 'tabstop', or the stops of 'vartabstop' when there is a list (`get_new_vts_indent`).
    pub fn shift_indent(&self, cols: usize, right: bool, amount: usize) -> usize {
        if self.shiftwidth != 0 || self.vts_array.is_empty() {
            let sw = self.sw() * amount;
            return if right { cols + sw } else { cols.saturating_sub(sw) };
        }
        let stops = &self.vts_array;
        // `get_vts`: the stop with index `i` (from 1), the last one for any beyond.
        let get_vts = |i: usize| if i < 1 { 0 } else { stops[(i - 1).min(stops.len() - 1)] };
        // `get_vts_sum`: the columns up to the stop with index `i`.
        let sum = |i: usize| stops.iter().take(i).sum::<usize>() + stops[stops.len() - 1] * i.saturating_sub(stops.len());
        // The stop at or left of the indent.
        let (mut at, mut stop_col, mut width) = (0, 0, 0);
        while stop_col <= cols {
            at += 1;
            width = get_vts(at);
            stop_col += width;
        }
        stop_col -= width;
        at -= 1;
        let offset = cols - stop_col;
        if right {
            sum(at + amount) + offset
        } else if amount > at {
            0
        } else {
            sum(at - amount) + offset
        }
    }

    /// Effective shift width (`shiftwidth`, or `tabstop` when 0).
    pub fn sw(&self) -> usize {
        if self.shiftwidth == 0 { self.tabstop } else { self.shiftwidth }
    }

    /// Indent of `width` columns: spaces with `expandtab`, else tabs then spaces.
    pub fn indent(&self, width: usize) -> String {
        if self.expandtab {
            " ".repeat(width)
        } else {
            let (tabs, spaces) = self.tabs().fromto(0, width);
            format!("{}{}", "\t".repeat(tabs), " ".repeat(spaces))
        }
    }

    /// `pat` as the regex to search: case-insensitive under `ignorecase`, unless `smartcase` and
    /// the pattern has an uppercase letter.
    pub fn case_pattern(&self, pat: &str) -> String {
        if self.ignorecase && !(self.smartcase && pat.chars().any(char::is_uppercase)) { format!("(?i){pat}") } else { pat.to_string() }
    }

    /// How `:highlight` groups are resolved for these options.
    pub fn env(&self) -> Env {
        Env { light: self.background == Background::Light, gui: self.termguicolors }
    }

    /// `hit-enter`, `wait:N` and `history:N` (N up to 10000), comma separated; one of the first two is required.
    fn set_messagesopt(&mut self, value: &str) -> Option<()> {
        let (mut hit, mut wait, mut history) = (false, None, 500);
        for item in value.split(',') {
            let num = |v: &str| v.parse::<usize>().ok().filter(|n| *n <= 10_000);
            match item.split_once(':') {
                None if item == "hit-enter" => hit = true,
                Some(("wait", n)) => wait = Some(num(n)?),
                Some(("history", n)) => history = num(n)?,
                _ => return None,
            }
        }
        if !hit && wait.is_none() {
            return None;
        }
        (self.msg_hit_enter, self.msg_wait, self.msg_history) = (hit, wait, history);
        Some(())
    }

    fn flag(&mut self, name: &str) -> Option<&mut bool> {
        match name {
            "number" => Some(&mut self.number),
            "relativenumber" => Some(&mut self.relativenumber),
            "cursorline" => Some(&mut self.cursorline),
            "wrap" => Some(&mut self.wrap),
            "expandtab" => Some(&mut self.expandtab),
            "smarttab" => Some(&mut self.smarttab),
            "hidden" => Some(&mut self.hidden),
            "modifiable" => Some(&mut self.modifiable),
            "readonly" => Some(&mut self.readonly),
            "splitbelow" => Some(&mut self.splitbelow),
            "splitright" => Some(&mut self.splitright),
            "list" => Some(&mut self.list),
            "ignorecase" => Some(&mut self.ignorecase),
            "smartcase" => Some(&mut self.smartcase),
            "hlsearch" => Some(&mut self.hlsearch),
            "incsearch" => Some(&mut self.incsearch),
            "termguicolors" => Some(&mut self.termguicolors),
            "showmode" => Some(&mut self.showmode),
            "showcmd" => Some(&mut self.showcmd),
            "more" => Some(&mut self.more),
            "wildmenu" => Some(&mut self.wildmenu),
            "equalalways" => Some(&mut self.equalalways),
            "wildignorecase" => Some(&mut self.wildignorecase),
            "modeline" => Some(&mut self.modeline),
            "modified" => Some(&mut self.modified),
            "endofline" => Some(&mut self.endofline),
            "fixendofline" => Some(&mut self.fixendofline),
            "binary" => Some(&mut self.binary),
            _ => None,
        }
    }

    /// `name=value` as `:set name?` shows it (effective colors included).
    fn show(&self, name: &str) -> String {
        let on = |b: bool, n: &str| if b { n.to_string() } else { format!("no{n}") };
        match name {
            "number" => on(self.number, name),
            "relativenumber" => on(self.relativenumber, name),
            "cursorline" => on(self.cursorline, name),
            "wrap" => on(self.wrap, name),
            "expandtab" => on(self.expandtab, name),
            "smarttab" => on(self.smarttab, name),
            "hidden" => on(self.hidden, name),
            "modifiable" => on(self.modifiable, name),
            "readonly" => on(self.readonly, name),
            "splitbelow" => on(self.splitbelow, name),
            "splitright" => on(self.splitright, name),
            "softtabstop" => format!("softtabstop={}", self.softtabstop),
            "undolevels" => format!("undolevels={}", self.undolevels),
            "undoreload" => format!("undoreload={}", self.undoreload),
            "varsofttabstop" => format!("varsofttabstop={}", self.varsofttabstop),
            "list" => on(self.list, name),
            "ignorecase" => on(self.ignorecase, name),
            "smartcase" => on(self.smartcase, name),
            "hlsearch" => on(self.hlsearch, name),
            "incsearch" => on(self.incsearch, name),
            "termguicolors" => on(self.termguicolors, name),
            "showmode" => on(self.showmode, name),
            "showcmd" => on(self.showcmd, name),
            "more" => on(self.more, name),
            "wildmenu" => on(self.wildmenu, name),
            "equalalways" => on(self.equalalways, name),
            "mouse" => format!("mouse={}", self.mouse),
            "mousescroll" => format!("mousescroll={}", self.mousescroll),
            "winheight" => format!("winheight={}", self.winheight),
            "winminheight" => format!("winminheight={}", self.winminheight),
            "winwidth" => format!("winwidth={}", self.winwidth),
            "winminwidth" => format!("winminwidth={}", self.winminwidth),
            "wildignorecase" => on(self.wildignorecase, name),
            "modeline" => on(self.modeline, name),
            "modified" => on(self.modified || self.ff_changed, name),
            "endofline" => on(self.endofline, name),
            "fixendofline" => on(self.fixendofline, name),
            "binary" => on(self.binary, name),
            "modelines" => format!("modelines={}", self.modelines),
            "fileformat" => format!("fileformat={}", self.fileformat),
            "wildmode" => format!("wildmode={}", self.wildmode),
            "wildoptions" => format!("wildoptions={}", self.wildoptions),
            "jumpoptions" => format!("jumpoptions={}", self.jumpoptions),
            "shell" => format!("shell={}", self.shell),
            "bufhidden" => format!("bufhidden={}", self.bufhidden),
            "isfname" => format!("isfname={}", self.isfname),
            "suffixes" => format!("suffixes={}", self.suffixes),
            "shortmess" => format!("shortmess={}", self.shortmess),
            "wildignore" => format!("wildignore={}", self.wildignore),
            "wildchar" => format!("wildchar={}", self.wildchar),
            "wildcharm" => format!("wildcharm={}", self.wildcharm),
            "pumheight" => format!("pumheight={}", self.pumheight),
            "pumwidth" => format!("pumwidth={}", self.pumwidth),
            "cedit" => format!("cedit={}", self.cedit),
            "laststatus" => format!("laststatus={}", self.laststatus),
            "cmdwinheight" => format!("cmdwinheight={}", self.cmdwinheight),
            "buftype" => format!("buftype={}", if self.nofile { "nofile" } else { "" }),
            "messagesopt" => {
                let mut v = Vec::new();
                if self.msg_hit_enter {
                    v.push("hit-enter".to_string());
                }
                v.extend(self.msg_wait.map(|n| format!("wait:{n}")));
                v.push(format!("history:{}", self.msg_history));
                format!("messagesopt={}", v.join(","))
            }
            "tabstop" => format!("tabstop={}", self.tabstop),
            "vartabstop" => format!("vartabstop={}", self.vartabstop),
            "shiftwidth" => format!("shiftwidth={}", self.shiftwidth),
            "scrolloff" => format!("scrolloff={}", self.scrolloff),
            "report" => format!("report={}", self.report),
            "background" => format!("background={}", if self.background == Background::Dark { "dark" } else { "light" }),
            "compactat" => format!("compactat={}", self.compactat),
            "filetype" => format!("filetype={}", self.filetype),
            _ => unreachable!("every option name of `long` is shown"),
        }
    }

    /// `name=value` of `:set`, with the value taken whole (it may hold blanks). `arg` is the text
    /// an error shows.
    fn set_value(&mut self, name: &str, value: &str, arg: &str) -> Result<(), String> {
        let invalid = || format!("Invalid argument: {arg}");
        let name = long(name).ok_or_else(|| format!("Unknown option: {arg}"))?;
        match name {
            "tabstop" => self.tabstop = value.parse().map_err(|_| invalid())?,
            "vartabstop" | "varsofttabstop" => {
                // `did_set_vartabstop`: digits and commas, a comma only after a digit; then `tabstop_set`.
                if !(value.is_empty() || value == "0") {
                    let b = value.as_bytes();
                    if b.iter().enumerate().any(|(i, &c)| !(c.is_ascii_digit() || (c == b',' && i > 0 && b[i - 1] != b','))) {
                        return Err(invalid());
                    }
                }
                match tabstop_set(value) {
                    Ok(stops) if name == "vartabstop" => (self.vartabstop, self.vts_array) = (value.to_string(), stops),
                    Ok(stops) => (self.varsofttabstop, self.vsts_array) = (value.to_string(), stops),
                    Err(m) => {
                        self.first_error = Some(m);
                        return Err(invalid());
                    }
                }
            }
            // Any number that fits 32 bits: a negative one is 'shiftwidth'.
            "softtabstop" => self.softtabstop = value.parse().map_err(|_| invalid())?,
            "undolevels" => self.undolevels = value.parse().map_err(|_| invalid())?,
            "undoreload" => self.undoreload = value.parse().map_err(|_| invalid())?,
            "background" => {
                self.background = match value {
                    "dark" => Background::Dark,
                    "light" => Background::Light,
                    _ => return Err(invalid()),
                }
            }
            "compactat" => self.compactat = value.parse().map_err(|_| invalid())?,
            "filetype" => self.filetype = value.to_string(),
            "shiftwidth" => self.shiftwidth = value.parse().map_err(|_| invalid())?,
            "scrolloff" => self.scrolloff = value.parse().map_err(|_| invalid())?,
            "report" => self.report = value.parse().map_err(|_| invalid())?,
            "messagesopt" => self.set_messagesopt(value).ok_or_else(invalid)?,
            "shortmess" => {
                // `did_set_option_listflag`: each char must be a flag.
                if let Some(c) = value.chars().find(|c| !SHM_ALL.contains(*c)) {
                    return Err(format!("E539: Illegal character <{c}>"));
                }
                self.shortmess = value.to_string();
            }
            "wildmode" => self.wildmode = super::wild::valid_mode(value).then(|| value.to_string()).ok_or_else(invalid)?,
            "shell" => self.shell = value.to_string(),
            "bufhidden" => self.bufhidden = matches!(value, "" | "hide" | "unload" | "delete" | "wipe").then(|| value.to_string()).ok_or_else(invalid)?,
            "isfname" => self.isfname = super::script::isfname_table(value).is_some().then(|| value.to_string()).ok_or_else(invalid)?,
            "suffixes" => self.suffixes = value.to_string(),
            "jumpoptions" => self.jumpoptions = value.split(',').all(|o| matches!(o, "" | "stack" | "view" | "clean")).then(|| value.to_string()).ok_or_else(invalid)?,
            "wildoptions" => self.wildoptions = super::wild::valid_options(value).then(|| value.to_string()).ok_or_else(invalid)?,
            "wildignore" => self.wildignore = value.to_string(),
            "wildchar" | "wildcharm" => {
                // The key syntax is checked here; `wildcharm` may also be empty.
                if !(value.is_empty() && name == "wildcharm") && super::wild::parse_key(value).is_none() {
                    return Err(invalid());
                }
                if name == "wildchar" { self.wildchar = value.to_string() } else { self.wildcharm = value.to_string() }
            }
            "cedit" => self.cedit = (value.is_empty() || super::wild::parse_key(value).is_some()).then(|| value.to_string()).ok_or_else(invalid)?,
            "mouse" => self.mouse = value.chars().all(|c| "nvichar".contains(c)).then(|| value.to_string()).ok_or_else(invalid)?,
            "mousescroll" => self.mousescroll = super::mouse::parse_scroll(value).map(|_| value.to_string()).ok_or_else(invalid)?,
            "winheight" => self.winheight = value.parse().map_err(|_| invalid())?,
            "winwidth" => self.winwidth = value.parse().map_err(|_| invalid())?,
            "winminheight" => self.winminheight = value.parse().map_err(|_| invalid())?,
            "winminwidth" => self.winminwidth = value.parse().map_err(|_| invalid())?,
            "modelines" => self.modelines = value.parse().map_err(|_| invalid())?,
            // `opt_ff_values`
            "fileformat" => self.fileformat = matches!(value, "unix" | "dos" | "mac").then(|| value.to_string()).ok_or_else(invalid)?,
            "pumheight" => self.pumheight = value.parse().map_err(|_| invalid())?,
            "pumwidth" => self.pumwidth = value.parse().map_err(|_| invalid())?,
            "cmdwinheight" => self.cmdwinheight = value.parse().map_err(|_| invalid())?,
            "buftype" => {
                self.nofile = match value {
                    "" => false,
                    "nofile" => true,
                    _ => return Err(invalid()),
                }
            }
            "laststatus" => self.laststatus = value.parse().map_err(|_| invalid())?,
            _ => return Err(invalid()),
        }
        Ok(())
    }

    /// `showoneopt`: `  name=value`, `  name` for a flag that is on, `noname` for one that is off.
    fn showoneopt(&mut self, name: &str) -> String {
        let text = self.show(name);
        if self.flag(name).is_some() && text.starts_with("no") { text } else { format!("  {text}") }
    }

    /// `validate_num_option` for the number options: the message when `n` is out of range.
    fn validate_num(&self, name: &str, n: i64) -> Result<i64, &'static str> {
        const POSITIVE: &str = "E487: Argument must be positive";
        const INVALID: &str = "E474: Invalid argument";
        if n < i64::from(i32::MIN) || n > i64::from(i32::MAX) {
            return Err(INVALID);
        }
        let ok = |min: i64, max: i64, low: &'static str| {
            if n < min {
                Err(low)
            } else if n > max {
                Err(INVALID)
            } else {
                Ok(n)
            }
        };
        match name {
            "tabstop" => ok(1, 9999, POSITIVE),
            "softtabstop" | "undolevels" | "undoreload" => ok(i64::from(i32::MIN), i64::MAX, INVALID),
            "shiftwidth" | "report" | "scrolloff" | "winminheight" | "winminwidth" => ok(0, i64::MAX, POSITIVE),
            "cmdwinheight" | "winheight" | "winwidth" | "pumwidth" => ok(1, i64::MAX, POSITIVE),
            "laststatus" => ok(0, 3, INVALID),
            _ => ok(0, i64::MAX, INVALID),
        }
    }

    /// `do_one_set_option`: one argument of `:set`. The text it shows goes to `shown`; the error is the message
    /// (the argument is added by the caller).
    fn set_one(&mut self, arg: &str, shown: &mut Vec<String>, global: Option<&Options>) -> Result<(), std::borrow::Cow<'static, str>> {
        const E_INVARG: &str = "E474: Invalid argument";
        const E_TRAILING: &str = "E488: Trailing characters";
        let (prefix, rest) = match arg {
            a if a.starts_with("no") => (Prefix::No, &a[2..]),
            a if a.starts_with("inv") => (Prefix::Inv, &a[3..]),
            a => (Prefix::None, a),
        };
        // The name is the run of letters; what is not an option is E518.
        let end = rest.find(|c: char| !c.is_ascii_alphabetic()).unwrap_or(rest.len());
        let name = long(&rest[..end]).filter(|_| end > 0).ok_or("E518: Unknown option")?;
        let is_flag = self.flag(name).is_some();
        let after = &rest[end..];
        let afterchar = after.chars().next();
        let p = after.trim_start_matches([' ', '\t']);
        // `+=`, `^=` and `-=`.
        let op = match p.as_bytes() {
            [b'+', b'=', ..] => Op::Add,
            [b'^', b'=', ..] => Op::Prepend,
            [b'-', b'=', ..] => Op::Remove,
            _ => Op::None,
        };
        let p = if op == Op::None { p } else { &p[1..] };
        let nextchar = p.chars().next();
        if !is_flag && prefix != Prefix::None {
            return Err(E_INVARG.into());
        }
        let white = |c: Option<char>| c.is_some_and(|c| c == ' ' || c == '\t');
        if let Some(c) = nextchar.filter(|c| "?!&<".contains(*c))
            && p[c.len_utf8()..].chars().next().is_some_and(|n| n != ' ' && n != '\t') {
                return Err(E_TRAILING.into());
            }
        // Print the value.
        if nextchar == Some('?') || (prefix == Prefix::None && !nextchar.is_some_and(|c| "=:&<".contains(c)) && !is_flag) {
            shown.push(self.showoneopt(name));
            if nextchar != Some('?') && nextchar.is_some() && !white(afterchar) {
                return Err(E_TRAILING.into());
            }
            return Ok(());
        }
        if is_flag {
            if matches!(nextchar, Some('=' | ':')) {
                return Err(E_INVARG.into());
            }
            if !nextchar.is_some_and(|c| "!&<".contains(c)) && nextchar.is_some() && !white(afterchar) {
                return Err(E_TRAILING.into());
            }
        } else if !nextchar.is_some_and(|c| "=:&<".contains(c)) {
            return Err(E_INVARG.into());
        }
        let default = Options::default();
        if matches!(nextchar, Some('&' | '<')) {
            // `opt&`: the default value; `opt<`: the global value.
            let mut from = if nextchar == Some('<') { global.unwrap_or(&default).clone() } else { default.clone() };
            if self.flag(name).is_some() {
                self.set_flag(name, *from.flag(name).expect("a flag"));
            } else {
                let v = from.show(name);
                let value = v.split_once('=').map_or("", |x| x.1).to_string();
                self.set_value(name, &value, arg).map_err(|m| shm_err(m, E_INVARG))?;
            }
            return Ok(());
        }
        if is_flag {
            let cur = *self.flag(name).expect("a flag");
            self.set_flag(name, if nextchar == Some('!') || prefix == Prefix::Inv { !cur } else { prefix != Prefix::No });
            return Ok(());
        }
        let value = &p[1..];
        // A number option: `[-]digits` ending at a blank, else E521.
        if self.is_number(name) {
            const E_NUMBER: &str = "E521: Number required after =";
            if !(value.starts_with('-') || value.starts_with(|c: char| c.is_ascii_digit())) {
                return Err(E_NUMBER.into());
            }
            let (n, len) = super::script::vim_str2nr_all(value);
            if len == 0 || value[len..].chars().next().is_some_and(|c| c != ' ' && c != '\t') {
                return Err(E_NUMBER.into());
            }
            let old: i64 = self.show(name).split_once('=').and_then(|(_, v)| v.parse().ok()).unwrap_or(0);
            let n = match op {
                Op::Add => old.wrapping_add(n),
                Op::Prepend => old.wrapping_mul(n),
                Op::Remove => old.wrapping_sub(n),
                Op::None => n,
            };
            let n = self.validate_num(name, n)?;
            return self.set_value(name, &n.to_string(), arg).map_err(|m| shm_err(m, E_INVARG));
        }
        let old = self.show(name).split_once('=').map(|x| x.1.to_string()).unwrap_or_default();
        let new = match op {
            Op::None => value.to_string(),
            _ => {
                // A comma-separated option adds and removes items; the others join and cut text.
                let comma = matches!(name, "wildmode" | "wildoptions" | "wildignore" | "messagesopt" | "jumpoptions" | "suffixes");
                let items: Vec<&str> = old.split(',').filter(|s| !s.is_empty()).collect();
                // `'vartabstop'` is a comma list that keeps duplicates: `+=` and `^=` always add, `-=` takes the first match.
                if matches!(name, "vartabstop" | "varsofttabstop") {
                    let join = |a: &str, b: &str| if a.is_empty() || b.is_empty() { format!("{a}{b}") } else { format!("{a},{b}") };
                    return self
                        .set_value(
                            name,
                            &match op {
                                Op::Add => join(&old, value),
                                Op::Prepend => join(value, &old),
                                _ => comma_remove(&old, value),
                            },
                            arg,
                        )
                        .map_err(|m| shm_err(m, E_INVARG));
                }
                match (op, comma) {
                    (Op::Add, true) => if items.contains(&value) { old.clone() } else { [old.as_str(), value].iter().filter(|s| !s.is_empty()).copied().collect::<Vec<_>>().join(",") },
                    (Op::Prepend, true) => if items.contains(&value) { old.clone() } else { [value, old.as_str()].iter().filter(|s| !s.is_empty()).copied().collect::<Vec<_>>().join(",") },
                    (Op::Remove, true) => items.iter().filter(|i| **i != value).copied().collect::<Vec<_>>().join(","),
                    (Op::Add, false) => format!("{old}{value}"),
                    (Op::Prepend, false) => format!("{value}{old}"),
                    (Op::Remove, false) => old.replacen(value, "", 1),
                    (Op::None, _) => unreachable!("handled above"),
                }
            }
        };
        // `stropt_remove_dupflags`: a flag that appears twice stays once, at its last place.
        let new = if name == "shortmess" { dedupe_flags(&new) } else { new };
        self.set_value(name, &new, arg).map_err(|m| shm_err(m, E_INVARG))
    }

    /// `set_all` for callers that want the text or the error.
    #[cfg(test)]
    pub fn set(&mut self, args: &str) -> Result<String, String> {
        match self.set_all(args) {
            (text, None) => Ok(text),
            (text, Some(e)) => Err(if text.is_empty() { e } else { format!("{text}\n{e}") }),
        }
    }

    /// Applies the arguments of `:set`: the text to show (queried values) and the error that stopped it, if any.
    #[cfg(test)]
    pub fn set_all(&mut self, args: &str) -> (String, Option<String>) {
        self.set_all_from(args, None)
    }

    /// `set_all`; `global` holds the values `opt<` copies (without it, the defaults).
    pub fn set_all_from(&mut self, args: &str, global: Option<&Options>) -> (String, Option<String>) {
        let mut shown = Vec::new();
        if args.trim().is_empty() {
            for n in [
                "number", "relativenumber", "cursorline", "tabstop", "background", "termguicolors", "wrap", "compactat",
                "expandtab", "shiftwidth", "list", "ignorecase", "smartcase", "hlsearch", "incsearch", "scrolloff", "filetype",
                "laststatus", "showmode", "showcmd", "messagesopt", "shortmess", "buftype", "cmdwinheight", "more", "wildmenu", "wildmode", "wildoptions", "wildignore", "wildignorecase", "wildchar", "wildcharm", "pumheight", "pumwidth", "cedit", "mouse", "mousescroll", "equalalways", "winheight", "winminheight", "winwidth", "winminwidth",
            ] {
                shown.push(self.showoneopt(n));
            }
        }
        let mut rest = args.trim_start();
        while !rest.is_empty() {
            let end = rest.find([' ', '\t']).unwrap_or(rest.len());
            let (arg, after) = rest.split_at(end);
            let next = after.trim_start_matches([' ', '\t']);
            if let Err(m) = self.set_one(arg, &mut shown, global) {
                // The message is followed by the argument as it was typed, with the blanks that follow it.
                return (shown.join("\n"), Some(format!("{m}: {}", &rest[..rest.len() - next.len()])));
            }
            rest = next;
        }
        (shown.join("\n"), None)
    }
}

/// The window-local options (`scope = { 'win' }` in `options.lua`) of a window, and its local `scrolloff` (global-local:
/// `None` follows the global value, `-1` in Neovim). `Options` keeps the fields of the same names only as a scratch area
/// for `set_one`, `show` and `lookup`: `Editor::win_in` fills them from the window, `Editor::win_out` takes them back.
#[derive(Clone, PartialEq, Debug)]
pub struct WinOpts {
    pub number: bool,
    pub relativenumber: bool,
    pub cursorline: bool,
    pub wrap: bool,
    pub list: bool,
    pub scrolloff: Option<usize>,
}

impl Default for WinOpts {
    fn default() -> Self {
        let o = Options::default();
        Self { number: o.number, relativenumber: o.relativenumber, cursorline: o.cursorline, wrap: o.wrap, list: o.list, scrolloff: None }
    }
}

impl WinOpts {
    /// The scratch fields of `o` as window values; `scrolloff` is not read (see `Editor::win_out`).
    pub fn load(o: &Options, scrolloff: Option<usize>) -> Self {
        Self { number: o.number, relativenumber: o.relativenumber, cursorline: o.cursorline, wrap: o.wrap, list: o.list, scrolloff }
    }

    /// Fills the scratch fields of `o`; `scrolloff` is the local value or else `global`.
    pub fn store(&self, o: &mut Options, global: usize) {
        (o.number, o.relativenumber, o.cursorline, o.wrap, o.list) = (self.number, self.relativenumber, self.cursorline, self.wrap, self.list);
        o.scrolloff = self.scrolloff.unwrap_or(global);
    }
}

/// The type of an option.
#[derive(Clone, Copy, PartialEq)]
pub enum OptKind {
    Flag,
    Number,
    Text,
}

#[derive(Clone, Copy, PartialEq)]
enum Prefix {
    None,
    No,
    Inv,
}

#[derive(Clone, Copy, PartialEq)]
enum Op {
    None,
    Add,
    Prepend,
    Remove,
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn set_flags_values_and_queries() {
        let mut o = Options::default();
        assert_eq!(o.set("nonu norelativenumber"), Ok(String::new()));
        assert!(!o.number && !o.relativenumber);
        assert_eq!(o.set("nu? rnu?"), Ok("nonumber\nnorelativenumber".into()));
        assert_eq!(o.set("rnu! invcul"), Ok(String::new()));
        assert!(o.relativenumber && !o.cursorline);
        assert_eq!(o.set("ts=8 bg=light"), Ok(String::new()));
        assert_eq!((o.tabstop, o.background), (8, Background::Light));
        assert_eq!(o.set("ts"), Ok("  tabstop=8".into()));
        assert_eq!(o.set("bg?"), Ok("  background=light".into()));
        assert_eq!(o.env(), Env::LIGHT);
        assert_eq!(o.set("tgc tgc? bg=dark bg?"), Ok("  termguicolors\n  background=dark".into()));
        assert_eq!(o.env(), Env { light: false, gui: true });
        assert!(o.set("").unwrap().starts_with("nonumber\n  relativenumber\nnocursorline\n  tabstop=8"));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn new_options_and_helpers() {
        let mut o = Options::default();
        assert_eq!(o.set("et? sw? list? ic? scs? hls? is? so?"), Ok("  expandtab\n  shiftwidth=0\nnolist\nnoignorecase\nnosmartcase\n  hlsearch\n  incsearch\n  scrolloff=0".into()));
        assert_eq!((o.sw(), o.indent(6)), (4, "      ".into()));
        assert_eq!(o.set("noet sw=2 list ic scs nohls nois so=3"), Ok(String::new()));
        assert_eq!((o.sw(), o.indent(9), o.scrolloff), (2, "\t\t ".into(), 3));
        assert_eq!((o.case_pattern("ab"), o.case_pattern("aB")), ("(?i)ab".into(), "aB".into()));
        o.set("noscs").unwrap();
        assert_eq!(o.case_pattern("aB"), "(?i)aB");
        assert!(o.list && !o.hlsearch && !o.incsearch);
        assert_eq!(o.set("ft? ft=rust ft?"), Ok("  filetype=\n  filetype=rust".into()));
        assert_eq!(o.set("ft="), Ok(String::new()));
        assert!(o.filetype.is_empty());
        assert_eq!(o.set("sw=33"), Ok(String::new()));
        assert_eq!(o.set("so=x"), Err("E521: Number required after =: so=x".into()));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn set_errors() {
        let mut o = Options::default();
        for (arg, err) in [
            ("foo", "E518: Unknown option: foo"),
            ("nofoo", "E518: Unknown option: nofoo"),
            ("foo=1", "E518: Unknown option: foo=1"),
            ("foo?", "E518: Unknown option: foo?"),
            ("ts=0", "E487: Argument must be positive: ts=0"),
            ("ts=x", "E521: Number required after =: ts=x"),
            ("bg=blue", "E474: Invalid argument: bg=blue"),
            ("nu=1", "E474: Invalid argument: nu=1"),
        ] {
            assert_eq!(o.set(arg), Err(err.into()), "{arg}");
        }
        assert_eq!(o, Options::default());
    }
}
