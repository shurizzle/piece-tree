//! `:set` options.

use std::borrow::Cow;

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
    /// `'winfixheight'` and `'winfixwidth'`: the window keeps its height or width when the others are laid out.
    pub winfixheight: bool,
    pub winfixwidth: bool,
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
    /// What `&modified` reads (`bufIsChanged`: a `nofile` buffer is never changed), the raw flag being `modified`.
    pub dirty: bool,
    /// `'varsofttabstop'` as it was set, and its stops (as `vartabstop`).
    pub varsofttabstop: String,
    pub vsts_array: Vec<usize>,
    /// The options an assignment named since `Editor::opts_in` (long names): `Editor::win_out` writes the global value of the
    /// window options among them only.
    pub touched: Vec<&'static str>,
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
    pub laststatus: i64,
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
    /// 'buftype': `nofile`, `nowrite`, `acwrite`, `prompt`, `help`, `quickfix` or empty (`terminal` is refused: rim has none).
    pub buftype: String,
    /// 'messagesopt' as it was set; `msg_hit_enter`, `msg_wait` and `msg_history` are what it says.
    pub mopt: String,
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
    pub wildchar: i64,
    pub wildcharm: i64,
    /// Rows of the popup menu at most (0: as many as fit) and its least width.
    pub pumheight: i64,
    pub pumwidth: i64,
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
    pub modelines: i64,
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
            number: false,
            relativenumber: false,
            cursorline: false,
            winfixheight: false,
            winfixwidth: false,
            wrap: true,
            tabstop: 8,
            vartabstop: String::new(),
            vts_array: Vec::new(),
            first_error: None,
            touched: Vec::new(),
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
            dirty: false,
            varsofttabstop: String::new(),
            vsts_array: Vec::new(),
            expandtab: false,
            shiftwidth: 8,
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
            laststatus: 2,
            showmode: true,
            showcmd: true,
            msg_hit_enter: true,
            msg_wait: None,
            msg_history: 500,
            shortmess: "ltToOCF".into(),
            buftype: String::new(),
            mopt: "hit-enter,history:500,progress:c".into(),
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
            wildchar: 9,
            wildcharm: 0,
            pumheight: 0,
            pumwidth: 15,
            cedit: "\u{6}".into(),
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

