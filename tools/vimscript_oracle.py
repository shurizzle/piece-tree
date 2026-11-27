#!/usr/bin/env python3
"""Records what Neovim prints for the Vimscript cases of rim, as golden files.

Usage: python3 -I tools/vimscript_oracle.py [case.vim ...]
Default: every crates/rim/src/editor/script/cases/*.vim.

A case file holds scripts separated by lines that are exactly `"---`. In a file named `*.typed.vim`
each line of a script is typed at the `:` prompt (`feedkeys()`), one after the other (a line that starts with a backslash is typed on the same `feedkeys()` after the one before, without `:`, for the lines of a here document), in a fresh
Neovim: what `do_cmdline` does for a typed line differs from a sourced one. Each script runs in a fresh
`nvim --headless -u NONE -i NONE -n`; what it prints (`:echo`, `:echomsg`, errors) is captured with
`:redir` and written, in the same order and with the same separator, to `<name>.golden`. The first
line of the golden file names the Neovim version. `cargo test` reads the golden files and never
needs Neovim. Run this again only when the cases change or to review a Neovim upgrade.
"""
import pathlib
import re
import subprocess
import sys
import tempfile

ROOT = pathlib.Path(__file__).resolve().parent.parent
CASES = ROOT / "crates/rim/src/editor/script/cases"
SEP = '"---'


def split_cases(text):
    out, cur = [], []
    for line in text.split("\n"):
        if line == SEP:
            out.append("\n".join(cur))
            cur = []
        else:
            cur.append(line)
    out.append("\n".join(cur))
    return out


def normalize(out):
    # A script run by `-c` has the command line at the root of its error stack; a typed `:source` has not.
    out = out.replace("Error in command line..script ", "Error in ")
    # A typed line has no file: the command line of `-c` is the root of its stack.
    out = out.replace("Error in command line:\n", "")
    # The name of where an uncaught exception was thrown is a stack of its own: it has the command line too.
    out = out.replace("..command line..script ", "..")
    # `v:throwpoint` and the like name the stack with it too.
    out = out.replace("command line..script ", "")
    # Likewise the function a typed line called.
    out = out.replace("Error in command line..function ", "Error in function ")
    # Paths of the temporary file.
    return out


def run_case(nvim, script, typed=False):
    with tempfile.TemporaryDirectory() as d:
        d = pathlib.Path(d).resolve()
        (d / "case.vim").write_text(script + "\n")
        # One `-c` per command: an error aborts the rest of a command line, and `silent!` would
        # change how errors are reported (their source is repeated every time).
        if typed:
            # A line typed at the prompt; the error of one does not stop the next.
            # A line that starts with a backslash goes on the line before (the lines of a here document, typed without `:`).
            groups = []
            # A first line `"keytyped` makes the keys count as typed (`KeyTyped`), as at a real prompt: `:function` then
            # checks the name before it asks for the body. Without it they come from `feedkeys()` alone.
            flags = "xt" if script.startswith('"keytyped\n') else "x"
            for l in script.split("\n"):
                if l.startswith("\\") and groups:
                    groups[-1].append(l[1:])
                elif l.strip():
                    groups.append([l])
            body = ["call feedkeys(':' . '{}' . \"\\r\", '{}')".format("' . \"\\r\" . '".join(x.replace("'", "''") for x in g), flags) for g in groups]
        else:
            body = ["source {c}".format(c=d / "case.vim")]
        cmds = [
            # A file, not a variable: `redir => g:out` would be a global of the script.
            "redir! > {o}".format(o=d / "out.txt"),
            *body,
            "redir END",
            "qa!",
        ]
        args = [nvim, "--headless", "-u", "NONE", "-i", "NONE", "-n"]
        for c in cmds:
            args += ["-c", c]
        subprocess.run(args, check=True, capture_output=True, timeout=30, cwd=d)
        out = (d / "out.txt").read_bytes().decode(errors="replace")  # not read_text: it turns \r into \n
        return normalize(out.replace(str(d / "case.vim"), "{file}"))


def main():
    nvim = "nvim"
    version = subprocess.run([nvim, "--version"], check=True, capture_output=True, text=True).stdout.splitlines()[0]
    files = [pathlib.Path(a) for a in sys.argv[1:]] or sorted(CASES.glob("*.vim"))
    for f in files:
        typed = f.name.endswith(".typed.vim")
        outs = [run_case(nvim, s, typed) for s in split_cases(f.read_bytes().decode())]
        (f.parent / (f.name[: -len(".vim")] + ".golden")).write_text(f"{version}\n" + f"\n{SEP}\n".join(outs))
        print(f"{f.name}: {len(outs)} cases")


if __name__ == "__main__":
    main()
