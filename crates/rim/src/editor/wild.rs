//! Command-line completion: the candidates for the word before the cursor (`wild`'s sources), the
//! steps of `wildmode`, the menu (`wildmenu`, `wildoptions`), `wildignore` and `wildchar`.

use std::fs;

use crossterm::event::{KeyCode, KeyEvent, KeyModifiers};
use nucleo_matcher::{
    Config, Matcher,
    pattern::{AtomKind, CaseMatching, Normalization, Pattern},
};

use super::{
    Editor, Mode, ex, filetype,
    highlight::Highlights,
    options,
};

// ---- options ----------------------------------------------------------------------------------

/// What one press of `wildchar` does (an entry of `wildmode`).
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub(super) struct Step {
    pub full: bool,
    pub longest: bool,
    pub list: bool,
    /// Buffer names come most recently used first.
    pub lastused: bool,
}

const MODE_WORDS: &[&str] = &["full", "longest", "list", "lastused"];

/// `wildmode`: up to four entries of `:`-joined `full`, `longest`, `list`, `lastused` (an empty
/// entry completes the first match).
pub(super) fn parse_mode(s: &str) -> Option<Vec<Step>> {
    let steps: Vec<&str> = s.split(',').collect();
    if steps.len() > 4 {
        return None;
    }
    steps
        .into_iter()
        .map(|st| {
            let mut step = Step::default();
            if !st.is_empty() {
                for w in st.split(':') {
                    match w {
                        "full" => step.full = true,
                        "longest" => step.longest = true,
                        "list" => step.list = true,
                        "lastused" => (step.full, step.lastused) = (true, true),
                        _ => return None,
                    }
                }
            }
            Some(step)
        })
        .collect()
}

pub(super) fn valid_mode(s: &str) -> bool {
    parse_mode(s).is_some()
}

pub(super) fn valid_options(s: &str) -> bool {
    s.is_empty() || s.split(',').all(|o| matches!(o, "pum" | "tagfile" | "fuzzy"))
}

/// A key as written for `wildchar`: `<Tab>`, `<S-Tab>`, `<C-x>`, `<Esc>`, `<CR>`, `<Space>`, or its code.
pub(super) fn parse_key(s: &str) -> Option<(KeyCode, bool)> {
    let ctrl_letter = |c: char| c.is_ascii_alphabetic().then(|| (KeyCode::Char(c.to_ascii_lowercase()), true));
    if let Some(inner) = s.strip_prefix('<').and_then(|r| r.strip_suffix('>')) {
        return match inner.to_ascii_lowercase().as_str() {
            "tab" => Some((KeyCode::Tab, false)),
            "s-tab" => Some((KeyCode::BackTab, false)),
            "esc" => Some((KeyCode::Esc, false)),
            "cr" | "enter" => Some((KeyCode::Enter, false)),
            "space" => Some((KeyCode::Char(' '), false)),
            c => {
                let mut it = c.strip_prefix("c-")?.chars();
                ctrl_letter(it.next().filter(|_| it.next().is_none())?)
            }
        };
    }
    let n: u32 = s.parse().ok()?;
    match n {
        9 => Some((KeyCode::Tab, false)),
        27 => Some((KeyCode::Esc, false)),
        13 => Some((KeyCode::Enter, false)),
        1..=26 => ctrl_letter(char::from(b'a' + n as u8 - 1)),
        n => char::from_u32(n).filter(|c| !c.is_control()).map(|c| (KeyCode::Char(c), false)),
    }
}

pub(super) fn key_is(spec: &str, key: KeyEvent) -> bool {
    let Some((code, ctrl)) = parse_key(spec) else { return false };
    key.code == code && (code == KeyCode::BackTab || key.modifiers.contains(KeyModifiers::CONTROL) == ctrl)
}

// ---- globs and matching -----------------------------------------------------------------------

