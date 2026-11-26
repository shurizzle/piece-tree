//! Syntax highlighting and text objects from tree-sitter grammars loaded at run time.
//!
//! A grammar is a dynamic library `grammars/<name>.so|dylib` exporting `tree_sitter_<name>`, with
//! `queries/<name>/highlights.scm` and optionally `textobjects.scm` next to it (helix names:
//! `@function.inside`, `@function.around`, `@class.*`, `@parameter.*`). A line
//! `; inherits: a,b` (among the leading comments) prepends the queries of `a` and `b`. `locals.scm` (`@local.scope`,
//! `@local.definition`, `@local.reference`) colors a use like its definition; `injections.scm`
//! (`@injection.content`, `@injection.language`, `#set! injection.language|combined|include-children`)
//! parses a region with another grammar. The common grammars are also built in (`builtin.rs`).

#[cfg(all(test, not(feature = "grammars")))]
compile_error!("the tests use every built-in grammar: run them with the default features");

mod lang;
mod layers;
mod query;

use std::{
    cell::RefCell,
    collections::HashSet,
    iter, mem,
    slice,
    ops::Range,
    rc::Rc,
};

use piece_tree::{Edit, RegexCursor, Text, TextCursor};
use tree_sitter::{InputEdit, Parser, Point, QueryCursor, StreamingIterator, Tree};

pub(super) use lang::{Lang, Queries, known_capture};
use layers::{Layer, build, discover};
use query::{CHUNK_MAX, ChunkCache, Nodes, Refs, colors, locals};

use super::{
    Editor, builtin, filetype, graphemes,
    highlight::{self as hl, Env, Highlights},
    layout::LONG_LINE,
};

/// Bytes highlighted at most per frame: the rest of a huge visible region stays plain.
// shortcut: lines over `LONG_LINE` bytes and text past this many visible bytes are not highlighted, when they matter
const MAX_HL: usize = 1 << 18;

fn point(text: &Text, off: usize) -> Point {
    let row = text.offset_to_line(off);
    Point { row, column: off - text.line_to_offset(row) }
}

/// Hands the parser the bytes of a `Text` from any offset on, one piece at a time and without copying.
pub(super) struct Reader<'t> {
    text: &'t Text,
    cur: TextCursor<'t>,
}

impl<'t> Reader<'t> {
    pub(super) fn new(text: &'t Text) -> Self {
        Reader { text, cur: text.cursor_at(0) }
    }

    /// The rest of the piece holding `byte`; empty from the end of the text on.
    pub(super) fn read(&mut self, byte: usize) -> &'t [u8] {
        if byte >= self.text.len() {
            return &[];
        }
        if byte < self.cur.offset() || byte >= self.cur.offset() + self.cur.chunk().len() {
            self.cur = self.text.cursor_at(byte);
        }
        let rest = &self.cur.chunk()[byte - self.cur.offset()..];
        // SAFETY: `rest` lies in the bytes of a piece of `*self.text`, not in the cursor: the cursor only points at the
        // piece. Pieces never change (a chunk only grows past its published end) and `text` is borrowed for `'t`, so
        // the bytes stay valid and unchanged for `'t`, however the cursor moves later. The borrow checker only ties
        // `rest` to `self.cur`, which the next call replaces.
        unsafe { slice::from_raw_parts(rest.as_ptr(), rest.len()) }
    }
}

/// Parses `text` into `parser`'s language (its included ranges), reusing `old` if edited to match.
fn parse(parser: &mut Parser, text: &Text, old: Option<&Tree>) -> Option<Tree> {
    let mut reader = Reader::new(text);
    parser.parse_with_options(&mut |byte, _| reader.read(byte), old, None)
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
    /// Locals of the top-level nodes of the main tree already queried.
    chunks: RefCell<ChunkCache>,
    /// The colors last asked for per line, while nothing they depend on changes (most frames only move the cursor).
    frame: RefCell<Option<LineColors>>,
}

/// Styles per cluster of each line of a range of lines, for one parse, set of highlight groups and `Env`.
struct LineColors {
    version: usize,
    lines: Range<usize>,
    generation: u64,
    env: Env,
    colors: Rc<Vec<Vec<Option<hl::Style>>>>,
}