/// Every option: long name, short name, and whether it is a flag (`:set nox`, `:set invx`).
pub(super) const NAMES: &[(&str, Option<&str>, bool)] = &[
    ("number", Some("nu"), true),
    ("relativenumber", Some("rnu"), true),
    ("cursorline", Some("cul"), true),
    ("wrap", None, true),
    ("winfixheight", Some("wfh"), true),
    ("winfixwidth", Some("wfw"), true),
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
        to.mopt = self.mopt.clone();
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
        (to.wildchar, to.wildcharm, to.pumheight, to.pumwidth) = (self.wildchar, self.wildcharm, self.pumheight, self.pumwidth);
        to.cedit = self.cedit.clone();
        (to.mouse, to.mousescroll) = (self.mouse.clone(), self.mousescroll.clone());
        (to.equalalways, to.winheight, to.winminheight, to.winwidth, to.winminwidth) = (self.equalalways, self.winheight, self.winminheight, self.winwidth, self.winminwidth);
    }

    /// The value of option `name` (long or short name) for `&name` in an expression: a number
    /// (flags as 0 or 1) or a string.
    pub fn lookup(&self, name: &str) -> Option<super::script::Value> {
        use super::script::Value;
        let shown = self.show(long(name)?);
        if let Some(n @ ("wildchar" | "wildcharm")) = long(name) {
            return Some(Value::Int(self.num_value(n)));
        }
        Some(match shown.split_once('=') {
            Some((_, v)) if matches!(long(name), Some("vartabstop" | "varsofttabstop")) => Value::Str(v.into()),
            Some((_, v)) => v.parse().map_or_else(|_| Value::Str(v.into()), Value::Int),
            None => Value::Int(i64::from(!shown.starts_with("no"))),
        })
    }

    /// Whether `name` is a Number option (a String option can hold digits only: `'vartabstop'` set to `5`).
    fn is_number(&self, name: &str) -> bool {
        matches!(name, "wildchar" | "wildcharm")
            || (!matches!(name, "vartabstop" | "varsofttabstop") && self.show(name).split_once('=').is_some_and(|(_, v)| v.parse::<i64>().is_ok()))
    }

    /// The value of a Number option.
    fn num_value(&self, name: &str) -> i64 {
        match name {
            "wildchar" => self.wildchar,
            "wildcharm" => self.wildcharm,
            _ => self.show(name).split_once('=').and_then(|(_, v)| v.parse().ok()).unwrap_or(0),
        }
    }

    /// `set all&`: every option back to its default value (what a buffer holds apart from the options stays).
    fn reset_all(&mut self) {
        *self = Options { modified: self.modified, ff_changed: self.ff_changed, modified_set: self.modified_set, dirty: self.dirty, buftype: self.buftype.clone(), ..Options::default() };
        // The window options named: their global values go back too.
        self.touched.extend(["number", "relativenumber", "cursorline", "wrap", "list", "winfixheight", "winfixwidth"]);
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
    pub fn set_number(&mut self, name: &str, n: i64) -> Result<(), Cow<'static, str>> {
        let name = long(name).ok_or("E355: Unknown option")?;
        let n = self.validate_num(name, n)?;
        self.set_value(name, &n.to_string())
    }

    /// `set_option` for a String option.
    pub fn set_text(&mut self, name: &str, s: &str) -> Result<(), Cow<'static, str>> {
        let name = long(name).ok_or("E355: Unknown option")?;
        self.set_value(name, s)
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
        self.touched.push(name);
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

    /// The options an editor starts with: the defaults of Neovim. The unit tests of the editor start with the look most of them
    /// were written for (numbers, cursor line, spaces for Tab, four columns); the ones about the defaults use `default()`.
    pub fn start() -> Self {
        #[cfg(test)]
        {
            Self { number: true, relativenumber: true, cursorline: true, tabstop: 4, shiftwidth: 0, expandtab: true, laststatus: 1, ..Self::default() }
        }
        #[cfg(not(test))]
        Self::default()
    }

    /// `bt_nofile`.
    pub fn bt_nofile(&self) -> bool {
        self.buftype == "nofile"
    }

    /// `bt_dontwrite`: `nofile`, `nowrite` and `prompt` buffers are never written implicitly and never count as changed.
    pub fn bt_dontwrite(&self) -> bool {
        self.buftype.starts_with(['n', 'p'])
    }

    /// `bt_nofileread`: the file of a `nofile`, `quickfix` or `prompt` buffer is never read.
    pub fn bt_nofileread(&self) -> bool {
        self.bt_nofile() || self.buftype.starts_with(['q', 'p'])
    }

    /// `bt_nofilename`: `nofile`, `acwrite` and `prompt`: the name is not (only) a file name.
    pub fn bt_nofilename(&self) -> bool {
        self.bt_nofile() || self.buftype.starts_with(['a', 'p'])
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

    /// `messagesopt_changed`: `hit-enter`, `wait:N`, `history:N` and `progress:` (with a `c`), comma separated; one of the first two
    /// and `history` are required, the numbers are at most 10000.
    fn set_messagesopt(&mut self, value: &str) -> Option<()> {
        let b = value.as_bytes();
        let (mut hit, mut wait, mut history) = (false, None, None);
        let mut p = 0;
        let digits = |p: &mut usize| {
            let start = *p;
            while b.get(*p).is_some_and(u8::is_ascii_digit) {
                *p += 1;
            }
            // `getdigits_int(.., INT_MAX)`: a number too large is the largest.
            value[start..*p].parse::<i64>().map_or(i64::from(i32::MAX), |n| n.min(i64::from(i32::MAX)))
        };
        while p < b.len() {
            let rest = &value[p..];
            if rest.starts_with("hit-enter") {
                p += 9;
                hit = true;
            } else if rest.starts_with("wait:") && b.get(p + 5).is_some_and(u8::is_ascii_digit) {
                p += 5;
                wait = Some(digits(&mut p));
            } else if rest.starts_with("history:") && b.get(p + 8).is_some_and(u8::is_ascii_digit) {
                p += 8;
                history = Some(digits(&mut p));
            } else if rest.starts_with("progress:") {
                p += 9;
                if b.get(p) == Some(&b'c') {
                    p += 1;
                }
            }
            if b.get(p).is_some_and(|&c| c != b',') {
                return None;
            }
            p += usize::from(b.get(p) == Some(&b','));
        }
        let (wait_n, history_n) = (wait.unwrap_or(0), history?);
        if !(hit || wait.is_some()) || history_n > 10_000 || wait_n > 10_000 {
            return None;
        }
        (self.msg_hit_enter, self.msg_wait, self.msg_history) = (hit, wait.map(|n| n as usize), history_n as usize);
        self.mopt = value.to_string();
        Some(())
    }

    fn flag(&mut self, name: &str) -> Option<&mut bool> {
        match name {
            "number" => Some(&mut self.number),
            "relativenumber" => Some(&mut self.relativenumber),
            "cursorline" => Some(&mut self.cursorline),
            "wrap" => Some(&mut self.wrap),
            "winfixheight" => Some(&mut self.winfixheight),
            "winfixwidth" => Some(&mut self.winfixwidth),
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
            "winfixheight" => on(self.winfixheight, name),
            "winfixwidth" => on(self.winfixwidth, name),
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
            "modified" => on(self.dirty, name),
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
            "wildchar" => format!("wildchar={}", key_name(self.wildchar)),
            "wildcharm" => format!("wildcharm={}", key_name(self.wildcharm)),
            "pumheight" => format!("pumheight={}", self.pumheight),
            "pumwidth" => format!("pumwidth={}", self.pumwidth),
            "cedit" => format!("cedit={}", self.cedit),
            "laststatus" => format!("laststatus={}", self.laststatus),
            "cmdwinheight" => format!("cmdwinheight={}", self.cmdwinheight),
            "buftype" => format!("buftype={}", self.buftype),
            "messagesopt" => format!("messagesopt={}", self.mopt),
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

    /// `set_option` of a value that `:set` took whole (it may hold blanks): its checks (`validate_num_option`'s are `validate_num`) and
    /// what Neovim's `did_set_*` callbacks say; the option keeps its value on an error.
    fn set_value(&mut self, name: &str, value: &str) -> Result<(), Cow<'static, str>> {
        let invalid = || Cow::Borrowed("E474: Invalid argument");
        let name = long(name).ok_or("E518: Unknown option")?;
        self.touched.push(name);
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
            // `valid_filetype`: letters, digits and `.-_`.
            "filetype" => self.filetype = value.bytes().all(|c| c.is_ascii_alphanumeric() || b".-_".contains(&c)).then(|| value.to_string()).ok_or_else(invalid)?,
            "shiftwidth" => self.shiftwidth = value.parse().map_err(|_| invalid())?,
            "scrolloff" => self.scrolloff = value.parse().map_err(|_| invalid())?,
            "report" => self.report = value.parse().map_err(|_| invalid())?,
            "messagesopt" => self.set_messagesopt(value).ok_or_else(invalid)?,
            "shortmess" => {
                // `did_set_option_listflag`: each char must be a flag.
                if let Some(c) = value.chars().find(|c| !SHM_ALL.contains(*c)) {
                    return Err(format!("E539: Illegal character <{c}>").into());
                }
                self.shortmess = value.to_string();
            }
            "wildmode" => self.wildmode = super::wild::valid_mode(value).then(|| value.to_string()).ok_or_else(invalid)?,
            "shell" => self.shell = value.to_string(),
            "bufhidden" => self.bufhidden = opt_strings_flags(value, &["", "hide", "unload", "delete", "wipe"], false).then(|| value.to_string()).ok_or_else(invalid)?,
            "isfname" => self.isfname = super::script::isfname_table(value).is_some().then(|| value.to_string()).ok_or_else(invalid)?,
            "suffixes" => self.suffixes = value.to_string(),
            "jumpoptions" => self.jumpoptions = opt_strings_flags(value, &["stack", "view", "clean"], true).then(|| value.to_string()).ok_or_else(invalid)?,
            "wildoptions" => self.wildoptions = opt_strings_flags(value, &["fuzzy", "tagfile", "pum", "exacttext"], true).then(|| value.to_string()).ok_or_else(invalid)?,
            "wildignore" => self.wildignore = value.to_string(),
            // `did_set_wildchar`: keys that would not work as a completion key.
            "wildchar" | "wildcharm" => {
                let n: i64 = value.parse().map_err(|_| invalid())?;
                if matches!(n, 3 | 10 | 13 | K_KENTER) {
                    return Err(invalid());
                }
                if name == "wildchar" { self.wildchar = n } else { self.wildcharm = n }
            }
            // `did_set_cedit`: a key that is not a printable char.
            "cedit" => {
                if !value.is_empty() {
                    let n = string_to_key(value);
                    if n == 0 || key_is_printable(n) {
                        return Err(invalid());
                    }
                }
                self.cedit = value.to_string();
            }
            // `did_set_option_listflag` with `MOUSE_ALL`.
            "mouse" => {
                if let Some(c) = value.chars().find(|c| !"anvichr".contains(*c)) {
                    return Err(format!("E539: Illegal character <{c}>").into());
                }
                self.mouse = value.to_string();
            }
            "mousescroll" => {
                did_set_mousescroll(value)?;
                self.mousescroll = value.to_string();
            }
            "winheight" => self.winheight = value.parse().map_err(|_| invalid())?,
            "winwidth" => self.winwidth = value.parse().map_err(|_| invalid())?,
            "winminheight" => self.winminheight = value.parse().map_err(|_| invalid())?,
            "winminwidth" => self.winminwidth = value.parse().map_err(|_| invalid())?,
            "modelines" => self.modelines = value.parse().map_err(|_| invalid())?,
            // `opt_ff_values`
            "fileformat" => self.fileformat = opt_strings_flags(value, &["unix", "dos", "mac"], false).then(|| value.to_string()).ok_or_else(invalid)?,
            "pumheight" => self.pumheight = value.parse().map_err(|_| invalid())?,
            "pumwidth" => self.pumwidth = value.parse().map_err(|_| invalid())?,
            "cmdwinheight" => self.cmdwinheight = value.parse().map_err(|_| invalid())?,
            // `opt_bt_values`; `terminal` is for a buffer that is one (`did_set_buftype`), and rim has none.
            "buftype" => {
                if !opt_strings_flags(value, &["", "acwrite", "help", "nofile", "nowrite", "quickfix", "terminal", "prompt"], false) || value.starts_with('t') {
                    return Err(invalid());
                }
                self.buftype = value.to_string();
            }
            "laststatus" => self.laststatus = value.parse().map_err(|_| invalid())?,
            _ => return Err(invalid()),
        }
        Ok(())
    }

    /// `showoptions`: every option (`all`) or the ones that are not at their default, in the order of Neovim's table (by name),
    /// as `:set`, `:setlocal` and `:setglobal` list them. `:setlocal` and `:setglobal` skip the options that have no local value.
    fn showoptions(&mut self, all: bool, ctx: SetCtx, global: Option<&Options>) -> String {
        use unicode_width::UnicodeWidthStr;
        let title = match ctx.scope {
            Scope::Global => "--- Global option values ---",
            Scope::Local => "--- Local option values ---",
            Scope::Both => "--- Options ---",
        };
        let mut names: Vec<&str> = NAMES.iter().map(|n| n.0).collect();
        names.sort_unstable();
        let mut src = if ctx.scope == Scope::Global { global.cloned().unwrap_or_else(|| self.clone()) } else { self.clone() };
        let default = Options::default();
        let mut items = Vec::new();
        for n in names {
            if ctx.scope != Scope::Both && !has_local_value(n) || (!all && src.show(n) == default.show(n)) {
                continue;
            }
            let text = src.showoneopt(n);
            // A flag always fits; the others take their name, the value and one more.
            let len = if src.flag(n).is_some() { 1 } else { n.len() + text.split_once('=').map_or(0, |(_, v)| v.width()) + 1 };
            items.push((text, len));
        }
        layout_options(title, &items, ctx.cols)
    }

    /// `showoneopt`: `  name=value`, `  name` for a flag that is on, `noname` for one that is off.
    fn showoneopt(&mut self, name: &str) -> String {
        let mut text = self.show(name);
        // `option_value2string`: the value of an option that expands names is shown with `~` for the home directory.
        if meta(name).expand
            && let Some((n, v)) = text.split_once('=')
        {
            text = format!("{n}={}", super::short_name(v, &std::env::var("HOME").unwrap_or_default()));
        }
        // `msg_outtrans`: every control char is shown as `^X`, a Tab too.
        let text: String = text.chars().map(|c| if c == '\t' { "^I".to_string() } else { super::graphemes::transchar(c).unwrap_or_else(|| c.to_string()) }).collect();
        if self.flag(name).is_some() && text.starts_with("no") { text } else { format!("  {text}") }
    }

    /// `validate_num_option` for the number options: the message when `n` is out of range.
    fn validate_num(&self, name: &str, n: i64) -> Result<i64, &'static str> {
        const POSITIVE: &str = "E487: Argument must be positive";
        const WINHEIGHT: &str = "E591: 'winheight' cannot be smaller than 'winminheight'";
        const WINWIDTH: &str = "E592: 'winwidth' cannot be smaller than 'winminwidth'";
        // Many number options assume their value is in the signed int range.
        if n < i64::from(i32::MIN) || n > i64::from(i32::MAX) {
            return Err("E474: Invalid argument");
        }
        let (win_h, win_w) = (self.winheight as i64, self.winwidth as i64);
        let (min_h, min_w) = (self.winminheight as i64, self.winminwidth as i64);
        match name {
            "report" | "shiftwidth" | "scrolloff" if n < 0 => Err(POSITIVE),
            "winheight" if n < 1 => Err(POSITIVE),
            "winheight" if min_h > n => Err(WINHEIGHT),
            "winminheight" if n < 0 => Err(POSITIVE),
            "winminheight" if n > win_h => Err(WINHEIGHT),
            "winwidth" if n < 1 => Err(POSITIVE),
            "winwidth" if min_w > n => Err(WINWIDTH),
            "winminwidth" if n < 0 => Err(POSITIVE),
            "winminwidth" if n > win_w => Err(WINWIDTH),
            "cmdwinheight" if n < 1 => Err(POSITIVE),
            "tabstop" if n < 1 => Err(POSITIVE),
            "tabstop" if n > 9999 => Err("E474: Invalid argument"),
            _ => Ok(n),
        }
    }

    /// `do_one_set_option`: one argument of `:set`, `s` from its first character. The text it shows goes to `shown`. Returns
    /// where `do_set` goes on from (`*argp`) and the error message (the argument is added by the caller).
    fn set_one(&mut self, s: &str, shown: &mut Vec<String>, global: Option<&Options>) -> (usize, Result<(), Cow<'static, str>>) {
        const E_INVARG: &str = "E474: Invalid argument";
        const E_TRAILING: &str = "E488: Trailing characters";
        let at = |i: usize| s.as_bytes().get(i).copied().unwrap_or(0);
        let white = |c: u8| c == b' ' || c == b'\t';
        // `get_option_prefix`.
        let (prefix, mut argp) = if s.starts_with("no") {
            (Prefix::No, 2)
        } else if s.starts_with("inv") {
            (Prefix::Inv, 3)
        } else {
            (Prefix::None, 0)
        };
        // `find_option_end`: a TTY option is skipped without a word, what is not a name is `E518`.
        if find_tty_option_end(&s[argp..]).is_some() {
            return (argp, Ok(()));
        }
        let name_len = s[argp..].bytes().take_while(u8::is_ascii_alphabetic).count();
        let Some(name) = long(&s[argp..argp + name_len]).filter(|_| name_len > 0) else { return (argp, Err("E518: Unknown option".into())) };
        let option_end = argp + name_len;
        let afterchar = at(option_end);
        // Skip white space, allow ":set ai  ?".
        let mut p = option_end;
        while white(at(p)) {
            p += 1;
        }
        // `get_op`.
        let op = match (at(p), at(p + 1)) {
            (b'+', b'=') => Op::Add,
            (b'^', b'=') => Op::Prepend,
            (b'-', b'=') => Op::Remove,
            _ => Op::None,
        };
        if op != Op::None {
            p += 1;
        }
        let nextchar = at(p);
        let is_flag = self.flag(name).is_some();
        // `validate_opt_idx`: only a flag has a prefix.
        if !is_flag && prefix != Prefix::None {
            return (argp, Err(E_INVARG.into()));
        }
        let one_of = |set: &str| nextchar != 0 && set.as_bytes().contains(&nextchar);
        if one_of("?=:!&<") {
            argp = p;
            if nextchar == b'&' && at(argp + 1) == b'v' && at(argp + 2) == b'i' {
                // "opt&vim": set to the Vim default; "opt&vi": the Vi default (the same here).
                argp += if at(argp + 3) == b'm' { 3 } else { 2 };
            }
            if one_of("?!&<") && at(argp + 1) != 0 && !white(at(argp + 1)) {
                return (argp, Err(E_TRAILING.into()));
            }
        }
        // Print the value. Allow '=' and ':' as MS-DOS command.com allows only one '=' character per "set" command line.
        if nextchar == b'?' || (prefix == Prefix::None && !one_of("=:&<") && !is_flag) {
            shown.push(self.showoneopt(name));
            if nextchar != b'?' && nextchar != 0 && !white(afterchar) {
                return (argp, Err(E_TRAILING.into()));
            }
            return (argp, Ok(()));
        }
        if is_flag {
            if one_of("=:") {
                return (argp, Err(E_INVARG.into()));
            }
            if !one_of("!&<") && nextchar != 0 && !white(afterchar) {
                return (argp, Err(E_TRAILING.into()));
            }
        } else if !one_of("=:&<") {
            return (argp, Err(E_INVARG.into()));
        }
        // `get_option_newval`.
        let default = Options::default();
        if matches!(nextchar, b'&' | b'<') {
            // `opt&`: the default value; `opt<`: the global value.
            let mut from = if nextchar == b'<' { global.unwrap_or(&default).clone() } else { default.clone() };
            if is_flag {
                self.set_flag(name, *from.flag(name).expect("a flag"));
                return (argp, Ok(()));
            }
            if self.is_number(name) {
                let n = from.num_value(name);
                return (argp, self.validate_num(name, n).map_err(Cow::from).and_then(|n| self.set_value(name, &n.to_string())));
            }
            let v = from.show(name);
            let value = v.split_once('=').map_or("", |x| x.1).to_string();
            return (argp, self.set_value(name, &value));
        }
        if is_flag {
            // `:set modified!` flips what `&modified` says, `:set invmodified` the raw flag.
            let cur = if name == "modified" && nextchar == b'!' { self.dirty } else { *self.flag(name).expect("a flag") };
            self.set_flag(name, if nextchar == b'!' || prefix == Prefix::Inv { !cur } else { prefix != Prefix::No });
            return (argp, Ok(()));
        }
        let value = &s[p + 1..];
        // A number option: a key for 'wildchar' and 'wildcharm', else `[-]digits` (also octal and hex) ending at a blank.
        if self.is_number(name) {
            const E_NUMBER: &str = "E521: Number required after =";
            let vb = value.as_bytes();
            let first = vb.first().copied().unwrap_or(0);
            let is_wc = matches!(name, "wildchar" | "wildcharm");
            let n = if is_wc && (first == b'<' || first == b'^' || (first != 0 && vb.get(1).is_none_or(|&c| white(c)) && !first.is_ascii_digit())) {
                let key = string_to_key(value.split([' ', '\t']).next().unwrap_or(""));
                if key == 0 {
                    return (argp, Err(E_INVARG.into()));
                }
                key
            } else if first == b'-' || first.is_ascii_digit() {
                let (n, len) = super::script::vim_str2nr_all(value);
                if len == 0 || (len < vb.len() && !white(vb[len])) {
                    return (argp, Err(E_NUMBER.into()));
                }
                n
            } else {
                return (argp, Err(E_NUMBER.into()));
            };
            let old = self.num_value(name);
            let n = match op {
                Op::Add => old.wrapping_add(n),
                Op::Prepend => old.wrapping_mul(n),
                Op::Remove => old.wrapping_sub(n),
                Op::None => n,
            };
            return (argp, self.validate_num(name, n).map_err(Cow::from).and_then(|n| self.set_value(name, &n.to_string())));
        }
        let old = self.show(name).split_once('=').map(|x| x.1.to_string()).unwrap_or_default();
        let (new, used) = stropt_get_newval(meta(name), &old, value, op);
        argp = p + 1 + used;
        (argp, self.set_value(name, &new))
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
        self.set_all_from(args, None, SetCtx::default())
    }

    /// `do_set`: applies the arguments of `:set`: the text to show (queried values) and the error that stopped it, if any.
    pub fn set_all_from(&mut self, args: &str, global: Option<&Options>, ctx: SetCtx) -> (String, Option<String>) {
        let mut shown = Vec::new();
        let args = args.trim_start_matches([' ', '\t']);
        let white = |c: u8| c == b' ' || c == b'\t';
        if args.is_empty() {
            shown.push(self.showoptions(false, ctx, global));
        }
        let b = args.as_bytes();
        let skipwhite = |mut i: usize| {
            while i < b.len() && white(b[i]) {
                i += 1;
            }
            i
        };
        let mut arg = 0;
        while arg < b.len() {
            if !ctx.modeline && args[arg..].starts_with("all") && !b.get(arg + 3).is_some_and(u8::is_ascii_alphabetic) {
                // ":set all" shows every option, ":set all&" sets them to their default value.
                arg += 3;
                if b.get(arg) == Some(&b'&') {
                    arg += 1;
                    self.reset_all();
                } else {
                    shown.push(self.showoptions(true, ctx, global));
                }
            } else {
                let startarg = arg;
                let (argp, res) = self.set_one(&args[arg..], &mut shown, global);
                arg += argp;
                // Advance: skip to a blank, taking care of backslashes, and skip the blanks; and one "=val" argument.
                for _ in 0..2 {
                    arg = skip_to_white_esc(b, arg);
                    arg = skipwhite(arg);
                    if b.get(arg) != Some(&b'=') {
                        break;
                    }
                }
                if let Err(m) = res {
                    // The message is followed by the argument as it was typed, with the blanks that follow it.
                    return (shown.join("\n"), Some(format!("{m}: {}", &args[startarg..arg])));
                }
            }
            arg = skipwhite(arg);
        }
        (shown.join("\n"), None)
    }
}

