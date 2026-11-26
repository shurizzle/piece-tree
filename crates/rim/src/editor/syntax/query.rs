//! Queries run on a tree: highlight captures, locals, the text a predicate reads.

use std::{
    cmp::Reverse,
    collections::{HashMap, HashSet},
    hash::{DefaultHasher, Hash, Hasher},
    iter,
    ops::Range,
    rc::Rc,
};

use piece_tree::Text;
use tree_sitter::{Node, QueryCursor, StreamingIterator, TextProvider, Tree};

use super::lang::{Lang, LocalKind};
use crate::editor::highlight as hl;

// shortcut: locals are resolved again for the whole text when the node holding an edit is huge, and the first time (5 ms for 100 KB of Rust), so they stop past 1 MiB; when that matters
const MAX_LOCALS: usize = 1 << 20;

/// Text of nodes for query predicates (`#eq?`, `#match?`).
pub(super) struct Nodes<'a>(pub(super) &'a Text);

impl TextProvider<Vec<u8>> for Nodes<'_> {
    type I = iter::Once<Vec<u8>>;

    fn text(&mut self, node: Node) -> Self::I {
        iter::once(self.0.slice(node.byte_range()).into_owned().into_bytes())
    }
}

/// Resolved local references: (use, definition) byte ranges, sorted by use.
pub(super) type Refs = Vec<(Range<usize>, Range<usize>)>;

/// The locals of one node of a tree, positions relative to its start.
pub(super) struct Chunk {
    len: usize,
    /// Sorted outermost first.
    scopes: Vec<Range<usize>>,
    defs: Vec<(Range<usize>, String)>,
    refs: Vec<(Range<usize>, String)>,
}

/// Chunks already queried, by node, text hash and length: only what an edit changed is queried again.
pub(super) type ChunkCache = HashMap<(usize, u64, usize), Rc<Chunk>>;

/// Nodes at most this long are queried as one chunk; a longer one (an `impl` block) is split into its children.
pub(super) const CHUNK_MAX: usize = 4096;

/// The locals of `node` alone, whose text is `src`.
fn chunk_locals(lang: &Lang, node: Node, src: &str, text: &Text) -> Chunk {
    let mut chunk = Chunk { len: src.len(), scopes: Vec::new(), defs: Vec::new(), refs: Vec::new() };
    let Some(q) = &lang.locals else { return chunk };
    let base = node.start_byte();
    let mut cursor = QueryCursor::new();
    let mut it = cursor.matches(q, node, Nodes(text));
    while let Some(m) = it.next() {
        for c in m.captures() {
            let r = c.node.start_byte() - base..c.node.end_byte() - base;
            match lang.local_kinds[c.index as usize] {
                LocalKind::Scope => chunk.scopes.push(r),
                LocalKind::Definition => chunk.defs.push((r.clone(), src[r].to_string())),
                LocalKind::Reference => chunk.refs.push((r.clone(), src[r].to_string())),
                LocalKind::None => {}
            }
        }
    }
    chunk
}

/// Whether the query makes `node` itself a scope (a query over its first byte meets it as the root of the match).
fn is_scope(lang: &Lang, node: Node, text: &Text) -> bool {
    let Some(q) = &lang.locals else { return false };
    let mut cursor = QueryCursor::new();
    cursor.set_byte_range(node.start_byte()..node.start_byte() + 1);
    let mut it = cursor.matches(q, node, Nodes(text));
    while let Some(m) = it.next() {
        if m.captures().iter().any(|c| lang.local_kinds[c.index as usize] == LocalKind::Scope && c.node.byte_range() == node.byte_range()) {
            return true;
        }
    }
    false
}

/// Splits the subtree of `node` into the nodes queried on their own, each with the scopes of the long nodes above it.
fn split<'t>(lang: &Lang, node: Node<'t>, outer: &[Range<usize>], text: &Text, max: usize, out: &mut Vec<(Node<'t>, Vec<Range<usize>>)>) {
    let mut walk = node.walk();
    for child in node.children(&mut walk) {
        let r = child.byte_range();
        // Punctuation and comments (a long block has thousands, doc comments with children) hold no definition or use.
        if r.is_empty() || (child.child_count() == 0 && !child.is_named()) || child.kind().contains("comment") {
            continue;
        }
        if r.len() <= max || child.child_count() == 0 {
            out.push((child, outer.to_vec()));
            continue;
        }
        let mut outer = outer.to_vec();
        if is_scope(lang, child, text) {
            outer.push(r);
        }
        split(lang, child, &outer, text, max, out);
    }
}

