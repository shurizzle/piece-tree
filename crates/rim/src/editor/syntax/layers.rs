//! Injections: regions of the text parsed with another grammar.

use std::{ops::Range, rc::Rc};

use piece_tree::Text;
use tree_sitter::{Node, Parser, QueryCursor, Range as TsRange, StreamingIterator, Tree};

use super::{filetype, lang::Lang, parse, query::Nodes};

/// Parts of the text parsed with another grammar (`injections.scm`).
pub(super) struct Layer {
    pub(super) id: usize,
    /// The layer this one is injected in; 0 is the main tree.
    pub(super) host: usize,
    pub(super) lang: Rc<Lang>,
    pub(super) tree: Tree,
    /// Parsed byte ranges, sorted.
    pub(super) ranges: Vec<Range<usize>>,
    /// Joins several `injection.combined` regions.
    pub(super) combined: bool,
    /// An edit touched its text: it is dropped and found again at the next sync.
    pub(super) dirty: bool,
}

/// Injection levels followed (markdown → code → …) and text size above which none are made.
pub(super) const MAX_DEPTH: usize = 3;
/// Bytes a layer must span for its old tree to be reused (a few KB: below, a parse from scratch is as cheap).
#[cfg(not(test))]
pub(super) const REUSE_MIN: usize = 2048;
#[cfg(test)]
pub(super) const REUSE_MIN: usize = 1;
// shortcut: a layer touched by an edit is parsed again whole, and `injection.combined` ones are all found again, so injections stop above 1 MiB; when that matters
pub(super) const MAX_WHOLE: usize = 1 << 20;

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
pub(super) struct Found {
    pub(super) name: String,
    pub(super) combined: bool,
    pub(super) ranges: Vec<TsRange>,
    pub(super) span: Range<usize>,
}

/// The injections of `tree` (a `lang` tree): all of them, or those whose match meets one of `within`.
pub(super) fn discover(lang: &Lang, tree: &Tree, text: &Text, within: Option<&[Range<usize>]>) -> Vec<Found> {
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
pub(super) fn build(found: Vec<Found>, host: usize, text: &Text, resolve: &mut dyn FnMut(&str) -> Option<Rc<Lang>>, depth: usize, next_id: &mut usize, out: &mut Vec<Layer>, reuse: &mut Vec<(String, Tree)>) {
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
