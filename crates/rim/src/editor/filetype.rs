//! Filetype detection from the file name (`:set filetype`).

use std::path::Path;

/// Name of the tree-sitter grammar for filetype `ft` (empty: none); also the common names of fenced code blocks.
pub(super) fn grammar(ft: &str) -> &str {
    match ft {
        "sh" | "zsh" | "shell" => "bash",
        "javascriptreact" | "js" | "jsx" => "javascript",
        "typescriptreact" => "tsx",
        "ts" => "typescript",
        "py" => "python",
        "rs" => "rust",
        "c++" | "cxx" => "cpp",
        "md" => "markdown",
        _ => ft,
    }
}

/// Filetype of `path' by its name or extension, empty when unknown.
// shortcut: name and extension only, no shebang or content sniffing, when a file type needs it
pub(super) fn detect(path: &Path) -> &'static str {
    let name = path.file_name().and_then(|n| n.to_str()).unwrap_or("");
    match name {
        "Makefile" | "makefile" | "GNUmakefile" => return "make",
        "Dockerfile" => return "dockerfile",
        "Cargo.lock" => return "toml",
        _ => {}
    }
    let Some(ext) = path.extension().and_then(|e| e.to_str()) else { return "" };
    match ext.to_ascii_lowercase().as_str() {
        "rs" => "rust",
        "c" | "h" => "c",
        "cc" | "cpp" | "cxx" | "hpp" | "hh" | "hxx" => "cpp",
        "py" | "pyi" => "python",
        "js" | "mjs" | "cjs" => "javascript",
        "jsx" => "javascriptreact",
        "ts" | "mts" | "cts" => "typescript",
        "tsx" => "typescriptreact",
        "go" => "go",
        "java" => "java",
        "rb" => "ruby",
        "php" => "php",
        "lua" => "lua",
        "sh" | "bash" => "sh",
        "zsh" => "zsh",
        "fish" => "fish",
        "html" | "htm" => "html",
        "css" => "css",
        "scss" => "scss",
        "json" => "json",
        "toml" => "toml",
        "yaml" | "yml" => "yaml",
        "xml" => "xml",
        "md" | "markdown" => "markdown",
        "sql" => "sql",
        "mk" => "make",
        "txt" => "text",
        _ => "",
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn by_name_and_extension() {
        for (path, ft) in [
            ("a/b/main.rs", "rust"),
            ("X.PY", "python"),
            ("Makefile", "make"),
            ("Cargo.lock", "toml"),
            ("a.tar.gz", ""),
            ("README", ""),
            ("", ""),
        ] {
            assert_eq!(detect(Path::new(path)), ft, "{path}");
        }
        // Every extension arm resolves.
        for ext in [
            "rs", "c", "h", "cc", "cpp", "cxx", "hpp", "hh", "hxx", "py", "pyi", "js", "mjs", "cjs", "jsx", "ts", "mts", "cts", "tsx", "go", "java",
            "rb", "php", "lua", "sh", "bash", "zsh", "fish", "html", "htm", "css", "scss", "json", "toml", "yaml", "yml", "xml", "md", "markdown",
            "sql", "mk", "txt",
        ] {
            assert!(!detect(Path::new(&format!("f.{ext}"))).is_empty(), "{ext}");
        }
        assert_eq!(detect(Path::new("Dockerfile")), "dockerfile");
    }
}