/// `*`, `?` and `[abc]` / `[a-z]` / `[!a]` against all of `text`; `*` and `?` stay inside a path
/// component, `**` crosses `/`.
fn glob(pat: &[char], text: &[char]) -> bool {
    match pat.first() {
        None => text.is_empty(),
        Some('*') if pat.get(1) == Some(&'*') => {
            let rest = pat.iter().position(|&c| c != '*').map_or(&pat[pat.len()..], |i| &pat[i..]);
            (0..=text.len()).any(|i| glob(rest, &text[i..]))
        }
        Some('*') => (0..=text.len()).take_while(|&i| i == 0 || text[i - 1] != '/').any(|i| glob(&pat[1..], &text[i..])),
        Some('?') => text.first().is_some_and(|&c| c != '/') && glob(&pat[1..], &text[1..]),
        Some('[') => {
            let Some(end) = pat[1..].iter().position(|&c| c == ']').map(|i| i + 1) else {
                return text.first() == Some(&'[') && glob(&pat[1..], &text[1..]);
            };
            let Some(&c) = text.first() else { return false };
            let (neg, set) = match pat[1..end].split_first() {
                Some(('!' | '^', rest)) => (true, rest),
                _ => (false, &pat[1..end]),
            };
            let mut hit = false;
            let mut i = 0;
            while i < set.len() {
                if set.get(i + 1) == Some(&'-') && i + 2 < set.len() {
                    hit |= (set[i]..=set[i + 2]).contains(&c);
                    i += 3;
                } else {
                    hit |= set[i] == c;
                    i += 1;
                }
            }
            hit != neg && glob(&pat[end + 1..], &text[1..])
        }
        Some(&p) => text.first() == Some(&p) && glob(&pat[1..], &text[1..]),
    }
}

/// Whether `wildignore` (comma separated globs) rules out `dir` + `name`: a glob with a `/` is
/// matched against the whole path, the others against the name.
pub(super) fn ignored(wildignore: &str, dir: &str, name: &str, ic: bool) -> bool {
    let low = |s: &str| -> Vec<char> { if ic { s.to_lowercase() } else { s.to_string() }.chars().collect() };
    let (full, name) = (low(&format!("{dir}{name}")), low(name));
    wildignore.split(',').filter(|g| !g.is_empty()).any(|g| {
        let g = low(g);
        glob(&g, if g.contains(&'/') { &full } else { &name })
    })
}

/// `items` that match `token`: those it is a prefix of, or (`fuzzy`) fuzzy matches, best first;
/// `anywhere` (buffer names) takes the ones that contain it.
fn filter(items: impl IntoIterator<Item = String>, token: &str, fuzzy: bool, anywhere: bool, ic: bool) -> Vec<String> {
    if fuzzy && !token.is_empty() {
        let mut matcher = Matcher::new(Config::DEFAULT);
        let pattern = Pattern::new(token, CaseMatching::Ignore, Normalization::Smart, AtomKind::Fuzzy);
        let mut hits = pattern.match_list(items, &mut matcher);
        hits.sort_by(|a, b| b.1.cmp(&a.1).then_with(|| a.0.cmp(&b.0)));
        return hits.into_iter().map(|h| h.0).collect();
    }
    let low = |s: &str| if ic || anywhere { s.to_lowercase() } else { s.to_string() };
    let token = low(token);
    items.into_iter().filter(|i| if anywhere { low(i).contains(&token) } else { low(i).starts_with(&token) }).collect()
}

/// The longest text all `items` start with.
fn common_prefix(items: &[String]) -> String {
    let Some((first, rest)) = items.split_first() else { return String::new() };
    let mut end = first.len();
    for it in rest {
        end = end.min(first.char_indices().zip(it.chars()).take_while(|&((_, a), b)| a == b).last().map_or(0, |((i, c), _)| i + c.len_utf8()));
    }
    first[..end].to_string()
}

// ---- candidates -------------------------------------------------------------------------------

/// Where the word being completed starts in the line, and what it can become.
pub(super) struct Cand {
    pub start: usize,
    pub items: Vec<String>,
}