/// Resolved references of `tree` as (reference, definition) byte ranges sorted by reference (`locals.scm`): the
/// definition of the same name in the nearest enclosing scope that starts before the reference. The tree is split
/// into nodes of at most `max` bytes queried on their own (`cache` keeps the results, so only what an edit changed is queried again);
/// a definition whose scope reaches out of its node is visible in the nodes after it.
pub(super) fn locals(lang: &Lang, tree: &Tree, text: &Text, cache: &mut ChunkCache, max: usize) -> Refs {
    let root = tree.root_node();
    if lang.locals.is_none() || root.byte_range().len() > MAX_LOCALS {
        return Vec::new();
    }
    let mut nodes = Vec::new();
    split(lang, root, &if is_scope(lang, root, text) { vec![root.byte_range()] } else { Vec::new() }, text, max, &mut nodes);
    let (mut seen, mut chunks) = (HashSet::new(), Vec::new());
    for (node, outer) in nodes {
        let r = node.byte_range();
        let src = text.slice(r.clone());
        let mut hash = DefaultHasher::new();
        src.hash(&mut hash);
        let key = (node.id(), hash.finish(), r.len());
        seen.insert(key);
        let chunk = cache.entry(key).or_insert_with(|| Rc::new(chunk_locals(lang, node, &src, text))).clone();
        chunks.push((r.start, outer, chunk));
    }
    cache.retain(|k, _| seen.contains(k));
    type Def = (Range<usize>, Option<Range<usize>>);
    // Scope length (none is the widest), then the later definition.
    type Rank = (usize, Reverse<usize>);
    // Definitions the nodes after see, by name: those whose scope is not inside their own node.
    let mut visible: HashMap<&str, Vec<Def>> = HashMap::new();
    let mut out: Refs = Vec::new();
    for (base, outer, c) in &chunks {
        let abs = |r: &Range<usize>| base + r.start..base + r.end;
        let mut scopes: Vec<Range<usize>> = c.scopes.iter().map(abs).chain(outer.iter().cloned()).collect();
        scopes.sort_by_key(|s| (s.start, Reverse(s.end)));
        scopes.dedup();
        // The innermost scope holding `r`: the nearest one before it that reaches past its end.
        let scope_of = |r: &Range<usize>| {
            let i = scopes.partition_point(|s| s.start <= r.start);
            scopes[..i].iter().rev().find(|s| s.end >= r.end).cloned()
        };
        let mut local: HashMap<&str, Vec<Def>> = HashMap::new();
        for (r, name) in &c.defs {
            let r = abs(r);
            local.entry(name.as_str()).or_default().push((r.clone(), scope_of(&r)));
        }
        for (r, name) in &c.refs {
            let r = abs(r);
            // The smaller scope wins (none is the widest), then the later definition.
            let mut best: Option<(Rank, Range<usize>)> = None;
            for (d, scope) in local.get(name.as_str()).into_iter().chain(visible.get(name.as_str())).flatten() {
                if *d != r && d.start <= r.start && scope.as_ref().is_none_or(|s| s.start <= r.start && r.end <= s.end) {
                    let key = (scope.as_ref().map_or(usize::MAX, |s| s.len()), Reverse(d.start));
                    if best.as_ref().is_none_or(|(k, _)| key < *k) {
                        best = Some((key, d.clone()));
                    }
                }
            }
            if let Some((_, def)) = best {
                out.push((r, def));
            }
        }
        let own = *base..base + c.len;
        for (name, defs) in local {
            visible.entry(name).or_default().extend(defs.into_iter().filter(|(_, s)| s.as_ref().is_none_or(|s| s.start < own.start || own.end < s.end)));
        }
    }
    out.sort_by_key(|(r, _)| r.start);
    out
}

/// Colors of the bytes of `range` from `lang`'s queries on `tree`: highlights, then the uses of a local
/// definition (`refs`, from `locals`) in its color.
pub(super) fn colors(lang: &Lang, tree: &Tree, text: &Text, range: Range<usize>, cols: &[Option<hl::Style>], refs: &[(Range<usize>, Range<usize>)]) -> Vec<Option<hl::Style>> {
    let mut out = captured(lang, tree, text, range.clone(), cols);
    let mut cache: HashMap<Range<usize>, Option<hl::Style>> = HashMap::new();
    let first = refs.partition_point(|(r, _)| r.end <= range.start);
    for (r, def) in refs[first..].iter().take_while(|(r, _)| r.start < range.end) {
        let c = *cache.entry(def.clone()).or_insert_with(|| captured(lang, tree, text, def.clone(), cols).first().copied().flatten());
        if let Some(c) = c {
            out[r.start.max(range.start) - range.start..r.end.min(range.end) - range.start].fill(Some(c));
        }
    }
    out
}

/// Highlight captures over `range`: larger nodes first, so inner ones and later patterns win.
pub(super) fn captured(lang: &Lang, tree: &Tree, text: &Text, range: Range<usize>, cols: &[Option<hl::Style>]) -> Vec<Option<hl::Style>> {
    let mut out = vec![None; range.len()];
    let mut cursor = QueryCursor::new();
    cursor.set_byte_range(range.clone());
    let mut caps = Vec::new();
    let mut it = cursor.captures(&lang.highlights, tree.root_node(), Nodes(text));
    while let Some((m, i)) = it.next() {
        let c = m.captures()[*i];
        if let Some(col) = cols[c.index as usize] {
            caps.push((c.node.byte_range(), m.pattern_index, col));
        }
    }
    caps.sort_by_key(|(r, p, _)| (Reverse(r.len()), *p));
    for (r, _, col) in caps {
        out[r.start.max(range.start) - range.start..r.end.min(range.end).max(r.start.max(range.start)) - range.start].fill(Some(col));
    }
    out
}
