# Syntax (tree-sitter)

Highlighting and the `f`/`c`/`a` text objects come from tree-sitter grammars **loaded at run time**; nothing is linked in. The grammar of a buffer follows its [filetype](rim.md) (`:set ft=`, detected from the name when the buffer opens).

## Runtime layout

`<config dir>/rim` (`$XDG_CONFIG_HOME` or `~/.config`, next to the init file; `Editor::set_runtime`):

```
grammars/<name>.so|dylib|dll     exports tree_sitter_<name> (`-` becomes `_`)
queries/<name>/highlights.scm    helix capture names
queries/<name>/textobjects.scm   optional
```

`; inherits: a,b` among the comments that open a query file (helix puts a note before it) prepends the same file of `a` and `b` (depth limit 8). Names are `[A-Za-z0-9_-]` only. Filetype → grammar name is the identity except `sh`/`zsh` → `bash`, `javascriptreact` → `javascript`, `typescriptreact` → `tsx` (`filetype::grammar`).

## Built-in grammars

Rust, Python, JavaScript (JSX), TypeScript, TSX, C, C++, Markdown (block and inline), TOML, HTML, CSS, JSON, Bash and Lua are linked in (`editor/builtin.rs`, the `tree-sitter-*` crates) and used when the runtime directory has no grammar of that name; an installed one wins, so the runtime directory both adds languages and overrides these. Highlights, locals and injections come from the crates; the crates' TypeScript, TSX and C++ highlights are joined with JavaScript's and C's. Text objects (`queries/textobjects/`) and, for Rust and Python, locals (`queries/locals/`) are ours. HTML injects `<script>` as JavaScript and `<style>` as CSS. Rust has no injections (the crate's would parse every macro body as Rust).

`tools/grammars.sh [dir] [lang...]` builds installable grammars (the same languages, `markdown_inline` too) with helix's queries, which are usually fuller than the crates': it clones them, compiles with `cc` and installs into the runtime directory. Revisions are the first lines of the script: replace branches with tags to pin them. A grammar that fails to load, or a query that does not compile, shows its error once and the built-in one (if any) is used.

## How it works (`editor/syntax.rs`)

- `Lang`: library (leaked: never unloaded), `Query` for highlights, optional one for objects, capture colors for the dark and light palettes (`color`: xterm 256 index by longest known name prefix, `function.method` → `function`; unknown captures such as `spell` are not colored).
- `Syntax` (one per `Buffer`, made by `Editor::sync_syntax` on demand, so `:set ft=` and `:e` need no hook): the tree, the `Text` version it describes and a stale flag.
  - `Syntax::edit` runs from `map_marks` after every `Document` call: the call's `Edit`s merge into one `InputEdit` (changed region), `Tree::edit`, stale. A version it does not follow (reload, `:compact`) is reparsed whole.
  - `Syntax::sync` parses before use (render, objects) incrementally from the old tree; the parser reads the piece tree through `Text::cursor_at` (`RegexCursor::chunk`).
  - `highlight` paints byte colors for the visible text: larger captures first, so inner ones and later patterns win; predicates (`#eq?`, `#match?`) read the text. `syntax_lines` turns bytes into cluster columns per line; `Style::Syntax(color)` draws as foreground, under search matches and the Visual selection.
- Locals (`locals.scm`): `@local.scope`, `@local.definition[.x]`, `@local.reference` (with or without `local.`). A reference resolves to the same-named definition in the nearest enclosing scope that starts before it, and is drawn in the color of that definition's own highlight (a use of a parameter looks like the parameter). Resolved over the whole text once per parse and kept (`Syntax::refs`, 5 ms for 100 KB of Rust, not per frame); a layer resolves its own. Our Rust and Python queries cover `let`/`if let`/`for`/`match` and tuple, slice, reference patterns, parameters and closures, and Python assignment targets, tuple unpacking, `for`, `with … as`, `:=` and comprehensions; a definition without a highlight of its own (a plain `let` variable) leaves its uses plain.
- Injections (`injections.scm`): `@injection.content` regions parsed with another grammar, named by `#set! injection.language "x"`, a `@injection.language` node (info strings such as `rust,no_run` are cut at the first odd char; `py`, `js`, `sh`, `c++`… map through `filetype::grammar`), or `injection.self`/`injection.parent`; helix names (`markdown.inline`) map to ours (`.` and `-` become `_`), and `injection.include-unnamed-children` is the default here. `injection.combined` joins the regions of a grammar into one layer; unless `injection.include-children`, the content's named children are cut out. Layers (`Layer`) nest up to 3 deep (markdown → code → …), paint over their host, and a language with no grammar is skipped.
  - Edits update layers instead of rebuilding them: `Syntax::edit` keeps a layer wholly before the edit, moves one wholly after it (`Tree::edit` and shifted ranges) and marks one touching it dirty; it also records the changed bytes (`dirty`). `sync` adds the base tree's `changed_ranges`, finds the injections again only where those bytes are (`discover` with a byte range), drops the dirty layers, the ones those matches cover and what is injected in them, and parses the new ones. A touched layer is parsed again from its old tree (`Tree::edit` reaches it, and a pending `dirty` layer too) when it spans at least 2 KiB and is not `markdown_inline`, whose incremental parse differs from a fresh one; smaller ones are parsed whole. `injection.combined` (regions of one grammar in one layer) or a text change from outside (`reload`) rebuilds all layers.
  - Cost (release, 30 KB Markdown with 200 fenced Rust blocks, 600 layers): the first parse 50 ms; one edit 0.7–1.3 ms, 5 ms when it first touches a block, against 13–17 ms when every layer was rebuilt. HTML with 100 scripts and 100 styles: 0.2 ms against 1.5 ms. A JavaScript edit inside a tagged template (combined) rebuilds: 13 ms at 80 KB.
- Objects: `object` takes the `<kind>.inside|around` captures holding the cursor byte from the main tree and from every layer holding it (a function of a Rust block in Markdown), smallest first (`count` picks outward). A parameter `around` also takes the comma after it and the blanks that follow, or the one before it for the last (`with_comma`). helix queries make `inside` the body node, braces included (`dif` leaves `fn a() `).

Limits: see [limitations.md](limitations.md) (Editor).
