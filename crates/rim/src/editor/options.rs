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
}

impl Default for Options {
    fn default() -> Self {
        Self {
            number: true,
            relativenumber: true,
            cursorline: true,
            wrap: true,
            tabstop: 4,
            expandtab: true,
            shiftwidth: 0,
            list: false,
            ignorecase: false,
            smartcase: false,
            hlsearch: true,
            incsearch: true,
            scrolloff: 0,
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
            nofile: false,
            more: true,
            cmdwinheight: 7,
            wildmenu: true,
            wildmode: "full".into(),
            wildoptions: "pum,tagfile".into(),
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
        }
    }
}

/// Every option: long name, short name, and whether it is a flag (`:set nox`, `:set invx`).
pub(super) const NAMES: &[(&str, Option<&str>, bool)] = &[
    ("number", Some("nu"), true),
    ("relativenumber", Some("rnu"), true),
    ("cursorline", Some("cul"), true),
    ("wrap", None, true),
    ("tabstop", Some("ts"), false),
    ("expandtab", Some("et"), true),
    ("shiftwidth", Some("sw"), false),
    ("list", None, true),
    ("ignorecase", Some("ic"), true),
    ("smartcase", Some("scs"), true),
    ("hlsearch", Some("hls"), true),
    ("incsearch", Some("is"), true),
    ("scrolloff", Some("so"), false),
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
    ("wildmenu", Some("wmnu"), true),
    ("wildmode", Some("wim"), false),
    ("wildoptions", Some("wop"), false),
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
];

/// Long name of an option given by its long or vim short name.
fn long(name: &str) -> Option<&'static str> {
    NAMES.iter().find(|&&(l, s, _)| l == name || s == Some(name)).map(|n| n.0)
}

impl Options {
    /// Copies the options that are global in vim (the screen's, not a buffer's) to `to`.
    pub fn copy_global(&self, to: &mut Options) {
        (to.laststatus, to.showmode, to.showcmd) = (self.laststatus, self.showmode, self.showcmd);
        (to.msg_hit_enter, to.msg_wait, to.msg_history) = (self.msg_hit_enter, self.msg_wait, self.msg_history);
        to.cmdwinheight = self.cmdwinheight;
        to.more = self.more;
        (to.wildmenu, to.wildmode, to.wildoptions) = (self.wildmenu, self.wildmode.clone(), self.wildoptions.clone());
        (to.wildignore, to.wildignorecase) = (self.wildignore.clone(), self.wildignorecase);
        (to.wildchar, to.wildcharm, to.pumheight, to.pumwidth) = (self.wildchar.clone(), self.wildcharm.clone(), self.pumheight, self.pumwidth);
        to.cedit = self.cedit.clone();
        (to.mouse, to.mousescroll) = (self.mouse.clone(), self.mousescroll.clone());
        (to.equalalways, to.winheight, to.winminheight, to.winwidth, to.winminwidth) = (self.equalalways, self.winheight, self.winminheight, self.winwidth, self.winminwidth);
    }

