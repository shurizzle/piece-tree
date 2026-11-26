//! Grammars linked into the binary: the fallback when none is installed in the runtime directory.
//!
//! Highlights, locals and injections come from the grammar crates; text objects and (where the
//! crate has none) locals from `queries/`.

use tree_sitter::Language;

use super::syntax::{Lang, Queries};

/// Built-in grammar `name`; `None` when there is none.
pub(super) fn lang(name: &str) -> Option<Result<Lang, String>> {
    let join = |a: &str, b: &str| format!("{a}\n{b}");
    let objects = |n: &str| match n {
        "rust" => include_str!("queries/textobjects/rust.scm"),
        "python" => include_str!("queries/textobjects/python.scm"),
        "javascript" | "typescript" | "tsx" => include_str!("queries/textobjects/javascript.scm"),
        "c" => include_str!("queries/textobjects/c.scm"),
        "cpp" => include_str!("queries/textobjects/cpp.scm"),
        "lua" => include_str!("queries/textobjects/lua.scm"),
        "css" => include_str!("queries/textobjects/css.scm"),
        "bash" => include_str!("queries/textobjects/bash.scm"),
        _ => "",
    };
    use tree_sitter_javascript as js;
    let (language, highlights, locals, injections): (Language, String, String, String) = match name {
        // Rust: the crate's macro injection would parse every `println!` body as Rust code.
        "rust" => (tree_sitter_rust::LANGUAGE.into(), tree_sitter_rust::HIGHLIGHTS_QUERY.into(), include_str!("queries/locals/rust.scm").into(), String::new()),
        "python" => (tree_sitter_python::LANGUAGE.into(), tree_sitter_python::HIGHLIGHTS_QUERY.into(), include_str!("queries/locals/python.scm").into(), String::new()),
        "javascript" => (js::LANGUAGE.into(), join(js::HIGHLIGHT_QUERY, js::JSX_HIGHLIGHT_QUERY), js::LOCALS_QUERY.into(), js::INJECTIONS_QUERY.into()),
        "typescript" => (
            tree_sitter_typescript::LANGUAGE_TYPESCRIPT.into(),
            join(js::HIGHLIGHT_QUERY, tree_sitter_typescript::HIGHLIGHTS_QUERY),
            join(js::LOCALS_QUERY, tree_sitter_typescript::LOCALS_QUERY),
            String::new(),
        ),
        "tsx" => (
            tree_sitter_typescript::LANGUAGE_TSX.into(),
            join(&join(js::HIGHLIGHT_QUERY, js::JSX_HIGHLIGHT_QUERY), tree_sitter_typescript::HIGHLIGHTS_QUERY),
            join(js::LOCALS_QUERY, tree_sitter_typescript::LOCALS_QUERY),
            String::new(),
        ),
        "c" => (tree_sitter_c::LANGUAGE.into(), tree_sitter_c::HIGHLIGHT_QUERY.into(), String::new(), String::new()),
        "cpp" => (tree_sitter_cpp::LANGUAGE.into(), join(tree_sitter_c::HIGHLIGHT_QUERY, tree_sitter_cpp::HIGHLIGHT_QUERY), String::new(), String::new()),
        "markdown" => (tree_sitter_md::LANGUAGE.into(), tree_sitter_md::HIGHLIGHT_QUERY_BLOCK.into(), String::new(), tree_sitter_md::INJECTION_QUERY_BLOCK.into()),
        "markdown_inline" => (tree_sitter_md::INLINE_LANGUAGE.into(), tree_sitter_md::HIGHLIGHT_QUERY_INLINE.into(), String::new(), tree_sitter_md::INJECTION_QUERY_INLINE.into()),
        "toml" => (tree_sitter_toml_ng::LANGUAGE.into(), tree_sitter_toml_ng::HIGHLIGHTS_QUERY.into(), String::new(), String::new()),
        "html" => (tree_sitter_html::LANGUAGE.into(), tree_sitter_html::HIGHLIGHTS_QUERY.into(), String::new(), tree_sitter_html::INJECTIONS_QUERY.into()),
        "css" => (tree_sitter_css::LANGUAGE.into(), tree_sitter_css::HIGHLIGHTS_QUERY.into(), String::new(), String::new()),
        "json" => (tree_sitter_json::LANGUAGE.into(), tree_sitter_json::HIGHLIGHTS_QUERY.into(), String::new(), String::new()),
        "bash" => (tree_sitter_bash::LANGUAGE.into(), tree_sitter_bash::HIGHLIGHT_QUERY.into(), String::new(), String::new()),
        "lua" => (tree_sitter_lua::LANGUAGE.into(), tree_sitter_lua::HIGHLIGHTS_QUERY.into(), tree_sitter_lua::LOCALS_QUERY.into(), tree_sitter_lua::INJECTIONS_QUERY.into()),
        _ => return None,
    };
    Some(Lang::new(name, language, &Queries { highlights: &highlights, locals: &locals, injections: &injections, objects: objects(name) }))
}

/// Every built-in grammar.
#[cfg(test)]
pub(super) const NAMES: [&str; 15] = ["rust", "python", "javascript", "typescript", "tsx", "c", "cpp", "markdown", "markdown_inline", "toml", "html", "css", "json", "bash", "lua"];