/// Which values `:set`, `:setlocal` and `:setglobal` work on and list (`OPT_LOCAL`, `OPT_GLOBAL`).
#[derive(Clone, Copy, Default, PartialEq)]
pub(super) enum Scope {
    #[default]
    Both,
    Local,
    Global,
}

/// What `do_set` needs besides the options: a modeline is being applied (`OPT_MODELINE`: `all` is no word then), the width
/// of the screen (`Columns`, for the lists) and the scope.
#[derive(Clone, Copy)]
pub(super) struct SetCtx {
    pub modeline: bool,
    pub cols: usize,
    pub scope: Scope,
}

impl Default for SetCtx {
    fn default() -> Self {
        Self { modeline: false, cols: 80, scope: Scope::Both }
    }
}

/// Whether an option has a value of its own in a buffer or a window (`scope` of `options.lua` has `buf` or `win`).
fn has_local_value(name: &str) -> bool {
    matches!(
        name,
        "number" | "relativenumber" | "cursorline" | "wrap" | "winfixheight" | "winfixwidth" | "list" | "scrolloff" | "tabstop" | "vartabstop" | "modifiable" | "readonly"
            | "bufhidden" | "softtabstop" | "undolevels" | "varsofttabstop" | "expandtab" | "shiftwidth" | "filetype" | "buftype"
            | "modeline" | "endofline" | "fixendofline" | "binary" | "modified" | "fileformat"
    )
}

