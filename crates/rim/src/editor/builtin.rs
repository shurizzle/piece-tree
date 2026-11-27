//! Grammars linked into the binary: the fallback when none is installed in the runtime directory.
//!
//! Highlights, locals and injections come from the grammar crates; text objects and (where the
//! crate has none) locals from `queries/`. Each language is a cargo feature (`lang-rust`, …; `grammars`, on by
//! default, enables all).

use tree_sitter::Language;

use super::syntax::{Lang, Queries};

/// Built-in grammar `name`; `None` when there is none.
// Without any `lang-*` feature the match has no arm but the last.
#[allow(unreachable_code, unused_variables)]
pub(super) fn lang(name: &str) -> Option<Result<Lang, String>> {
    #[allow(unused)]
    let join = |a: &str, b: &str| format!("{a}\n{b}");
    let objects = |n: &str| -> String {
        match n {
            "rust" => include_str!("queries/textobjects/rust.scm").into(),
            "python" => include_str!("queries/textobjects/python.scm").into(),
            "javascript" => include_str!("queries/textobjects/javascript.scm").into(),
            "typescript" | "tsx" => join(include_str!("queries/textobjects/javascript.scm"), include_str!("queries/textobjects/typescript.scm")),
            "c" => include_str!("queries/textobjects/c.scm").into(),
            "cpp" => include_str!("queries/textobjects/cpp.scm").into(),
            "lua" => include_str!("queries/textobjects/lua.scm").into(),
            "css" => include_str!("queries/textobjects/css.scm").into(),
            "bash" => include_str!("queries/textobjects/bash.scm").into(),
            _ => String::new(),
        }
    };
    #[cfg(feature = "lang-javascript")]
    use tree_sitter_javascript as js;
    let (language, highlights, locals, injections): (Language, String, String, String) = match name {
        // Rust: the crate's macro injection would parse every `println!` body as Rust code.
        #[cfg(feature = "lang-rust")]
        "rust" => (tree_sitter_rust::LANGUAGE.into(), tree_sitter_rust::HIGHLIGHTS_QUERY.into(), include_str!("queries/locals/rust.scm").into(), String::new()),
        #[cfg(feature = "lang-python")]
        "python" => (tree_sitter_python::LANGUAGE.into(), tree_sitter_python::HIGHLIGHTS_QUERY.into(), include_str!("queries/locals/python.scm").into(), String::new()),
        #[cfg(feature = "lang-javascript")]
        "javascript" => (js::LANGUAGE.into(), join(js::HIGHLIGHT_QUERY, js::JSX_HIGHLIGHT_QUERY), js::LOCALS_QUERY.into(), js::INJECTIONS_QUERY.into()),
        #[cfg(feature = "lang-typescript")]
        "typescript" => (
            tree_sitter_typescript::LANGUAGE_TYPESCRIPT.into(),
            join(js::HIGHLIGHT_QUERY, tree_sitter_typescript::HIGHLIGHTS_QUERY),
            join(js::LOCALS_QUERY, tree_sitter_typescript::LOCALS_QUERY),
            String::new(),
        ),
        #[cfg(feature = "lang-tsx")]
        "tsx" => (
            tree_sitter_typescript::LANGUAGE_TSX.into(),
            join(&join(js::HIGHLIGHT_QUERY, js::JSX_HIGHLIGHT_QUERY), tree_sitter_typescript::HIGHLIGHTS_QUERY),
            join(js::LOCALS_QUERY, tree_sitter_typescript::LOCALS_QUERY),
            String::new(),
        ),
        #[cfg(feature = "lang-c")]
        "c" => (tree_sitter_c::LANGUAGE.into(), tree_sitter_c::HIGHLIGHT_QUERY.into(), String::new(), String::new()),
        #[cfg(feature = "lang-cpp")]
        "cpp" => (tree_sitter_cpp::LANGUAGE.into(), join(tree_sitter_c::HIGHLIGHT_QUERY, tree_sitter_cpp::HIGHLIGHT_QUERY), String::new(), String::new()),
        #[cfg(feature = "lang-markdown")]
        "markdown" => (tree_sitter_md::LANGUAGE.into(), tree_sitter_md::HIGHLIGHT_QUERY_BLOCK.into(), String::new(), tree_sitter_md::INJECTION_QUERY_BLOCK.into()),
        #[cfg(feature = "lang-markdown")]
        "markdown_inline" => (tree_sitter_md::INLINE_LANGUAGE.into(), tree_sitter_md::HIGHLIGHT_QUERY_INLINE.into(), String::new(), tree_sitter_md::INJECTION_QUERY_INLINE.into()),
        #[cfg(feature = "lang-toml")]
        "toml" => (tree_sitter_toml_ng::LANGUAGE.into(), tree_sitter_toml_ng::HIGHLIGHTS_QUERY.into(), String::new(), String::new()),
        #[cfg(feature = "lang-html")]
        "html" => (tree_sitter_html::LANGUAGE.into(), tree_sitter_html::HIGHLIGHTS_QUERY.into(), String::new(), tree_sitter_html::INJECTIONS_QUERY.into()),
        #[cfg(feature = "lang-css")]
        "css" => (tree_sitter_css::LANGUAGE.into(), tree_sitter_css::HIGHLIGHTS_QUERY.into(), String::new(), String::new()),
        #[cfg(feature = "lang-json")]
        "json" => (tree_sitter_json::LANGUAGE.into(), tree_sitter_json::HIGHLIGHTS_QUERY.into(), String::new(), String::new()),
        #[cfg(feature = "lang-bash")]
        "bash" => (tree_sitter_bash::LANGUAGE.into(), tree_sitter_bash::HIGHLIGHT_QUERY.into(), String::new(), String::new()),
        #[cfg(feature = "lang-lua")]
        "lua" => (tree_sitter_lua::LANGUAGE.into(), tree_sitter_lua::HIGHLIGHTS_QUERY.into(), tree_sitter_lua::LOCALS_QUERY.into(), tree_sitter_lua::INJECTIONS_QUERY.into()),
        #[cfg(feature = "lang-vim")]
        "vim" => (tree_sitter_vim::language(), tree_sitter_vim::HIGHLIGHTS_QUERY.into(), String::new(), tree_sitter_vim::INJECTIONS_QUERY.into()),
        _ => return None,
    };
    Some(Lang::new(name, language, &Queries { highlights: &highlights, locals: &locals, injections: &injections, objects: &objects(name) }))
}

/// The built-in grammars this build has.
#[cfg(test)]
pub(super) fn names() -> Vec<&'static str> {
    let all = [
        ("lang-rust", "rust"),
        ("lang-python", "python"),
        ("lang-javascript", "javascript"),
        ("lang-typescript", "typescript"),
        ("lang-tsx", "tsx"),
        ("lang-c", "c"),
        ("lang-cpp", "cpp"),
        ("lang-markdown", "markdown"),
        ("lang-markdown", "markdown_inline"),
        ("lang-toml", "toml"),
        ("lang-html", "html"),
        ("lang-css", "css"),
        ("lang-json", "json"),
        ("lang-bash", "bash"),
        ("lang-lua", "lua"),
        ("lang-vim", "vim"),
    ];
    all.into_iter().filter(|(_, name)| lang(name).is_some()).map(|(_, name)| name).collect()
}