fn expand_dir(dir: &str) -> String {
    let mut d = dir.to_string();
    if let Some(rest) = d.strip_prefix('~')
        && (rest.is_empty() || rest.starts_with('/'))
        && let Some(home) = std::env::var_os("HOME")
    {
        d = format!("{}{rest}", home.to_string_lossy());
    }
    // `$VAR` up to the next `/`.
    while let Some(i) = d.find('$') {
        let end = d[i + 1..].find(|c: char| !(c.is_ascii_alphanumeric() || c == '_')).map_or(d.len(), |e| i + 1 + e);
        let value = std::env::var(&d[i + 1..end]).unwrap_or_default();
        d.replace_range(i..end, &value);
    }
    d
}

impl Editor {
    fn fuzzy(&self) -> bool {
        self.buf.opts.wildoptions.split(',').any(|o| o == "fuzzy")
    }

    fn file_candidates(&self, token: &str, word: usize) -> Cand {
        let o = &self.buf.opts;
        let (dir, prefix) = match token.rfind('/') {
            Some(i) => (&token[..=i], &token[i + 1..]),
            None => ("", token),
        };
        let real = expand_dir(dir);
        let mut names: Vec<String> = fs::read_dir(if real.is_empty() { "." } else { &real })
            .into_iter()
            .flatten()
            .filter_map(Result::ok)
            .filter_map(|e| {
                let n = e.file_name().into_string().ok()?;
                // Hidden files only when asked for.
                if n.starts_with('.') && !prefix.starts_with('.') || ignored(&o.wildignore, dir, &n, o.wildignorecase) {
                    return None;
                }
                Some(format!("{n}{}", if e.path().is_dir() { "/" } else { "" }))
            })
            .collect();
        names.sort();
        let items = filter(names, prefix, self.fuzzy(), false, o.wildignorecase).into_iter().map(|n| format!("{dir}{n}")).collect();
        Cand { start: word, items }
    }

    fn set_candidates(&self, token: &str, word: usize) -> Cand {
        let fuzzy = self.fuzzy();
        if let Some((name, value)) = token.split_once('=') {
            let name = name.trim_end_matches(['+', '-', '^']);
            let all: Vec<&str> = match name {
                "background" | "bg" => vec!["dark", "light"],
                "buftype" | "bt" => vec!["nofile"],
                "filetype" | "ft" => filetype::ALL.to_vec(),
                "wildmode" | "wim" => MODE_WORDS.iter().copied().chain(["list:full", "list:longest", "longest:full"]).collect(),
                "wildoptions" | "wop" => vec!["pum", "tagfile", "fuzzy"],
                "laststatus" | "ls" => vec!["0", "1", "2"],
                "messagesopt" | "mopt" => vec!["hit-enter", "wait:", "history:"],
                "fileformat" | "ff" => vec!["unix", "dos", "mac"],
                _ => return Cand { start: word, items: Vec::new() },
            };
            // The lists take the part after the last comma.
            let part_at = value.rfind(',').map_or(0, |i| i + 1);
            let start = word + token.len() - value.len() + part_at;
            let items = filter(all.into_iter().map(String::from), &value[part_at..], fuzzy, false, false);
            return Cand { start, items };
        }
        let mut names: Vec<String> = options::NAMES.iter().map(|n| n.0.to_string()).chain(["winfixheight", "winfixwidth", "fileformat"].map(String::from)).collect();
        let flags: Vec<&str> = options::NAMES.iter().filter(|n| n.2).map(|n| n.0).chain(["winfixheight", "winfixwidth"]).collect();
        for (pre, on) in [("no", token.starts_with("no")), ("inv", token.starts_with("inv"))] {
            if on {
                names.extend(flags.iter().map(|f| format!("{pre}{f}")));
            }
        }
        names.sort();
        Cand { start: word, items: filter(names, token, fuzzy, false, false) }
    }