    /// The value of option `name` (long or short name) for `&name` in an expression: a number
    /// (flags as 0 or 1) or a string.
    pub fn lookup(&self, name: &str) -> Option<super::expr::Value> {
        use super::expr::Value;
        let shown = self.show(long(name)?);
        Some(match shown.split_once('=') {
            Some((_, v)) => v.parse().map_or_else(|_| Value::Str(v.into()), Value::Int),
            None => Value::Int(i64::from(!shown.starts_with("no"))),
        })
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
            format!("{}{}", "\t".repeat(width / self.tabstop), " ".repeat(width % self.tabstop))
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
            "wildmode" => format!("wildmode={}", self.wildmode),
            "wildoptions" => format!("wildoptions={}", self.wildoptions),
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
            "shiftwidth" => format!("shiftwidth={}", self.shiftwidth),
            "scrolloff" => format!("scrolloff={}", self.scrolloff),
            "background" => format!("background={}", if self.background == Background::Dark { "dark" } else { "light" }),
            "compactat" => format!("compactat={}", self.compactat),
            "filetype" => format!("filetype={}", self.filetype),
            _ => unreachable!("every option name of `long` is shown"),
        }
    }

    /// Applies the arguments of `:set`. Returns the text to show: queried values, or an error.
    pub fn set(&mut self, args: &str) -> Result<String, String> {
        let mut shown = Vec::new();
        if args.trim().is_empty() {
            for n in [
                "number", "relativenumber", "cursorline", "tabstop", "background", "termguicolors", "wrap", "compactat",
                "expandtab", "shiftwidth", "list", "ignorecase", "smartcase", "hlsearch", "incsearch", "scrolloff", "filetype",
                "laststatus", "showmode", "showcmd", "messagesopt", "buftype", "cmdwinheight", "more", "wildmenu", "wildmode", "wildoptions", "wildignore", "wildignorecase", "wildchar", "wildcharm", "pumheight", "pumwidth", "cedit", "mouse", "mousescroll", "equalalways", "winheight", "winminheight", "winwidth", "winminwidth",
            ] {
                shown.push(self.show(n));
            }
        }
        for arg in args.split_whitespace() {
            let invalid = || format!("Invalid argument: {arg}");
            let unknown = || format!("Unknown option: {arg}");
            if let Some((name, value)) = arg.split_once('=') {
                let name = long(name).ok_or_else(unknown)?;
                match name {
                    "tabstop" => self.tabstop = value.parse().ok().filter(|n| (1..=32).contains(n)).ok_or_else(invalid)?,
                    "background" => {
                        self.background = match value {
                            "dark" => Background::Dark,
                            "light" => Background::Light,
                            _ => return Err(invalid()),
                        }
                    }
                    "compactat" => self.compactat = value.parse().map_err(|_| invalid())?,
                    "filetype" => self.filetype = value.to_string(),
                    "shiftwidth" => self.shiftwidth = value.parse().ok().filter(|n| *n <= 32).ok_or_else(invalid)?,
                    "scrolloff" => self.scrolloff = value.parse().map_err(|_| invalid())?,
                    "messagesopt" => self.set_messagesopt(value).ok_or_else(invalid)?,
                    "wildmode" => self.wildmode = super::wild::valid_mode(value).then(|| value.to_string()).ok_or_else(invalid)?,
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
                    "winheight" => self.winheight = value.parse().ok().filter(|n| *n >= 1).ok_or_else(invalid)?,
                    "winwidth" => self.winwidth = value.parse().ok().filter(|n| *n >= 1).ok_or_else(invalid)?,
                    "winminheight" => self.winminheight = value.parse().map_err(|_| invalid())?,
                    "winminwidth" => self.winminwidth = value.parse().map_err(|_| invalid())?,
                    "pumheight" => self.pumheight = value.parse().map_err(|_| invalid())?,
                    "pumwidth" => self.pumwidth = value.parse().ok().filter(|n| *n >= 1).ok_or_else(invalid)?,
                    "cmdwinheight" => self.cmdwinheight = value.parse().ok().filter(|n| (1..=1000).contains(n)).ok_or_else(invalid)?,
                    "buftype" => {
                        self.nofile = match value {
                            "" => false,
                            "nofile" => true,
                            _ => return Err(invalid()),
                        }
                    }
                    "laststatus" => self.laststatus = value.parse().ok().filter(|n| *n <= 2).ok_or_else(invalid)?,
                    _ => return Err(invalid()),
                }
            } else if let Some(name) = arg.strip_suffix('?') {
                shown.push(self.show(long(name).ok_or_else(unknown)?));
            } else if let Some(flag) = long(arg).and_then(|n| self.flag(n)) {
                *flag = true;
            } else if let Some(flag) = arg.strip_prefix("no").and_then(long).and_then(|n| self.flag(n)) {
                *flag = false;
            } else if let Some(flag) = arg.strip_prefix("inv").or(arg.strip_suffix('!')).and_then(long).and_then(|n| self.flag(n)) {
                *flag = !*flag;
            } else if let Some(name) = long(arg) {
                // A value option without `=` shows its value, like vim.
                shown.push(self.show(name));
            } else {
                return Err(unknown());
            }
        }
        Ok(shown.join("  "))
    }
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
        assert_eq!(o.set("nu? rnu?"), Ok("nonumber  norelativenumber".into()));
        assert_eq!(o.set("rnu! invcul"), Ok(String::new()));
        assert!(o.relativenumber && !o.cursorline);
        assert_eq!(o.set("ts=8 bg=light"), Ok(String::new()));
        assert_eq!((o.tabstop, o.background), (8, Background::Light));
        assert_eq!(o.set("ts"), Ok("tabstop=8".into()));
        assert_eq!(o.set("bg?"), Ok("background=light".into()));
        assert_eq!(o.env(), Env::LIGHT);
        assert_eq!(o.set("tgc tgc? bg=dark bg?"), Ok("termguicolors  background=dark".into()));
        assert_eq!(o.env(), Env { light: false, gui: true });
        assert!(o.set("").unwrap().starts_with("nonumber  relativenumber  nocursorline  tabstop=8"));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn new_options_and_helpers() {
        let mut o = Options::default();
        assert_eq!(o.set("et? sw? list? ic? scs? hls? is? so?"), Ok("expandtab  shiftwidth=0  nolist  noignorecase  nosmartcase  hlsearch  incsearch  scrolloff=0".into()));
        assert_eq!((o.sw(), o.indent(6)), (4, "      ".into()));
        assert_eq!(o.set("noet sw=2 list ic scs nohls nois so=3"), Ok(String::new()));
        assert_eq!((o.sw(), o.indent(9), o.scrolloff), (2, "\t\t ".into(), 3));
        assert_eq!((o.case_pattern("ab"), o.case_pattern("aB")), ("(?i)ab".into(), "aB".into()));
        o.set("noscs").unwrap();
        assert_eq!(o.case_pattern("aB"), "(?i)aB");
        assert!(o.list && !o.hlsearch && !o.incsearch);
        assert_eq!(o.set("ft? ft=rust ft?"), Ok("filetype=  filetype=rust".into()));
        assert_eq!(o.set("ft="), Ok(String::new()));
        assert!(o.filetype.is_empty());
        assert_eq!(o.set("sw=33"), Err("Invalid argument: sw=33".into()));
        assert_eq!(o.set("so=x"), Err("Invalid argument: so=x".into()));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn set_errors() {
        let mut o = Options::default();
        for (arg, err) in [
            ("foo", "Unknown option: foo"),
            ("nofoo", "Unknown option: nofoo"),
            ("foo=1", "Unknown option: foo=1"),
            ("foo?", "Unknown option: foo?"),
            ("ts=0", "Invalid argument: ts=0"),
            ("ts=x", "Invalid argument: ts=x"),
            ("bg=blue", "Invalid argument: bg=blue"),
            ("nu=1", "Invalid argument: nu=1"),
        ] {
            assert_eq!(o.set(arg), Err(err.into()), "{arg}");
        }
        assert_eq!(o, Options::default());
    }
}