/// `showoptions` after its loop: `items` (what `showoneopt` writes and the length that decides the run) in columns of 20 for the
/// short ones, one per row for the long ones, each run in rows that go down first.
fn layout_options(title: &str, items: &[(String, usize)], cols: usize) -> String {
    use unicode_width::UnicodeWidthStr;
    const INC: usize = 20;
    const GAP: usize = 3;
    let mut out = format!("\n{title}");
    for run in 1..=2 {
        let sel: Vec<&str> = items.iter().filter(|(_, l)| (*l <= INC - GAP) == (run == 1)).map(|(t, _)| t.as_str()).collect();
        let rows = if run == 1 { sel.len().div_ceil(((cols + GAP - 3) / INC).max(1)) } else { sel.len() };
        for row in 0..rows {
            out.push('\n');
            let (mut col, mut at) = (0, 0);
            for text in sel.iter().skip(row).step_by(rows) {
                // `msg_advance`: pad to the column of the item.
                let want = col.min(cols.saturating_sub(1));
                out.push_str(&" ".repeat(want.saturating_sub(at)));
                at = at.max(want);
                out.push_str(text);
                at += text.width();
                col += INC;
            }
        }
    }
    out
}

/// `opt_strings_flags`: `val` is one of `values` (an empty one only when `values` has it), or with `list` items of them (a
/// comma after the last one is fine, an empty item is not).
fn opt_strings_flags(val: &str, values: &[&str], list: bool) -> bool {
    let mut val = val;
    let mut iter_one = val.is_empty() && !list;
    while !val.is_empty() || iter_one {
        let Some(len) = values.iter().find(|v| val.starts_with(**v) && ((list && val[v.len()..].starts_with(',')) || val.len() == v.len())).map(|v| v.len()) else {
            return false;
        };
        val = &val[len + usize::from(val[len..].starts_with(',')).min(val.len() - len)..];
        if std::mem::take(&mut iter_one) {
            break;
        }
    }
    true
}

