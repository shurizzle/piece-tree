//! Cases whose expected output was recorded from Neovim (`tools/vimscript_oracle.py`): each
//! script of a `cases/*.vim` file runs in the editor and what it prints must equal the section of
//! the `.golden` file, as `:redir` collected it.

use std::fs;

use crate::editor::tests::ed;

const SEP: &str = "\n\"---\n";

/// Scripts of a case file, and the outputs of its golden file.
fn load(vim: &str, golden: &str) -> (Vec<String>, Vec<String>) {
    let scripts = vim.split("\n\"---\n").map(str::to_string).collect();
    let outs = golden.split_once('\n').expect("a version line").1.split(SEP).map(str::to_string).collect();
    (scripts, outs)
}

/// Cases that differ from Neovim and are known to: (file, case numbers, from 0). Each phase of
/// docs/reference/vimscript.md empties its part of this list; it never grows.
const KNOWN: &[(&str, &[usize])] = &[("range", &[]), ("typed", &[]), ("cmd", &[]), ("bar", &[]), ("let", &[]), ("funcs", &[]), ("expr", &[]), ("edge", &[]), ("args", &[]), ("mixed", &[]), ("extreme", &[]), ("triple", &[]), ("double", &[]), ("valid", &[]), ("sort", &[]), ("heredoc", &[]), ("heredoc.typed", &[]), ("function", &[]), ("function.typed", &[]), ("call", &[]), ("call2", &[]), ("call.typed", &[]), ("funcref", &[]), ("lambda", &[]), ("dictfunc", &[]), ("try", &[]), ("try2", &[]), ("execute", &[]), ("append", &[]), ("append.typed", &[]), ("excur", &[]), ("normcur", &[]), ("defer", &[])];

/// The lines of `s` in order.
fn sorted_lines(s: &str) -> String {
    let mut l: Vec<&str> = s.lines().collect();
    l.sort_unstable();
    l.join("\n")
}

fn run(name: &str, vim: &str, golden: &str) {
    run_as(name, vim, golden, false);
}

