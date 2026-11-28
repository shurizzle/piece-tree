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
const KNOWN: &[(&str, &[usize])] = &[("range", &[]), ("typed", &[]), ("cmd", &[]), ("bar", &[]), ("let", &[]), ("funcs", &[]), ("expr", &[]), ("edge", &[]), ("args", &[]), ("mixed", &[]), ("extreme", &[]), ("triple", &[]), ("double", &[]), ("valid", &[]), ("sort", &[]), ("heredoc", &[]), ("heredoc.typed", &[]), ("function", &[]), ("function.typed", &[]), ("call", &[]), ("call2", &[]), ("call.typed", &[]), ("funcref", &[]), ("lambda", &[]), ("dictfunc", &[]), ("try", &[]), ("try2", &[]), ("execute", &[]), ("append", &[]), ("append.typed", &[]), ("excur", &[]), ("normcur", &[]), ("defer", &[]), ("lock", &[]), ("lock2", &[]), ("trycall", &[]), ("callname", &[]), ("const", &[]), ("const.typed", &[]), ("linecmd", &[]), ("limits", &[]), ("marks", &[]), ("motions", &[]), ("fmarks", &[]), ("putdot.typed", &[]), ("subg", &[]), ("sortretab", &[]), ("tabs", &[]), ("curswant", &[]), ("winview", &[]), ("vartabstop", &[]), ("smarttab", &[]), ("abort", &[]), ("fname", &[]), ("block", &[]), ("block2", &[]), ("block3", &[]), ("insarrow.typed", &[276, 279, 280, 281]), ("wordclass", &[]), ("cwempty", &[]), ("bigword", &[]), ("undo", &[]), ("undo2", &[]), ("undo.typed", &[]), ("typedstate.typed", &[]), ("marks2", &[]), ("jumps", &[]), ("winmarks", &[]), ("visual2", &[]), ("undoline", &[]), ("bufarg", &[]), ("undolevels", &[]), ("undoflags", &[]), ("undosub", &[])];

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
        if std::env::var_os("RIM_GOLDEN_TRACE").is_some() {
            eprintln!("case {i}");
        }
        let path = dir.join("case.vim");
        fs::write(&path, format!("{script}\n")).unwrap();
        let mut e = ed("");
        // Neovim's buffer has no name.
        e.command("enew");
        // Neovim's headless window is 80 columns wide (no frame is drawn here, so the width a wrapped line needs is set by hand).
        e.win.text_w = 80;
        e.headless = true;
        // Neovim starts in its first buffer: nothing is alternate.
        e.alt = None;
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
                        // Neovim's main loop (`normal_check`) updates `curswant` before it reads the next typed line, as the
                        // `:` key does in rim.
                        e.update_curswant();
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
        // An undo message says how long ago the change was made, which the recording and the run do not share.
        let age = |t: &str| regex::Regex::new(r"\d+ seconds? ago").expect("valid").replace_all(t, "N seconds ago").into_owned();
        let (got, want) = (age(&got), age(want));
        // A message a typed key gives inside a typed command line starts a line of its own in Neovim (the command line is on the
        // message row: `msg_didout`); `undo.typed` has such messages in every case, so its blank lines are not compared.
        let blanks = |t: String| if name == "undo.typed" { t.lines().filter(|l| !l.is_empty()).collect::<Vec<_>>().join("\n") } else { t };
        let (got, want) = (blanks(got), blanks(want));
        let (got, want) = if script.starts_with("\"unordered\n") { (sorted_lines(&got), sorted_lines(&want)) } else { (got, want) };
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

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn lock_cases_match_neovim() {
    run("lock", include_str!("cases/lock.vim"), include_str!("cases/lock.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn lock2_cases_match_neovim() {
    run("lock2", include_str!("cases/lock2.vim"), include_str!("cases/lock2.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn trycall_cases_match_neovim() {
    run("trycall", include_str!("cases/trycall.vim"), include_str!("cases/trycall.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn callname_cases_match_neovim() {
    run("callname", include_str!("cases/callname.vim"), include_str!("cases/callname.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn const_cases_match_neovim() {
    run("const", include_str!("cases/const.vim"), include_str!("cases/const.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn const_typed_cases_match_neovim() {
    run_as("const.typed", include_str!("cases/const.typed.vim"), include_str!("cases/const.typed.golden"), true);
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn linecmd_cases_match_neovim() {
    run("linecmd", include_str!("cases/linecmd.vim"), include_str!("cases/linecmd.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn limits_cases_match_neovim() {
    run("limits", include_str!("cases/limits.vim"), include_str!("cases/limits.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn marks_cases_match_neovim() {
    run("marks", include_str!("cases/marks.vim"), include_str!("cases/marks.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn motions_cases_match_neovim() {
    run("motions", include_str!("cases/motions.vim"), include_str!("cases/motions.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn fmarks_cases_match_neovim() {
    run("fmarks", include_str!("cases/fmarks.vim"), include_str!("cases/fmarks.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn typed_putdot_cases_match_neovim() {
    run_as("putdot.typed", include_str!("cases/putdot.typed.vim"), include_str!("cases/putdot.typed.golden"), true);
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn subg_cases_match_neovim() {
    run("subg", include_str!("cases/subg.vim"), include_str!("cases/subg.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn sortretab_cases_match_neovim() {
    run("sortretab", include_str!("cases/sortretab.vim"), include_str!("cases/sortretab.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn tabs_cases_match_neovim() {
    run("tabs", include_str!("cases/tabs.vim"), include_str!("cases/tabs.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn curswant_cases_match_neovim() {
    run("curswant", include_str!("cases/curswant.vim"), include_str!("cases/curswant.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn winview_cases_match_neovim() {
    run("winview", include_str!("cases/winview.vim"), include_str!("cases/winview.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn vartabstop_cases_match_neovim() {
    run("vartabstop", include_str!("cases/vartabstop.vim"), include_str!("cases/vartabstop.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn smarttab_cases_match_neovim() {
    run("smarttab", include_str!("cases/smarttab.vim"), include_str!("cases/smarttab.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn undo_cases_match_neovim() {
    run("undo", include_str!("cases/undo.vim"), include_str!("cases/undo.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn undo2_cases_match_neovim() {
    run("undo2", include_str!("cases/undo2.vim"), include_str!("cases/undo2.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn undo_typed_cases_match_neovim() {
    run_as("undo.typed", include_str!("cases/undo.typed.vim"), include_str!("cases/undo.typed.golden"), true);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn abort_cases_match_neovim() {
    run("abort", include_str!("cases/abort.vim"), include_str!("cases/abort.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn fname_cases_match_neovim() {
    run("fname", include_str!("cases/fname.vim"), include_str!("cases/fname.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn block_cases_match_neovim() {
    run("block", include_str!("cases/block.vim"), include_str!("cases/block.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn block2_cases_match_neovim() {
    run("block2", include_str!("cases/block2.vim"), include_str!("cases/block2.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn block3_cases_match_neovim() {
    run("block3", include_str!("cases/block3.vim"), include_str!("cases/block3.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn insarrow_typed_cases_match_neovim() {
    run_as("insarrow.typed", include_str!("cases/insarrow.typed.vim"), include_str!("cases/insarrow.typed.golden"), true);
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn wordclass_cases_match_neovim() {
    run("wordclass", include_str!("cases/wordclass.vim"), include_str!("cases/wordclass.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn cwempty_cases_match_neovim() {
    run_as("cwempty", include_str!("cases/cwempty.vim"), include_str!("cases/cwempty.golden"), false);
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn bigword_cases_match_neovim() {
    run("bigword", include_str!("cases/bigword.vim"), include_str!("cases/bigword.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn typedstate_cases_match_neovim() {
    run_as("typedstate.typed", include_str!("cases/typedstate.typed.vim"), include_str!("cases/typedstate.typed.golden"), true);
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn marks2_cases_match_neovim() {
    run("marks2", include_str!("cases/marks2.vim"), include_str!("cases/marks2.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn jumps_cases_match_neovim() {
    run("jumps", include_str!("cases/jumps.vim"), include_str!("cases/jumps.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn winmarks_cases_match_neovim() {
    run("winmarks", include_str!("cases/winmarks.vim"), include_str!("cases/winmarks.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn visual2_cases_match_neovim() {
    run("visual2", include_str!("cases/visual2.vim"), include_str!("cases/visual2.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn undoline_cases_match_neovim() {
    run("undoline", include_str!("cases/undoline.vim"), include_str!("cases/undoline.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn bufarg_cases_match_neovim() {
    run("bufarg", include_str!("cases/bufarg.vim"), include_str!("cases/bufarg.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn undolevels_cases_match_neovim() {
    run("undolevels", include_str!("cases/undolevels.vim"), include_str!("cases/undolevels.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn undoflags_cases_match_neovim() {
    run("undoflags", include_str!("cases/undoflags.vim"), include_str!("cases/undoflags.golden"));
}

#[cfg_attr(miri, ignore = "safe editor logic; compares scripts with recorded output")]
#[test]
fn undosub_cases_match_neovim() {
    run("undosub", include_str!("cases/undosub.vim"), include_str!("cases/undosub.golden"));
}