    fn highlight_candidates(&self, token: &str, word: usize, done: &[&str]) -> Cand {
        let fuzzy = self.fuzzy();
        let groups = self.hl_groups.group_names();
        let strs = |v: &[&str]| v.iter().map(|s| s.to_string()).collect::<Vec<_>>();
        let first = done.first().copied().unwrap_or("");
        let (pool, start) = match (done.len(), first) {
            (0, _) => (groups.into_iter().chain(strs(&["clear", "default", "link"])).collect::<Vec<_>>(), word),
            (1, "default") => (groups.into_iter().chain(strs(&["link"])).collect(), word),
            (_, "clear") if done.len() == 1 => (groups, word),
            (1 | 2, "link") => (groups, word),
            (2 | 3, "default") if done.get(1) == Some(&"link") => (groups, word),
            _ => match token.split_once('=') {
                None => (strs(&["ctermfg=", "ctermbg=", "cterm=", "guifg=", "guibg=", "guisp=", "gui="]), word),
                Some((key, value)) => {
                    let values: Vec<String> = match key {
                        "ctermfg" | "ctermbg" | "guifg" | "guibg" | "guisp" => Highlights::color_names().map(String::from).chain(["NONE".into()]).collect(),
                        "cterm" | "gui" => Highlights::attr_names().map(String::from).chain(["NONE".into()]).collect(),
                        _ => Vec::new(),
                    };
                    let at = if matches!(key, "cterm" | "gui") { value.rfind(',').map_or(0, |i| i + 1) } else { 0 };
                    let start = word + key.len() + 1 + at;
                    return Cand { start, items: filter(values, &value[at..], fuzzy, false, true) };
                }
            },
        };
        Cand { start, items: filter(pool, token, fuzzy, false, false) }
    }

    fn buffer_candidates(&self, token: &str, word: usize) -> Cand {
        let mut all: Vec<_> = self.all_buffers().into_iter().filter(|b| b.listed).collect();
        if parse_mode(&self.buf.opts.wildmode).is_some_and(|s| s.iter().any(|st| st.lastused)) {
            // The buffer being edited is the latest one used.
            all.sort_by_key(|b| std::cmp::Reverse(if b.id == self.buf.id { u64::MAX } else { b.used }));
        }
        let names = all.into_iter().map(|b| b.name()).collect::<Vec<_>>();
        Cand { start: word, items: filter(names, token, self.fuzzy(), true, true) }
    }

    /// What the word before the cursor (the end of `line`) can become, or none when no command
    /// takes anything there.
    pub(super) fn candidates(&self, line: &str) -> Option<Cand> {
        let start = line.find(|c: char| c.is_ascii_alphabetic())?;
        let rest = &line[start..];
        let Some(ws) = rest.find(char::is_whitespace) else {
            let names = ex::NAMES.iter().map(|n| n.to_string()).collect::<Vec<_>>();
            return Some(Cand { start, items: filter(names, rest, self.fuzzy(), false, false) });
        };
        let name = rest[..ws].trim_end_matches('!');
        let word = line.rfind(char::is_whitespace).map_or(0, |i| i + 1);
        let token = &line[word..];
        let done: Vec<&str> = rest[ws..][..rest[ws..].len() - token.len().min(rest[ws..].len())].split_whitespace().collect();
        let cand = if ex::FILE_COMMANDS.iter().any(|(short, long)| ex::abbr(name, short, long)) {
            self.file_candidates(token, word)
        } else if ex::abbr(name, "se", "set") {
            self.set_candidates(token, word)
        } else if ex::abbr(name, "hi", "highlight") {
            self.highlight_candidates(token, word, &done)
        } else if ex::abbr(name, "b", "buffer") || ex::abbr(name, "bd", "bdelete") {
            self.buffer_candidates(token, word)
        } else if ex::abbr(name, "sy", "syntax") && done.is_empty() {
            Cand { start: word, items: filter(["on", "off"].map(String::from), token, false, false, false) }
        } else if ex::abbr(name, "mes", "messages") && done.is_empty() {
            Cand { start: word, items: filter(["clear".to_string()], token, false, false, false) }
        } else if ex::abbr(name, "vert", "vertical") && done.is_empty() {
            Cand { start: word, items: filter(["new", "resize", "split"].map(String::from), token, false, false, false) }
        } else {
            return None;
        };
        Some(cand)
    }
}

