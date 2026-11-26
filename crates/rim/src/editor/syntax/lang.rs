//! A grammar and its queries: loading from the runtime directory, the colors of capture names.

use std::{borrow::Cow, fs, mem, path::Path};

use libloading::{Library, Symbol};
use tree_sitter::{Language, Query};
use tree_sitter_language::LanguageFn;

/// A loaded grammar with its queries.
pub(in crate::editor) struct Lang {
    pub name: String,
    pub(super) language: Language,
    pub(super) highlights: Query,
    /// Color of each highlight capture for the dark and the light palette.
    pub(super) colors: [Vec<Option<u8>>; 2],
    pub(super) objects: Option<Query>,
    pub(super) locals: Option<Query>,
    pub(super) injections: Option<Query>,
    /// What each capture of the locals query is.
    pub(super) local_kinds: Vec<LocalKind>,
}

/// A capture of `locals.scm`.
#[derive(Clone, Copy, PartialEq, Eq)]
pub(in crate::editor) enum LocalKind {
    None,
    Scope,
    Definition,
    Reference,
}

/// Query sources of a grammar; empty means none.
#[derive(Default)]
pub(in crate::editor) struct Queries<'a> {
    pub highlights: &'a str,
    pub locals: &'a str,
    pub injections: &'a str,
    pub objects: &'a str,
}

/// xterm 256-color (dark, light) of a capture name, by its longest known prefix.
pub(super) fn color(name: &str) -> Option<(u8, u8)> {
    const TABLE: &[(&str, (u8, u8))] = &[
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
    let mut n = name;
    loop {
        if let Some((_, c)) = TABLE.iter().find(|(k, _)| *k == n) {
            return Some(*c);
        }
        n = n.rsplit_once('.')?.0;
    }
}

/// Query source of `name`/`file` with its `; inherits:` parents first (depth-limited against cycles).
pub(super) fn read_query(dir: &Path, name: &str, file: &str, depth: usize) -> Option<String> {
    let src = fs::read_to_string(dir.join("queries").join(name).join(file)).ok()?;
    let mut out = String::new();
    // The directive sits among the comments that open the file (helix puts a note before it).
    let directive = src.lines().take_while(|l| l.trim().is_empty() || l.starts_with(';')).find_map(|l| l.strip_prefix("; inherits:"));
    if depth < 8
        && let Some(parents) = directive
    {
        for p in parents.split(',').map(str::trim).filter(|p| valid_name(p)) {
            out.extend(read_query(dir, p, file, depth + 1).map(|q| q + "\n"));
        }
    }
    Some(out + &src)
}

/// Names become file names and symbols: keep them plain.
pub(super) fn valid_name(name: &str) -> bool {
    !name.is_empty() && name.chars().all(|c| c.is_ascii_alphanumeric() || matches!(c, '_' | '-'))
}

impl Lang {
    /// Colors of the captures of the highlights for palette `bg` (0 dark, 1 light): `over` first (capture name
    /// prefixes set with `:set syntaxcolors`, `None` for no color), then the built-in table.
    pub(super) fn capture_colors(&self, bg: usize, over: &[(String, Option<u8>)]) -> Cow<'_, [Option<u8>]> {
        if over.is_empty() {
            return Cow::Borrowed(&self.colors[bg]);
        }
        let by_prefix = |name: &str| {
            let mut n = name;
            loop {
                if let Some((_, c)) = over.iter().rev().find(|(k, _)| k == n) {
                    return Some(*c);
                }
                n = n.rsplit_once('.')?.0;
            }
        };
        Cow::Owned(self.highlights.capture_names().iter().zip(&self.colors[bg]).map(|(n, built)| by_prefix(n).unwrap_or(*built)).collect())
    }

    pub fn new(name: &str, language: Language, q: &Queries) -> Result<Lang, String> {
        let compile = |file: &str, src: &str| Query::new(&language, src).map_err(|e| format!("{name}: {file}: {e}"));
        let optional = |file: &str, src: &str| if src.trim().is_empty() { Ok(None) } else { compile(file, src).map(Some) };
        let highlights = compile("highlights.scm", q.highlights)?;
        let (objects, locals, injections) = (optional("textobjects.scm", q.objects)?, optional("locals.scm", q.locals)?, optional("injections.scm", q.injections)?);
        let colors = [0, 1].map(|i| highlights.capture_names().iter().map(|n| color(n).map(|c| [c.0, c.1][i])).collect());
        let local_kinds = locals.as_ref().map_or_else(Vec::new, |q| {
            q.capture_names()
                .iter()
                .map(|n| match n.strip_prefix("local.").unwrap_or(n) {
                    "scope" => LocalKind::Scope,
                    "reference" => LocalKind::Reference,
                    n if n == "definition" || n.starts_with("definition.") => LocalKind::Definition,
                    _ => LocalKind::None,
                })
                .collect()
        });
        Ok(Lang { name: name.into(), language, highlights, colors, objects, locals, injections, local_kinds })
    }

    /// Loads grammar `name` from `dir`; `Ok(None)` when it is not installed.
    pub fn load(dir: &Path, name: &str) -> Result<Option<Lang>, String> {
        let lib = dir.join("grammars").join(format!("{name}.{}", std::env::consts::DLL_EXTENSION));
        if !valid_name(name) || !lib.is_file() {
            return Ok(None);
        }
        let err = |e: &dyn std::fmt::Display| format!("{}: {e}", lib.display());
        // SAFETY: loading a grammar runs its initializers; it is code the user installed in their config directory.
        let library = unsafe { Library::new(&lib) }.map_err(|e| err(&e))?;
        let language = language_of(library, name).map_err(|e| err(&e))?;
        let read = |file| read_query(dir, name, file, 0).unwrap_or_default();
        let (highlights, locals, injections, objects) = (read("highlights.scm"), read("locals.scm"), read("injections.scm"), read("textobjects.scm"));
        Lang::new(name, language, &Queries { highlights: &highlights, locals: &locals, injections: &injections, objects: &objects }).map(Some)
    }
}

/// The language grammar `name` exports from `library`, which stays loaded for good.
pub(super) fn language_of(library: Library, name: &str) -> Result<Language, libloading::Error> {
    let sym = format!("tree_sitter_{}", name.replace('-', "_"));
    // SAFETY: a tree-sitter grammar exports `tree_sitter_<name>` as `const TSLanguage *(void)`.
    let func: Symbol<unsafe extern "C" fn() -> *const ()> = unsafe { library.get(sym.as_bytes()) }?;
    // SAFETY: same signature as above, and the library is never unloaded (`forget` below), so the pointer stays valid.
    let language = Language::new(unsafe { LanguageFn::from_raw(*func) });
    mem::forget(library);
    Ok(language)
}
