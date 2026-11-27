#!/usr/bin/env bash
# Builds the tree-sitter grammars rim loads and installs them with helix's queries.
#   tools/grammars.sh [runtime dir] [language...]
# The runtime dir defaults to ${XDG_CONFIG_HOME:-~/.config}/rim; the languages default to all.
# Needs git and a C compiler (and a C++ one for grammars with a C++ scanner).
set -euo pipefail

runtime=${1:-${XDG_CONFIG_HOME:-$HOME/.config}/rim}
shift || true

# Revisions to build; replace a branch with a tag or commit to pin it.
HELIX_REV=${HELIX_REV:-master}

# name  repository  grammar subdirectory  revision  helix query directory (- is the name)
GRAMMARS="
rust        tree-sitter/tree-sitter-rust                  .                          master  -
python      tree-sitter/tree-sitter-python                .                          master  -
javascript  tree-sitter/tree-sitter-javascript            .                          master  -
typescript  tree-sitter/tree-sitter-typescript            typescript                 master  -
tsx         tree-sitter/tree-sitter-typescript            tsx                        master  -
c           tree-sitter/tree-sitter-c                     .                          master  -
cpp         tree-sitter/tree-sitter-cpp                   .                          master  -
markdown    tree-sitter-grammars/tree-sitter-markdown     tree-sitter-markdown       split_parser  -
markdown_inline tree-sitter-grammars/tree-sitter-markdown tree-sitter-markdown-inline split_parser markdown.inline
toml        tree-sitter-grammars/tree-sitter-toml         .                          master  -
html        tree-sitter/tree-sitter-html                  .                          master  -
css         tree-sitter/tree-sitter-css                   .                          master  -
json        tree-sitter/tree-sitter-json                  .                          master  -
bash        tree-sitter/tree-sitter-bash                  .                          master  -
lua         tree-sitter-grammars/tree-sitter-lua          .                          main  -
vim         tree-sitter-grammars/tree-sitter-vim          .                          master  -
"
# helix query directories each grammar inherits from (`; inherits:`), copied along.
SHARED="ecma _javascript _typescript"

case $(uname -s) in Darwin) ext=dylib ;; MINGW* | MSYS*) ext=dll ;; *) ext=so ;; esac
work=$(mktemp -d)
trap 'rm -rf "$work"' EXIT
mkdir -p "$runtime/grammars" "$runtime/queries"

git clone --quiet --depth 1 --branch "$HELIX_REV" https://github.com/helix-editor/helix "$work/helix"
for dir in $SHARED; do
    rm -rf "$runtime/queries/$dir"
    cp -R "$work/helix/runtime/queries/$dir" "$runtime/queries/$dir"
done

echo "$GRAMMARS" | while read -r name repo sub rev helix; do
    [ -z "$name" ] && continue
    if [ $# -gt 0 ] && ! printf '%s\n' "$@" | grep -qx "$name"; then continue; fi
    echo "== $name"
    src="$work/${repo//\//_}"
    [ -d "$src" ] || git clone --quiet --depth 1 --branch "$rev" "https://github.com/$repo" "$src"
    dir="$src/$sub/src"
    objs=()
    for c in "$dir"/parser.c "$dir"/scanner.c; do
        [ -f "$c" ] && { cc -O2 -fPIC -I "$dir" -c "$c" -o "$work/$name-$(basename "$c").o"; objs+=("$work/$name-$(basename "$c").o"); }
    done
    if [ -f "$dir/scanner.cc" ]; then
        c++ -O2 -fPIC -I "$dir" -c "$dir/scanner.cc" -o "$work/$name-scanner-cc.o"
        objs+=("$work/$name-scanner-cc.o")
    fi
    linker=cc
    [ -f "$dir/scanner.cc" ] && linker=c++
    $linker -shared -o "$runtime/grammars/$name.$ext" "${objs[@]}"
    [ "$helix" = "-" ] && helix=$name
    rm -rf "$runtime/queries/$name"
    if [ -d "$work/helix/runtime/queries/$helix" ]; then
        cp -R "$work/helix/runtime/queries/$helix" "$runtime/queries/$name"
    else
        echo "   no helix queries for $name" >&2
    fi
done
echo "installed in $runtime"