// ---- state and keys ---------------------------------------------------------------------------

/// A completion going on: the candidates, which one the line shows, and the pieces of the line
/// around the word.
pub(super) struct Wild {
    pub items: Vec<String>,
    /// The candidate on the line; none while it shows the word (typed, or the longest prefix).
    pub sel: Option<usize>,
    /// First candidate drawn by the menu.
    pub top: usize,
    /// The line before the word, the word as typed, the word now, the line after the cursor.
    before: String,
    typed: String,
    word: String,
    after: String,
    /// Entry of `wildmode` the next press does.
    step: usize,
    /// The menu is up, or the list of matches is printed.
    pub menu: bool,
    pub list: bool,
}

impl Wild {
    /// Byte of the line where the word starts.
    pub fn start(&self) -> usize {
        self.before.len()
    }
}

impl Editor {
    fn start_wild(&mut self) -> bool {
        let (line, pos) = (self.line_buf().clone(), self.line_pos);
        let Some(c) = self.candidates(&line[..pos]).filter(|c| !c.items.is_empty()) else { return false };
        let typed = line[c.start..pos].to_string();
        self.wild = Some(Wild {
            items: c.items,
            sel: None,
            top: 0,
            before: line[..c.start].to_string(),
            word: typed.clone(),
            typed,
            after: line[pos..].to_string(),
            step: 0,
            menu: false,
            list: false,
        });
        true
    }

    /// Puts the word of the completion on the line, the cursor after it.
    pub(super) fn wild_apply(&mut self) {
        let Some(w) = &self.wild else { return };
        let word = w.sel.map_or(w.word.as_str(), |i| w.items[i].as_str());
        let (head, line) = (format!("{}{word}", w.before), format!("{}{word}{}", w.before, w.after));
        *self.line_buf() = line;
        self.line_pos = head.len();
    }

    /// The next (`back`: previous) candidate; the typed word comes between the last and the first.
    pub(super) fn wild_cycle(&mut self, back: bool) {
        let Some(w) = &mut self.wild else { return };
        let n = w.items.len();
        w.sel = match (w.sel, back) {
            (None, false) => Some(0),
            (None, true) => Some(n - 1),
            (Some(i), false) => (i + 1 < n).then_some(i + 1),
            (Some(i), true) => i.checked_sub(1),
        };
        if w.sel.is_none() {
            w.word = w.typed.clone();
        }
    }

    /// A press of `wildchar` (`back`: shifted): the first starts the completion, the next ones
    /// follow the entries of `wildmode`.
    fn wild_press(&mut self, back: bool) {
        if self.wild.is_none() && !self.start_wild() {
            return;
        }
        let steps = parse_mode(&self.buf.opts.wildmode).unwrap_or_else(|| vec![Step { full: true, ..Step::default() }]);
        let at = self.wild.as_ref().map_or(0, |w| w.step).min(steps.len() - 1);
        if let Some(w) = &mut self.wild {
            w.step += 1;
        }
        self.wild_step(&steps, at, back);
    }

