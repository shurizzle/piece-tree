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
    pub filetype: String,
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
        }
    }
}

/// Long name of an option given by its long or vim short name.
fn long(name: &str) -> Option<&'static str> {
    Some(match name {
        "number" | "nu" => "number",
        "relativenumber" | "rnu" => "relativenumber",
        "cursorline" | "cul" => "cursorline",
        "wrap" => "wrap",
        "tabstop" | "ts" => "tabstop",
        "expandtab" | "et" => "expandtab",
        "shiftwidth" | "sw" => "shiftwidth",
        "list" => "list",
        "ignorecase" | "ic" => "ignorecase",
        "smartcase" | "scs" => "smartcase",
        "hlsearch" | "hls" => "hlsearch",
        "incsearch" | "is" => "incsearch",
        "scrolloff" | "so" => "scrolloff",
        "background" | "bg" => "background",
        "termguicolors" | "tgc" => "termguicolors",
        "compactat" => "compactat",
        "filetype" | "ft" => "filetype",
        _ => return None,
    })
}

impl Options {
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
