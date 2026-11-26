//! `:highlight`: highlight groups (Neovim names: `@keyword` for a capture, vim's for the interface), the
//! built-in defaults, and how a group resolves to colors.

use std::collections::HashMap;

use super::syntax::known_capture;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Color {
    /// xterm 256-color index.
    Ansi(u8),
    Rgb(u8, u8, u8),
}

/// Text attributes (`cterm=`, `gui=`), as a bit set.
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct Attrs(u8);

const ATTRS: [(&str, u8); 6] = [("bold", 1), ("italic", 2), ("underline", 4), ("undercurl", 8), ("strikethrough", 16), ("reverse", 32)];

impl Attrs {
    pub const BOLD: Attrs = Attrs(1);
    pub const ITALIC: Attrs = Attrs(2);
    pub const UNDERLINE: Attrs = Attrs(4);
    pub const UNDERCURL: Attrs = Attrs(8);
    pub const STRIKETHROUGH: Attrs = Attrs(16);
    pub const REVERSE: Attrs = Attrs(32);

    pub fn has(self, a: Attrs) -> bool {
        self.0 & a.0 != 0
    }

    /// `bold,italic`, `NONE`; names are case-insensitive and `inverse` is `reverse`.
    fn parse(value: &str) -> Option<Attrs> {
        let mut bits = 0;
        for w in value.split(',') {
            let w = w.to_ascii_lowercase();
            bits |= match w.as_str() {
                "none" => 0,
                "inverse" => 32,
                _ => ATTRS.iter().find(|(n, _)| *n == w)?.1,
            };
        }
        Some(Attrs(bits))
    }

    fn show(self) -> String {
        if self.0 == 0 { "NONE".into() } else { ATTRS.iter().filter(|(_, b)| self.0 & b != 0).map(|(n, _)| *n).collect::<Vec<_>>().join(",") }
    }
}

/// What a group draws: colors and attributes, after links and the `termguicolors` choice.
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct Style {
    pub fg: Option<Color>,
    pub bg: Option<Color>,
    pub attrs: Attrs,
}

impl Style {
    #[cfg(test)]
    pub fn fg(c: u8) -> Self {
        Style { fg: Some(Color::Ansi(c)), ..Default::default() }
    }
}

/// How colors are chosen: the default group set (`background`) and `cterm` or `gui` values (`termguicolors`).
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Env {
    pub light: bool,
    pub gui: bool,
}

impl Env {
    #[cfg(test)]
    pub const DARK: Env = Env { light: false, gui: false };
    #[cfg(test)]
    pub const LIGHT: Env = Env { light: true, gui: false };
}

/// A key not given (`None`) keeps what the group had; `NONE` is `Some(None)`.
type Slot<T> = Option<Option<T>>;

#[derive(Clone, Debug, Default, PartialEq, Eq)]
struct Group {
    ctermfg: Slot<u8>,
    ctermbg: Slot<u8>,
    cterm: Option<Attrs>,
    guifg: Slot<[u8; 3]>,
    guibg: Slot<[u8; 3]>,
    /// Accepted and checked, not drawn: a terminal has no special (underline) color here.
    guisp: Slot<[u8; 3]>,
    gui: Option<Attrs>,
    link: Option<String>,
}