/// `did_set_mousescroll`: `ver:N` and `hor:N`, each at most once, N digits only.
fn did_set_mousescroll(value: &str) -> Result<(), Cow<'static, str>> {
    const E_INVARG: &str = "E474: Invalid argument";
    let (mut vertical, mut horizontal) = (false, false);
    for item in value.split(',') {
        // Both "ver:" and "hor:" are 4 bytes long. They should be followed by at least one digit.
        if item.len() <= 4 {
            return Err(E_INVARG.into());
        }
        let seen = match &item[..4] {
            "ver:" => &mut vertical,
            "hor:" => &mut horizontal,
            _ => return Err(E_INVARG.into()),
        };
        // If the direction has already been set, this is a duplicate.
        if std::mem::replace(seen, true) {
            return Err(E_INVARG.into());
        }
        // Verify that only digits follow the colon.
        if !item.as_bytes()[4..].iter().all(u8::is_ascii_digit) {
            return Err("E5080: Digit expected".into());
        }
        // Num options are generally kept within the signed int range.
        if item[4..].parse::<i32>().is_err() {
            return Err(E_INVARG.into());
        }
    }
    Ok(())
}

/// `vim_isprintc` of a key number.
fn key_is_printable(n: i64) -> bool {
    match u32::try_from(n).ok().and_then(char::from_u32) {
        Some(c) if (' '..='~').contains(&c) => true,
        // A char of 0x80 to 0xFF is not printable by itself in UTF-8; a larger one is when `utf_printable` says so.
        Some(c) if u32::from(c) >= 0x100 => super::graphemes::transchar(c).is_none(),
        _ => false,
    }
}