    fn wild_step(&mut self, steps: &[Step], at: usize, back: bool) {
        let step = steps[at];
        let (n, fuzzy, menu) = (self.wild.as_ref().map_or(0, |w| w.items.len()), self.fuzzy(), self.buf.opts.wildmenu);
        if n == 0 {
            return;
        }
        // A single match is the completion: the word is done, the next press starts afresh.
        if n == 1 {
            if let Some(w) = &mut self.wild {
                w.sel = Some(0);
            }
            self.wild_apply();
            self.wild = None;
            return;
        }
        let empty = step == Step::default();
        if step.list
            && let Some(w) = &mut self.wild
        {
            (w.list, w.menu) = (true, false);
        }
        if step.longest && !fuzzy {
            let Some(w) = &self.wild else { return };
            let common = common_prefix(&w.items);
            let current = w.sel.map_or(&w.word, |i| &w.items[i]);
            if common.len() > current.len() {
                if let Some(w) = &mut self.wild {
                    (w.word, w.sel) = (common, None);
                    w.menu = step.full && menu && !step.list;
                }
                return self.wild_apply();
            }
            // No longer a text: the next entry of `wildmode`.
            if !step.full && at + 1 < steps.len() {
                if let Some(w) = &mut self.wild {
                    w.step = at + 2;
                }
                return self.wild_step(steps, at + 1, back);
            }
        }
        if step.full || empty || (step.longest && fuzzy) {
            if empty {
                if let Some(w) = &mut self.wild {
                    w.sel = Some(0);
                }
            } else {
                self.wild_cycle(back);
            }
            if let Some(w) = &mut self.wild {
                w.menu = menu && !step.list && !empty;
            }
            self.wild_apply();
        }
    }

    /// `Ctrl+D`: the matches of the word before the cursor, listed.
    pub(super) fn wild_list(&mut self) {
        if self.start_wild()
            && let Some(w) = &mut self.wild
        {
            w.list = true;
        }
    }

    /// `Ctrl+A`: every match, separated by spaces.
    pub(super) fn wild_all(&mut self) {
        if self.start_wild()
            && let Some(w) = &mut self.wild
        {
            w.word = w.items.join(" ");
            w.sel = None;
            self.wild_apply();
        }
        self.wild = None;
    }

    /// `Ctrl+L`: the longest text the matches share.
    pub(super) fn wild_longest(&mut self) {
        if self.start_wild()
            && let Some(w) = &mut self.wild
        {
            let common = common_prefix(&w.items);
            if common.len() > w.word.len() || w.items.len() == 1 {
                w.word = if w.items.len() == 1 { w.items[0].clone() } else { common };
                self.wild_apply();
            }
        }
        self.wild = None;
    }

    /// A key on the command line while it is completing or when it starts a completion. True when
    /// it was used up; otherwise a completion going on is over (what the line shows stays) and the key
    /// goes on as usual.
    pub(super) fn wild_key(&mut self, key: KeyEvent) -> bool {
        if !matches!(self.mode, Mode::Command(_)) {
            self.wild = None;
            return false;
        }
        let ctrl = key.modifiers.contains(KeyModifiers::CONTROL);
        let typed = !self.replaying && self.macro_depth == 0;
        let o = &self.buf.opts;
        let press = (typed && key_is(&o.wildchar, key)) || (!o.wildcharm.is_empty() && key_is(&o.wildcharm, key)) || key.code == KeyCode::BackTab;
        if press {
            self.wild_press(key.code == KeyCode::BackTab);
            return true;
        }
        let Some(w) = &self.wild else { return false };
        let shown = w.menu;
        match key.code {
            KeyCode::Char('n') if ctrl => self.wild_cycle(false),
            KeyCode::Char('p') if ctrl => self.wild_cycle(true),
            KeyCode::Down if shown => self.wild_cycle(false),
            KeyCode::Up if shown => self.wild_cycle(true),
            KeyCode::Char('y') if ctrl => {
                self.wild = None;
                return true;
            }
            KeyCode::Char('e') if ctrl => {
                if let Some(w) = &mut self.wild {
                    (w.sel, w.word) = (None, w.typed.clone());
                }
                self.wild_apply();
                self.wild = None;
                return true;
            }
            _ => {
                self.wild = None;
                return false;
            }
        }
        self.wild_apply();
        true
    }
}