/// `typed`: each line of a script is typed at the `:` prompt, as in `*.typed.vim`.
fn run_as(name: &str, vim: &str, golden: &str, typed: bool) {
    let (scripts, outs) = load(vim, golden);
    assert_eq!(scripts.len(), outs.len(), "{name}: cases and golden outputs differ in number");
    // `RIM_GOLDEN_SHOW=1` lists every difference, the known ones too.
    let known = if std::env::var_os("RIM_GOLDEN_SHOW").is_some() { &[][..] } else { KNOWN.iter().find(|(n, _)| *n == name).map_or(&[][..], |(_, k)| k) };
    let dir = std::env::temp_dir().join(format!("rim-golden-{name}-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    // A sourced file is named by its real directory.
    let dir = fs::canonicalize(&dir).unwrap();
    let mut bad = Vec::new();
    for (i, (script, want)) in scripts.iter().zip(&outs).enumerate() {
        let path = dir.join("case.vim");
        fs::write(&path, format!("{script}\n")).unwrap();
        let mut e = ed("");
        // Neovim's buffer has no name.
        e.command("enew");
        e.msgs.redir = Some(String::new());
        if typed {
            for line in script.lines().filter(|l| !l.trim().is_empty()) {
                // A line that starts with a backslash is typed after the one before, without the `:` (a here document).
                // Neovim's `feedkeys()` ends with the group: a here document still open is cut short (Esc), and the lines
                // of a command that failed (its typeahead is flushed) are not commands.
                match line.strip_prefix('\\') {
                    Some(l) if e.typed_input_pending() => {
                        // The prompt of `:append` starts with the autoindent: the typed text comes after it.
                        let line = format!("{}{l}", e.append_prompt());
                        e.run_command(&line)
                    }
                    Some(_) => {}
                    None => {
                        if e.typed_input_pending() {
                            e.typed_abort();
                        }
                        e.run_command(line);
                    }
                }
            }
            if e.typed_input_pending() {
                e.typed_abort();
            }
        } else {
            e.command(&format!("source {}", path.display()));
        }
        let got = e.msgs.redir.take().unwrap().replace(&path.display().to_string(), "{file}");
        // `"unordered` first: the output is a set of lines (a `:let` listing walks a `HashMap`, whose order is arbitrary).
        let (got, want) = if script.starts_with("\"unordered\n") { (sorted_lines(&got), sorted_lines(want)) } else { (got, want.clone()) };
        let want = &want;
        if got != *want && !known.contains(&i) {
            bad.push(format!("case {i}:\n{script}\n--- neovim:\n{want}\n--- rim:\n{got}"));
        }
        if got == *want && known.contains(&i) {
            bad.push(format!("case {i} now matches: remove it from KNOWN"));
        }
    }
    fs::remove_dir_all(&dir).unwrap();
    assert!(bad.is_empty(), "{name}: {} cases differ from Neovim\n\n{}", bad.len(), bad.join("\n\n"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn expr_cases_match_neovim() {
    run("expr", include_str!("cases/expr.vim"), include_str!("cases/expr.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn bar_cases_match_neovim() {
    run("bar", include_str!("cases/bar.vim"), include_str!("cases/bar.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn range_cases_match_neovim() {
    run("range", include_str!("cases/range.vim"), include_str!("cases/range.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn typed_cases_match_neovim() {
    run_as("typed", include_str!("cases/typed.typed.vim"), include_str!("cases/typed.typed.golden"), true);
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn cmd_cases_match_neovim() {
    run("cmd", include_str!("cases/cmd.vim"), include_str!("cases/cmd.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn let_cases_match_neovim() {
    run("let", include_str!("cases/let.vim"), include_str!("cases/let.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn funcs_cases_match_neovim() {
    run("funcs", include_str!("cases/funcs.vim"), include_str!("cases/funcs.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn edge_cases_match_neovim() {
    run("edge", include_str!("cases/edge.vim"), include_str!("cases/edge.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn args_cases_match_neovim() {
    run("args", include_str!("cases/args.vim"), include_str!("cases/args.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn mixed_cases_match_neovim() {
    run("mixed", include_str!("cases/mixed.vim"), include_str!("cases/mixed.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn extreme_cases_match_neovim() {
    run("extreme", include_str!("cases/extreme.vim"), include_str!("cases/extreme.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn triple_cases_match_neovim() {
    run("triple", include_str!("cases/triple.vim"), include_str!("cases/triple.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn double_cases_match_neovim() {
    run("double", include_str!("cases/double.vim"), include_str!("cases/double.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn valid_cases_match_neovim() {
    run("valid", include_str!("cases/valid.vim"), include_str!("cases/valid.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn sort_cases_match_neovim() {
    run("sort", include_str!("cases/sort.vim"), include_str!("cases/sort.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn function_cases_match_neovim() {
    run("function", include_str!("cases/function.vim"), include_str!("cases/function.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn typed_function_cases_match_neovim() {
    run_as("function.typed", include_str!("cases/function.typed.vim"), include_str!("cases/function.typed.golden"), true);
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn heredoc_cases_match_neovim() {
    run("heredoc", include_str!("cases/heredoc.vim"), include_str!("cases/heredoc.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn typed_heredoc_cases_match_neovim() {
    run_as("append.typed", include_str!("cases/append.typed.vim"), include_str!("cases/append.typed.golden"), true);
    run_as("heredoc.typed", include_str!("cases/heredoc.typed.vim"), include_str!("cases/heredoc.typed.golden"), true);
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn call_cases_match_neovim() {
    run("call", include_str!("cases/call.vim"), include_str!("cases/call.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn call2_cases_match_neovim() {
    run("call2", include_str!("cases/call2.vim"), include_str!("cases/call2.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn typed_call_cases_match_neovim() {
    run_as("call.typed", include_str!("cases/call.typed.vim"), include_str!("cases/call.typed.golden"), true);
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn funcref_cases_match_neovim() {
    run("funcref", include_str!("cases/funcref.vim"), include_str!("cases/funcref.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn lambda_cases_match_neovim() {
    run("lambda", include_str!("cases/lambda.vim"), include_str!("cases/lambda.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn dictfunc_cases_match_neovim() {
    run("dictfunc", include_str!("cases/dictfunc.vim"), include_str!("cases/dictfunc.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn execute_cases_match_neovim() {
    run("execute", include_str!("cases/execute.vim"), include_str!("cases/execute.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn append_cases_match_neovim() {
    run("append", include_str!("cases/append.vim"), include_str!("cases/append.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn excur_cases_match_neovim() {
    run("excur", include_str!("cases/excur.vim"), include_str!("cases/excur.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn normcur_cases_match_neovim() {
    run("normcur", include_str!("cases/normcur.vim"), include_str!("cases/normcur.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn defer_cases_match_neovim() {
    run("defer", include_str!("cases/defer.vim"), include_str!("cases/defer.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn try_cases_match_neovim() {
    run("try", include_str!("cases/try.vim"), include_str!("cases/try.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn try2_cases_match_neovim() {
    run("try2", include_str!("cases/try2.vim"), include_str!("cases/try2.golden"));
}