/// Color names, as (name, xterm index for `cterm*`, RGB for `gui*`): vim's names and the common X11 ones.
const NAMES: &[(&str, u8, [u8; 3])] = &[
    ("black", 0, [0, 0, 0]),
    ("darkblue", 4, [0, 0, 139]),
    ("darkgreen", 2, [0, 100, 0]),
    ("darkcyan", 6, [0, 139, 139]),
    ("darkred", 1, [139, 0, 0]),
    ("darkmagenta", 5, [139, 0, 139]),
    ("brown", 3, [165, 42, 42]),
    ("darkyellow", 3, [139, 139, 0]),
    ("lightgray", 7, [211, 211, 211]),
    ("lightgrey", 7, [211, 211, 211]),
    ("gray", 7, [190, 190, 190]),
    ("grey", 7, [190, 190, 190]),
    ("darkgray", 8, [169, 169, 169]),
    ("darkgrey", 8, [169, 169, 169]),
    ("blue", 12, [0, 0, 255]),
    ("lightblue", 12, [173, 216, 230]),
    ("green", 10, [0, 255, 0]),
    ("lightgreen", 10, [144, 238, 144]),
    ("cyan", 14, [0, 255, 255]),
    ("lightcyan", 14, [224, 255, 255]),
    ("red", 9, [255, 0, 0]),
    ("lightred", 9, [255, 160, 160]),
    ("magenta", 13, [255, 0, 255]),
    ("lightmagenta", 13, [255, 187, 255]),
    ("yellow", 11, [255, 255, 0]),
    ("lightyellow", 11, [255, 255, 224]),
    ("white", 15, [255, 255, 255]),
    ("orange", 208, [255, 165, 0]),
    ("purple", 93, [160, 32, 240]),
    ("violet", 177, [238, 130, 238]),
    ("seagreen", 29, [46, 139, 87]),
    ("slateblue", 62, [106, 90, 205]),
];

fn name(value: &str) -> Option<&'static (&'static str, u8, [u8; 3])> {
    NAMES.iter().find(|(n, ..)| value.eq_ignore_ascii_case(n))
}

/// `#rrggbb` or a color name.
fn parse_rgb(value: &str) -> Option<[u8; 3]> {
    match value.strip_prefix('#') {
        Some(h) if h.len() == 6 && h.bytes().all(|b| b.is_ascii_hexdigit()) => {
            let n = u32::from_str_radix(h, 16).ok()?;
            Some([(n >> 16) as u8, (n >> 8) as u8, n as u8])
        }
        Some(_) => None,
        None => name(value).map(|(.., c)| *c),
    }
}

/// 0–255 or a color name.
fn parse_index(value: &str) -> Option<u8> {
    value.parse().ok().or_else(|| name(value).map(|(_, i, _)| *i))
}

fn rgb(c: [u8; 3]) -> Color {
    Color::Rgb(c[0], c[1], c[2])
}

impl Group {
    fn linked(to: &str) -> Self {
        Group { link: Some(to.into()), ..Default::default() }
    }

    fn cterm(fg: Option<u8>, bg: Option<u8>, attrs: Attrs) -> Self {
        Group { ctermfg: fg.map(Some), ctermbg: bg.map(Some), cterm: Some(attrs), ..Default::default() }
    }

    /// Under `gui`, the `gui*` values, and the `cterm*` ones where those are not given.
    fn style(&self, gui: bool) -> Style {
        let gfg = self.guifg.filter(|_| gui).map(|c| c.map(rgb));
        let gbg = self.guibg.filter(|_| gui).map(|c| c.map(rgb));
        Style {
            fg: gfg.unwrap_or_else(|| self.ctermfg.flatten().map(Color::Ansi)),
            bg: gbg.unwrap_or_else(|| self.ctermbg.flatten().map(Color::Ansi)),
            attrs: self.gui.filter(|_| gui).or(self.cterm).unwrap_or_default(),
        }
    }

    /// `key=value` of `:highlight`; any attribute makes the group stand on its own (a link is dropped).
    fn set(&mut self, key: &str, value: &str) -> Option<()> {
        let none = value.eq_ignore_ascii_case("none");
        match key.to_ascii_lowercase().as_str() {
            "ctermfg" => self.ctermfg = Some(if none { None } else { Some(parse_index(value)?) }),
            "ctermbg" => self.ctermbg = Some(if none { None } else { Some(parse_index(value)?) }),
            "guifg" => self.guifg = Some(if none { None } else { Some(parse_rgb(value)?) }),
            "guibg" => self.guibg = Some(if none { None } else { Some(parse_rgb(value)?) }),
            "guisp" => self.guisp = Some(if none { None } else { Some(parse_rgb(value)?) }),
            "cterm" => self.cterm = Some(Attrs::parse(value)?),
            "gui" => self.gui = Some(Attrs::parse(value)?),
            _ => return None,
        }
        self.link = None;
        Some(())
    }

