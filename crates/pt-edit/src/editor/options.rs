//! `:set` options and the color palette.

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Background {
    Dark,
    Light,
}

/// Colors as xterm 256-color indexes.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Palette {
    pub cursorline_bg: u8,
    pub number_fg: u8,
    pub current_number_fg: u8,
    pub match_fg: u8,
    pub match_bg: u8,
}

impl Palette {
    /// vim-like defaults: grey numbers, orange cursor line number, yellow search matches.
    pub fn new(bg: Background) -> Self {
        match bg {
            Background::Dark => Self { cursorline_bg: 236, number_fg: 243, current_number_fg: 214, match_fg: 16, match_bg: 220 },
            Background::Light => Self { cursorline_bg: 254, number_fg: 244, current_number_fg: 166, match_fg: 16, match_bg: 228 },
        }
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) struct Options {
    pub number: bool,
    pub relativenumber: bool,
    pub cursorline: bool,
    /// Long lines continue on the next screen rows instead of scrolling sideways.
    pub wrap: bool,
    /// Tab display width, spaces inserted by Tab, and the `>`/`<` shift.
    pub tabstop: usize,
    pub background: Background,
    /// Palette overrides.
    pub cursorlinebg: Option<u8>,
    pub numberfg: Option<u8>,
    pub cursornumberfg: Option<u8>,
}

impl Default for Options {
    fn default() -> Self {
        Self {
            number: true,
            relativenumber: true,
            cursorline: true,
            wrap: true,
            tabstop: 4,
            background: Background::Dark,
            cursorlinebg: None,
            numberfg: None,
            cursornumberfg: None,
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
        "background" | "bg" => "background",
        "cursorlinebg" | "clbg" => "cursorlinebg",
        "numberfg" | "nufg" => "numberfg",
        "cursornumberfg" | "cnufg" => "cursornumberfg",
        _ => return None,
    })
}

impl Options {
    pub fn palette(&self) -> Palette {
        let mut p = Palette::new(self.background);
        p.cursorline_bg = self.cursorlinebg.unwrap_or(p.cursorline_bg);
        p.number_fg = self.numberfg.unwrap_or(p.number_fg);
        p.current_number_fg = self.cursornumberfg.unwrap_or(p.current_number_fg);
        p
    }

    fn flag(&mut self, name: &str) -> Option<&mut bool> {
        match name {
            "number" => Some(&mut self.number),
            "relativenumber" => Some(&mut self.relativenumber),
            "cursorline" => Some(&mut self.cursorline),
            "wrap" => Some(&mut self.wrap),
            _ => None,
        }
    }

    /// `name=value` as `:set name?` shows it (effective colors included).
    fn show(&self, name: &str) -> String {
        let p = self.palette();
        let on = |b: bool, n: &str| if b { n.to_string() } else { format!("no{n}") };
        match name {
            "number" => on(self.number, name),
            "relativenumber" => on(self.relativenumber, name),
            "cursorline" => on(self.cursorline, name),
            "wrap" => on(self.wrap, name),
            "tabstop" => format!("tabstop={}", self.tabstop),
            "background" => format!("background={}", if self.background == Background::Dark { "dark" } else { "light" }),
            "cursorlinebg" => format!("cursorlinebg={}", p.cursorline_bg),
            "numberfg" => format!("numberfg={}", p.number_fg),
            _ => format!("cursornumberfg={}", p.current_number_fg),
        }
    }

    /// Applies the arguments of `:set`. Returns the text to show: queried values, or an error.
    pub fn set(&mut self, args: &str) -> Result<String, String> {
        let mut shown = Vec::new();
        if args.trim().is_empty() {
            for n in ["number", "relativenumber", "cursorline", "tabstop", "background", "cursorlinebg", "numberfg", "cursornumberfg", "wrap"] {
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
                    "cursorlinebg" => self.cursorlinebg = Some(value.parse().map_err(|_| invalid())?),
                    "numberfg" => self.numberfg = Some(value.parse().map_err(|_| invalid())?),
                    "cursornumberfg" => self.cursornumberfg = Some(value.parse().map_err(|_| invalid())?),
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
        assert_eq!(o.set("clbg=17 nufg=18 cnufg=19"), Ok(String::new()));
        assert_eq!(o.palette(), Palette { cursorline_bg: 17, number_fg: 18, current_number_fg: 19, ..Palette::new(Background::Light) });
        assert_eq!(o.set("clbg? nufg? cnufg? bg=dark bg?"), Ok("cursorlinebg=17  numberfg=18  cursornumberfg=19  background=dark".into()));
        assert!(o.set("").unwrap().starts_with("nonumber  relativenumber  nocursorline  tabstop=8"));
    }

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
            ("clbg=256", "Invalid argument: clbg=256"),
            ("nufg=-1", "Invalid argument: nufg=-1"),
            ("cnufg=x", "Invalid argument: cnufg=x"),
            ("nu=1", "Invalid argument: nu=1"),
        ] {
            assert_eq!(o.set(arg), Err(err.into()), "{arg}");
        }
        assert_eq!(o, Options::default());
    }
}
