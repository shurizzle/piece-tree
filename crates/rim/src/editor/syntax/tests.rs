use std::{collections::HashMap, fs};

use piece_tree::Document;
use libloading::Library;

use std::{cmp::Reverse, ops::Range};

use tree_sitter::{QueryCursor, StreamingIterator, Tree};

use super::{
    lang::{color, language_of, read_query},
    layers::MAX_DEPTH,
    query::Nodes,
    *,
};

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
    let dark = s.highlight(&t, 0..src.len(), Background::Dark, &[]);
    let light = s.highlight(&t, 0..src.len(), Background::Light, &[]);
    let at = |pat: &str| src.find(pat).unwrap();
    assert_eq!((dark[0], light[0]), (Some(176), Some(127)));
    assert_eq!(dark[at("\"x")], Some(114));
    assert_eq!(dark[at("// c")], Some(244));
    assert_eq!(dark[at("; }")], None);
    // Only the asked range is painted.
    assert_eq!(s.highlight(&t, at("let")..at("let") + 3, Background::Dark, &[]), [Some(176); 3]);
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
    assert_eq!(samples.map(|s| s.0).to_vec(), builtin::names());
    for (name, src) in samples {
        let (mut s, t) = (Syntax::new(builtin(name)), Text::from(src));
        s.sync(&t, &mut |n| Some(builtin(n)));
        assert!(!s.tree.as_ref().unwrap().root_node().has_error(), "{name}");
        assert!(s.highlight(&t, 0..src.len(), Background::Dark, &[]).iter().any(Option::is_some), "{name}");
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
    let h = s.highlight(&t, 0..src.len(), Background::Dark, &[]);
    let at = |pat: &str| src.find(pat).unwrap();
    assert_eq!((h[at("let")], h[at("color")], h[at("<p>") + 1]), (Some(176), Some(110), Some(168)));
}

