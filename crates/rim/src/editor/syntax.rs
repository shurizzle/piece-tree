//! Syntax highlighting and text objects from tree-sitter grammars loaded at run time.
//!
//! A grammar is a dynamic library `grammars/<name>.so|dylib` exporting `tree_sitter_<name>`, with
//! `queries/<name>/highlights.scm` and optionally `textobjects.scm` next to it (helix names:
//! `@function.inside`, `@function.around`, `@class.*`, `@parameter.*`). A line
//! `; inherits: a,b` (among the leading comments) prepends the queries of `a` and `b`. `locals.scm` (`@local.scope`,
//! `@local.definition`, `@local.reference`) colors a use like its definition; `injections.scm`
//! (`@injection.content`, `@injection.language`, `#set! injection.language|combined|include-children`)
//! parses a region with another grammar. The common grammars are also built in (`builtin.rs`).

use std::{
    cell::RefCell,
    cmp::Reverse,
    collections::{HashMap, HashSet},
    fs, iter, mem,
    ops::Range,
    path::Path,
    rc::Rc,
};

use libloading::{Library, Symbol};
use piece_tree::{Edit, RegexCursor, Text};
use tree_sitter::{InputEdit, Language, Node, Parser, Point, Query, QueryCursor, Range as TsRange, StreamingIterator, TextProvider, Tree};
use tree_sitter_language::LanguageFn;

use super::{Editor, builtin, filetype, graphemes, layout::LONG_LINE, options::Background};

/// Bytes highlighted at most per frame: the rest of a huge visible region stays plain.
// shortcut: lines over `LONG_LINE` bytes and text past this many visible bytes are not highlighted, when they matter
const MAX_HL: usize = 1 << 18;

/// A loaded grammar with its queries.
pub(super) struct Lang {
    pub name: String,
    language: Language,
    highlights: Query,
    /// Color of each highlight capture for the dark and the light palette.
    colors: [Vec<Option<u8>>; 2],
    objects: Option<Query>,
    locals: Option<Query>,
    injections: Option<Query>,
}

/// Query sources of a grammar; empty means none.
#[derive(Default)]
pub(super) struct Queries<'a> {
    pub highlights: &'a str,
    pub locals: &'a str,
    pub injections: &'a str,
    pub objects: &'a str,
}