impl Syntax {
    pub fn new(lang: Rc<Lang>) -> Self {
        let mut parser = Parser::new();
        // A grammar built for another tree-sitter ABI is refused: parsing then yields no tree and the text stays plain.
        let _ = parser.set_language(&lang.language);
        Syntax { lang, parser, tree: None, text: Text::new(), stale: true, layers: Vec::new(), next_layer: 0, dirty: Vec::new(), full: true, version: 0, refs: RefCell::new(None), chunks: RefCell::default(), frame: RefCell::new(None) }
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

    /// Style of each byte of `range` (a synced tree); injected layers paint over the text they cover.
    pub fn highlight(&self, text: &Text, range: Range<usize>, hl: &Highlights, env: Env) -> Vec<Option<hl::Style>> {
        let Some(tree) = &self.tree else { return vec![None; range.len()] };
        let refs = match &*self.refs.borrow() {
            Some((v, refs)) if *v == self.version => Some(refs.clone()),
            _ => None,
        };
        let refs = refs.unwrap_or_else(|| {
            let refs = Rc::new(locals(&self.lang, tree, text, &mut self.chunks.borrow_mut(), CHUNK_MAX));
            *self.refs.borrow_mut() = Some((self.version, refs.clone()));
            refs
        });
        let mut out = colors(&self.lang, tree, text, range.clone(), &self.lang.capture_styles(hl, env), &refs);
        for l in &self.layers {
            let (Some(first), Some(last)) = (l.ranges.first(), l.ranges.last()) else { continue };
            let r = first.start.max(range.start)..last.end.min(range.end);
            if r.start >= r.end {
                continue;
            }
            let at = r.start - range.start;
            let refs = locals(&l.lang, &l.tree, text, &mut ChunkCache::new(), CHUNK_MAX);
            for (k, c) in colors(&l.lang, &l.tree, text, r, &l.lang.capture_styles(hl, env), &refs).into_iter().enumerate() {
                out[at + k] = c.or(out[at + k]);
            }
        }
        out
    }

    /// Styles per cluster of each of `lines` (empty for a line not highlighted), kept while the text, the highlight
    /// groups and the `Env` stay as they are.
    pub fn line_colors(&self, text: &Text, lines: Range<usize>, hl: &Highlights, env: Env) -> Rc<Vec<Vec<Option<hl::Style>>>> {
        if let Some(f) = &*self.frame.borrow()
            && f.version == self.version
            && f.lines == lines
            && f.generation == hl.generation()
            && f.env == env
        {
            return f.colors.clone();
        }
        let start = text.line_to_offset(lines.start);
        let end = text.line_end(lines.end - 1).min(start + MAX_HL);
        let bytes = self.highlight(text, start..end, hl, env);
        let colors: Rc<Vec<Vec<Option<hl::Style>>>> = Rc::new(
            lines
                .clone()
                .map(|l| {
                    let at = text.line_to_offset(l);
                    if text.line_end(l) - at > LONG_LINE {
                        return Vec::new();
                    }
                    let line = text.line(l);
                    let mut b = at - start;
                    graphemes::iter(&line)
                        .map(|g| {
                            let c = bytes.get(b).copied().flatten();
                            b += g.len();
                            c
                        })
                        .collect()
                })
                .collect(),
        );
        *self.frame.borrow_mut() = Some(LineColors { version: self.version, lines, generation: hl.generation(), env, colors: colors.clone() });
        colors
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
        if !self.syntax_on {
            self.buf.syntax = None;
            return;
        }
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
                Some(Err(e)) => self.error(e),
                None => {}
            }
            if loaded.is_none() {
                match builtin::lang(name) {
                    Some(Ok(l)) => loaded = Some(l),
                    Some(Err(e)) => self.error(e),
                    None => {}
                }
            }
            let loaded = loaded.map(Rc::new);
            self.langs.insert(name.into(), loaded);
        }
        self.langs[name].clone()
    }

    /// Styles per cluster column for each of `lines`, empty for a line not highlighted.
    pub(super) fn syntax_lines(&mut self, lines: Range<usize>) -> Rc<Vec<Vec<Option<hl::Style>>>> {
        self.sync_syntax();
        match &self.buf.syntax {
            Some(syn) => syn.line_colors(self.buf.doc.text(), lines, &self.hl_groups, self.buf.opts.env()),
            None => Rc::default(),
        }
    }

    /// Text object `f`, `c` or `a` at the cursor; `None` without a grammar, queries or a match.
    pub(super) fn syntax_object(&self, around: bool, obj: char, n: usize) -> Option<Range<usize>> {
        let kind = match obj {
            'f' => "function",
            'c' => "class",
            'a' => "parameter",
            _ => return None,
        };
        self.buf.syntax.as_ref().filter(|_| self.syntax_on)?.object(self.buf.doc.text(), kind, around, self.offset(), n)
    }

    /// `:highlight`: sets, links, clears or shows highlight groups (see `Highlights::command`).
    pub(super) fn highlight_cmd(&mut self, args: &str) -> Result<(), String> {
        let shown = self.hl_groups.command(args, self.buf.opts.env().light)?;
        if !shown.is_empty() {
            self.info(shown);
        }
        Ok(())
    }

    /// `:syntax [on|off]`: switches syntax highlighting and the `f`/`c`/`a` objects, or says which it is.
    pub(super) fn syntax_cmd(&mut self, arg: &str) -> Result<(), String> {
        match arg.trim() {
            "" => self.info(format!("syntax {}", if self.syntax_on { "on" } else { "off" })),
            "on" => self.syntax_on = true,
            "off" => {
                // The trees of buffers not shown go too, not when they are next shown.
                self.syntax_on = false;
                self.buf.syntax = None;
                self.buffers.iter_mut().for_each(|b| b.syntax = None);
            }
            other => return Err(format!("Invalid argument: {other}")),
        }
        Ok(())
    }
}

#[cfg(test)]
pub(super) mod tests;