#[test]
fn locals_color_a_use_like_its_definition() {
    let src = "fn f(x: u8) -> u8 {\n    let y = x;\n    let z = |x: u8| x;\n    y + z(x)\n}\nfn g() { x }\n";
    let (mut s, t) = (Syntax::new(builtin("rust")), Text::from(src));
    s.sync(&t, &mut |_| None);
    let h = s.highlight(&t, 0..src.len(), Background::Dark, &[]);
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
    let h = s.highlight(&t, 0..src.len(), Background::Dark, &[]);
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
    let h = s.highlight(doc.text(), 0..doc.text().len(), Background::Dark, &[]);
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
            let (got, want) = (syn.highlight(doc.text(), 0..len, Background::Dark, &[]), fresh.highlight(doc.text(), 0..len, Background::Dark, &[]));
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
    assert_eq!(s.highlight(&t, 0..2, Background::Dark, &[]), [Some(176); 2]);
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
    let h = s.highlight(&t, 0..src.len(), Background::Dark, &[]);
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
    s.highlight(doc.text(), 0..src.len(), Background::Dark, &[]);
    let before = doc.text().clone();
    doc.insert(at("p:", 0), "q");
    s.edit(&before, doc.last_edits(), doc.text());
    s.sync(doc.text(), &mut |_| None);
    let text = doc.text().slice(0..doc.text().len()).into_owned();
    let h = s.highlight(doc.text(), 0..text.len(), Background::Dark, &[]);
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

/// The locals of the whole text in one query, the reference for `locals`.
fn locals_whole(lang: &Lang, tree: &Tree, text: &Text, span: Range<usize>) -> Refs {
    let Some(q) = &lang.locals else { return Vec::new() };
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
    // The text of the span is read once, so a name is a slice of it, not an allocation.
    let region = text.slice(span.clone());
    let name = |r: &Range<usize>| &region[r.start - span.start..r.end - span.start];
    let (mut scopes, mut defs, mut refs) = (Vec::new(), Vec::new(), Vec::new());
    let mut cursor = QueryCursor::new();
    cursor.set_byte_range(span.clone());
    let mut it = cursor.matches(q, tree.root_node(), Nodes(text));
    while let Some(m) = it.next() {
        for c in m.captures() {
            let r = c.node.byte_range();
            match kinds[c.index as usize] {
                1 => scopes.push(r),
                2 => defs.push((name(&r), r)),
                3 => refs.push((name(&r), r)),
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
        by_name.entry(*name).or_default().push((r.clone(), scope_of(r)));
    }
    let mut out: Vec<_> = refs
        .iter()
        .filter_map(|(name, r)| {
            let (def, _) = by_name
                .get(name)?
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

/// Chunked locals equal the whole-text ones, also while edits keep most chunks cached.
#[test]
fn chunked_locals_match_whole_text_locals() {
    let cases = [
        ("rust", "fn f(x: u8) { let (a, b) = (x, 1); match a { n => n + b } }\nfn g(y: u8) -> u8 { let z = y; z }\nfn h() { let q = 2; q }\n", ["x", "a", "y", "q", " ", "_", ";", "z"]),
        ("python", "g = 1\ndef f(x):\n    y = x + g\n    return [y for y in range(x)]\nclass A:\n    def m(self, p):\n        return p + g\nh = g\n", ["x", "g", "y", " ", "p", "h", "1", "="]),
        ("javascript", "const g = 1;\nfunction f(x) { let y = x + g; return (z) => z + y; }\nconst h = g + f(2);\n", ["x", "g", "y", " ", "z", "h", "1", ";"]),
    ];
    for (name, src, snippets) in cases {
        let mut doc = Document::new(src);
        let mut syn = Syntax::new(builtin(name));
        syn.sync(doc.text(), &mut |_| None);
        let mut cache = ChunkCache::new();
        let mut rng = Lcg(5);
        let mut hits = 0;
        for step in 0..150 {
            let before = doc.text().clone();
            let len = doc.text().len();
            match rng.below(6) {
                0 if len > 0 => {
                    let a = rng.below(len);
                    doc.delete(a..(a + 1 + rng.below(3)).min(len));
                }
                1 => {
                    doc.undo();
                }
                _ => doc.insert(rng.below(len + 1), snippets[rng.below(snippets.len())]),
            }
            syn.edit(&before, doc.last_edits(), doc.text());
            syn.sync(doc.text(), &mut |_| None);
            let (tree, text) = (syn.tree.as_ref().unwrap(), doc.text());
            let before_len = cache.len();
            let chunked = locals(&syn.lang, tree, text, &mut cache, 48);
            hits += cache.len().min(before_len);
            let mut whole = locals_whole(&syn.lang, tree, text, 0..text.len());
            // Several definitions can tie only when their scopes are equal and start together: not here.
            whole.sort_by_key(|(r, d)| (r.start, d.start));
            let mut chunked = chunked;
            chunked.sort_by_key(|(r, d)| (r.start, d.start));
            assert_eq!(chunked, whole, "{name} step {step}");
        }
        assert!(hits > 20, "{name}: the cache was not used ({hits})");
    }
}

#[test]
fn syntax_colors_override_the_table_by_prefix() {
    let src = "fn main() { let s = \"x\"; } // c";
    let (s, t) = synced(src);
    let at = |pat: &str| src.find(pat).unwrap();
    let over = [("keyword".to_string(), Some(1)), ("string".to_string(), None), ("comment".to_string(), Some(2)), ("keyword".to_string(), Some(3))];
    let h = s.highlight(&t, 0..src.len(), Background::Dark, &over);
    assert_eq!((h[0], h[at("let")]), (Some(3), Some(3)), "the last entry for a name wins");
    assert_eq!((h[at("\"x")], h[at("// c")]), (None, Some(2)));
    assert_eq!(h[at("main")], Some(75), "the table for the rest");
    // A cached frame follows the overrides.
    let lines = s.line_colors(&t, 0..1, Background::Dark, &[]);
    assert_eq!(lines[0][0], Some(176));
    assert!(Rc::ptr_eq(&lines, &s.line_colors(&t, 0..1, Background::Dark, &[])));
    assert_eq!(s.line_colors(&t, 0..1, Background::Dark, &over)[0][0], Some(3));
    assert_eq!(s.line_colors(&t, 0..1, Background::Light, &[])[0][0], Some(127));
}

#[test]
fn rust_items_without_a_body_are_classes() {
    let src = "struct X;\nstruct P(u8);\nstruct S { a: u8 }\nenum E { A }\n";
    let (mut s, t) = (Syntax::new(builtin("rust")), Text::from(src));
    s.sync(&t, &mut |_| None);
    let at = |pat: &str| src.find(pat).unwrap();
    assert_eq!(&src[s.object(&t, "class", true, at("X;"), 1).unwrap()], "struct X;");
    assert_eq!(s.object(&t, "class", false, at("X;"), 1), None, "no body, no inside");
    assert_eq!(&src[s.object(&t, "class", true, at("(u8)"), 1).unwrap()], "struct P(u8);");
    assert_eq!(&src[s.object(&t, "class", false, at("a: u8"), 1).unwrap()], "{ a: u8 }");
    assert_eq!(&src[s.object(&t, "class", true, at("A }"), 1).unwrap()], "enum E { A }");
}