/// What `options.lua` says about the value of a string option, for `stropt_get_newval`.
#[derive(Clone, Copy, Default)]
struct Meta {
    /// `P_COMMA`: a comma separated list; `P_ONECOMMA`: one that cannot have two commas in a row (implies `comma`).
    comma: bool,
    onecomma: bool,
    /// `P_COLON`: items of the form `key:value`.
    colon: bool,
    /// `P_NODUP`: an item is never in the list twice.
    nodup: bool,
    /// `P_FLAGLIST`: a list of one-character flags.
    flaglist: bool,
    /// `P_EXPAND`: environment variables and `~` are expanded.
    expand: bool,
}

/// The `list = ..`, `deny_duplicates` and `expand` of an option in `options.lua`.
fn meta(name: &str) -> Meta {
    let m = Meta::default();
    match name {
        "vartabstop" | "varsofttabstop" | "mousescroll" => Meta { comma: true, ..m },
        "isfname" => Meta { comma: true, nodup: true, ..m },
        "shell" => Meta { expand: true, ..m },
        "suffixes" | "wildoptions" | "jumpoptions" | "wildignore" => Meta { comma: true, onecomma: true, nodup: true, ..m },
        "messagesopt" => Meta { comma: true, onecomma: true, colon: true, nodup: true, ..m },
        "wildmode" => Meta { comma: true, onecomma: true, colon: true, ..m },
        "shortmess" | "mouse" => Meta { flaglist: true, ..m },
        _ => m,
    }
}

/// `skiptowhite_esc`: the next blank, a backslash (or `Ctrl-V`) takes the char after it.
fn skip_to_white_esc(b: &[u8], mut i: usize) -> usize {
    while i < b.len() && b[i] != b' ' && b[i] != b'\t' {
        if (b[i] == b'\\' || b[i] == 0x16) && i + 1 < b.len() {
            i += 1;
        }
        i += 1;
    }
    i.min(b.len())
}

/// `find_tty_option_end`: where the name of a TTY option or keycode option (`t_Co`, `<t_Co>`, `<Esc>`, `term`) ends.
fn find_tty_option_end(arg: &str) -> Option<usize> {
    if arg == "term" || arg == "ttytype" {
        return Some(arg.len());
    }
    let b = arg.as_bytes();
    let g = |i: usize| b.get(i).copied().unwrap_or(0);
    let delimit = g(0) == b'<';
    let mut p = usize::from(delimit);
    if g(p) == b't' && g(p + 1) == b'_' && g(p + 2) != 0 && g(p + 3) != 0 {
        p += 4;
    } else if delimit {
        while g(p) != 0 && g(p) != b'>' {
            p += 1;
        }
    }
    if delimit {
        if g(p) != b'>' {
            return None;
        }
        p += 1;
    }
    (p != 0).then_some(p)
}

/// `K_ZERO`, `K_KENTER` as Neovim numbers them (`-(a + (b << 8))`).
const K_ZERO: i64 = -22783;
const K_KENTER: i64 = -16715;

/// `string_to_key`: a key name, a control char or a char as the value of 'wildchar' (0: not a key).
pub(super) fn string_to_key(arg: &str) -> i64 {
    let b = arg.as_bytes();
    if b.first() == Some(&b'<') && b.len() > 1 {
        return super::script::option_key(arg).map_or(0, |(n, _)| n);
    }
    if b.first() == Some(&b'^') && b.len() > 1 {
        let key = i64::from(b[1].to_ascii_uppercase() ^ 0x40);
        return if key == 0 { K_ZERO } else { key };
    }
    b.first().map_or(0, |&c| i64::from(c))
}

/// `option_value2string` of 'wildchar' and 'wildcharm': the key name when it has one (`get_special_key_name`), else the char
/// as `transchar` writes it.
fn key_name(n: i64) -> String {
    if super::script::key_has_name(n) {
        return super::script::special_key_name(n);
    }
    match n {
        0 => "0".into(),
        // `transchar`: a control char is `^X`, one of 0x80 to 0xFF or past it is `<ea>` or `<0438>` in UTF-8.
        n => match u8::try_from(n) {
            Ok(c) if (b' '..=b'~').contains(&c) => char::from(c).to_string(),
            Ok(c) if c < b' ' || c == 0x7f => format!("^{}", char::from(c ^ 0x40)),
            _ if n > 0xffff => format!("<{n:06x}>"),
            _ if n > 0xff => format!("<{n:04x}>"),
            _ => format!("<{n:02x}>"),
        },
    }
}