    /// `ctermfg=1 cterm=bold` or `links to X`; `cleared` for a group with nothing.
    fn show(&self) -> String {
        let hex = |c: [u8; 3]| format!("#{:02x}{:02x}{:02x}", c[0], c[1], c[2]);
        let color = |v: Slot<u8>| v.map(|c| c.map_or("NONE".into(), |c| c.to_string()));
        let mut parts = Vec::new();
        for (k, v) in [("ctermfg", color(self.ctermfg)), ("ctermbg", color(self.ctermbg))] {
            parts.extend(v.map(|v| format!("{k}={v}")));
        }
        parts.extend(self.cterm.map(|a| format!("cterm={}", a.show())));
        for (k, v) in [("guifg", self.guifg), ("guibg", self.guibg), ("guisp", self.guisp)] {
            parts.extend(v.map(|c| format!("{k}={}", c.map_or("NONE".into(), hex))));
        }
        parts.extend(self.gui.map(|a| format!("gui={}", a.show())));
        parts.extend(self.link.as_ref().map(|l| format!("links to {l}")));
        if parts.is_empty() { "cleared".into() } else { parts.join(" ") }
    }
}

/// Default colors of the capture groups, as xterm 256 indexes (dark, light), by longest known name prefix.
const CAPTURE_COLORS: &[(&str, (u8, u8))] = &[
    ("keyword", (176, 127)),
    ("function", (75, 25)),
    ("constructor", (179, 94)),
    ("type", (179, 94)),
    ("namespace", (179, 94)),
    ("module", (179, 94)),
    ("string", (114, 28)),
    ("comment", (244, 245)),
    ("constant", (209, 166)),
    ("number", (209, 166)),
    ("variable.builtin", (209, 166)),
    ("property", (110, 31)),
    ("variable.other.member", (110, 31)),
    ("variable.parameter", (216, 130)),
    ("parameter", (216, 130)),
    ("operator", (146, 60)),
    ("repeat", (176, 127)),
    ("keyframes", (176, 127)),
    ("media", (176, 127)),
    ("import", (176, 127)),
    ("charset", (176, 127)),
    ("supports", (176, 127)),
    ("conditional", (176, 127)),
    ("exception", (176, 127)),
    ("include", (176, 127)),
    ("define", (176, 127)),
    ("preproc", (176, 127)),
    ("storageclass", (176, 127)),
    ("boolean", (209, 166)),
    ("float", (209, 166)),
    ("character", (114, 28)),
    ("field", (110, 31)),
    ("method", (75, 25)),
    ("text.title", (75, 25)),
    ("text.strong", (209, 166)),
    ("text.emphasis", (176, 127)),
    ("text.literal", (114, 28)),
    ("text.uri", (110, 31)),
    ("text.reference", (110, 31)),
    ("attribute", (179, 94)),
    ("tag", (168, 125)),
    ("label", (75, 25)),
    ("escape", (73, 30)),
    ("markup.heading", (75, 25)),
    ("markup.bold", (209, 166)),
    ("markup.italic", (176, 127)),
    ("markup.raw", (114, 28)),
    ("markup.link", (110, 31)),
    ("markup.quote", (244, 245)),
];

/// Built-in groups for the dark (0) or light (1) background: the capture colors and the interface.
fn defaults(i: usize) -> HashMap<String, Group> {
    let pick = |c: (u8, u8)| [c.0, c.1][i];
    let mut m: HashMap<String, Group> =
        CAPTURE_COLORS.iter().map(|(n, c)| (format!("@{n}"), Group::cterm(Some(pick((c.0, c.1))), None, Attrs::default()))).collect();
    let mut ui = |name: &str, fg: Option<u8>, bg: Option<u8>, attrs: Attrs| m.insert(name.into(), Group::cterm(fg, bg, attrs));
    ui("Normal", None, None, Attrs::default());
    ui("LineNr", Some([243, 244][i]), None, Attrs::default());
    ui("CursorLineNr", Some([214, 166][i]), None, Attrs::BOLD);
    ui("CursorLine", None, Some([236, 254][i]), Attrs::default());
    ui("Search", Some(16), Some([220, 228][i]), Attrs::default());
    ui("Visual", None, None, Attrs::REVERSE);
    ui("StatusLine", None, None, Attrs::REVERSE);
    ui("StatusLineNC", Some([243, 244][i]), None, Attrs::default());
    ui("VertSplit", Some([243, 244][i]), None, Attrs::default());
    ui("ErrorMsg", Some(15), Some(1), Attrs::default());
    ui("WarningMsg", Some([203, 160][i]), None, Attrs::default());
    ui("ModeMsg", None, None, Attrs::BOLD);
    ui("MoreMsg", Some([114, 28][i]), None, Attrs::BOLD);
    ui("Pmenu", Some([252, 0][i]), Some([238, 250][i]), Attrs::default());
    ui("PmenuSel", Some(0), Some([117, 153][i]), Attrs::default());
    ui("PmenuSbar", None, Some([240, 247][i]), Attrs::default());
    ui("PmenuThumb", None, Some([250, 238][i]), Attrs::default());
    ui("WildMenu", Some(16), Some([226, 221][i]), Attrs::default());
    m
}