/// Rows of `items` in columns, like `:ls` in vim: `width` cells wide, at most `rows` rows.
pub(super) fn list_rows(items: &[String], width: usize, rows: usize) -> Vec<String> {
    let col = items.iter().map(|i| unicode_width::UnicodeWidthStr::width(i.as_str())).max().unwrap_or(0) + 2;
    let per_row = (width / col).max(1);
    let mut out: Vec<String> = items
        .chunks(per_row)
        .map(|row| row.iter().map(|i| format!("{i}{}", " ".repeat(col - unicode_width::UnicodeWidthStr::width(i.as_str())))).collect::<String>().trim_end().to_string())
        .collect();
    out.truncate(rows);
    out
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn modes_keys_globs_and_prefixes() {
        let s = |full, longest, list| Step { full, longest, list, lastused: false };
        assert_eq!(parse_mode("lastused"), Some(vec![Step { full: true, lastused: true, ..Step::default() }]));
        assert_eq!(parse_mode("full"), Some(vec![s(true, false, false)]));
        assert_eq!(parse_mode("longest:full,full"), Some(vec![s(true, true, false), s(true, false, false)]));
        assert_eq!(parse_mode("list:longest,list:full"), Some(vec![s(false, true, true), s(true, false, true)]));
        assert_eq!(parse_mode(""), Some(vec![Step::default()]));
        assert!(parse_mode("a,b,c,d,e").is_none() && parse_mode("fast").is_none());
        assert!(valid_options("pum,tagfile,fuzzy") && valid_options("") && !valid_options("popup"));
        assert_eq!(parse_key("<Tab>"), Some((KeyCode::Tab, false)));
        assert_eq!(parse_key("<S-Tab>"), Some((KeyCode::BackTab, false)));
        assert_eq!(parse_key("<C-Z>"), Some((KeyCode::Char('z'), true)));
        assert_eq!(parse_key("26"), Some((KeyCode::Char('z'), true)));
        assert_eq!(parse_key("9"), Some((KeyCode::Tab, false)));
        assert_eq!(parse_key("120"), Some((KeyCode::Char('x'), false)));
        assert!(parse_key("<Foo>").is_none() && parse_key("zz").is_none() && parse_key("<C-ab>").is_none());
        let g = |p: &str, t: &str| glob(&p.chars().collect::<Vec<_>>(), &t.chars().collect::<Vec<_>>());
        assert!(g("*.o", "a.o") && !g("*.o", "a.c") && g("a?c", "abc") && g("[a-c]x", "bx") && !g("[!a-c]x", "bx") && g("target/**", "target/debug/x") && g("[ab", "[ab"));
        assert!(!g("src/*", "src/a/b") && g("src/**", "src/a/b") && g("**/b", "src/a/b") && !g("a?c", "a/c") && g("*", "") && g("a**", "a"));
        assert!(ignored("*.o,*~", "src/", "a.o", false) && !ignored("*.o", "src/", "a.c", false) && ignored("src/*", "src/", "a.c", false) && ignored("*.O", "", "a.o", true) && !ignored("*.O", "", "a.o", false));
        assert_eq!(common_prefix(&["foobar".into(), "foobaz".into(), "foo".into()]), "foo");
        assert_eq!(common_prefix(&["héllo".into(), "hélp".into()]), "hél");
        assert_eq!(common_prefix(&[]), "");
        let names = || ["alpha".to_string(), "beta".into(), "Alps".into()];
        assert_eq!(filter(names(), "al", false, false, false), ["alpha"]);
        assert_eq!(filter(names(), "al", false, false, true), ["alpha", "Alps"]);
        assert_eq!(filter(names(), "ph", false, true, false), ["alpha"]);
        assert_eq!(filter(names(), "apa", true, false, false), ["alpha"]);
        assert_eq!(filter(names(), "", true, false, false).len(), 3);
        assert_eq!(list_rows(&["a".into(), "bb".into(), "c".into(), "d".into(), "e".into()], 12, 9), ["a   bb  c", "d   e"]);
        assert_eq!(list_rows(&["a".into(), "b".into(), "c".into()], 6, 2), ["a  b", "c"]);
    }
}