/// `find_dup_item`: where `new` is an item of `orig` (whole items for a comma list), if it is.
fn find_dup_item(orig: &str, new: &str, comma: bool) -> Option<usize> {
    let (ob, nb) = (orig.as_bytes(), new.as_bytes());
    let mut bs = 0;
    for s in 0..ob.len() {
        if (!comma || s == 0 || (ob[s - 1] == b',' && bs & 1 == 0))
            && ob[s..].starts_with(nb)
            && (!comma || ob.get(s + nb.len()).is_none_or(|&c| c == b','))
        {
            return Some(s);
        }
        // Count backslashes. Only a comma with an even number of backslashes or a single backslash preceded by a comma before it is
        // recognized as a separator.
        if (s > 1 && ob[s - 1] == b'\\' && ob[s - 2] != b',') || (s == 1 && ob[s - 1] == b'\\') {
            bs += 1;
        } else {
            bs = 0;
        }
    }
    None
}

/// `find_key_item`: the item of `src` that starts with `key` (up to and with its colon): where it is and how long.
fn find_key_item(src: &str, key: &str) -> Option<(usize, usize)> {
    let b = src.as_bytes();
    (0..b.len()).find(|&p| (p == 0 || b[p - 1] == b',') && b[p..].starts_with(key.as_bytes())).map(|p| (p, src[p..].find(',').unwrap_or(src.len() - p)))
}

/// `remove_comma_item`: the item and the comma after it, or before it for the last one.
fn remove_comma_item(s: &mut String, item: usize, len: usize) {
    if s.as_bytes().get(item + len) == Some(&b',') {
        s.replace_range(item..item + len + 1, "");
    } else if item > 0 && s.as_bytes()[item - 1] == b',' {
        s.replace_range(item - 1..item + len, "");
    } else {
        s.truncate(item);
    }
}

/// `remove_key_item`: every item with the key, except the one at `skip`.
fn remove_key_item(s: &mut String, key: &str, skip: Option<usize>) {
    while let Some((mut found, mut len)) = find_key_item(s, key) {
        if Some(found) == skip {
            let mut next = found + len;
            if s.as_bytes().get(next) == Some(&b',') {
                next += 1;
            }
            match find_key_item(&s[next..], key) {
                Some((f, l)) => (found, len) = (next + f, l),
                None => break,
            }
        }
        remove_comma_item(s, found, len);
    }
}

fn append_item(s: &mut String, item: &str) {
    if !s.is_empty() {
        s.push(',');
    }
    s.push_str(item);
}

fn prepend_item(s: &mut String, item: &str) {
    s.insert_str(0, &if s.is_empty() { item.to_string() } else { format!("{item},") });
}

/// `stropt_handle_keymatch`: the items of `new` one by one, a `key:value` one replacing the item of `orig` with its key. False
/// when `new` is one plain item (the caller does the usual add or remove).
fn stropt_handle_keymatch(orig: &str, new: &mut String, op: Op) -> bool {
    if !new.contains([':', ',']) {
        return false;
    }
    let copy = std::mem::replace(new, orig.to_string());
    for item in copy.split(',').filter(|i| !i.is_empty()) {
        let add = |new: &mut String| if op == Op::Prepend { prepend_item(new, item) } else { append_item(new, item) };
        if let Some(colon) = item.find(':') {
            let key = &item[..=colon];
            match op {
                Op::Add | Op::Prepend => match find_key_item(new, key) {
                    // An exact duplicate stays where it is, the other items with its key go.
                    Some((found, len)) if len == item.len() && &new[found..found + len] == item => remove_key_item(new, key, Some(found)),
                    Some(_) => {
                        remove_key_item(new, key, None);
                        add(new);
                    }
                    None => add(new),
                },
                Op::Remove => remove_key_item(new, key, None),
                Op::None => {}
            }
        } else {
            let found = find_dup_item(new, item, true);
            match (op, found) {
                (Op::Add | Op::Prepend, None) => add(new),
                (Op::Remove, Some(f)) => remove_comma_item(new, f, item.len()),
                _ => {}
            }
        }
    }
    true
}

/// `stropt_remove_dupflags`: of a flag that appears more than once only the last one stays.
fn stropt_remove_dupflags(new: &str, m: Meta) -> String {
    let mut v = new.as_bytes().to_vec();
    let mut i = 0;
    while i < v.len() {
        // `flags & kOptFlagOneComma` is also true for a plain comma list.
        if m.comma {
            if v[i] != b',' && v.get(i + 1) == Some(&b',') && v[i + 2..].contains(&v[i]) {
                v.drain(i..i + 2);
                continue;
            }
        } else if v[i + 1..].contains(&v[i]) {
            v.remove(i);
            continue;
        }
        i += 1;
    }
    String::from_utf8_lossy(&v).into_owned()
}

/// `stropt_get_newval`: the value `:set name=value`, `+=`, `^=` or `-=` gives, and how much of `value` it took (up to a
/// blank, a backslash takes the char after it).
fn stropt_get_newval(m: Meta, orig: &str, value: &str, mut op: Op) -> (String, usize) {
    // `stropt_copy_value`.
    let (mut new, mut i) = (String::new(), 0);
    let vb = value.as_bytes();
    while i < vb.len() && vb[i] != b' ' && vb[i] != b'\t' {
        if vb[i] == b'\\' && i + 1 < vb.len() {
            i += 1;
        }
        let c = value[i..].chars().next().expect("a char");
        new.push(c);
        i += c.len_utf8();
    }
    let used = i;
    // `stropt_expand_envvar`: not when adding without a comma.
    if m.expand && (op == Op::None || m.comma) {
        new = super::script::expand_env_opt(&new, false, false, false);
    }
    if m.comma && m.colon && op != Op::None && stropt_handle_keymatch(orig, &mut new, op) {
        // fully handled
    } else {
        // Locate `new` in `orig` when removing it and when adding to avoid duplicates.
        let mut at = None;
        if op == Op::Remove || m.nodup {
            at = find_dup_item(orig, &new, m.comma);
            // Do not add if already there.
            if matches!(op, Op::Add | Op::Prepend) && at.is_some() {
                op = Op::None;
                new = orig.to_string();
            }
        }
        match op {
            Op::Add | Op::Prepend => {
                // Concatenate the two strings; add a ',' if needed.
                let comma = m.comma && !orig.is_empty() && !new.is_empty();
                let sep = if comma { "," } else { "" };
                if op == Op::Add {
                    let mut len = orig.len();
                    // Strip a trailing comma, would get 2.
                    if comma && len > 1 && m.onecomma && orig.ends_with(',') && orig.as_bytes()[len - 2] != b'\\' {
                        len -= 1;
                    }
                    new = format!("{}{sep}{new}", &orig[..len]);
                } else {
                    new = format!("{new}{sep}{orig}");
                }
            }
            Op::Remove => {
                // `stropt_remove_val`: with the comma after it, or before it when it is not the first.
                let (mut start, mut len) = (at.unwrap_or(orig.len()), new.len());
                new = orig.to_string();
                if start < orig.len() {
                    if m.comma {
                        if start == 0 {
                            len += usize::from(orig.as_bytes().get(len) == Some(&b','));
                        } else {
                            start -= 1;
                            len += 1;
                        }
                    }
                    new.replace_range(start..(start + len).min(orig.len()), "");
                }
            }
            Op::None => {}
        }
    }
    if m.flaglist {
        new = stropt_remove_dupflags(&new, m);
    }
    (new, used)
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
    pub winfixheight: bool,
    pub winfixwidth: bool,
    pub scrolloff: Option<usize>,
}