/// Links followed before a chain counts as a cycle.
const MAX_LINKS: usize = 16;

/// The highlight groups: the built-in ones for each background, and the user's `:highlight` on top.
pub struct Highlights {
    defaults: [HashMap<String, Group>; 2],
    user: HashMap<String, Group>,
    /// Counts the changes, for the caches of what was drawn with them.
    generation: u64,
}

impl Default for Highlights {
    fn default() -> Self {
        Highlights { defaults: [defaults(0), defaults(1)], user: HashMap::new(), generation: 0 }
    }
}

/// A group name: `[A-Za-z0-9_.]+`, with `@` first for a capture, which must be a known one.
fn check_name(name: &str) -> Result<(), String> {
    let body = name.strip_prefix('@').unwrap_or(name);
    if body.is_empty() || !body.chars().all(|c| c.is_ascii_alphanumeric() || matches!(c, '_' | '.')) {
        Err(format!("Invalid argument: {name}"))
    } else if name.starts_with('@') && !known_capture(body) {
        Err(format!("Unknown capture: {name}"))
    } else {
        Ok(())
    }
}

impl Highlights {
    /// Every group name, built-in and user, sorted (for completion).
    pub fn group_names(&self) -> Vec<String> {
        let mut names: Vec<String> = self.defaults[0].keys().chain(self.user.keys()).cloned().collect();
        names.sort();
        names.dedup();
        names
    }

    /// The color names `:highlight` takes.
    pub fn color_names() -> impl Iterator<Item = &'static str> {
        NAMES.iter().map(|n| n.0)
    }

    /// The `cterm`/`gui` attribute names.
    pub fn attr_names() -> impl Iterator<Item = &'static str> {
        ATTRS.iter().map(|a| a.0)
    }

    pub fn generation(&self) -> u64 {
        self.generation
    }

    fn group(&self, name: &str, light: bool) -> Option<&Group> {
        self.user.get(name).or_else(|| self.defaults[light as usize].get(name))
    }

    /// What group `name` draws, `None` when it is not defined (or links in a circle).
    pub fn style(&self, name: &str, env: Env) -> Option<Style> {
        let mut n = name;
        for _ in 0..MAX_LINKS {
            let g = self.group(n, env.light)?;
            match &g.link {
                Some(to) => n = to,
                None => return Some(g.style(env.gui)),
            }
        }
        None
    }

    /// What a capture is drawn with: group `@name`, else the one of the longest prefix that has one
    /// (`@function` for `@function.method`); `None` leaves the text as it is.
    pub fn capture(&self, name: &str, env: Env) -> Option<Style> {
        let mut n = format!("@{name}");
        loop {
            if self.group(&n, env.light).is_some() {
                return self.style(&n, env);
            }
            n.truncate(n.rfind('.')?);
        }
    }

    /// `:highlight` with `args`: returns what it shows.
    pub fn command(&mut self, args: &str, light: bool) -> Result<String, String> {
        let mut words: Vec<&str> = args.split_whitespace().collect();
        let default = words.first() == Some(&"default");
        if default {
            words.remove(0);
        }
        let show = |s: &Self, name: &str| {
            let g = s.group(name, light);
            format!("{name} {}", g.map_or("cleared".into(), Group::show))
        };
        let changed = |s: &mut Self| {
            s.generation += 1;
            Ok(String::new())
        };
        match words.as_slice() {
            [] => {
                // The built-in groups (~60) are asked for by name.
                let mut names: Vec<&String> = self.user.keys().collect();
                names.sort();
                Ok(if names.is_empty() { "No user highlight groups".into() } else { names.into_iter().map(|n| show(self, n)).collect::<Vec<_>>().join("\n") })
            }
            ["clear"] => {
                self.user.clear();
                changed(self)
            }
            ["clear", name] => {
                check_name(name)?;
                self.user.remove(*name);
                changed(self)
            }
            ["link", from, to] => {
                check_name(from)?;
                if default && self.user.contains_key(*from) {
                    return Ok(String::new());
                }
                let group = if *to == "NONE" {
                    Group::default()
                } else {
                    check_name(to)?;
                    Group::linked(to)
                };
                self.user.insert(from.to_string(), group);
                changed(self)
            }
            ["link", ..] => Err(format!("Invalid argument: {args}")),
            [name] => {
                check_name(name)?;
                Ok(show(self, name))
            }
            [name, keys @ ..] => {
                check_name(name)?;
                if default && self.user.contains_key(*name) {
                    return Ok(String::new());
                }
                // The other keys stay as the group had them, the built-in group included.
                let mut g = self.group(name, light).cloned().unwrap_or_default();
                for k in keys {
                    let (key, value) = k.split_once('=').ok_or_else(|| format!("Invalid argument: {k}"))?;
                    g.set(key, value).ok_or_else(|| format!("Invalid argument: {k}"))?;
                }
                self.user.insert(name.to_string(), g);
                changed(self)
            }
        }
    }
}