/// xterm 256-color (dark, light) of a capture name, by its longest known prefix.
fn color(name: &str) -> Option<(u8, u8)> {
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
fn read_query(dir: &Path, name: &str, file: &str, depth: usize) -> Option<String> {
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
fn valid_name(name: &str) -> bool {
    !name.is_empty() && name.chars().all(|c| c.is_ascii_alphanumeric() || matches!(c, '_' | '-'))
}

impl Lang {
    pub fn new(name: &str, language: Language, q: &Queries) -> Result<Lang, String> {
        let compile = |file: &str, src: &str| Query::new(&language, src).map_err(|e| format!("{name}: {file}: {e}"));
        let optional = |file: &str, src: &str| if src.trim().is_empty() { Ok(None) } else { compile(file, src).map(Some) };
        let highlights = compile("highlights.scm", q.highlights)?;
        let (objects, locals, injections) = (optional("textobjects.scm", q.objects)?, optional("locals.scm", q.locals)?, optional("injections.scm", q.injections)?);
        let colors = [0, 1].map(|i| highlights.capture_names().iter().map(|n| color(n).map(|c| [c.0, c.1][i])).collect());
        Ok(Lang { name: name.into(), language, highlights, colors, objects, locals, injections })
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
fn language_of(library: Library, name: &str) -> Result<Language, libloading::Error> {
    let sym = format!("tree_sitter_{}", name.replace('-', "_"));
    // SAFETY: a tree-sitter grammar exports `tree_sitter_<name>` as `const TSLanguage *(void)`.
    let func: Symbol<unsafe extern "C" fn() -> *const ()> = unsafe { library.get(sym.as_bytes()) }?;
    // SAFETY: same signature as above, and the library is never unloaded (`forget` below), so the pointer stays valid.
    let language = Language::new(unsafe { LanguageFn::from_raw(*func) });
    mem::forget(library);
    Ok(language)
}

/// Text of nodes for query predicates (`#eq?`, `#match?`).
struct Nodes<'a>(&'a Text);

impl TextProvider<Vec<u8>> for Nodes<'_> {
    type I = iter::Once<Vec<u8>>;

    fn text(&mut self, node: Node) -> Self::I {
        iter::once(self.0.slice(node.byte_range()).into_owned().into_bytes())
    }
}

fn point(text: &Text, off: usize) -> Point {
    let row = text.offset_to_line(off);
    Point { row, column: off - text.line_to_offset(row) }
}

/// The syntax tree of one buffer, kept in step with its text.
pub(super) struct Syntax {
    pub lang: Rc<Lang>,
    parser: Parser,
    tree: Option<Tree>,
    /// The version `tree` describes (or will once reparsed).
    text: Text,
    stale: bool,
    /// Regions parsed with other grammars, parents before the layers they contain.
    layers: Vec<Layer>,
    next_layer: usize,
    /// Bytes changed since the last sync, in the text now: where injections are found again.
    dirty: Vec<Range<usize>>,
    /// The layers cannot be updated from `dirty`: the text changed some other way.
    full: bool,
    /// Parses so far, and the resolved locals of the main tree as of that one.
    version: usize,
    refs: RefCell<Option<(usize, Rc<Refs>)>>,
}

/// Resolved local references: (use, definition) byte ranges, sorted by use.
type Refs = Vec<(Range<usize>, Range<usize>)>;

/// Parts of the text parsed with another grammar (`injections.scm`).
struct Layer {
    id: usize,
    /// The layer this one is injected in; 0 is the main tree.
    host: usize,
    lang: Rc<Lang>,
    tree: Tree,
    /// Parsed byte ranges, sorted.
    ranges: Vec<Range<usize>>,
    /// Joins several `injection.combined` regions.
    combined: bool,
    /// An edit touched its text: it is dropped and found again at the next sync.
    dirty: bool,
}

/// Injection levels followed (markdown → code → …) and text size above which none are made.
const MAX_DEPTH: usize = 3;
/// Bytes a layer must span for its old tree to be reused (a few KB: below, a parse from scratch is as cheap).
#[cfg(not(test))]
const REUSE_MIN: usize = 2048;
#[cfg(test)]
const REUSE_MIN: usize = 1;
// shortcut: a layer touched by an edit is parsed again whole, and `injection.combined` ones are all found again, so injections stop above 1 MiB; when that matters
const MAX_WHOLE: usize = 1 << 20;
// shortcut: locals are resolved over the whole text after every change (5 ms for 100 KB of Rust), so they stop past 256 KiB; when that matters
const MAX_LOCALS: usize = 1 << 18;

/// Parses `text` into `parser`'s language (its included ranges), reusing `old` if edited to match.
fn parse(parser: &mut Parser, text: &Text, old: Option<&Tree>) -> Option<Tree> {
    let mut cur = text.cursor_at(0);
    let len = text.len();
    // Each call hands out the rest of the piece holding `byte`.
    parser.parse_with_options(
        &mut |byte, _| {
            if byte >= len {
                return Vec::new();
            }
            if byte < cur.offset() || byte >= cur.offset() + cur.chunk().len() {
                cur = text.cursor_at(byte);
            }
            cur.chunk()[byte - cur.offset()..].to_vec()
        },
        old,
        None,
    )
}

/// Ranges of `node` for an injection: the node, or without its named children unless `include` (anonymous ones,
/// such as the `(` and `)` the markdown grammar finds in a code block, are text of the node).
fn node_ranges(node: Node, include: bool) -> Vec<TsRange> {
    if include || node.named_child_count() == 0 {
        return vec![node.range()];
    }
    let mut out = Vec::new();
    let (mut at, mut at_pt) = (node.start_byte(), node.start_position());
    let mut walk = node.walk();
    for ch in node.named_children(&mut walk) {
        if ch.start_byte() > at {
            out.push(TsRange { start_byte: at, end_byte: ch.start_byte(), start_point: at_pt, end_point: ch.start_position() });
        }
        (at, at_pt) = (ch.end_byte(), ch.end_position());
    }
    if node.end_byte() > at {
        out.push(TsRange { start_byte: at, end_byte: node.end_byte(), start_point: at_pt, end_point: node.end_position() });
    }
    out
}

/// One injection found in a tree: its grammar, regions and the bytes its query match covers.
struct Found {
    name: String,
    combined: bool,
    ranges: Vec<TsRange>,
    span: Range<usize>,
}

/// The injections of `tree` (a `lang` tree): all of them, or those whose match meets one of `within`.
fn discover(lang: &Lang, tree: &Tree, text: &Text, within: Option<&[Range<usize>]>) -> Vec<Found> {
    let Some(q) = &lang.injections else { return Vec::new() };
    let (content, language) = (q.capture_index_for_name("injection.content"), q.capture_index_for_name("injection.language"));
    let mut out: Vec<Found> = Vec::new();
    for region in within.map_or_else(|| vec![None], |w| w.iter().cloned().map(Some).collect()) {
        let mut cursor = QueryCursor::new();
        if let Some(r) = region {
            cursor.set_byte_range(r);
        }
        let mut it = cursor.matches(q, tree.root_node(), Nodes(text));
        while let Some(m) = it.next() {
            let (mut name, mut include, mut combined) = (None, false, false);
            for p in q.property_settings(m.pattern_index) {
                match &*p.key {
                    "injection.language" => name = p.value.as_deref().map(str::to_string),
                    "injection.self" | "injection.parent" => name = Some(lang.name.clone()),
                    "injection.include-children" => include = true,
                    "injection.combined" => combined = true,
                    _ => {}
                }
            }
            let by_capture = m.captures().iter().find(|c| Some(c.index) == language).map(|c| text.slice(c.node.byte_range()).into_owned());
            let Some(name) = by_capture.or(name).map(|n| filetype::grammar(&n.to_lowercase().chars().take_while(|c| c.is_ascii_alphanumeric() || matches!(c, '_' | '-' | '+' | '#' | '.')).collect::<String>().replace(['.', '-'], "_")).to_string()) else { continue };
            let ranges: Vec<_> = m.captures().iter().filter(|c| Some(c.index) == content).flat_map(|c| node_ranges(c.node, include)).collect();
            let span = m.captures().iter().map(|c| c.node.byte_range()).reduce(|a, b| a.start.min(b.start)..a.end.max(b.end)).unwrap_or(0..0);
            // Regions that overlap are met twice.
            if !out.iter().any(|f| f.name == name && f.span == span) {
                out.push(Found { name, combined, ranges, span });
            }
        }
    }
    out
}

/// Parses `found` as layers hosted by `host`, each followed by the layers injected in it.
/// A tree of a dropped layer with the same grammar and place is the old tree of the parse (`reuse`).
#[allow(clippy::too_many_arguments)]
fn build(found: Vec<Found>, host: usize, text: &Text, resolve: &mut dyn FnMut(&str) -> Option<Rc<Lang>>, depth: usize, next_id: &mut usize, out: &mut Vec<Layer>, reuse: &mut Vec<(String, Tree)>) {
    if depth >= MAX_DEPTH || text.len() > MAX_WHOLE {
        return;
    }
    // `combined` injections of one grammar share a layer.
    let mut groups: Vec<Found> = Vec::new();
    for f in found {
        match groups.iter_mut().find(|g| f.combined && g.combined && g.name == f.name) {
            Some(g) => g.ranges.extend(f.ranges),
            None => groups.push(f),
        }
    }
    for mut g in groups {
        g.ranges.sort_by_key(|r| r.start_byte);
        g.ranges.dedup_by_key(|r| r.start_byte);
        if g.ranges.is_empty() {
            continue;
        }
        let Some(inner) = resolve(&g.name) else { continue };
        let mut parser = Parser::new();
        if parser.set_language(&inner.language).is_err() || parser.set_included_ranges(&g.ranges).is_err() {
            continue;
        }
        let (lo, hi) = (g.ranges[0].start_byte, g.ranges[g.ranges.len() - 1].end_byte);
        // Small layers parse again whole (cheap); the markdown inline grammar does not parse incrementally the way a fresh parse would.
        let reusable = inner.name != "markdown_inline" && hi - lo >= REUSE_MIN;
        let old = reuse.iter().position(|(n, t)| reusable && *n == g.name && t.root_node().start_byte() <= hi && lo <= t.root_node().end_byte()).map(|i| reuse.swap_remove(i).1);
        let Some(tree) = parse(&mut parser, text, old.as_ref()) else { continue };
        *next_id += 1;
        let id = *next_id;
        out.push(Layer { id, host, lang: inner.clone(), tree: tree.clone(), ranges: g.ranges.iter().map(|r| r.start_byte..r.end_byte).collect(), combined: g.combined, dirty: false });
        build(discover(&inner, &tree, text, None), id, text, resolve, depth + 1, next_id, out, &mut Vec::new());
    }
}

/// Resolved references of `tree` within `span`, as (reference, definition) byte ranges sorted by reference (`locals.scm`):
/// the nearest enclosing scope holding a same-named definition that starts before the reference.
fn locals(lang: &Lang, tree: &Tree, text: &Text, span: Range<usize>) -> Refs {
    let Some(q) = &lang.locals else { return Vec::new() };
    if span.len() > MAX_LOCALS {
        return Vec::new();
    }
    // 1 scope, 2 definition, 3 reference.
    let kinds: Vec<u8> = q
        .capture_names()
        .iter()
        .map(|n| match n.strip_prefix("local.").unwrap_or(n) {
            "scope" => 1,
            "reference" => 3,
            n if n == "definition" || n.starts_with("definition.") => 2,
            _ => 0,
        })
        .collect();
    let (mut scopes, mut defs, mut refs) = (Vec::new(), Vec::new(), Vec::new());
    let mut cursor = QueryCursor::new();
    cursor.set_byte_range(span);
    let mut it = cursor.matches(q, tree.root_node(), Nodes(text));
    while let Some(m) = it.next() {
        for c in m.captures() {
            let r = c.node.byte_range();
            match kinds[c.index as usize] {
                1 => scopes.push(r),
                2 => defs.push((text.slice(r.clone()).into_owned(), r)),
                3 => refs.push((text.slice(r.clone()).into_owned(), r)),
                _ => {}
            }
        }
    }
    scopes.sort_by_key(|s| (s.start, Reverse(s.end)));
    scopes.dedup();
    // The innermost scope holding `r`: the nearest one before it that reaches past its end.
    let scope_of = |r: &Range<usize>| {
        let i = scopes.partition_point(|s| s.start <= r.start);
        scopes[..i].iter().rev().find(|s| s.end >= r.end).cloned().unwrap_or(0..usize::MAX)
    };
    // Definitions by name: node range and the range of its scope.
    type Defs = Vec<(Range<usize>, Range<usize>)>;
    let mut by_name: HashMap<&str, Defs> = HashMap::new();
    for (name, r) in &defs {
        by_name.entry(name).or_default().push((r.clone(), scope_of(r)));
    }
    let mut out: Vec<_> = refs
        .iter()
        .filter_map(|(name, r)| {
            let (def, _) = by_name
                .get(name.as_str())?
                .iter()
                .filter(|(d, s)| d != r && d.start <= r.start && s.start <= r.start && r.end <= s.end)
                .map(|(d, s)| (d, s))
                .min_by_key(|(d, s)| (s.len(), Reverse(d.start)))?;
            Some((r.clone(), def.clone()))
        })
        .collect();
    out.sort_by_key(|(r, _)| r.start);
    out
}

/// Colors of the bytes of `range` from `lang`'s queries on `tree`: highlights, then the uses of a local
/// definition (`refs`, from `locals`) in its color.
fn colors(lang: &Lang, tree: &Tree, text: &Text, range: Range<usize>, bg: usize, refs: &[(Range<usize>, Range<usize>)]) -> Vec<Option<u8>> {
    let mut out = captured(lang, tree, text, range.clone(), bg);
    let mut cache: HashMap<Range<usize>, Option<u8>> = HashMap::new();
    let first = refs.partition_point(|(r, _)| r.end <= range.start);
    for (r, def) in refs[first..].iter().take_while(|(r, _)| r.start < range.end) {
        let c = *cache.entry(def.clone()).or_insert_with(|| captured(lang, tree, text, def.clone(), bg).first().copied().flatten());
        if let Some(c) = c {
            out[r.start.max(range.start) - range.start..r.end.min(range.end) - range.start].fill(Some(c));
        }
    }
    out
}

/// Highlight captures over `range`: larger nodes first, so inner ones and later patterns win.
fn captured(lang: &Lang, tree: &Tree, text: &Text, range: Range<usize>, bg: usize) -> Vec<Option<u8>> {
    let mut out = vec![None; range.len()];
    let mut cursor = QueryCursor::new();
    cursor.set_byte_range(range.clone());
    let mut caps = Vec::new();
    let mut it = cursor.captures(&lang.highlights, tree.root_node(), Nodes(text));
    while let Some((m, i)) = it.next() {
        let c = m.captures()[*i];
        if let Some(col) = lang.colors[bg][c.index as usize] {
            caps.push((c.node.byte_range(), m.pattern_index, col));
        }
    }
    caps.sort_by_key(|(r, p, _)| (Reverse(r.len()), *p));
    for (r, _, col) in caps {
        out[r.start.max(range.start) - range.start..r.end.min(range.end).max(r.start.max(range.start)) - range.start].fill(Some(col));
    }
    out
}

impl Syntax {
    pub fn new(lang: Rc<Lang>) -> Self {
        let mut parser = Parser::new();
        // A grammar built for another tree-sitter ABI is refused: parsing then yields no tree and the text stays plain.
        let _ = parser.set_language(&lang.language);
        Syntax { lang, parser, tree: None, text: Text::new(), stale: true, layers: Vec::new(), next_layer: 0, dirty: Vec::new(), full: true, version: 0, refs: RefCell::new(None) }
    }

    /// Tells the tree that `edits` (one `Document` call) turned `before` into `after`.
    pub fn edit(&mut self, before: &Text, edits: &[Edit], after: &Text) {
        let Some(tree) = self.tree.as_mut().filter(|_| self.text.ptr_eq(before)) else { return };
        let Some(first) = edits.first() else { return };
        // The changed region as (start, end in the old text, end in the new one), grown by each edit in turn.
        let (mut start, mut old_end, mut new_end) = (first.start, first.start + first.old_len, first.start + first.new_len);
        for e in &edits[1..] {
            let e_end = e.start + e.old_len;
            if e_end <= new_end {
                new_end = new_end + e.new_len - e.old_len;
            } else {
                old_end += e_end - new_end;
                new_end = e.start + e.new_len;
            }
            start = start.min(e.start);
        }
        let ie = InputEdit {
            start_byte: start,
            old_end_byte: old_end,
            new_end_byte: new_end,
            start_position: point(before, start),
            old_end_position: point(before, old_end),
            new_end_position: point(after, new_end),
        };
        tree.edit(&ie);
        self.text = after.clone();
        self.stale = true;
        if self.lang.injections.is_none() {
            return;
        }
        // A layer wholly before the edit stays as it is, one wholly after it moves, one touching it is rebuilt.
        let shift = |b: usize| b + new_end - old_end;
        for d in &mut self.dirty {
            if d.start > old_end {
                *d = shift(d.start)..shift(d.end);
            } else if d.end >= start {
                *d = d.start.min(start)..shift(d.end.max(old_end));
            }
        }
        self.dirty.push(start..new_end);
        for l in &mut self.layers {
            if l.dirty {
                // Dropped at the next sync, its tree is the old tree of the parse that replaces it: every edit reaches it.
                l.tree.edit(&ie);
            } else if l.ranges.last().is_some_and(|r| r.end < start) {
                // Wholly before the edit: nothing moves.
            } else if l.ranges.first().is_some_and(|r| r.start > old_end) {
                l.tree.edit(&ie);
                l.ranges.iter_mut().for_each(|r| *r = shift(r.start)..shift(r.end));
            } else {
                l.tree.edit(&ie);
                l.dirty = true;
            }
        }
    }

    /// Parses `text` if the tree is not up to date: incrementally after `edit`, whole after any other change;
    /// the injected layers are brought up to date with grammars from `resolve`.
    pub fn sync(&mut self, text: &Text, resolve: &mut dyn FnMut(&str) -> Option<Rc<Lang>>) {
        if !self.text.ptr_eq(text) {
            (self.tree, self.text, self.stale, self.full) = (None, text.clone(), true, true);
        }
        if !self.stale && self.tree.is_some() {
            return;
        }
        let old = self.tree.take();
        let tree = parse(&mut self.parser, text, old.as_ref());
        self.stale = tree.is_none();
        self.version += 1;
        let mut dirty = mem::take(&mut self.dirty);
        match (&tree, &old) {
            _ if self.lang.injections.is_none() => {}
            (Some(t), Some(o)) if !self.full => {
                dirty.extend(o.changed_ranges(t).map(|r| r.start_byte..r.end_byte));
                self.refresh_layers(t, text, resolve, dirty);
            }
            (Some(t), _) => self.rebuild_layers(t, text, resolve),
            (None, _) => self.layers.clear(),
        }
        self.full = false;
        self.tree = tree;
    }

    /// Finds the injections of `tree` again and parses them all.
    fn rebuild_layers(&mut self, tree: &Tree, text: &Text, resolve: &mut dyn FnMut(&str) -> Option<Rc<Lang>>) {
        self.layers.clear();
        build(discover(&self.lang, tree, text, None), 0, text, resolve, 0, &mut self.next_layer, &mut self.layers, &mut Vec::new());
    }

    /// Updates the layers after edits that changed the bytes `dirty`: the injections met there are found again, the
    /// layers they replace (and what is injected in these) dropped. Layers elsewhere were kept by `edit`.
    fn refresh_layers(&mut self, tree: &Tree, text: &Text, resolve: &mut dyn FnMut(&str) -> Option<Rc<Lang>>, mut dirty: Vec<Range<usize>>) {
        // A byte of margin makes edits next to a node count as touching it.
        dirty.sort_by_key(|r| r.start);
        let mut cut: Vec<Range<usize>> = Vec::new();
        for r in dirty.into_iter().map(|r| r.start.saturating_sub(1)..r.end + 1) {
            match cut.last_mut() {
                Some(l) if r.start <= l.end => l.end = l.end.max(r.end),
                _ => cut.push(r),
            }
        }
        let found = discover(&self.lang, tree, text, Some(&cut));
        let meets = |r: &Range<usize>, cut: &[Range<usize>]| cut.iter().any(|c| r.start < c.end && c.start < r.end);
        // Combined layers gather regions from all over the text.
        if found.iter().any(|f| f.combined) || self.layers.iter().any(|l| l.combined && l.ranges.iter().any(|r| meets(r, &cut))) {
            return self.rebuild_layers(tree, text, resolve);
        }
        cut.extend(found.iter().map(|f| f.span.clone()));
        let (mut gone, mut reuse) = (HashSet::new(), Vec::new());
        for l in mem::take(&mut self.layers) {
            if l.dirty || gone.contains(&l.host) || l.ranges.iter().any(|r| meets(r, &cut)) {
                gone.insert(l.id);
                if l.host == 0 {
                    reuse.push((l.lang.name.clone(), l.tree));
                }
            } else {
                self.layers.push(l);
            }
        }
        build(found, 0, text, resolve, 0, &mut self.next_layer, &mut self.layers, &mut reuse);
    }

    /// Color of each byte of `range` (a synced tree); injected layers paint over the text they cover.
    pub fn highlight(&self, text: &Text, range: Range<usize>, bg: Background) -> Vec<Option<u8>> {
        let bg = (bg == Background::Light) as usize;
        let Some(tree) = &self.tree else { return vec![None; range.len()] };
        let refs = match &*self.refs.borrow() {
            Some((v, refs)) if *v == self.version => Some(refs.clone()),
            _ => None,
        };
        let refs = refs.unwrap_or_else(|| {
            let refs = Rc::new(locals(&self.lang, tree, text, 0..text.len()));
            *self.refs.borrow_mut() = Some((self.version, refs.clone()));
            refs
        });
        let mut out = colors(&self.lang, tree, text, range.clone(), bg, &refs);
        for l in &self.layers {
            let (Some(first), Some(last)) = (l.ranges.first(), l.ranges.last()) else { continue };
            let r = first.start.max(range.start)..last.end.min(range.end);
            if r.start >= r.end {
                continue;
            }
            let at = r.start - range.start;
            let refs = locals(&l.lang, &l.tree, text, first.start..last.end);
            for (k, c) in colors(&l.lang, &l.tree, text, r, bg, &refs).into_iter().enumerate() {
                out[at + k] = c.or(out[at + k]);
            }
        }
        out
    }

    /// The `n`th smallest `kind` object (`function`, `class`, `parameter`) holding byte `off`, from the main tree and
    /// the layers holding it; a parameter `around` takes its comma.
    pub fn object(&self, text: &Text, kind: &str, around: bool, off: usize, n: usize) -> Option<Range<usize>> {
        let name = format!("{kind}.{}", if around { "around" } else { "inside" });
        let trees = iter::once((&*self.lang, self.tree.as_ref()?)).chain(self.layers.iter().filter(|l| l.ranges.iter().any(|r| r.start <= off && off < r.end)).map(|l| (&*l.lang, &l.tree)));
        let mut found = Vec::new();
        for (lang, tree) in trees {
            let Some(query) = &lang.objects else { continue };
            let Some(idx) = query.capture_index_for_name(&name) else { continue };
            let mut cursor = QueryCursor::new();
            let mut it = cursor.matches(query, tree.root_node(), Nodes(text));
            while let Some(m) = it.next() {
                found.extend(m.captures().iter().filter(|c| c.index == idx).map(|c| c.node.byte_range()).filter(|r| r.start <= off && off < r.end));
            }
        }
        found.sort_by_key(|r| (r.len(), r.start));
        found.dedup();
        let r = found.into_iter().nth(n - 1)?;
        Some(if around && kind == "parameter" { with_comma(text, r) } else { r })
    }
}

/// `r` (a list item) with the comma after it and the blanks that follow, or the comma before it for the last one.
fn with_comma(text: &Text, r: Range<usize>) -> Range<usize> {
    let len = text.len();
    let after = text.slice(r.end..text.floor_char_boundary((r.end + 256).min(len)));
    let rest = after.trim_start();
    if let Some(tail) = rest.strip_prefix(',') {
        let end = r.end + after.len() - tail.len() + (tail.len() - tail.trim_start_matches([' ', '\t']).len());
        return r.start..end;
    }
    let before = text.slice(text.floor_char_boundary(r.start.saturating_sub(256))..r.start);
    let head = before.trim_end();
    match head.strip_suffix(',') {
        Some(h) => r.start - (before.len() - h.len())..r.end,
        None => r,
    }
}

impl Editor {
    /// Points the current buffer's syntax at its filetype's grammar (loading it once) and brings the tree up to date.
    pub(super) fn sync_syntax(&mut self) {
        let want = filetype::grammar(&self.buf.opts.filetype).to_string();
        if self.buf.syntax.as_ref().is_none_or(|s| s.lang.name != *want) {
            self.buf.syntax = if want.is_empty() { None } else { self.lang(&want).map(Syntax::new) };
        }
        if let Some(mut s) = self.buf.syntax.take() {
            s.sync(&self.buf.doc.text().clone(), &mut |n| self.lang(n));
            self.buf.syntax = Some(s);
        }
    }

    /// Grammar `name`, loaded on first use; a failure shows once and the grammar stays off.
    fn lang(&mut self, name: &str) -> Option<Rc<Lang>> {
        if !self.langs.contains_key(name) {
            // An installed grammar wins over the built-in one; a broken one is reported and replaced by it.
            let mut loaded = None;
            match self.runtime.as_deref().map(|dir| Lang::load(dir, name)) {
                Some(Ok(l)) => loaded = l,
                Some(Err(e)) => self.msg = e,
                None => {}
            }
            if loaded.is_none() {
                match builtin::lang(name) {
                    Some(Ok(l)) => loaded = Some(l),
                    Some(Err(e)) => self.msg = e,
                    None => {}
                }
            }
            let loaded = loaded.map(Rc::new);
            self.langs.insert(name.into(), loaded);
        }
        self.langs[name].clone()
    }

    /// Colors per cluster column for each of `lines`, empty for a line not highlighted.
    pub(super) fn syntax_lines(&mut self, lines: Range<usize>) -> Vec<Vec<Option<u8>>> {
        self.sync_syntax();
        let (text, bg) = (self.buf.doc.text(), self.buf.opts.background);
        let Some(syn) = &self.buf.syntax else { return Vec::new() };
        let start = text.line_to_offset(lines.start);
        let end = text.line_end(lines.end - 1).min(start + MAX_HL);
        let colors = syn.highlight(text, start..end, bg);
        lines
            .map(|l| {
                let at = text.line_to_offset(l);
                if text.line_end(l) - at > LONG_LINE {
                    return Vec::new();
                }
                let line = text.line(l);
                let mut b = at - start;
                graphemes::iter(&line)
                    .map(|g| {
                        let c = colors.get(b).copied().flatten();
                        b += g.len();
                        c
                    })
                    .collect()
            })
            .collect()
    }

    /// Text object `f`, `c` or `a` at the cursor; `None` without a grammar, queries or a match.
    pub(super) fn syntax_object(&self, around: bool, obj: char, n: usize) -> Option<Range<usize>> {
        let kind = match obj {
            'f' => "function",
            'c' => "class",
            'a' => "parameter",
            _ => return None,
        };
        self.buf.syntax.as_ref()?.object(self.buf.doc.text(), kind, around, self.offset(), n)
    }
}


#[cfg(test)]
pub(super) mod tests {
    use super::*;
    use piece_tree::Document;

    const OBJECTS: &str = "(function_item body: (_) @function.inside) @function.around\n(struct_item body: (_) @class.inside) @class.around\n(parameters (_) @parameter.inside)";

    pub fn rust() -> Rc<Lang> {
        Rc::new(Lang::new("rust", tree_sitter_rust::LANGUAGE.into(), &Queries { highlights: tree_sitter_rust::HIGHLIGHTS_QUERY, objects: OBJECTS, ..Default::default() }).unwrap())
    }

    fn synced(src: &str) -> (Syntax, Text) {
        let (mut s, t) = (Syntax::new(rust()), Text::from(src));
        s.sync(&t, &mut |_| None);
        (s, t)
    }

    #[test]
    fn highlights_keywords_strings_comments() {
        let src = "fn main() { let s = \"x\"; } // c";
        let (s, t) = synced(src);
        let dark = s.highlight(&t, 0..src.len(), Background::Dark);
        let light = s.highlight(&t, 0..src.len(), Background::Light);
        let at = |pat: &str| src.find(pat).unwrap();
        assert_eq!((dark[0], light[0]), (Some(176), Some(127)));
        assert_eq!(dark[at("\"x")], Some(114));
        assert_eq!(dark[at("// c")], Some(244));
        assert_eq!(dark[at("; }")], None);
        // Only the asked range is painted.
        assert_eq!(s.highlight(&t, at("let")..at("let") + 3, Background::Dark), [Some(176); 3]);
    }

    #[test]
    fn objects_by_size_and_count() {
        let src = "fn a() { 1 }\nfn b(x: u8) { fn c() { 2 } }";
        let (s, t) = synced(src);
        let at = |pat: &str| src.find(pat).unwrap();
        let two = at("2");
        assert_eq!(&src[s.object(&t, "function", true, two, 1).unwrap()], "fn c() { 2 }");
        assert_eq!(&src[s.object(&t, "function", false, two, 1).unwrap()], "{ 2 }");
        assert_eq!(&src[s.object(&t, "function", true, two, 2).unwrap()], "fn b(x: u8) { fn c() { 2 } }");
        assert_eq!(s.object(&t, "function", true, two, 3), None);
        assert_eq!(s.object(&t, "function", true, at("\n"), 1), None);
        assert_eq!(&src[s.object(&t, "parameter", false, at("x:"), 1).unwrap()], "x: u8");
        assert_eq!((s.object(&t, "class", true, 0, 1), s.object(&t, "nope", true, 0, 1)), (None, None));
        // A grammar without textobjects queries has no objects.
        let lang = Lang::new("rust", tree_sitter_rust::LANGUAGE.into(), &Queries::default()).unwrap();
        let mut s = Syntax::new(Rc::new(lang));
        s.sync(&t, &mut |_| None);
        assert_eq!(s.object(&t, "function", true, 0, 1), None);
    }

    /// Small deterministic generator.
    struct Lcg(u64);

    impl Lcg {
        fn below(&mut self, n: usize) -> usize {
            self.0 = self.0.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
            (self.0 >> 33) as usize % n
        }
    }

    /// After every edit the incrementally updated tree equals one parsed from scratch.
    #[test]
    fn incremental_tree_matches_a_fresh_parse() {
        const SNIPPETS: [&str; 8] = ["fn f() {}", "\n", "let x = 1;", "{", "}", "\"s", "//", "(a, b)"];
        let mut doc = Document::new("fn main() {\n    let a = 1;\n}\nstruct S { x: u8 }\n");
        let mut syn = Syntax::new(rust());
        syn.sync(doc.text(), &mut |_| None);
        let mut rng = Lcg(7);
        for step in 0..80 {
            let before = doc.text().clone();
            let len = doc.text().len();
            match rng.below(6) {
                0 if len > 0 => {
                    let a = rng.below(len);
                    doc.delete(a..(a + 1 + rng.below(6)).min(len));
                }
                1 => {
                    let (a, b) = (rng.below(len + 1), rng.below(len + 1));
                    let (a, b) = (a.min(b), a.max(b));
                    doc.apply_edits(&[(a..a, SNIPPETS[rng.below(8)]), (b..(b + 1).min(len), SNIPPETS[rng.below(8)])]);
                }
                2 => {
                    doc.undo();
                }
                3 => {
                    doc.redo();
                }
                _ => doc.insert(rng.below(len + 1), SNIPPETS[rng.below(8)]),
            }
            syn.edit(&before, doc.last_edits(), doc.text());
            // Sometimes several edits pile up before a parse.
            if step % 3 != 0 {
                syn.sync(doc.text(), &mut |_| None);
                let (mut fresh, text) = (Syntax::new(rust()), doc.text().clone());
                fresh.sync(&text, &mut |_| None);
                assert_eq!(syn.tree.as_ref().unwrap().root_node().to_sexp(), fresh.tree.as_ref().unwrap().root_node().to_sexp(), "step {step}");
            }
        }
    }

    #[test]
    fn loading_grammars() {
        let dir = std::env::temp_dir().join(format!("rim-syntax-{}", std::process::id()));
        let ext = std::env::consts::DLL_EXTENSION;
        fs::create_dir_all(dir.join("grammars")).unwrap();
        fs::create_dir_all(dir.join("queries/a")).unwrap();
        fs::create_dir_all(dir.join("queries/b")).unwrap();
        assert!(matches!(Lang::load(&dir, "rust"), Ok(None)));
        assert!(matches!(Lang::load(&dir, "../x"), Ok(None)));
        fs::write(dir.join(format!("grammars/rust.{ext}")), "not a library").unwrap();
        assert!(Lang::load(&dir, "rust").err().unwrap().contains("rust."));
        // Inherited queries come first; a cycle stops.
        fs::write(dir.join("queries/a/highlights.scm"), "; a note\n\n; inherits: b, ../c\n(a)").unwrap();
        fs::write(dir.join("queries/b/highlights.scm"), "; inherits: a\n(b)").unwrap();
        let q = read_query(&dir, "a", "highlights.scm", 0).unwrap();
        assert!(q.contains("(b)\n"), "{q}");
        assert!(q.ends_with("(a)"));
        assert_eq!(read_query(&dir, "a", "textobjects.scm", 0), None);
        // A query that does not compile is reported with its file.
        let err = Lang::new("rust", tree_sitter_rust::LANGUAGE.into(), &Queries { highlights: "(", ..Default::default() }).err().unwrap();
        assert!(err.starts_with("rust: highlights.scm"), "{err}");
        let err = Lang::new("rust", tree_sitter_rust::LANGUAGE.into(), &Queries { objects: "(", ..Default::default() }).err().unwrap();
        assert!(err.starts_with("rust: textobjects.scm"), "{err}");
        fs::remove_dir_all(&dir).unwrap();
    }

    fn builtin(name: &str) -> Rc<Lang> {
        Rc::new(builtin::lang(name).unwrap().unwrap())
    }

    #[test]
    fn every_builtin_grammar_compiles_and_parses() {
        let samples = [
            ("rust", "fn a(x: u8) { let y = x; }"),
            ("python", "def a(x):\n    return x\n"),
            ("javascript", "const f = (x) => { return x; }\n"),
            ("typescript", "function f(x: number): number { return x }\n"),
            ("tsx", "const a = <div>{x}</div>;\n"),
            ("c", "int f(int x) { return x; }\n"),
            ("cpp", "class A { int f(int x) { return x; } };\n"),
            ("markdown", "# T\n\ntext *a*\n"),
            ("markdown_inline", "*a* `b`"),
            ("toml", "[a]\nb = \"c\"\n"),
            ("html", "<div class=\"a\"><script>let x = 1;</script><style>p { color: red }</style></div>"),
            ("css", "a > b { color: #fff; margin: 0 }\n"),
            ("json", "{\"a\": [1, true]}"),
            ("bash", "f() { echo \"$1\"; }\n"),
            ("lua", "local function f(x) return x end\n"),
        ];
        assert_eq!(samples.map(|s| s.0), builtin::NAMES);
        for (name, src) in samples {
            let (mut s, t) = (Syntax::new(builtin(name)), Text::from(src));
            s.sync(&t, &mut |n| Some(builtin(n)));
            assert!(!s.tree.as_ref().unwrap().root_node().has_error(), "{name}");
            assert!(s.highlight(&t, 0..src.len(), Background::Dark).iter().any(Option::is_some), "{name}");
        }
        assert!(builtin::lang("nope").is_none());
    }

    #[test]
    fn html_injects_script_and_style() {
        let src = "<p>x</p><script>let a = 1;</script><style>p { color: red }</style>";
        let (mut s, t) = (Syntax::new(builtin("html")), Text::from(src));
        s.sync(&t, &mut |n| Some(builtin(n)));
        let names: Vec<_> = s.layers.iter().map(|l| l.lang.name.as_str()).collect();
        assert_eq!(names, ["javascript", "css"]);
        let h = s.highlight(&t, 0..src.len(), Background::Dark);
        let at = |pat: &str| src.find(pat).unwrap();
        assert_eq!((h[at("let")], h[at("color")], h[at("<p>") + 1]), (Some(176), Some(110), Some(168)));
    }

    #[test]
    fn locals_color_a_use_like_its_definition() {
        let src = "fn f(x: u8) -> u8 {\n    let y = x;\n    let z = |x: u8| x;\n    y + z(x)\n}\nfn g() { x }\n";
        let (mut s, t) = (Syntax::new(builtin("rust")), Text::from(src));
        s.sync(&t, &mut |_| None);
        let h = s.highlight(&t, 0..src.len(), Background::Dark);
        let nth = |pat: &str, n: usize| src.match_indices(pat).nth(n).unwrap().0;
        let param = h[nth("x", 0)];
        assert_eq!(param, Some(216), "the parameter itself");
        assert_eq!(h[nth("x;", 0)], param, "a use in the function body");
        assert_eq!(h[nth("(x)", 0) + 1], param, "a use in a call argument");
        assert_eq!(h[nth("x: u8|", 0)], param);
        assert_eq!(h[nth("{ x }", 0) + 2], None, "outside the scope of the definition");
        assert_eq!(h[nth("y", 0)], None, "a plain local has no color of its own");
    }

    #[test]
    fn injections_highlight_fenced_code_and_inline_text() {
        let src = "# Title\n\n```rust\nfn a() {}\n```\n\nsome *emph* and `code`\n";
        let (mut s, t) = (Syntax::new(builtin("markdown")), Text::from(src));
        s.sync(&t, &mut |n| Some(builtin(n)));
        assert!(s.layers.iter().any(|l| l.lang.name == "rust") && s.layers.iter().any(|l| l.lang.name == "markdown_inline"));
        let h = s.highlight(&t, 0..src.len(), Background::Dark);
        let at = |pat: &str| src.find(pat).unwrap();
        assert_eq!(h[at("fn a")], Some(176), "keyword of the injected Rust");
        assert_eq!(h[at("a()")], Some(75), "its function name");
        assert_eq!((h[at("Title")], h[at("emph")], h[at("code`")]), (Some(75), Some(176), Some(114)), "heading, emphasis and code span from the inline layer");
        // Editing the code reparses the layer.
        let mut doc = Document::new(src);
        let before = doc.text().clone();
        let mut s = Syntax::new(builtin("markdown"));
        s.sync(&before, &mut |n| Some(builtin(n)));
        doc.insert(at("fn a") + 3, "b");
        s.edit(&before, doc.last_edits(), doc.text());
        s.sync(doc.text(), &mut |n| Some(builtin(n)));
        let h = s.highlight(doc.text(), 0..doc.text().len(), Background::Dark);
        assert_eq!(h[at("fn a") + 3], Some(75));
        // An unknown language, and no resolver at all, leave the block plain.
        let mut s = Syntax::new(builtin("markdown"));
        s.sync(&t, &mut |_| None);
        assert!(s.layers.is_empty());
    }

    /// Layers kept and moved by `edit` equal the ones found from scratch, and so do the colors.
    #[test]
    fn incremental_layers_match_fresh_ones() {
        let mut cache: HashMap<String, Rc<Lang>> = HashMap::new();
        let mut resolve = move |n: &str| match cache.get(n) {
            Some(l) => Some(l.clone()),
            None => builtin::lang(n).map(|l| cache.entry(n.to_string()).or_insert_with(|| Rc::new(l.unwrap())).clone()),
        };
        let cases: [(&str, &str, &[&str], usize); 4] = [
            ("markdown", "# T\n\n```rust\nfn a() {}\n```\n\ntext *e* `c`\n\n```c\nint x;\n```\n", &["```rust\n", "```\n", "fn b() {}\n", "*", "`", "\n", "x", "```c\n", "\n\n", "# "], 0),
            // Typing: mostly valid text, so most steps compare colors.
            ("markdown", "# T\n\n```rust\nfn a(x: u8) -> u8 { x }\nfn b() {}\n```\n\ntext *e* `c`\n\n```c\nint x;\n```\n", &["a", "b", "1", "xy", " ", "_"], 25),
            ("html", "<p>a</p><script>let a = 1;</script><style>p { color: red }</style><b>x</b>", &["<script>", "</script>", "<style>", "</style>", "let b;", "x", "<p>", "{ }", "\n", "<!--", "-->"], 0),
            ("html", "<p>some long text here, some more text and more and more words to fill the page. some long text here, some more text and more and more words to fill the page. some long text here, some more text and more and more words to fill the page. some long text here, some more text and more and more words to fill the page. </p>\n<script>let a = 1;\n// a comment that is rather long, so typing lands in it more often than not. a comment that is rather long, so typing lands in it more often than not. a comment that is rather long, so typing lands in it more often than not. a comment that is rather long, so typing lands in it more often than not. a comment that is rather long, so typing lands in it more often than not. a comment that is rather long, so typing lands in it more often than not. \nfunction f(x) { return x; }</script><style>p { color: red }</style><b>x</b>", &["a", "b", "1", "xy", " ", "_"], 25),
        ];
        for (lang, src, snippets, min) in cases {
            let mut doc = Document::new(src);
            let mut syn = Syntax::new(builtin(lang));
            syn.sync(doc.text(), &mut resolve);
            let mut rng = Lcg(11);
            let mut compared = 0;
            for step in 0..120 {
                let before = doc.text().clone();
                let len = doc.text().len();
                // Typing cases only type inside words and blanks, outside tags, so the text mostly stays valid.
                let safe = |off: usize| {
                    let t = before.slice(0..len);
                    let word = |i: usize| t.as_bytes().get(i).is_some_and(|b| b.is_ascii_alphanumeric() || *b == b' ');
                    off > 0 && word(off - 1) && word(off) && t[..off].rfind('<').is_none_or(|lt| t[..off].rfind('>').is_some_and(|gt| gt > lt))
                };
                match rng.below(8) {
                    0 if min == 0 && len > 0 => {
                        let a = rng.below(len);
                        doc.delete(a..(a + 1 + rng.below(8)).min(len));
                    }
                    1 => {
                        doc.undo();
                    }
                    2 => {
                        doc.redo();
                    }
                    _ => {
                        let off = (0..20).map(|_| rng.below(len + 1)).find(|&o| min == 0 || safe(o)).unwrap_or(len);
                        doc.insert(off, snippets[rng.below(snippets.len())]);
                    }
                }
                syn.edit(&before, doc.last_edits(), doc.text());
                if step % 3 == 2 {
                    continue;
                }
                syn.sync(doc.text(), &mut resolve);
                let mut fresh = Syntax::new(builtin(lang));
                fresh.sync(doc.text(), &mut resolve);
                let sig = |s: &Syntax| {
                    let mut v: Vec<_> = s.layers.iter().map(|l| (l.lang.name.clone(), l.ranges.clone())).collect();
                    v.sort_by(|a, b| (&a.0, a.1.first().map(|r| r.start)).cmp(&(&b.0, b.1.first().map(|r| r.start))));
                    v
                };
                assert_eq!(sig(&syn), sig(&fresh), "{lang} step {step}");
                // An incremental parse may recover from a syntax error differently from a fresh one: colors are only
                // compared when no tree has one.
                let clean = |s: &Syntax| !s.tree.as_ref().unwrap().root_node().has_error() && s.layers.iter().all(|l| !l.tree.root_node().has_error());
                if !clean(&syn) || !clean(&fresh) {
                    continue;
                }
                compared += 1;
                let len = doc.text().len();
                let (got, want) = (syn.highlight(doc.text(), 0..len, Background::Dark), fresh.highlight(doc.text(), 0..len, Background::Dark));
                let diff: Vec<_> = (0..len).filter(|&i| got[i] != want[i]).take(5).map(|i| (i, got[i], want[i])).collect();
                assert!(diff.is_empty(), "{lang} step {step}: {diff:?} in {:?}", doc.text().slice(0..len));
            }
            assert!(compared >= min, "{lang}: only {compared} steps compared");
        }
    }

    #[test]
    fn injection_properties_and_nesting() {
        // `injection.combined` joins the regions of a grammar in one layer; `self` parses with the host grammar.
        let host = Rc::new(
            Lang::new(
                "rust",
                tree_sitter_rust::LANGUAGE.into(),
                &Queries {
                    highlights: tree_sitter_rust::HIGHLIGHTS_QUERY,
                    injections: "((string_literal (string_content) @injection.content) (#set! injection.language \"rust\") (#set! injection.combined))\n((line_comment) @injection.content (#set! injection.self))",
                    ..Default::default()
                },
            )
            .unwrap(),
        );
        let (mut s, t) = (Syntax::new(host.clone()), Text::from("fn a() { \"fn b\"; \"let x\"; } // fn c"));
        s.sync(&t, &mut |n| (n == "rust").then(|| host.clone()));
        let strings: Vec<_> = s.layers.iter().filter(|l| l.ranges.len() == 2).collect();
        assert_eq!(strings.len(), 1, "combined strings in one layer");
        assert!(s.layers.len() <= 1 + MAX_DEPTH * 2);
    }

    /// The grammar of this very test binary stands in for a dylib: its symbol is `tree_sitter_rust`.
    #[cfg(unix)]
    #[test]
    fn language_from_a_loaded_library() {
        let this = || Library::from(libloading::os::unix::Library::this());
        let lang = language_of(this(), "rust").unwrap();
        let mut s = Syntax::new(Rc::new(Lang::new("rust", lang, &Queries { highlights: tree_sitter_rust::HIGHLIGHTS_QUERY, ..Default::default() }).unwrap()));
        let t = Text::from("fn a() {}");
        s.sync(&t, &mut |_| None);
        assert_eq!(s.highlight(&t, 0..2, Background::Dark), [Some(176); 2]);
        assert!(language_of(this(), "nope").is_err());
    }

    #[test]
    fn objects_in_layers_and_parameter_commas() {
        // A function of the Rust block inside Markdown.
        let src = "# T\n\n```rust\nfn a(x: u8, y: u8, z: u8) { 1 }\n```\n";
        let (mut s, t) = (Syntax::new(builtin("markdown")), Text::from(src));
        s.sync(&t, &mut |n| builtin::lang(n).map(|l| Rc::new(l.unwrap())));
        let at = |pat: &str| src.find(pat).unwrap();
        assert_eq!(&src[s.object(&t, "function", true, at("1 }"), 1).unwrap()], "fn a(x: u8, y: u8, z: u8) { 1 }");
        assert_eq!(s.object(&t, "function", true, at("# T"), 1), None, "outside the block");
        // `a` around a parameter takes a comma: the next one, or the previous for the last.
        let p = |pat: &str, around| &src[s.object(&t, "parameter", around, at(pat), 1).unwrap()];
        assert_eq!((p("x:", false), p("x:", true)), ("x: u8", "x: u8, "));
        assert_eq!((p("y:", true), p("z:", true)), ("y: u8, ", ", z: u8"));
        let (mut s1, t1) = (Syntax::new(builtin("rust")), Text::from("fn f(only: u8) {}"));
        s1.sync(&t1, &mut |_| None);
        assert_eq!(&"fn f(only: u8) {}"[s1.object(&t1, "parameter", true, 7, 1).unwrap()], "only: u8");
    }

    #[test]
    fn css_rules_are_classes() {
        let src = "a { color: red }\n@media print { b { margin: 0 } }\n";
        let (mut s, t) = (Syntax::new(builtin("css")), Text::from(src));
        s.sync(&t, &mut |_| None);
        let at = |pat: &str| src.find(pat).unwrap();
        assert_eq!(&src[s.object(&t, "class", true, at("color"), 1).unwrap()], "a { color: red }");
        assert_eq!(&src[s.object(&t, "class", true, at("margin"), 2).unwrap()], "@media print { b { margin: 0 } }");
    }

    #[test]
    fn locals_follow_patterns_and_edits() {
        let src = "fn f(p: (u8, u8)) {\n    let (a, b) = p;\n    match a { n => n + b }\n}\n";
        let (mut s, t) = (Syntax::new(builtin("rust")), Text::from(src));
        s.sync(&t, &mut |_| None);
        let h = s.highlight(&t, 0..src.len(), Background::Dark);
        let at = |pat: &str, n: usize| src.match_indices(pat).nth(n).unwrap().0;
        let param = h[at("p:", 0)];
        assert_eq!(param, Some(216));
        assert_eq!(h[at("= p", 0) + 2], param, "use of the parameter");
        // Definitions in tuple and match patterns have no highlight of their own, so their uses stay plain.
        assert_eq!((h[at("b }", 0)], h[at("n +", 0)]), (None, None));
        // The cached references follow an edit: renaming the parameter turns its use plain.
        let mut doc = Document::new(src);
        let mut s = Syntax::new(builtin("rust"));
        s.sync(doc.text(), &mut |_| None);
        s.highlight(doc.text(), 0..src.len(), Background::Dark);
        let before = doc.text().clone();
        doc.insert(at("p:", 0), "q");
        s.edit(&before, doc.last_edits(), doc.text());
        s.sync(doc.text(), &mut |_| None);
        let text = doc.text().slice(0..doc.text().len()).into_owned();
        let h = s.highlight(doc.text(), 0..text.len(), Background::Dark);
        let use_at = text.find("= p").unwrap() + 2;
        assert_eq!(h[text.find("qp:").unwrap()], Some(216));
        assert_eq!(h[use_at], None, "the use no longer resolves");
    }

    #[test]
    fn helix_language_names_are_normalized() {
        let host = Rc::new(
            Lang::new(
                "rust",
                tree_sitter_rust::LANGUAGE.into(),
                &Queries { highlights: "", injections: "((line_comment) @injection.content (#set! injection.language \"markdown.inline\"))\n((block_comment) @injection.content (#set! injection.language \"C++\"))", ..Default::default() },
            )
            .unwrap(),
        );
        let (mut s, t) = (Syntax::new(host), Text::from("// a\n/* b */\nfn a() {}"));
        let mut asked = Vec::new();
        s.sync(&t, &mut |n| {
            asked.push(n.to_string());
            None
        });
        assert_eq!(asked, ["markdown_inline", "cpp"]);
    }

    #[test]
    fn color_falls_back_to_prefixes() {
        assert_eq!(color("keyword.control.return"), Some((176, 127)));
        assert_eq!(color("variable.builtin"), Some((209, 166)));
        assert_eq!((color("variable"), color("variable.other"), color("spell")), (None, None, None));
        assert_eq!(color("parameter"), Some((216, 130)));
    }
}