impl Default for WinOpts {
    fn default() -> Self {
        let o = Options::start();
        Self { number: o.number, relativenumber: o.relativenumber, cursorline: o.cursorline, wrap: o.wrap, list: o.list, winfixheight: o.winfixheight, winfixwidth: o.winfixwidth, scrolloff: None }
    }
}

impl WinOpts {
    /// The scratch fields of `o` as window values; `scrolloff` is not read (see `Editor::win_out`).
    pub fn load(o: &Options, scrolloff: Option<usize>) -> Self {
        Self { number: o.number, relativenumber: o.relativenumber, cursorline: o.cursorline, wrap: o.wrap, list: o.list, winfixheight: o.winfixheight, winfixwidth: o.winfixwidth, scrolloff }
    }

    /// The fields `from` has for the options in `names` (what `:set` writes to the global values of a window).
    pub fn take_named(&mut self, from: &WinOpts, names: &[&str]) {
        let has = |n: &str| names.contains(&n);
        if has("number") {
            self.number = from.number;
        }
        if has("relativenumber") {
            self.relativenumber = from.relativenumber;
        }
        if has("cursorline") {
            self.cursorline = from.cursorline;
        }
        if has("wrap") {
            self.wrap = from.wrap;
        }
        if has("list") {
            self.list = from.list;
        }
        if has("winfixheight") {
            self.winfixheight = from.winfixheight;
        }
        if has("winfixwidth") {
            self.winfixwidth = from.winfixwidth;
        }
    }

    /// Fills the scratch fields of `o`; `scrolloff` is the local value or else `global`.
    pub fn store(&self, o: &mut Options, global: usize) {
        (o.number, o.relativenumber, o.cursorline, o.wrap, o.list) = (self.number, self.relativenumber, self.cursorline, self.wrap, self.list);
        (o.winfixheight, o.winfixwidth) = (self.winfixheight, self.winfixwidth);
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

    /// `:set all` of Neovim 0.12.6 in 80 columns (`script/cases/set_all.nvim.txt`, recorded with `nvim --headless -u NONE`): the cells
    /// are taken apart again and `layout_options` has to give the same text back.
    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn the_option_list_has_the_layout_of_neovim() {
        use unicode_width::UnicodeWidthStr;
        let recorded = include_str!("script/cases/set_all.nvim.txt");
        let lines: Vec<&str> = recorded.lines().skip(2).collect();
        // The length that decides the run of an item: a flag is 1, the others name, value and one.
        let len = |t: &str| if t.contains('=') { t.trim_start().split_once('=').map_or(0, |(n, v)| n.len() + v.width() + 1) } else { 1 };
        let cells = |l: &str| -> Vec<String> {
            let chars: Vec<char> = l.chars().collect();
            (0..chars.len()).step_by(20).map(|c| chars[c..(c + 20).min(chars.len())].iter().collect::<String>().trim_end().to_string()).filter(|c| !c.is_empty()).collect()
        };
        // A row of the first run has the gap between its cells (or is one short item); a long item is a row of its own.
        let run1_rows = lines.iter().take_while(|l| l.trim_start().contains("  ") || len(l.trim_end()) <= 17).count();
        let mut items: Vec<(String, usize)> = Vec::new();
        let cols = 4;
        // Run 1 goes down the columns first: the item `i` is in row `i % rows`, column `i / rows`.
        let rows: Vec<Vec<String>> = lines[..run1_rows].iter().map(|l| cells(l)).collect();
        for c in 0..cols {
            for r in &rows {
                if let Some(t) = r.get(c) {
                    items.push((t.clone(), len(t)));
                }
            }
        }
        for l in &lines[run1_rows..] {
            items.push((l.to_string(), len(l)));
        }
        assert_eq!(layout_options("--- Options ---", &items, 80), recorded.trim_end_matches('\n'));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn set_flags_values_and_queries() {
        let mut o = Options::default();
        assert_eq!(o.set("nu? rnu? cul?"), Ok("nonumber\nnorelativenumber\nnocursorline".into()), "the defaults of Neovim");
        assert_eq!(o.set("nu rnu cul"), Ok(String::new()));
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
        // A bare `:set` lists what is not at its default (the list itself is `showoptions`).
        assert!(o.set("").unwrap().starts_with("\n--- Options ---\n"));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn new_options_and_helpers() {
        let mut o = Options::default();
        assert_eq!(o.set("et? sw? ts? ls? list? ic? scs? hls? is? so?"), Ok("noexpandtab\n  shiftwidth=8\n  tabstop=8\n  laststatus=2\nnolist\nnoignorecase\nnosmartcase\n  hlsearch\n  incsearch\n  scrolloff=0".into()));
        assert_eq!((o.sw(), o.indent(6), o.indent(9)), (8, "      ".into(), "\t ".into()));
        assert_eq!(o.set("noet sw=2 list ic scs nohls nois so=3"), Ok(String::new()));
        assert_eq!((o.sw(), o.indent(9), o.scrolloff), (2, "\t ".into(), 3));
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
        o.touched.clear();
        assert_eq!(o, Options::default());
    }
}