/// The interface groups, resolved.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub struct Ui {
    pub normal: Style,
    pub line_nr: Style,
    pub cursor_line_nr: Style,
    pub cursor_line: Style,
    pub visual: Style,
    pub search: Style,
    pub status: Style,
    pub status_nc: Style,
    pub split: Style,
    pub error_msg: Style,
    pub warning_msg: Style,
    pub mode_msg: Style,
    pub more_msg: Style,
    pub pmenu: Style,
    pub pmenu_sel: Style,
    pub pmenu_sbar: Style,
    pub pmenu_thumb: Style,
    pub wild_menu: Style,
}

impl Ui {
    pub fn new(hl: &Highlights, env: Env) -> Self {
        let s = |n: &str| hl.style(n, env).unwrap_or_default();
        Ui {
            normal: s("Normal"),
            line_nr: s("LineNr"),
            cursor_line_nr: s("CursorLineNr"),
            cursor_line: s("CursorLine"),
            visual: s("Visual"),
            search: s("Search"),
            status: s("StatusLine"),
            status_nc: s("StatusLineNC"),
            split: s("VertSplit"),
            error_msg: s("ErrorMsg"),
            warning_msg: s("WarningMsg"),
            mode_msg: s("ModeMsg"),
            more_msg: s("MoreMsg"),
            pmenu: s("Pmenu"),
            pmenu_sel: s("PmenuSel"),
            pmenu_sbar: s("PmenuSbar"),
            pmenu_thumb: s("PmenuThumb"),
            wild_menu: s("WildMenu"),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn cmd(h: &mut Highlights, a: &str) -> Result<String, String> {
        h.command(a, false)
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn defaults_per_background_and_prefix_fallback() {
        let h = Highlights::default();
        assert_eq!(h.capture("keyword", Env::DARK), Some(Style::fg(176)));
        assert_eq!(h.capture("keyword", Env::LIGHT), Some(Style::fg(127)));
        assert_eq!(h.capture("function.method", Env::DARK), Some(Style::fg(75)), "@function.method falls back to @function");
        assert_eq!(h.capture("variable.builtin.x", Env::DARK), Some(Style::fg(209)));
        assert_eq!(h.capture("spell", Env::DARK), None);
        assert_eq!(h.style("Visual", Env::DARK).unwrap().attrs, Attrs::REVERSE);
        assert_eq!(h.style("CursorLineNr", Env::DARK).unwrap().attrs, Attrs::BOLD);
        assert_eq!(h.style("Nope", Env::DARK), None);
        let ui = Ui::new(&h, Env::LIGHT);
        assert_eq!((ui.cursor_line.bg, ui.search.bg, ui.normal), (Some(Color::Ansi(254)), Some(Color::Ansi(228)), Style::default()));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn keys_values_and_errors() {
        let mut h = Highlights::default();
        assert_eq!(cmd(&mut h, "Foo ctermfg=1 ctermbg=NONE cterm=bold,Italic guifg=#FF8800 guibg=none gui=underline,undercurl,strikethrough,inverse"), Ok(String::new()));
        assert_eq!(
            cmd(&mut h, "Foo"),
            Ok("Foo ctermfg=1 ctermbg=NONE cterm=bold,italic guifg=#ff8800 guibg=NONE gui=underline,undercurl,strikethrough,reverse".into())
        );
        for bad in ["Foo ctermfg=256", "Foo ctermfg=x", "Foo guifg=reddish", "Foo guisp=#12", "Foo guisp=x", "Foo ctermbg=nocolor", "Foo guifg=#12345", "Foo guifg=#12345g", "Foo cterm=bolder", "Foo cterm=", "Foo color=1", "Foo ctermfg", "bad-name ctermfg=1", "@ ctermfg=1", "link A", "link"] {
            assert!(cmd(&mut h, bad).unwrap_err().starts_with("Invalid argument"), "{bad}");
        }
        assert_eq!(cmd(&mut h, "@keywrod ctermfg=1"), Err("Unknown capture: @keywrod".into()));
        assert_eq!(cmd(&mut h, "Bar"), Ok("Bar cleared".into()));
        assert_eq!(cmd(&mut h, "NONE_X cterm=NONE"), Ok(String::new()));
        assert_eq!(cmd(&mut h, "NONE_X"), Ok("NONE_X cterm=NONE".into()));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn color_names_and_guisp() {
        let mut h = Highlights::default();
        let gui = Env { light: false, gui: true };
        cmd(&mut h, "Foo ctermfg=DarkBlue ctermbg=lightgray guifg=Red guibg=SeaGreen guisp=#ff00ff").unwrap();
        assert_eq!(cmd(&mut h, "Foo"), Ok("Foo ctermfg=4 ctermbg=7 guifg=#ff0000 guibg=#2e8b57 guisp=#ff00ff".into()));
        let (c, g) = (h.style("Foo", Env::DARK).unwrap(), h.style("Foo", gui).unwrap());
        assert_eq!((c.fg, c.bg), (Some(Color::Ansi(4)), Some(Color::Ansi(7))));
        assert_eq!((g.fg, g.bg), (Some(Color::Rgb(255, 0, 0)), Some(Color::Rgb(46, 139, 87))));
        // `guisp` is kept and shown, never drawn; NONE clears it.
        cmd(&mut h, "Foo guisp=NONE").unwrap();
        assert_eq!(cmd(&mut h, "Foo"), Ok("Foo ctermfg=4 ctermbg=7 guifg=#ff0000 guibg=#2e8b57 guisp=NONE".into()));
        assert_eq!(h.style("Foo", gui).unwrap().fg, Some(Color::Rgb(255, 0, 0)));
        // Every name resolves, case-insensitively, in both forms.
        for (n, i, c) in NAMES {
            assert_eq!((parse_index(&n.to_uppercase()), parse_rgb(n)), (Some(*i), Some(*c)), "{n}");
        }
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn user_groups_win_and_merge_with_the_built_in_one() {
        let mut h = Highlights::default();
        let g = h.generation();
        cmd(&mut h, "@keyword cterm=bold").unwrap();
        assert!(h.generation() > g);
        let st = h.capture("keyword", Env::DARK).unwrap();
        assert_eq!((st.fg, st.attrs), (Some(Color::Ansi(176)), Attrs::BOLD), "ctermfg kept from the built-in group");
        cmd(&mut h, "@keyword ctermfg=NONE").unwrap();
        assert_eq!(h.capture("keyword", Env::DARK).unwrap().fg, None);
        // A user group with nothing in it is plain, and wins over the prefix.
        cmd(&mut h, "@function.method ctermfg=NONE cterm=NONE").unwrap();
        assert_eq!(h.capture("function.method", Env::DARK), Some(Style::default()));
        // `default` only sets what the user has not.
        cmd(&mut h, "default @keyword ctermfg=5").unwrap();
        assert_eq!(h.capture("keyword", Env::DARK).unwrap().fg, None);
        cmd(&mut h, "default Fresh ctermfg=5").unwrap();
        assert_eq!(h.style("Fresh", Env::DARK), Some(Style::fg(5)));
        // Clearing brings the built-in group back.
        cmd(&mut h, "clear @keyword").unwrap();
        assert_eq!(h.capture("keyword", Env::DARK), Some(Style::fg(176)));
        cmd(&mut h, "clear").unwrap();
        assert_eq!(h.style("Fresh", Env::DARK), None);
        assert_eq!(cmd(&mut h, "clear @keywrod"), Err("Unknown capture: @keywrod".into()));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn links() {
        let mut h = Highlights::default();
        cmd(&mut h, "link A B").unwrap();
        cmd(&mut h, "link B @string").unwrap();
        assert_eq!(h.style("A", Env::DARK), Some(Style::fg(114)));
        assert_eq!(cmd(&mut h, "A"), Ok("A links to B".into()));
        // A cycle draws nothing; any attribute drops the link.
        cmd(&mut h, "link @string A").unwrap();
        assert_eq!(h.style("A", Env::DARK), None);
        assert_eq!(h.capture("string", Env::DARK), None);
        cmd(&mut h, "A ctermfg=7").unwrap();
        assert_eq!(h.style("A", Env::DARK), Some(Style::fg(7)));
        assert_eq!(h.capture("string", Env::DARK), Some(Style::fg(7)));
        // `link X NONE` unlinks and clears; `default link` keeps an existing definition.
        cmd(&mut h, "link A NONE").unwrap();
        assert_eq!(h.style("A", Env::DARK), Some(Style::default()));
        cmd(&mut h, "default link A B").unwrap();
        assert_eq!(h.style("A", Env::DARK), Some(Style::default()));
        cmd(&mut h, "default link C B").unwrap();
        assert_eq!(cmd(&mut h, "C"), Ok("C links to B".into()));
        assert_eq!(cmd(&mut h, "link @keywrod A"), Err("Unknown capture: @keywrod".into()));
        assert_eq!(cmd(&mut h, "link A @keywrod"), Err("Unknown capture: @keywrod".into()));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn gui_colors_fall_back_to_cterm() {
        let mut h = Highlights::default();
        let gui = Env { light: false, gui: true };
        cmd(&mut h, "Foo ctermfg=1 ctermbg=2 cterm=bold guifg=#010203").unwrap();
        let (c, g) = (h.style("Foo", Env::DARK).unwrap(), h.style("Foo", gui).unwrap());
        assert_eq!((c.fg, c.bg, c.attrs), (Some(Color::Ansi(1)), Some(Color::Ansi(2)), Attrs::BOLD));
        assert_eq!((g.fg, g.bg, g.attrs), (Some(Color::Rgb(1, 2, 3)), Some(Color::Ansi(2)), Attrs::BOLD));
        cmd(&mut h, "Foo guibg=NONE gui=italic").unwrap();
        let g = h.style("Foo", gui).unwrap();
        assert_eq!((g.bg, g.attrs), (None, Attrs::ITALIC));
        assert_eq!(h.style("Foo", Env::DARK).unwrap().attrs, Attrs::BOLD);
        assert!(Attrs::BOLD.has(Attrs::BOLD) && !Attrs::BOLD.has(Attrs::ITALIC));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn listing() {
        let mut h = Highlights::default();
        cmd(&mut h, "Zed ctermfg=1").unwrap();
        assert_eq!(cmd(&mut Highlights::default(), ""), Ok("No user highlight groups".into()));
        cmd(&mut h, "Abc cterm=bold").unwrap();
        assert_eq!(cmd(&mut h, ""), Ok("Abc cterm=bold\nZed ctermfg=1".into()));
        assert_eq!(cmd(&mut h, "LineNr"), Ok("LineNr ctermfg=243 cterm=NONE".into()));
        assert_eq!(h.command("Search", true), Ok("Search ctermfg=16 ctermbg=228 cterm=NONE".into()));
    }
}
