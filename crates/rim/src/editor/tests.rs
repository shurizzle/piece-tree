use piece_tree::LineEnding;

use super::{highlight as hl, registers::*, render::*, *};

fn ed(s: &str) -> Editor {
    Editor::new(Document::new(s), PathBuf::from("/nonexistent/rim-test"))
}

/// Feeds keys; `\x1b` is Esc, `\n` Enter, `\x7f` Backspace, `\t` Tab (Ctrl+I), another control
/// char its Ctrl+letter (`\x04` Ctrl+D), `\x1e` Ctrl+^.
/// Returns false if the editor asked to quit.
fn feed(e: &mut Editor, keys: &str) -> bool {
    keys.chars().all(|c| {
        e.key(match c {
            '\x1b' => KeyCode::Esc.into(),
            '\n' => KeyCode::Enter.into(),
            '\x7f' => KeyCode::Backspace.into(),
            '\x01'..='\x1a' | '\x1e' => char_key(c),
            c => KeyCode::Char(c).into(),
        })
    })
}

fn text(e: &Editor) -> String {
    let t = e.buf.doc.text();
    t.slice(0..t.len()).into_owned()
}

fn run(s: &str, keys: &str) -> Editor {
    let mut e = ed(s);
    assert!(feed(&mut e, keys));
    e
}

fn pos(e: &Editor) -> Pos {
    (e.win.line, e.win.col)
}

/// Unnamed register as `(text, linewise)`.
fn reg(e: &Editor) -> (String, bool) {
    e.regs.get('"').map_or_else(Default::default, |r| (r.text.clone(), r.kind == RegKind::Line))
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn gutter_fits_the_widest_number() {
    assert_eq!(gutter_width(1), 2);
    assert_eq!(gutter_width(9), 2);
    assert_eq!(gutter_width(10), 3);
    assert_eq!(gutter_width(999), 4);
    assert_eq!(gutter_width(1000), 5);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn line_numbers_are_relative_except_the_cursor_line() {
    assert_eq!(line_number(4, 4, true, true), 5);
    assert_eq!(line_number(1, 4, true, true), 3);
    assert_eq!(line_number(9, 4, true, true), 5);
    assert_eq!(line_number(0, 0, true, true), 1);
    assert_eq!(line_number(1, 4, true, false), 2);
    assert_eq!(line_number(4, 4, false, true), 0);
    assert_eq!(line_number(1, 4, false, true), 3);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn word_motions_cross_lines_and_stop_on_empty_lines() {
    let s = "foo.bar  baz\n\n  qux";
    let mut e = ed(s);
    let mut got = vec![];
    for _ in 0..6 {
        feed(&mut e, "w");
        got.push(pos(&e));
    }
    assert_eq!(got, [(0, 3), (0, 4), (0, 9), (1, 0), (2, 2), (2, 4)]);
    let mut got = vec![];
    for _ in 0..6 {
        feed(&mut e, "b");
        got.push(pos(&e));
    }
    assert_eq!(got, [(2, 2), (1, 0), (0, 9), (0, 4), (0, 3), (0, 0)]);
    assert_eq!(pos(&run(s, "e")), (0, 2));
    assert_eq!(pos(&run(s, "3e")), (0, 6));
    assert_eq!(pos(&run(s, "4e")), (0, 11));
    assert_eq!(pos(&run(s, "9e")), (2, 4));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn line_motions() {
    let s = "  ab\ncdef\nx";
    assert_eq!(pos(&run(s, "$")), (0, 3));
    assert_eq!(pos(&run(s, "$^")), (0, 2));
    assert_eq!(pos(&run(s, "$0")), (0, 0));
    assert_eq!(pos(&run(s, "G")), (2, 0));
    assert_eq!(pos(&run(s, "Ggg")), (0, 2));
    assert_eq!(pos(&run(s, "2G")), (1, 0));
    assert_eq!(pos(&run(s, "9l")), (0, 3));
    assert_eq!(pos(&run(s, "lllh")), (0, 2));
    // `$` sticks to the line end across vertical moves; `j` keeps the column.
    assert_eq!(pos(&run(s, "$j")), (1, 3));
    assert_eq!(pos(&run(s, "$jj")), (2, 0));
    assert_eq!(pos(&run(s, "llljj")), (2, 0));
    assert_eq!(pos(&run(s, "llljjk")), (1, 3));
    let mut e = ed(&"x\n".repeat(20));
    e.win.rows = 10;
    feed(&mut e, "\x04");
    assert_eq!(e.win.line, 5);
    feed(&mut e, "\x15\x15");
    assert_eq!(e.win.line, 0);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn operators_with_motions() {
    assert_eq!(text(&run("foo bar baz", "dw")), "bar baz");
    assert_eq!(text(&run("foo bar baz", "d2w")), "baz");
    assert_eq!(text(&run("foo bar baz", "wde")), "foo  baz");
    assert_eq!(text(&run("foo bar baz", "$db")), "foo bar z");
    assert_eq!(text(&run("foo bar baz", "wd$")), "foo ");
    assert_eq!(text(&run("foo bar baz", "wD")), "foo ");
    assert_eq!(text(&run("foo bar baz", "$d0")), "z");
    assert_eq!(text(&run("abc", "2x")), "c");
    assert_eq!(text(&run("abc", "l9x")), "a");
    // `dw` on a line's last word does not join lines, unless the count runs past the text.
    assert_eq!(text(&run("foo bar\nbaz", "wdw")), "foo \nbaz");
    assert_eq!(text(&run("foo bar\nbaz", "2dw")), "\nbaz");
    assert_eq!(text(&run("foo bar\nbaz", "3dw")), "");
    assert_eq!(text(&run("a\nb\nc\nd", "jdj")), "a\nd");
    assert_eq!(text(&run("a\nb\nc\nd", "jdG")), "a");
    assert_eq!(text(&run("a\nb\nc\nd", "Gdgg")), "");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn linewise_delete_yank_and_paste() {
    let e = run("a\nb\nc", "ddp");
    assert_eq!(text(&e), "b\na\nc");
    assert_eq!(pos(&e), (1, 0));
    assert_eq!(text(&run("a\nb\nc", "jddkP")), "b\na\nc");
    assert_eq!(text(&run("a\nb\nc", "2ddp")), "c\na\nb");
    let e = run("a\nb", "jdd");
    assert_eq!(text(&e), "a");
    assert_eq!(pos(&e), (0, 0));
    assert_eq!(text(&run("a\nb", "yyjp")), "a\nb\na");
    assert_eq!(text(&run("a\nb", "yy3p")), "a\na\na\na\nb");
    assert_eq!(text(&run("x", "dd")), "");
    assert_eq!(text(&run("x", "p")), "x");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn charwise_yank_and_paste() {
    let e = run("foo bar", "ywP");
    assert_eq!(text(&e), "foo foo bar");
    assert_eq!(pos(&e), (0, 3));
    assert_eq!(text(&run("ab", "xp")), "ba");
    assert_eq!(text(&run("ab", "x$p")), "ba");
    assert_eq!(text(&run("ab", "yl2P")), "aaab");
    // Paste after on an empty line goes at its start.
    assert_eq!(text(&run("ab\n", "ylj$p")), "ab\na");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn change_enters_insert_mode() {
    let e = run("foo bar", "cwxy\x1b");
    assert_eq!(text(&e), "xy bar");
    assert_eq!((pos(&e), &e.mode), ((0, 1), &Mode::Normal));
    assert_eq!(text(&run("foo bar baz", "c2wx\x1b")), "x baz");
    assert_eq!(text(&run("foo  bar", "lllcwx\x1b")), "fooxbar");
    assert_eq!(text(&run("a b", "lCx\x1b")), "ax");
    // Autoindent: `cc` keeps the indent.
    assert_eq!(text(&run("  a\nb", "ccx\x1b")), "  x\nb");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn insert_commands() {
    assert_eq!(text(&run("ab", "ix\x1b")), "xab");
    assert_eq!(text(&run("ab", "ax\x1b")), "axb");
    assert_eq!(text(&run("  ab", "$Ix\x1b")), "  xab");
    assert_eq!(text(&run("ab", "Ax\x1b")), "abx");
    assert_eq!(text(&run("a\nb", "ox\x1b")), "a\nx\nb");
    assert_eq!(text(&run("a\nb", "jOx\x1b")), "a\nx\nb");
    assert_eq!(text(&run("ab", "Ax\ny\x1b")), "abx\ny");
    assert_eq!(text(&run("ab", "A\x7f\x7fc\x1b")), "c");
    let e = run("ab", "A\x1b");
    assert_eq!((pos(&e), &e.mode), ((0, 1), &Mode::Normal));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn join_lines() {
    let e = run("a\n  b\nc", "J");
    assert_eq!(text(&e), "a b\nc");
    assert_eq!(pos(&e), (0, 1));
    assert_eq!(text(&run("a\nb\nc", "3J")), "a b c");
    assert_eq!(text(&run("a\n\nc", "J")), "a\nc");
    assert_eq!(text(&run("\nb", "J")), "b");
    assert_eq!(text(&run("a", "J")), "a");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn undo_groups_whole_commands_and_insert_sessions() {
    let mut e = run("", "ihello\nworld\x1b");
    feed(&mut e, "u");
    assert_eq!(text(&e), "");
    feed(&mut e, "\x12");
    assert_eq!(text(&e), "hello\nworld");
    let mut e = run("foo bar", "cwxy\x1b");
    feed(&mut e, "u");
    assert_eq!(text(&e), "foo bar");
    let mut e = run("a\nb\nc", "3J");
    feed(&mut e, "u");
    assert_eq!(text(&e), "a\nb\nc");
    let mut e = run("abc", "xxx");
    feed(&mut e, "2u");
    assert_eq!(text(&e), "bc");
    feed(&mut e, "5u");
    assert_eq!((text(&e).as_str(), e.msg()), ("abc", "Already at oldest change"));
    feed(&mut e, "9\x12");
    assert_eq!((text(&e).as_str(), e.msg()), ("", "Already at newest change"));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn new_edit_clears_redo_and_motions_add_no_groups() {
    let mut e = run("", "ia\x1bib\x1bu");
    assert_eq!(text(&e), "a");
    feed(&mut e, "ix\x1b\x12");
    assert_eq!(text(&e), "xa");
    // Esc without edits and pure motions do not push empty groups.
    feed(&mut e, "i\x1bwwbu");
    assert_eq!(text(&e), "a");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn undo_clamps_the_cursor() {
    let mut e = run("ab", "Acdef\x1b");
    assert_eq!(pos(&e), (0, 5));
    feed(&mut e, "u");
    assert_eq!(pos(&e), (0, 1));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn quit_commands() {
    let mut e = ed("a");
    assert!(!feed(&mut e, ":q\n"));
    let mut e = ed("a");
    assert!(!feed(&mut e, ":x\n"));
    let mut e = run("a", "x:q\n");
    assert_eq!(e.msg(), "No write since last change (add ! to override)");
    assert!(!feed(&mut e, ":q!\n"));
    // The save target does not exist: write-and-quit stays open.
    let mut e = run("a", "x:wq\n");
    assert!(e.msg().starts_with("Save failed"));
    assert!(feed(&mut e, ":x\n:w\n"));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn save_writes_and_cleans() {
    let dir = env_dir();
    let path = dir.join("save.txt");
    let mut e = Editor::new(Document::new("a\nb"), path.clone());
    assert!(!feed(&mut e, "dd:wq\n"));
    assert_eq!(fs::read_to_string(&path).unwrap(), "b");
    let mut e = Editor::new(Document::new("a"), path.clone());
    feed(&mut e, "x:w\n");
    assert!(e.wait_saves());
    assert!(!e.is_dirty());
    assert!(!feed(&mut e, ":q\n"));
    fs::remove_dir_all(dir).unwrap();
}

fn env_dir() -> PathBuf {
    let dir = std::env::temp_dir().join(format!("rim-test-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    dir
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_editing_and_goto() {
    let e = run("a\nb\nc", ":3\n");
    assert_eq!((pos(&e), &e.mode), ((2, 0), &Mode::Normal));
    assert_eq!(run("a\nb\nc", ":99\n").win.line, 2);
    assert_eq!(run("a", ":foo\n").msg(), "Not an editor command: foo");
    assert_eq!(run("a\nb", ":x\x7f2\n").win.line, 1);
    assert_eq!(run("a", ":\x7f").mode, Mode::Normal);
    assert_eq!(run("a", ":q\x1b").mode, Mode::Normal);
    assert_eq!(run("a", ":\n").mode, Mode::Normal);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn search_wraps_and_repeats() {
    let s = "foo\nbar foo\nfoo";
    let mut e = run(s, "/foo\n");
    assert_eq!(pos(&e), (1, 4));
    feed(&mut e, "n");
    assert_eq!(pos(&e), (2, 0));
    feed(&mut e, "n");
    assert_eq!((pos(&e), e.msg()), ((0, 0), "search hit BOTTOM, continuing at TOP"));
    feed(&mut e, "N");
    assert_eq!((pos(&e), e.msg()), ((2, 0), "search hit TOP, continuing at BOTTOM"));
    // Empty pattern reuses the last one.
    feed(&mut e, "gg/\n");
    assert_eq!(pos(&e), (1, 4));
    assert_eq!(text(&run(s, "/bar\nggdn")), "bar foo\nfoo");
    assert_eq!(run(s, "/zzz\n").msg(), "Pattern not found: zzz");
    assert_eq!(run(s, "n").msg(), "No previous search pattern");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn esc_and_unknown_keys_cancel_pending() {
    let e = run("a\nb", "d\x1bj");
    assert_eq!((text(&e).as_str(), e.win.line), ("a\nb", 1));
    assert_eq!(text(&run("a\nb", "dzj")), "a\nb");
    assert_eq!(run("a", "3").pending, "3");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn find_char_motions() {
    let s = "a,b,c,d";
    assert_eq!(pos(&run(s, "f,")), (0, 1));
    assert_eq!(pos(&run(s, "2f,")), (0, 3));
    assert_eq!(pos(&run(s, "f,;")), (0, 3));
    assert_eq!(pos(&run(s, "f,;;,")), (0, 3));
    assert_eq!(pos(&run(s, "fz")), (0, 0));
    assert_eq!(pos(&run(s, ";")), (0, 0));
    // `t` stops before the match; a repeat skips the adjacent one.
    assert_eq!(pos(&run(s, "t,")), (0, 0));
    assert_eq!(pos(&run(s, "t,;")), (0, 2));
    assert_eq!(pos(&run(s, "$F,")), (0, 5));
    assert_eq!(pos(&run(s, "$T,")), (0, 6));
    assert_eq!(pos(&run(s, "$T,;")), (0, 4));
    assert_eq!(pos(&run(s, "$T,,")), (0, 6));
    assert_eq!(pos(&run(s, "T,")), (0, 0));
    assert_eq!(text(&run(s, "dt,")), ",b,c,d");
    assert_eq!(text(&run(s, "df,")), "b,c,d");
    assert_eq!(text(&run(s, "d2f,")), "c,d");
    assert_eq!(text(&run(s, "$dF,")), "a,b,cd");
    assert_eq!(text(&run(s, "dfz")), s);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn replace_toggle_case_and_shift() {
    let e = run("abc", "2rx");
    assert_eq!((text(&e).as_str(), pos(&e)), ("xxc", (0, 1)));
    assert_eq!(text(&run("abc", "rx")), "xbc");
    assert_eq!(text(&run("abc", "5rx")), "abc");
    assert_eq!(run("abc", "r").pending, "r");
    let e = run("aBc", "~");
    assert_eq!((text(&e).as_str(), pos(&e)), ("ABc", (0, 1)));
    assert_eq!(text(&run("aBc", "9~")), "AbC");
    assert_eq!(text(&run("a\nb", ">>")), "    a\nb");
    assert_eq!(text(&run("a\nb", "2>>")), "    a\n    b");
    assert_eq!(text(&run("a\n\nb", ">G")), "    a\n\n    b");
    let e = run("      a", "<<");
    assert_eq!((text(&e).as_str(), pos(&e)), ("  a", (0, 2)));
    assert_eq!(text(&run("\ta", "<<")), "a");
    // The indent is rewritten: a tab counts `tabstop` columns.
    assert_eq!(text(&run("  \t a", "<<")), "   a");
    // shiftwidth, and noexpandtab writing tabs then spaces.
    assert_eq!(text(&run("a", ":set sw=2\n>>")), "  a");
    assert_eq!(text(&run("  a", ":set noet\n>>")), "\t  a");
    assert_eq!(text(&run("\t\t a", ":set noet sw=3\n<<")), "\t  a");
    // Each is one undo step.
    assert_eq!(text(&run("a\nb", "2>>u")), "a\nb");
    assert_eq!(text(&run("abc", "3~u")), "abc");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn counted_inserts_repeat_the_typed_text() {
    assert_eq!(text(&run("", "3ix\x1b")), "xxx");
    assert_eq!(text(&run("z", "2Aab\x1b")), "zabab");
    assert_eq!(text(&run("a", "3ox\x1b")), "a\nx\nx\nx");
    assert_eq!(text(&run("a", "2Ox\x1b")), "x\nx\na");
    assert_eq!(text(&run("", "2ia\nb\x1b")), "a\nba\nb");
    assert_eq!(text(&run("", "3ix\x1bu")), "");
    // The count applies only to the insert it was given to.
    assert_eq!(text(&run("", "3ix\x1bay\x1b")), "xxxy");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn dot_repeats_the_last_change() {
    assert_eq!(text(&run("a b c d", "dw.")), "c d");
    assert_eq!(text(&run("abcdefg", "3x.")), "g");
    assert_eq!(text(&run("foo bar", "cwX\x1bw.")), "X X");
    assert_eq!(text(&run("a\nb", "A!\x1bj.")), "a!\nb!");
    assert_eq!(text(&run("a\nb\nc\nd", "dd2.")), "d");
    assert_eq!(text(&run("", "ihi\x1b.")), "hhii");
    assert_eq!(text(&run("", "2ix\x1b.")), "xxxx");
    assert_eq!(text(&run("abcdef", "vld.")), "ef");
    // Motions, yanks and undo do not replace the change; each replay is one undo step.
    assert_eq!(text(&run("abc", "xl.")), "b");
    assert_eq!(text(&run("abc", "xu.")), "bc");
    assert_eq!(text(&run("abc", "xyl.")), "c");
    assert_eq!(text(&run("abcd", "x.u")), "bcd");
    assert_eq!(text(&run("abc", ".")), "abc");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn visual_mode_operators() {
    let e = run("abcd", "lvld");
    assert_eq!((text(&e).as_str(), &reg(&e), &e.mode), ("ad", &("bc".to_string(), false), &Mode::Normal));
    assert_eq!(text(&run("ab\ncd", "vjd")), "d");
    assert_eq!(text(&run("abcd", "llvhhd")), "d");
    assert_eq!(text(&run("a\nb\nc", "Vjd")), "c");
    assert_eq!(text(&run("a\nb\nc", "jVkd")), "c");
    assert_eq!(text(&run("a\nb", "Vyp")), "a\na\nb");
    let e = run("abc", "lvly");
    assert_eq!((pos(&e), reg(&e).0.as_str()), ((0, 1), "bc"));
    let e = run("abc", "vlcX\x1b");
    assert_eq!(text(&e), "Xc");
    assert_eq!(text(&run("abc", "vlsX\x1b")), "Xc");
    assert_eq!(text(&run("abc", "vlx")), "c");
    assert_eq!(text(&run("a\nb\nc", "VjcX\x1b")), "X\nc");
    assert_eq!(text(&run("a\n\nb", "jvd")), "a\nb");
    assert_eq!(text(&run("aBc", "v$~")), "AbC");
    assert_eq!(text(&run("a\nB", "Vj~")), "A\nb");
    assert_eq!(text(&run("a\nb\nc", "VjJ")), "a b\nc");
    assert_eq!(text(&run("a\nb\nc", "vJ")), "a b\nc");
    assert_eq!(text(&run("a\nb", "Vj>")), "    a\n    b");
    assert_eq!(text(&run("a\nb", "Vj2>")), "        a\n        b");
    assert_eq!(text(&run("  a", "v<")), "a");
    // Motions with counts and arguments move the cursor end.
    assert_eq!(text(&run("a,b,c", "v2f,d")), "c");
    assert_eq!(text(&run("a b c", "v2wd")), "");
    // One undo step per visual operation.
    assert_eq!(text(&run("abcd", "vlldu")), "abcd");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn visual_mode_switching() {
    assert_eq!(run("a", "v").mode, Mode::Visual(VKind::Char));
    assert_eq!(run("a", "vV").mode, Mode::Visual(VKind::Line));
    assert_eq!(run("a", "Vv").mode, Mode::Visual(VKind::Char));
    assert_eq!(run("a", "vv").mode, Mode::Normal);
    assert_eq!(run("a", "VV").mode, Mode::Normal);
    assert_eq!(run("a", "v\x1b").mode, Mode::Normal);
    let e = run("abcd", "lvllo");
    assert_eq!((pos(&e), e.anchor, &e.mode), ((0, 1), (0, 3), &Mode::Visual(VKind::Char)));
    // Unknown keys and Esc cancel a pending motion.
    let e = run("abc", "vZl");
    assert_eq!((pos(&e), e.pending.as_str()), ((0, 1), ""));
    assert_eq!(run("abc", "vg\x1b").pending, "");
    assert_eq!(run("abc", "vf").pending, "f");
}

fn temp_dir(name: &str) -> PathBuf {
    let dir = std::env::temp_dir().join(format!("rim-{name}-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    dir
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn reload_from_disk() {
    let dir = temp_dir("reload");
    let path = dir.join("f.txt");
    fs::write(&path, "one\r\ntwo").unwrap();
    let mut e = Editor::open(path.clone()).unwrap();
    feed(&mut e, "jdd:e\n");
    assert_eq!((text(&e).as_str(), e.msg()), ("one", "No write since last change (add ! to override)"));
    feed(&mut e, ":e!\n");
    assert_eq!((text(&e).as_str(), e.is_dirty(), e.msg()), ("one\ntwo", false, "Reloaded (CRLF)"));
    assert_eq!(pos(&e), (0, 0));
    feed(&mut e, "u");
    assert_eq!(e.msg(), "Already at oldest change");
    fs::write(&path, "x").unwrap();
    feed(&mut e, ":e\n");
    assert_eq!(text(&e), "x");
    fs::remove_dir_all(&dir).unwrap();
    feed(&mut e, ":e!\n");
    assert_eq!(text(&e), "");
    let mut e = Editor::open(dir.join("missing-dir/f")).unwrap();
    fs::create_dir_all(dir.join("missing-dir/f")).unwrap();
    feed(&mut e, ":e!\n");
    assert!(e.msg().starts_with("Reload failed"), "{}", e.msg());
    fs::remove_dir_all(&dir).unwrap();
}

#[cfg(unix)]
#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn save_keeps_permissions_and_symlinks() {
    use std::os::unix::fs::{PermissionsExt, symlink};
    let dir = temp_dir("perm");
    let path = dir.join("f.txt");
    fs::write(&path, "a").unwrap();
    fs::set_permissions(&path, fs::Permissions::from_mode(0o640)).unwrap();
    let link = dir.join("link.txt");
    symlink(&path, &link).unwrap();
    let mut e = Editor::open(link.clone()).unwrap();
    feed(&mut e, "rb:w\n");
    assert!(e.wait_saves());
    assert_eq!(e.msg(), format!("\"{}\" written (LF)", link.display()));
    assert!(fs::symlink_metadata(&link).unwrap().file_type().is_symlink());
    assert_eq!(fs::read_to_string(&path).unwrap(), "b");
    assert_eq!(fs::metadata(&path).unwrap().permissions().mode() & 0o777, 0o640);
    fs::remove_dir_all(&dir).unwrap();
}

/// Frame rows as text: reversed spans in `[...]`, search matches in `{...}`, trailing blanks trimmed.
fn screen(f: &Frame) -> Vec<String> {
    f.rows
        .iter()
        .map(|spans| {
            let row: String = spans
                .iter()
                .map(|s| match s.style {
                    Style::Reverse | Style::Status => format!("[{}]", s.text),
                    Style::Match => format!("{{{}}}", s.text),
                    _ => s.text.clone(),
                })
                .collect();
            row.trim_end().to_string()
        })
        .collect()
}

fn snapshot(s: &str, keys: &str, w: usize, h: usize) -> (Vec<String>, (usize, usize), bool) {
    let mut e = run(s, keys);
    let f = e.frame(w, h);
    (screen(&f), f.cursor, f.bar)
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn frame_shows_relative_numbers_status_and_cursor() {
    let (rows, cursor, bar) = snapshot("a\nbc\nd", "jl", 58, 5);
    assert_eq!(rows[..4], ["1 a", "2 bc", "1 d", ""]);
    assert_eq!(rows[4], format!("{:>58}", "Ln 2, Col 2"));
    assert_eq!((cursor, bar), ((3, 1), false));
    let (rows, _, bar) = snapshot("a", "ix", 30, 2);
    assert_eq!((rows[1].as_str(), bar), ("-- INSERT --", true));
    // `laststatus=2`: the status row of the window carries the file and the position, the ruler leaves the message row.
    let (rows, _, _) = snapshot("a\nbc\nd", "jl:set ls=2\n", 58, 5);
    assert_eq!(rows[3], "[ /nonexistent/rim-test | Ln 2, Col 2 | LF                 ]");
    assert_eq!(rows[4], "");
    assert!(snapshot("a", "V", 20, 2).0[1].starts_with("-- VISUAL LINE --"));
    assert!(snapshot("a", "2d", 80, 2).0[1].contains("2d "));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn frame_scrolls_vertically() {
    let s: String = (1..=20).map(|i| format!("l{i}\n")).collect();
    let (rows, cursor, _) = snapshot(&s, "10j", 20, 4);
    assert_eq!(rows[..3], [" 2 l9", " 1 l10", "11 l11"]);
    assert_eq!(cursor, (3, 2));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn frame_highlights_the_visual_selection() {
    assert_eq!(snapshot("abcd", "lvl", 20, 2).0[0], "1 a[bc]d");
    assert_eq!(snapshot("ab\ncd", "lvj", 20, 3).0[..2], ["1 a[b ]", "2 [cd]"]);
    assert_eq!(snapshot("a\n\nb", "jV", 20, 4).0[..3], ["1 a", "2 [ ]", "1 b"]);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn frame_renders_wide_chars_tabs_and_controls() {
    assert_eq!(snapshot("\tx\x01", "", 20, 2).0[0], "1     x?");
    assert!(!snapshot("\tx", "l", 20, 2).2);
    assert_eq!(snapshot("\tx", "l", 20, 2).1, (6, 0));
    // Text area of 4 cells: the cursor char is always fully visible; a cut wide char shows as a space.
    let (rows, cursor, _) = snapshot("日本語abc", ":set nowrap\n", 6, 2);
    assert_eq!((rows[0].as_str(), cursor), ("1 日本", (2, 0)));
    let (rows, cursor, _) = snapshot("日本語abc", ":set nowrap\nll", 6, 2);
    assert_eq!((rows[0].as_str(), cursor), ("1 本語", (4, 0)));
    let (rows, cursor, _) = snapshot("日本語abc", ":set nowrap\nlll", 6, 2);
    assert_eq!((rows[0].as_str(), cursor), ("1  語a", (5, 0)));
    // Combining marks take no cell.
    assert_eq!(snapshot("e\u{301}x", "", 20, 2).0[0], "1 e\u{301}x");
    assert_eq!(snapshot("e\u{301}x", "ll", 20, 2).1, (3, 0));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn grapheme_clusters_are_one_column() {
    // e + combining acute, a family emoji (ZWJ sequence), a flag (two regional indicators).
    let (acute, family, flag) = ("e\u{301}", "\u{1f468}\u{200d}\u{1f469}\u{200d}\u{1f467}", "\u{1f1ee}\u{1f1f9}");
    let line = format!("a{acute}{family}{flag}b");
    let e = run(&line, "l");
    assert_eq!(pos(&e), (0, 1));
    assert_eq!(pos(&run(&line, "$")), (0, 4));
    assert_eq!(pos(&run(&line, "3l")), (0, 3));
    assert_eq!(pos(&run(&line, "$h")), (0, 3));
    assert_eq!(pos(&run(&line, "fb")), (0, 4));
    assert_eq!(pos(&run(&line, "$Fe")), (0, 1));
    // `x`, `r` and `~` take whole clusters; `ga` shows the first char.
    assert_eq!(text(&run(&line, "lx")), format!("a{family}{flag}b"));
    assert_eq!(text(&run(&line, "llx")), format!("a{acute}{flag}b"));
    assert_eq!(text(&run(&line, "lrz")), format!("az{family}{flag}b"));
    assert_eq!(text(&run(&line, "l~")), format!("aE\u{301}{family}{flag}b"));
    assert_eq!(text(&run(&line, "l2x")), format!("a{flag}b"));
    assert_eq!(text(&run(&line, "lvlld")), "ab");
    assert_eq!(reg(&run(&line, "lyl")).0, acute);
    // Insert: a typed combining mark joins the cluster before it; Backspace and Delete take a cluster.
    let e = run("ab", "a\u{301}");
    assert_eq!((text(&e), pos(&e)), ("a\u{301}b".into(), (0, 1)));
    assert_eq!(text(&run(&line, "A\x7f\x7f\x1b")), format!("a{acute}{family}"));
    assert_eq!(text(&run(&line, "li\x1b\x1bi\u{1b}")), line);
    let e = run(&line, "li");
    let mut e = e;
    e.key(KeyCode::Delete.into());
    assert_eq!(text(&e), format!("a{family}{flag}b"));
    // Words: a combining mark stays inside its word.
    assert_eq!(pos(&run("cafe\u{301} x", "w")), (0, 5));
    assert_eq!(pos(&run("x cafe\u{301}", "$b")), (0, 2));
    assert_eq!(pos(&run("x cafe\u{301}", "e")), (0, 5));
    assert_eq!(reg(&run("cafe\u{301} x", "yiw")).0, "cafe\u{301}");
    // Screen: each cluster draws as one glyph of its width.
    let (rows, cursor, _) = snapshot(&line, "$", 20, 2);
    assert_eq!((rows[0].as_str(), cursor), (format!("1 a{acute}{family}{flag}b").as_str(), (8, 0)));
    assert_eq!(snapshot(&line, "ll", 20, 2).1, (4, 0));
    // A lone combining mark is drawn on a space and takes a cell.
    let (rows, cursor, _) = snapshot("\u{301}x", "l", 20, 2);
    assert_eq!((rows[0].as_str(), cursor), ("1  \u{301}x", (3, 0)));
    // Search highlights and Visual cover whole clusters.
    assert_eq!(snapshot(&line, "/\u{301}\n", 20, 2).0[0], format!("1 a{{{acute}}}{family}{flag}b"));
    assert_eq!(snapshot(&line, "lvl", 20, 2).0[0], format!("1 a[{acute}{family}]{flag}b"));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn options_list_case_hlsearch_and_scrolloff() {
    // list: a tab is `>` then spaces, the line end `$`; a selected line end shows `$` reversed.
    assert_eq!(snapshot("a\tb\nc", ":set list nonu nornu\n", 20, 3).0[..2], ["a>   b$", "c$"]);
    assert_eq!(snapshot("ab\nc", ":set list nonu nornu\nV", 20, 3).0[0], "[ab$]");
    // ignorecase, smartcase: `/`, `n`, `:s`, `:g`, `*`.
    assert_eq!(pos(&run("x Ab ab", ":set ic\n/ab\n")), (0, 2));
    assert_eq!(pos(&run("x ab Ab", ":set ic scs\n/Ab\n")), (0, 5));
    assert_eq!(pos(&run("x Ab ab", ":set ic scs\n/ab\n")), (0, 2));
    assert_eq!(pos(&run("x Ab ab", ":set ic\n/ab\nn")), (0, 5));
    assert_eq!(text(&run("Ab ab", ":set ic\n:s/ab/x/g\n")), "x x");
    assert_eq!(text(&run("Xc\nxb\nxa", ":set ic\n:sort /x/\n")), "xa\nxb\nXc");
    assert_eq!(text(&run("Xc\nxb\nxa", ":sort /x/\n")), "Xc\nxa\nxb");
    assert_eq!(text(&run("Ab\nab\nc", ":set ic\n:g/ab/d\n")), "c");
    assert_eq!(pos(&run("Foo x foo", ":set ic scs\n*")), (0, 6));
    assert_eq!(pos(&run("foo x Foo", ":set noic\n*")), (0, 0));
    // nohlsearch: no highlight after a search; noincsearch: no preview while typing.
    assert_eq!(snapshot("ab ab", ":set nohls nonu nornu\n/b\n", 20, 2).0[0], "ab ab");
    let (rows, ..) = snapshot("ab\nxb", ":set nois nonu nornu\n/x", 20, 3);
    assert_eq!(rows[1], "xb");
    let e = run("ab\nxb", ":set nois\n/x");
    assert_eq!(pos(&e), (0, 0));
    // scrolloff: lines kept below and above the cursor; H and L stop that far from the edges.
    let lines: String = (0..30).map(|i| format!("{i}\n")).collect();
    let mut e = run(&lines, ":set so=2 nonu nornu\n");
    e.frame(10, 7);
    feed(&mut e, "4j");
    assert_eq!(screen(&e.frame(10, 7))[0], "1");
    feed(&mut e, "j");
    assert_eq!(e.frame(10, 7).cursor, (0, 3));
    feed(&mut e, "Lk");
    e.frame(10, 7);
    feed(&mut e, "H");
    assert_eq!(e.win.line, e.win.top + 2);
    feed(&mut e, "gg");
    assert_eq!(screen(&e.frame(10, 7))[0], "0");
    feed(&mut e, "L");
    assert_eq!(e.win.line, 3);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn jump_and_change_lists() {
    // Ctrl+O back through the jumps, Ctrl+I (Tab) forward again.
    let mut e = run("0\n1\n2\n3\n4", "Ggg");
    feed(&mut e, "\x0f");
    assert_eq!(pos(&e), (4, 0));
    feed(&mut e, "\x0f");
    assert_eq!(pos(&e), (4, 0));
    feed(&mut e, "\t");
    assert_eq!(pos(&e), (0, 0));
    // Entries follow edits: a line inserted above moves them.
    let mut e = run("a\nb\nc\nd", "3Ggg");
    feed(&mut e, "Ox\x1b\x0f");
    assert_eq!(pos(&e), (3, 0));
    // A jump into another buffer switches back to it.
    let dir = std::env::temp_dir().join(format!("rim-jumps-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    let other = dir.join("o.txt");
    fs::write(&other, "o1\no2\no3").unwrap();
    let mut e = run("a\nb", "G");
    feed(&mut e, &format!(":e {}\nG\x0f", other.display()));
    assert_eq!((e.buf.id, pos(&e)), (2, (0, 0)));
    fs::remove_dir_all(&dir).unwrap();
    // g; and g, walk the changes, newest first; a change on the same line replaces the entry.
    let mut e = run("a\nb\nc\nd", "x3Gxlx");
    feed(&mut e, "ggg;");
    assert_eq!(e.win.line, 2);
    feed(&mut e, "g;");
    assert_eq!(e.win.line, 0);
    feed(&mut e, "g;");
    assert_eq!((e.win.line, e.msg()), (0, "At start of change list"));
    feed(&mut e, "g,");
    assert_eq!(e.win.line, 2);
    feed(&mut e, "g,");
    assert_eq!(e.msg(), "At end of change list");
    assert_eq!(run("a", "g;").msg(), "Change list is empty");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn gv_gi_gj_gp_and_bracket_p() {
    // gv: the last selection again, shifted by an edit before it.
    let e = run("abc def", "lvl\x1b$0iXY\x1bgv");
    assert_eq!((e.mode == Mode::Visual(VKind::Char), e.anchor, pos(&e)), (true, (0, 3), (0, 4)));
    assert_eq!(run("ab\ncd", "Vj\x1bgggvd").buf.doc.text().len(), 0);
    assert_eq!(run("a", "gv").msg(), "No previous Visual selection");
    // gi: Insert where it was last left.
    assert_eq!(text(&run("abc", "Ax\x1b0giy\x1b")), "abcxy");
    // gJ: join without touching blanks.
    assert_eq!(text(&run("a\n  b\nc", "3gJ")), "a  bc");
    // gp/gP: the cursor goes just after the pasted text.
    let e = run("a\nb", "yygp");
    assert_eq!((text(&e), pos(&e)), ("a\na\nb".into(), (2, 0)));
    let e = run("ab", "ylgp");
    assert_eq!((text(&e), pos(&e)), ("aab".into(), (0, 2)));
    let e = run("ab", "lylgP");
    assert_eq!((text(&e), pos(&e)), ("abb".into(), (0, 2)));
    // ]p: a linewise paste takes the cursor line's indent.
    assert_eq!(text(&run("x\n    y", "yyj]p")), "x\n    y\n    x");
    assert_eq!(text(&run("  a\n    b\nc", "2yyG]p")), "  a\n    b\nc\na\n  b");
    assert_eq!(text(&run("\ta\n  b", ":set noet ts=2\nyyj]p")), "\ta\n  b\n\ta");
    assert_eq!(text(&run("ab", "yl]p")), "aab");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn replace_mode() {
    assert_eq!(text(&run("abc", "Rxy\x1b")), "xyc");
    assert_eq!(text(&run("abc", "Rxyzw\x1b")), "xyzw");
    // Backspace puts back what was typed over, and removes what was added.
    assert_eq!(text(&run("abc", "Rxyz\x7f\x7f\x1b")), "xbc");
    assert_eq!(text(&run("ab", "Rxyz\x7f\x7f\x7f\x7f\x1b")), "ab");
    // Clusters are replaced whole; counts and `.` repeat; one undo step.
    assert_eq!(text(&run("e\u{301}x", "Ra\x1b")), "ax");
    assert_eq!(text(&run("abcdef", "2Rxy\x1b")), "xyxyef");
    assert_eq!(text(&run("abcd", "Rx\x1bl.")), "xxcd");
    assert_eq!(text(&run("abc", "Rxy\x1bu")), "abc");
    let (rows, _, bar) = snapshot("abc", "R", 40, 2);
    assert!(rows[1].contains("REPLACE") && bar);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn scroll_lines_and_pages() {
    let lines: String = (0..30).map(|i| format!("{i}\n")).collect();
    let mut e = run(&lines, ":set nonu nornu\n");
    let top = |e: &mut Editor| screen(&e.frame(10, 7))[0].clone();
    assert_eq!(top(&mut e), "0");
    // Ctrl+E scrolls a line down, pulling the cursor along when it would leave the screen.
    feed(&mut e, "\x05");
    assert_eq!((top(&mut e), e.win.line), ("1".into(), 1));
    feed(&mut e, "3\x05");
    assert_eq!((top(&mut e), e.win.line), ("4".into(), 4));
    // Ctrl+Y scrolls up; the cursor stays while it is on screen.
    feed(&mut e, "\x19");
    assert_eq!((top(&mut e), e.win.line), ("3".into(), 4));
    feed(&mut e, "5\x19");
    assert_eq!((top(&mut e), e.win.line), ("0".into(), 4));
    // Ctrl+F/Ctrl+B: a page is the screen minus two lines.
    feed(&mut e, "\x06");
    assert_eq!((top(&mut e), e.win.line), ("4".into(), 4));
    feed(&mut e, "\x06");
    assert_eq!((top(&mut e), e.win.line), ("8".into(), 8));
    feed(&mut e, "\x02");
    assert_eq!((top(&mut e), e.win.line), ("4".into(), 8));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn insert_mode_ctrl_keys() {
    // Ctrl+W: the word before the cursor, then blanks and the word; at the line start, the line break.
    assert_eq!(text(&run("foo bar", "A\x17\x1b")), "foo ");
    assert_eq!(text(&run("foo bar  ", "A\x17\x1b")), "foo ");
    assert_eq!(text(&run("foo.bar", "A\x17\x17\x1b")), "foo");
    assert_eq!(text(&run("a\nb", "jI\x17\x1b")), "ab");
    // Ctrl+U: back to the indent, then to the line start.
    assert_eq!(text(&run("  ab cd", "A\x15\x1b")), "  ");
    assert_eq!(text(&run("  ab", "A\x15\x15\x1b")), "");
    // Ctrl+R x: a register's text; Ctrl+V: the next key as itself.
    assert_eq!(text(&run("ab", "yiwA \x12\"\x1b")), "ab ab");
    assert_eq!(text(&run("ab", "yyA\x120\x1b")), "abab\n");
    assert_eq!(text(&run("", ":set et\ni\x16\tx\x16\x01\x1b")), "\tx\x01");
    // Ctrl+O: one Normal command, then Insert again at the cursor (also past the line end).
    let e = run("abc\ndef", "A\x0fjx");
    assert_eq!((text(&e), e.mode == Mode::Insert), ("abc\ndefx".into(), true));
    let e = run("abc", "A\x0fzzx");
    assert_eq!(text(&e), "abcx");
    let e = run("abc", "A\x0f:s/a/z/\nq\x1b");
    // `:s` leaves the cursor at the line start, as in vim.
    assert_eq!(text(&e), "qzbc");
    // A count is dropped after Ctrl+O; Ctrl+W replays with one.
    assert_eq!(text(&run("", "3iab\x0f0x\x1b")), "xab");
    assert_eq!(text(&run("", "2ix y\x17\x1b")), "x x ");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_history_completion_and_registers() {
    let line = |e: &Editor| match &e.mode {
        Mode::Command(s) | Mode::Search(s) => s.clone(),
        _ => panic!("not on the command line"),
    };
    let (up, down) = (KeyEvent::from(KeyCode::Up), KeyEvent::from(KeyCode::Down));
    // Up/Down walk the history, newest first, matching what was typed; past the newest, the typed text.
    let mut e = run("a", ":set ts=2\n:set nu\n:noh\n:se");
    e.key(up);
    assert_eq!(line(&e), "set nu");
    e.key(up);
    assert_eq!(line(&e), "set ts=2");
    e.key(up);
    assert_eq!(line(&e), "set ts=2");
    e.key(down);
    assert_eq!(line(&e), "set nu");
    e.key(down);
    assert_eq!(line(&e), "se");
    // Searches have their own history; a repeat is kept once.
    let mut e = run("ab", "/a\n/b\n/b\n:noh\n/");
    e.key(up);
    assert_eq!(line(&e), "b");
    e.key(up);
    assert_eq!(line(&e), "a");
    e.key(KeyCode::Enter.into());
    assert_eq!(e.history[1], ["a", "b", "a"]);
    // Tab completes command names, cycling; Shift+Tab goes back.
    let mut e = run("a", ":und");
    feed(&mut e, "\t");
    assert_eq!(line(&e), "undo");
    feed(&mut e, "\t");
    assert_eq!(line(&e), "undolist");
    e.key(KeyCode::BackTab.into());
    assert_eq!(line(&e), "undo");
    feed(&mut e, "\n");
    assert_eq!(e.msg(), "Already at oldest change");
    // File names after `:e`.
    let dir = std::env::temp_dir().join(format!("rim-cmdline-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    fs::write(dir.join("only.txt"), "x").unwrap();
    let mut e = run("a", &format!(":e {}/o", dir.display()));
    feed(&mut e, "\t");
    assert_eq!(line(&e), format!("e {}/only.txt", dir.display()));
    fs::remove_dir_all(&dir).unwrap();
    // Ctrl+R x inserts a register (without the line break of a linewise one).
    let mut e = run("foo bar", "yiwyy:s/\x12\"");
    assert_eq!(line(&e), "s/foo bar");
    feed(&mut e, "\x7f\x7f\x7f\x7f/x/\n");
    assert_eq!(text(&e), "x bar");
    let e = run("foo", "yiw/\x12\"");
    assert_eq!(line(&e), "foo");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn init_file_sets_options() {
    let dir = std::env::temp_dir().join(format!("rim-init-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    let path = dir.join("init");
    let mut e = ed("a");
    e.load_init(&path);
    assert_eq!((e.msg(), e.buf.opts.tabstop), ("i insert | Esc normal | :w save | :q quit", 4));
    fs::write(&path, "\" comment\n\nset noet sw=2\n:se ts=8\n  set list\n").unwrap();
    e.load_init(&path);
    let o = &e.buf.opts;
    assert_eq!((o.expandtab, o.shiftwidth, o.tabstop, o.list), (false, 2, 8, true));
    fs::write(&path, "syntax off\n").unwrap();
    e.load_init(&path);
    assert!(!e.syntax_on);
    fs::write(&path, "syn on\nsyntax maybe\nmap x y").unwrap();
    e.load_init(&path);
    assert!(e.syntax_on);
    assert!(e.msg().ends_with("line 2: Invalid argument: maybe; line 3: only :set, :syntax and :highlight are allowed"), "{}", e.msg());
    // Errors name their lines; the other lines still apply.
    fs::write(&path, "set nu\nmap x y\nset foo\nset rnu!").unwrap();
    let mut e = ed("a");
    e.load_init(&path);
    assert_eq!(e.msg(), format!("{}: line 2: only :set, :syntax and :highlight are allowed; line 3: Unknown option: foo", path.display()));
    assert!(!e.buf.opts.relativenumber);
    // A buffer opened later copies the options.
    let other = dir.join("b.txt");
    e.open_more(other).unwrap();
    assert!(e.buffers.len() == 1 && [&e.buf].into_iter().chain(&e.buffers).all(|b| !b.opts.relativenumber));
    fs::remove_dir_all(&dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn frame_wraps_long_lines() {
    // Text area of 4 cells: rows break on cell width, a wide char that does not fit starts the next row.
    let (rows, cursor, _) = snapshot("abcdefghij\nx", "", 6, 5);
    assert_eq!(rows[..4], ["1 abcd", "  efgh", "  ij", "1 x"]);
    assert_eq!(cursor, (2, 0));
    let (rows, cursor, _) = snapshot("abcdefghij\nx", "7l", 6, 5);
    assert_eq!((rows[1].as_str(), cursor), ("  efgh", (5, 1)));
    let (rows, cursor, _) = snapshot("abc日本", "", 6, 3);
    assert_eq!((rows[..2].to_vec(), cursor), (["1 abc", "  日本"].map(String::from).to_vec(), (2, 0)));
    // Selected line break stays on the last row; an empty line is one row; the cursor line pads one row.
    assert_eq!(snapshot("abcde\nf", "V", 6, 4).0[..3], ["1 [abcd]", "  [e ]", "1 f"]);
    assert_eq!(snapshot("\nf", "", 6, 3).0[..2], ["1", "1 f"]);
    // Scrolls by screen rows: the cursor line must fit.
    let (rows, cursor, _) = snapshot("a\nbcdefgh\nk", "G", 6, 4);
    assert_eq!((rows[..3].to_vec(), cursor), (["1 bcde", "  fgh", "3 k"].map(String::from).to_vec(), (2, 2)));
    // A cursor line taller than the screen shows its first rows.
    assert_eq!(snapshot("a\nbcdefghij", "j", 6, 3).0[..2], ["2 bcde", "  fghi"]);
    // Cursor at the end of a full row stays on screen.
    assert_eq!(snapshot("abcd", "A", 6, 3).1, (5, 0));
    // nowrap: sideways scroll again.
    assert_eq!(snapshot("abcdefghij", ":set nowrap\n$", 6, 3).0[0], "1 ghij");
    assert_eq!(snapshot("abcdefghij", ":set nowrap\n:set wrap\n$", 6, 4).0[2], "  ij");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn wrap_screen_rows_motions_and_scroll() {
    let w = |s: &str, keys: &str, h: usize| {
        let mut e = ed(s);
        e.frame(6, h); // text area of 4 cells
        feed(&mut e, keys);
        e
    };
    // gj/gk walk screen rows, keep the screen column through short rows, and cross lines.
    let e = w("abcdefghij\nxy\nklmnopqr", "lgj", 8);
    assert_eq!(pos(&e), (0, 5));
    assert_eq!(pos(&w("abcdefghij\nxy", "lgjgj", 8)), (0, 9));
    assert_eq!(pos(&w("abcdefghij\nxy\nklmnopqr", "llllllgjgj", 8)), (1, 1));
    assert_eq!(pos(&w("abcdefghij\nxy\nklmnopqr", "llllllgjgjgj", 8)), (2, 2));
    assert_eq!(pos(&w("abcdefghij\nxy\nklmnopqr", "llllllgjgjgjgk", 8)), (1, 1));
    assert_eq!(pos(&w("abcdefghij\nxy\nklmnopqr", "G$gk", 8)), (2, 3));
    assert_eq!(pos(&w("abcdefghij\nxy\nklmnopqr", "G$2gk", 8)), (1, 1));
    assert_eq!(pos(&w("abcdefghij\nxy\nklmnopqr", "G99gj", 8)), (2, 4));
    assert_eq!(pos(&w("abcdefghij\nxy", "99gk", 8)), (0, 0));
    assert_eq!(pos(&w("abcdefghij\nxy", "jgk", 8)), (0, 8));
    assert_eq!(text(&w("abcdefghij", "ldgj", 8)), "afghij");
    // Without wrap gj is j.
    assert_eq!(pos(&w("abcdefghij\nxy", ":set nowrap\ngj", 8)), (1, 0));
    // H/M/L count rows: lines take 3, 1, 2, 1, 1 rows; L is the last line shown whole.
    let s = "abcdefghij\nx\nklmnopqr\nz\nw";
    assert_eq!(pos(&w(s, "L", 8)).0, 3);
    assert_eq!(pos(&w(s, "L", 7)).0, 2);
    assert_eq!(pos(&w(s, "M", 8)).0, 1);
    // Ctrl-D moves half a screen of rows (3 here).
    assert_eq!(pos(&w(s, "\x04", 7)).0, 1);
    assert_eq!(pos(&w(s, "\x04\x04", 7)).0, 3);
    assert_eq!(pos(&w(s, "G\x15", 7)).0, 2);
    // A cursor line taller than the screen scrolls inside itself.
    let mut e = w("abcdefghijklmnop", "$", 3);
    assert_eq!(screen(&e.frame(6, 3))[..2], ["  ijkl", "  mnop"]);
    assert_eq!(e.frame(6, 3).cursor, (5, 1));
    feed(&mut e, "0");
    assert_eq!(screen(&e.frame(6, 3))[..2], ["1 abcd", "  efgh"]);
    // cursorline covers every row of the cursor line.
    let mut e = w("abcdefghij\nx", "", 5);
    assert_eq!(e.frame(6, 5).cursor_line, Some(0..3));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn wrapped_rows_with_visual_mode_tabs_wide_chars_and_cursorline() {
    let w = |s: &str, keys: &str| {
        let mut e = ed(s);
        e.frame(6, 8); // text area of 4 cells
        feed(&mut e, keys);
        e
    };
    // gj/gk over a tab (4 cells) and wide chars (2 cells) keep the screen column.
    assert_eq!([pos(&w("a\tbcdefg", "gj")), pos(&w("a\tbcdefg", "gjgj")), pos(&w("a\tbcdefg", "gjgjgj"))], [(0, 1), (0, 2), (0, 6)]);
    assert_eq!([pos(&w("日本語日本語", "lgj")), pos(&w("日本語日本語", "lgjgj")), pos(&w("日本語日本語", "lgjgjgk"))], [(0, 3), (0, 5), (0, 3)]);
    // gj extends a Visual selection by rows, drawn on every row it covers.
    let mut e = w("abcdefghij", "vgj");
    assert_eq!(pos(&e), (0, 4));
    assert_eq!(screen(&e.frame(6, 8))[..3], ["1 [abcd]", "  [e]fgh", "  ij"]);
    // Operators with gj: exclusive, so `ygjP` pastes the rows' chars before the cursor row's column.
    assert_eq!(text(&w("abcdefghij", "ygjP")), "abcdabcdefghij");
    assert_eq!(text(&w("日本語日本語", "lcgjX")), "日X日本語");
    // Block selection with wrap: the columns on every line, `$` to the end of each line.
    let mut e = w("abcdefghij\nklmnopqrst", "\x16jl");
    assert_eq!(screen(&e.frame(6, 8))[..6], ["1 [ab]cd", "  efgh", "  ij", "2 [kl]mn", "  opqr", "  st"]);
    let mut e = w("abcdefghij\nklmno", "\x16j$");
    assert_eq!(screen(&e.frame(6, 8))[..5], ["1 [abcd]", "  [efgh]", "  [ij]", "2 [klmn]", "  [o]"]);
    // The cursorline background is set on every span of every row of the cursor line, and on no other.
    let mut e = w("abcdefghij\nx", "");
    let f = e.frame(6, 6);
    let mut out = Vec::new();
    draw(&f, &mut out).unwrap();
    let out = String::from_utf8(out).unwrap();
    assert_eq!(f.cursor_line, Some(0..3));
    assert_eq!(out.matches("\x1b[48;5;236m").count(), f.rows[..3].iter().map(Vec::len).sum::<usize>(), "{out:?}");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn frame_shows_the_command_line() {
    let (rows, cursor, bar) = snapshot("a", ":wq", 20, 3);
    assert_eq!((rows[2].as_str(), cursor, bar), (":wq", (3, 2), true));
    let (rows, cursor, _) = snapshot("a", "/日本", 20, 2);
    assert_eq!((rows[1].as_str(), cursor), ("/日本", (5, 1)));
    assert_eq!(snapshot("a", ":abcdef", 4, 2).1, (3, 1));
    assert_eq!(fit("a\tb", 5), "a?b  ");
    assert_eq!(fit("日本", 3), "日 ");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn draw_emits_text_and_cursor_shape() {
    let mut e = run("hello", "");
    let mut out = Vec::new();
    draw(&e.frame(20, 2), &mut out).unwrap();
    let out = String::from_utf8(out).unwrap();
    assert!(out.contains("hello") && out.contains("\x1b[2 q"), "{out:?}");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn cursor_line_is_padded_and_drawn_on_its_background() {
    let mut e = run("a\nb日\nc", "j");
    let f = e.frame(10, 4);
    assert_eq!(f.cursor_line, Some(1..2));
    let row: String = f.rows[1].iter().map(|s| s.text.as_str()).collect();
    assert_eq!(row, "2 b日     ");
    assert_eq!(f.rows[0].iter().map(|s| s.text.as_str()).collect::<String>(), "1 a");
    let mut out = Vec::new();
    draw(&f, &mut out).unwrap();
    let out = String::from_utf8(out).unwrap();
    // Every span of the cursor row, and only those, gets the background.
    assert_eq!(out.matches("\x1b[48;5;236m").count(), f.rows[1].len(), "{out:?}");
    // Line numbers: orange on the cursor line, grey elsewhere.
    assert_eq!(f.rows[1][0].style, Style::CurrentNumber);
    assert_eq!(f.rows[0][0].style, Style::Number);
    assert_eq!(out.matches("\x1b[38;5;214m").count(), 1);
    assert_eq!(out.matches("\x1b[38;5;243m").count(), 2);
    let mut e = run(&"x\n".repeat(10), "8j");
    assert_eq!(e.frame(10, 4).cursor_line, Some(2..3));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn word_objects() {
    let s = "foo bar.baz  qux";
    assert_eq!(text(&run(s, "wdiw")), "foo .baz  qux");
    // No trailing blanks before `.`: the leading ones go.
    assert_eq!(text(&run(s, "wdaw")), "foo.baz  qux");
    assert_eq!(text(&run(s, "daw")), "bar.baz  qux");
    // Last word: no trailing blanks, so the leading ones go.
    assert_eq!(text(&run(s, "$daw")), "foo bar.baz");
    assert_eq!(text(&run(s, "wdiW")), "foo   qux");
    assert_eq!(text(&run(s, "d3iw")), ".baz  qux");
    assert_eq!(text(&run(s, "d2aw")), ".baz  qux");
    // On blanks: `iw` is the blanks, `aw` adds the next word.
    assert_eq!(text(&run(s, "4whdiw")), "foo bar.bazqux");
    assert_eq!(text(&run(s, "4whdaw")), "foo bar.baz");
    assert_eq!(text(&run("foo.bar", "daw")), ".bar");
    assert_eq!(text(&run("a\n\nb", "jdiw")), "a\n\nb");
    let e = run(s, "wciwX\x1bww.");
    assert_eq!(text(&e), "foo X.X  qux");
    assert_eq!(reg(&run(s, "wyiw")).0, "bar");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn quote_objects() {
    let s = r#"say "hi there" 'x' now"#;
    assert_eq!(text(&run(s, r#"fhdi""#)), r#"say "" 'x' now"#);
    assert_eq!(text(&run(s, r#"fhda""#)), "say 'x' now");
    // Before the first quote: the next pair.
    assert_eq!(text(&run(s, r#"di""#)), r#"say "" 'x' now"#);
    assert_eq!(text(&run(s, "di'")), r#"say "hi there" '' now"#);
    assert_eq!(text(&run(s, "$di'")), s);
    assert_eq!(text(&run(r#""a""#, r#"ci"X"#)), r#""X""#);
    assert_eq!(text(&run("`a`", "da`")), "");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn bracket_objects() {
    let s = "f(a, (b), c)";
    assert_eq!(text(&run(s, "fbdi(")), "f(a, (), c)");
    assert_eq!(text(&run(s, "fbda(")), "f(a, , c)");
    assert_eq!(text(&run(s, "fb2di(")), "f()");
    assert_eq!(text(&run(s, "fbdib")), "f(a, (), c)");
    assert_eq!(text(&run(s, "fbdi)")), "f(a, (), c)");
    // On a bracket: that pair.
    assert_eq!(text(&run(s, "f(di(")), "f()");
    assert_eq!(text(&run(s, "$di(")), "f()");
    assert_eq!(text(&run(s, "di(")), s);
    assert_eq!(text(&run(s, "fbdi[")), s);
    assert_eq!(text(&run("[a] {b} <c>", "di[wdi{wdi<")), "[] {} <>");
    assert_eq!(text(&run("{b}", "diB")), "{}");
    assert_eq!(text(&run("()", "ci(X\x1b")), "(X)");
    // Brackets alone at the block edges: the inner lines, linewise.
    let block = "fn f() {\n    a;\n    b;\n}";
    let e = run(block, "jdi{");
    assert_eq!((text(&e).as_str(), &reg(&e)), ("fn f() {\n}", &("    a;\n    b;\n".to_string(), true)));
    assert_eq!(text(&run(block, "jda{")), "fn f() ");
    assert_eq!(text(&run("{a\nb}", "di{")), "{}");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn paragraph_objects() {
    let s = "a\nb\n\n\nc\nd\n\ne";
    assert_eq!(text(&run(s, "dip")), "\n\nc\nd\n\ne");
    assert_eq!(text(&run(s, "dap")), "c\nd\n\ne");
    assert_eq!(text(&run(s, "jjdip")), "a\nb\nc\nd\n\ne");
    assert_eq!(text(&run(s, "jjdap")), "a\nb\n\ne");
    assert_eq!(text(&run(s, "d2ip")), "c\nd\n\ne");
    // At the end there are no following blanks: the preceding ones go.
    assert_eq!(text(&run(s, "Gdap")), "a\nb\n\n\nc\nd");
    assert_eq!(text(&run("a\n  \nb", "dip")), "  \nb");
    assert_eq!(reg(&run(s, "yip")), ("a\nb\n".to_string(), true));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn visual_text_objects() {
    let e = run("a\nb\n\nc", "vip");
    assert_eq!((&e.mode, e.anchor, pos(&e)), (&Mode::Visual(VKind::Line), (0, 0), (1, 0)));
    assert_eq!(text(&run("a\nb\n\nc", "vipd")), "\nc");
    assert_eq!(text(&run("a\nb\n\nc", "vapd")), "c");
    let e = run("f(abc)", "fbvi(");
    assert_eq!((e.anchor, pos(&e), &e.mode), ((0, 2), (0, 4), &Mode::Visual(VKind::Char)));
    assert_eq!(text(&run("f(abc)", "fbVa(d")), "f");
    assert_eq!(text(&run("foo bar", "v2iwd")), "bar");
    assert_eq!(text(&run("foo bar", "viwc!\x1b")), "! bar");
    // Empty or missing objects leave the selection alone.
    let e = run("()", "vi(");
    assert_eq!((e.anchor, pos(&e), e.pending.as_str()), ((0, 0), (0, 0), ""));
    assert_eq!(run("abc", "viz").mode, Mode::Visual(VKind::Char));
    assert_eq!(run("abc", "vi").pending, "i");
    assert_eq!(text(&run("a b c", "viwd.")), "b c");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn bracket_match_and_percent() {
    assert_eq!(pos(&run("f(a[b]c)", "%")), (0, 7));
    assert_eq!(pos(&run("f(a[b]c)", "$%")), (0, 1));
    assert_eq!(pos(&run("f(a[b]c)", "fb%")), (0, 3));
    assert_eq!(pos(&run("{\n a\n}", "%")), (2, 0));
    assert_eq!(pos(&run("a(b", "%")), (0, 0));
    assert_eq!(pos(&run("abc", "%")), (0, 0));
    assert_eq!(text(&run("x(a)y", "ld%")), "xy");
    let s = "a\nb\nc\nd";
    assert_eq!(run(s, "50%").win.line, 1);
    assert_eq!(run(s, "100%").win.line, 3);
    assert_eq!(run(s, "1%").win.line, 0);
    assert_eq!(run(s, "500%").win.line, 3);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn star_and_hash_search_whole_words() {
    let s = "foo food foo\nfoo";
    let mut e = run(s, "*");
    assert_eq!(pos(&e), (0, 9));
    feed(&mut e, "*");
    assert_eq!(pos(&e), (1, 0));
    feed(&mut e, "*");
    assert_eq!((pos(&e), e.msg()), ((0, 0), "search hit BOTTOM, continuing at TOP"));
    feed(&mut e, "#");
    assert_eq!((pos(&e), e.msg()), ((1, 0), "search hit TOP, continuing at BOTTOM"));
    feed(&mut e, "n"); // follows the last direction (backward)
    assert_eq!(pos(&e), (0, 9));
    assert_eq!(pos(&run(s, "ll2*")), (1, 0));
    // From blanks: the next word in the line.
    assert_eq!(pos(&run("  foo x foo", "*")), (0, 8));
    assert_eq!(run("  ..", "*").msg(), "No identifier under cursor");
    assert_eq!(text(&run("a b a", "d*")), "a");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn search_across_chunks() {
    let mut doc = Document::new("cd");
    doc.insert(0, "cdab");
    doc.insert(0, "xab");
    let mut e = Editor::new(doc, PathBuf::from("/nonexistent/x"));
    feed(&mut e, "/bc\n");
    assert_eq!(pos(&e), (0, 2));
    feed(&mut e, "n");
    assert_eq!(pos(&e), (0, 6));
    feed(&mut e, "N");
    assert_eq!(pos(&e), (0, 2));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn hlsearch_and_incsearch() {
    let s = "abc abc\nx";
    // Typing previews the match from where `/` started and highlights the typed pattern.
    let mut e = run(s, "/bc");
    assert_eq!(pos(&e), (0, 1));
    assert_eq!(screen(&e.frame(20, 3))[0], "1 a{bc} a{bc}");
    feed(&mut e, "z");
    assert_eq!(pos(&e), (0, 0));
    feed(&mut e, "\x7f\n");
    assert_eq!((pos(&e), &e.mode), ((0, 1), &Mode::Normal));
    // hlsearch stays until `:noh`, and comes back with `n`.
    assert_eq!(screen(&e.frame(20, 3))[0], "1 a{bc} a{bc}");
    feed(&mut e, ":noh\n");
    assert_eq!(screen(&e.frame(20, 3))[0], "1 abc abc");
    feed(&mut e, "n");
    assert_eq!((pos(&e), screen(&e.frame(20, 3))[0].as_str()), ((0, 5), "1 a{bc} a{bc}"));
    // Esc and Backspace on an empty pattern go back to the origin.
    assert_eq!(pos(&run(s, "w/b\x1b")), (0, 4));
    let e = run(s, "w/b\x7f\x7f");
    assert_eq!((pos(&e), &e.mode), ((0, 4), &Mode::Normal));
    // The selection draws over matches; whole-word matches for `*`.
    assert_eq!(screen(&run("ab ab", "/b\nv").frame(20, 2))[0], "1 a[b] a{b}");
    assert_eq!(screen(&run("ab abc ab", "*").frame(20, 2))[0], "1 {ab} abc {ab}");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn backward_search_and_offsets() {
    let s = "ab cd\nab cd\nab";
    // `?` goes backward, `n` keeps going that way and `N` reverses.
    let mut e = run(s, "G$?cd\n");
    assert_eq!(pos(&e), (1, 3));
    feed(&mut e, "n");
    assert_eq!(pos(&e), (0, 3));
    feed(&mut e, "N");
    assert_eq!(pos(&e), (1, 3));
    // Wrapping backward.
    let e = run(s, "?cd\n");
    assert_eq!((pos(&e), e.msg()), ((1, 3), "search hit TOP, continuing at BOTTOM"));
    // Offsets: end, start, lines; `//` reuses the pattern with a new offset.
    assert_eq!(pos(&run(s, "/cd/e\n")), (0, 4));
    assert_eq!(pos(&run(s, "/cd/s+1\n")), (0, 4));
    assert_eq!(pos(&run(s, "/cd/b-1\n")), (0, 2));
    assert_eq!(pos(&run(s, "/cd/+1\n")), (1, 0));
    assert_eq!(pos(&run(s, "/cd/e-1\n")), (0, 3));
    let mut e = run(s, "/cd\n//e\n");
    assert_eq!(pos(&e), (1, 4));
    // `n` reapplies the offset.
    feed(&mut e, "n");
    assert_eq!(pos(&e), (0, 4));
    assert_eq!(run(s, "/cd/x\n").msg(), "Invalid search offset: x");
    // An escaped delimiter belongs to the pattern.
    assert_eq!(pos(&run("a/b\nc", "/a\\/b\n")), (0, 0));
    assert_eq!(pos(&run("a/b\nc/b", "j/\\/b\n")), (1, 1));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn multi_line_matches_are_highlighted() {
    let mut e = run("ab\ncd", "/b\\nc\n");
    assert_eq!(screen(&e.frame(20, 3))[..2], ["1 a{b}", "1 {c}d"]);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn substitute_confirm_count_and_repeat() {
    let s = "aa aa\nb\naa";
    // Count only.
    let e = run(s, ":%s/a/x/gn\n");
    assert_eq!((text(&e).as_str(), e.msg()), (s, "6 matches on 2 lines"));
    assert_eq!(run(s, ":s/q/x/n\n").msg(), "Pattern not found: q");
    // Confirm: y n a q l, one undo step, per-line without `g`.
    let mut e = run(s, ":%s/a/x/c\n");
    assert_eq!((pos(&e), e.msg()), ((0, 0), "replace with x (y/n/a/q/l)?"));
    feed(&mut e, "y");
    assert_eq!(pos(&e), (2, 0));
    feed(&mut e, "n");
    assert_eq!((text(&e).as_str(), &e.mode), ("xa aa\nb\naa", &Mode::Normal));
    assert_eq!(e.msg(), "1 substitution on 1 line");
    feed(&mut e, "u");
    assert_eq!(text(&e), s);
    let mut e = run(s, ":%s/a/x/gc\nyn");
    feed(&mut e, "z"); // other keys are ignored
    assert_eq!(e.mode, Mode::Confirm);
    feed(&mut e, "a");
    assert_eq!((text(&e).as_str(), e.msg()), ("xa xx\nb\nxx", "5 substitutions on 2 lines"));
    feed(&mut e, "u");
    assert_eq!(text(&e), s);
    assert_eq!(text(&run(s, ":%s/a/x/gc\nl")), "xa aa\nb\naa");
    assert_eq!(text(&run(s, ":%s/a/x/gc\ny\x1b")), "xa aa\nb\naa");
    assert_eq!(text(&run(s, ":%s/a/x/gc\nq")), s);
    // The match being asked about is drawn reversed, the others as matches.
    let mut e = run("ab ab\ncd", ":%s/b\\ncd|b/X/gc\n");
    assert_eq!(screen(&e.frame(20, 3))[..2], ["1 a[b] a{b}", "1 {cd}"]);
    feed(&mut e, "y");
    assert_eq!(screen(&e.frame(20, 3))[..2], ["1 aX a[b ]", "1 [cd]"]);
    assert_eq!(run(s, ":s/q/x/c\n").msg(), "Pattern not found: q");
    // Empty matches advance; replacements that grow the text keep the range.
    assert_eq!(text(&run("ab", ":s/x*/-/gc\nyyy")), "-a-b-");
    assert_eq!(text(&run("ab\ncd", ":1,1s/b/XYZ/gc\ny")), "aXYZ\ncd");
    // `&`, `:&`, `:&&`, `g&`.
    assert_eq!(run(s, "&").msg(), "No previous substitute");
    let mut e = run(s, ":s/a/x/g\n");
    assert_eq!(text(&e), "xx xx\nb\naa");
    feed(&mut e, "G&");
    assert_eq!(text(&e), "xx xx\nb\nxa");
    feed(&mut e, ":&&\n");
    assert_eq!(text(&e), "xx xx\nb\nxx");
    let mut e = run("aa\naa\naa", ":s/a/x/g\nj:&\n");
    assert_eq!(text(&e), "xx\nxa\naa");
    feed(&mut e, "g&");
    assert_eq!(text(&e), "xx\nxx\nxa");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn gn_selects_the_match() {
    let s = "foo bar foo bar foo";
    assert_eq!(run(s, "gn").msg(), "No previous search pattern");
    assert_eq!(text(&run(s, "/foo\ngg0dgn")), " bar foo bar foo");
    // On the match, it is that match; `gN` goes backward.
    assert_eq!(text(&run(s, "/foo\ngg0wwdgn")), "foo bar  bar foo");
    assert_eq!(text(&run(s, "/bar\n$dgN")), "foo bar foo  foo");
    assert_eq!(text(&run(s, "/foo\nggcgnX\x1b")), "X bar foo bar foo");
    // `.` repeats `cgn` on the next match.
    assert_eq!(text(&run(s, "/foo\nggcgnX\x1b..")), "X bar X bar X");
    assert_eq!(pos(&run(s, "/bar\ngg0gn")), (0, 6));
    assert_eq!(run(s, "/bar\ngg0gn").mode, Mode::Visual(VKind::Char));
    assert_eq!(run(s, "/zzz\ngn").msg(), "Pattern not found: zzz");
    // In Visual, `gn` extends to the next match's end, `gN` to the previous match's start.
    let e = run(s, "/bar\ngg0vgnd");
    assert_eq!((text(&e).as_str(), &e.mode), (" foo bar foo", &Mode::Normal));
    assert_eq!(text(&run(s, "/bar\ngg0vgngnd")), " foo");
    assert_eq!(text(&run(s, "/foo\n$vgNd")), "foo bar foo bar ");
    assert_eq!(text(&run(s, "/foo\n$vgNgNd")), "foo bar ");
}

fn lines(n: usize) -> String {
    (1..=n).map(|i| format!("l{i}")).collect::<Vec<_>>().join("\n")
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn screen_line_motions_and_scrolling() {
    let mut e = ed(&lines(20));
    e.frame(10, 6);
    let mut at = |keys: &str| {
        feed(&mut e, keys);
        e.win.line
    };
    assert_eq!(at("L"), 4);
    assert_eq!(at("H"), 0);
    assert_eq!(at("M"), 2);
    assert_eq!(at("3H"), 2);
    assert_eq!(at("2L"), 3);
    assert_eq!(at("9L"), 0);
    let mut e = ed(&lines(3));
    e.frame(10, 6);
    feed(&mut e, "dL");
    assert_eq!(text(&e), "");
    // zt/zz/zb put the cursor line at the top, middle, bottom.
    let mut e = ed(&lines(20));
    let top = |e: &mut Editor| screen(&e.frame(10, 6))[0].clone();
    feed(&mut e, "10G");
    assert_eq!(top(&mut e), " 4 l6");
    feed(&mut e, "zt");
    assert_eq!(top(&mut e), "10 l10");
    feed(&mut e, "zz");
    assert_eq!(top(&mut e), " 2 l8");
    feed(&mut e, "zb");
    assert_eq!(top(&mut e), " 4 l6");
    feed(&mut e, "zx");
    assert_eq!(top(&mut e), " 4 l6");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn marks() {
    let s = "abc\ndef\nghi";
    assert_eq!(pos(&run(s, "jlmaG'a")), (1, 0));
    assert_eq!(pos(&run(s, "jlmaG`a")), (1, 1));
    assert_eq!(text(&run("a\nb\nc\nd", "jmaGd'a")), "a");
    assert_eq!(text(&run("abcd", "lmal$d`a")), "ad");
    // Marks follow edits.
    assert_eq!(pos(&run(s, "jjmaggOx\x1b'a")), (3, 0));
    assert_eq!(pos(&run(s, "jlmaggix\x1bj`a")), (1, 1));
    assert_eq!(pos(&run(s, "jlmaggdd`a")), (0, 1));
    assert_eq!(pos(&run(s, "jlmakdj`a")), (0, 0));
    // `''` and `` `` `` go back to where the last jump started.
    assert_eq!(pos(&run(s, "lG''")), (0, 0));
    assert_eq!(pos(&run(s, "lG``")), (0, 1));
    assert_eq!(pos(&run(s, "G''''")), (2, 0));
    assert_eq!(pos(&run(s, "/h\n``")), (0, 0));
    assert_eq!(pos(&run(s, ":3\n''")), (0, 0));
    assert_eq!(run(s, "'z").msg(), "Mark not set");
    assert_eq!(run(s, "m1").msg(), "Invalid mark name");
    // Undo and redo move marks back with the text.
    assert_eq!(pos(&run("日本\nx", "jmaggddu`a")), (1, 0));
    assert_eq!(pos(&run("日本\nx", "jmaggddu\x12`a")), (0, 0));
    // `:s` moves them through each replacement.
    assert_eq!(pos(&run("aaa\nbx", "j$ma:%s/a/zz/g\n`a")), (1, 1));
    assert_eq!(pos(&run("a b c", "$ma:s/a b/q/\n`a")), (0, 2));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn undo_puts_the_cursor_on_the_change() {
    let e = run("a\nb\nc\nd", "Gddggu");
    assert_eq!(pos(&e), (3, 0));
    let e = run("abc def", "wdwgg0u");
    assert_eq!(pos(&e), (0, 4));
    let e = run("abc def", "wdw0u\x12");
    assert_eq!(pos(&e), (0, 3));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn case_operators() {
    assert_eq!(text(&run("Foo Bar", "guiw")), "foo Bar");
    assert_eq!(text(&run("Foo Bar", "gUw")), "FOO Bar");
    assert_eq!(text(&run("Foo Bar", "gUU")), "FOO BAR");
    assert_eq!(text(&run("Foo Bar", "gUgU")), "FOO BAR");
    assert_eq!(text(&run("Foo Bar", "g~~")), "fOO bAR");
    assert_eq!(text(&run("Foo Bar", "wgu$")), "Foo bar");
    assert_eq!(text(&run("a\nb\nc", "2gUU")), "A\nB\nc");
    assert_eq!(text(&run("a\nb\nc", "gUj")), "A\nB\nc");
    let e = run("Foo Bar", "wg~iw");
    assert_eq!((text(&e).as_str(), pos(&e)), ("Foo bAR", (0, 4)));
    assert_eq!(text(&run("abc", "vlU")), "ABc");
    assert_eq!(text(&run("ABC", "vlu")), "abC");
    assert_eq!(text(&run("ABC\nD", "Vu")), "abc\nD");
    assert_eq!(text(&run("Foo", "g~~u")), "Foo");
    assert_eq!(text(&run("ab cd", "gUiww.")), "AB CD");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn increment_and_decrement() {
    let e = run("x 9 y", "\x01");
    assert_eq!((text(&e).as_str(), pos(&e)), ("x 10 y", (0, 3)));
    assert_eq!(text(&run("a-3", "5\x18")), "a-8");
    assert_eq!(text(&run("a-3", "l5\x01")), "a2");
    assert_eq!(text(&run("12 34", "l\x01")), "13 34");
    assert_eq!(text(&run("12 34", "lll\x18")), "12 33");
    assert_eq!(text(&run("007", "3\x01")), "10");
    assert_eq!(text(&run("abc", "\x01")), "abc");
    assert_eq!(text(&run("1 x", "ll\x01")), "1 x");
    let e = run("9223372036854775807", "\x01");
    assert_eq!((text(&e).as_str(), e.msg()), ("9223372036854775807", "Number out of range"));
    assert_eq!(text(&run("1", "\x01u")), "1");
    assert_eq!(text(&run("1", "\x01.")), "3");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn autoindent() {
    assert_eq!(text(&run("  a", "ob\x1b")), "  a\n  b");
    assert_eq!(text(&run("  a", "Ob\x1b")), "  b\n  a");
    assert_eq!(text(&run("  a", "A\nb\x1b")), "  a\n  b");
    assert_eq!(text(&run("\ta", "ob\x1b")), "\ta\n\tb");
    // An indent left unused is removed.
    assert_eq!(text(&run("  a", "o\x1b")), "  a\n");
    assert_eq!(text(&run("  a", "A\n\nb\x1b")), "  a\n\n  b");
    // Only the indent before the cursor is copied.
    assert_eq!(text(&run("  ab", "0li\n\x1b")), " \n  ab");
    assert_eq!(text(&run("  a", "3ox\x1b")), "  a\n  x\n  x\n  x");
    assert_eq!(text(&run("  a\nb", "Sx\x1b")), "  x\nb");
    assert_eq!(pos(&run("  a", "o\x1b")), (1, 0));
    // Typing keeps the indent.
    assert_eq!(text(&run("  a", "o \x1b")), "  a\n   ");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn dot_count_replaces_the_original() {
    assert_eq!(text(&run("a\nb\nc\nd\ne", "2dd3.")), "");
    assert_eq!(text(&run("a\nb\nc\nd\ne", "2dd.")), "e");
    assert_eq!(text(&run("a b c d e f g", "d2w3.")), "f g");
    assert_eq!(text(&run("abcdef", "x3.")), "ef");
    assert_eq!(text(&run("", "ix\x1b3.")), "xxxx");
    assert_eq!(text(&run("a\nb", "\"ayyj\"Ayy\"ap.")), "a\nb\na\na\nb\nb");
    // Each replay is one undo step.
    assert_eq!(text(&run("a\nb\nc", "dd2.u")), "b\nc");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn named_numbered_and_clipboard_registers() {
    assert_eq!(text(&run("a\nb", "\"ayyj\"ap")), "a\nb\na");
    assert_eq!(text(&run("a\nb", "\"ayyj\"Ayy\"ap")), "a\nb\na\nb");
    assert_eq!(text(&run("a\nb", "yyjdd\"0p")), "a\na");
    assert_eq!(text(&run("a\nb\nc", "dddd\"2p")), "c\na");
    assert_eq!(text(&run("ab", "\"bx\"bp")), "ba");
    assert_eq!(text(&run("ab", "\"bxp")), "ba");
    assert_eq!(text(&run("ab", "vl\"ay$\"aP")), "aabb");
    assert_eq!(run("a", "\"zp").msg(), "Nothing in register z");
    // An invalid register cancels the prefix; the next key runs alone.
    assert_eq!(text(&run("ab", "\"!x")), "b");
    assert_eq!(text(&run("ab", "v\"!x")), "b");
    // `"+` goes to the system clipboard (OSC 52) on the next draw, once.
    let mut e = run("abc", "\"+yy");
    let f = e.frame(20, 2);
    assert_eq!(f.clipboard.as_deref(), Some("abc\n"));
    let mut out = Vec::new();
    draw(&f, &mut out).unwrap();
    assert!(String::from_utf8(out).unwrap().contains(&osc52("abc\n")));
    assert_eq!(e.frame(20, 2).clipboard, None);
    // Reading asks the terminal; without an answer nothing is pasted (no copy of the editor's own).
    feed(&mut e, "\"*p");
    assert_eq!((text(&e).as_str(), e.msg()), ("abc", "Clipboard read failed: the terminal did not answer OSC 52"));
    e.set_clipboard_reader(|| Some("x\ny".into()));
    feed(&mut e, "\"+p");
    assert_eq!(text(&e), "ax\nybc");
    e.set_clipboard_reader(|| Some("line\n".into()));
    feed(&mut e, "gg\"*P");
    assert_eq!(text(&e), "line\nax\nybc");
    // Ctrl+R + in Insert mode and on the command line, `@+` as a macro.
    feed(&mut e, "A\x12+\x1b:\x12+");
    assert!(e.mode == Mode::Command("line".into()));
    feed(&mut e, "\x1b");
    assert_eq!(text(&e), "lineline\n\nax\nybc");
    e.set_clipboard_reader(|| Some("dd".into()));
    feed(&mut e, "gg@+");
    assert_eq!(text(&e), "\nax\nybc");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn macros() {
    assert_eq!(text(&run("1\n2\n3", "qaA!\x1bjq2@a")), "1!\n2!\n3!");
    assert_eq!(text(&run("a\nb\nc", "qaA!\x1bjq@a@@")), "a!\nb!\nc!");
    assert!(screen(&run("a", "qb").frame(100, 2))[1].contains("recording @b"));
    assert!(!screen(&run("a", "qbq").frame(100, 2))[1].contains("recording"));
    // Command line and search keys are recorded too.
    assert_eq!(text(&run("x\ny\nx", "qa/x\nrzq@a")), "z\ny\nz");
    // A macro calling itself stops at the depth limit.
    assert_eq!(run("a", "qa@aq@a").msg(), "Macro recursion too deep");
    assert_eq!(run("a", "qaix\x1b@aq@a").msg(), "Macro recursion too deep");
    assert_eq!(run("a", "q1").msg(), "Invalid register name");
    assert_eq!(run("a", "@z").msg(), "Register z is empty");
    assert_eq!(run("a", "@@").msg(), "No previously used register");
    // A quit inside a macro quits (recorded while dirty, so it was refused then).
    let mut e = ed("a");
    assert!(feed(&mut e, "xqa:q\nqu"));
    assert!(!feed(&mut e, "@a"));
    // Changes inside a macro still feed `.`.
    assert_eq!(text(&run("abc", "qaxq@a.")), "");
    // Macros are register text: pasted, yanked into and edited, appended with `qA`, recorded keys
    // (Esc, Enter, Ctrl keys) kept as their chars; `"` is left alone.
    let e = run("x", "yiwqaA!\x1bq\"ap");
    assert_eq!(text(&e), "x!A!\x1b");
    assert_eq!(e.regs.get('"').map(|r| r.text.as_str()), Some("x"));
    assert_eq!(text(&run("1\n2\nA!\x1bj", "G\"ay$gg@a")), "1!\n2\nA!\x1bj");
    assert_eq!(text(&run("a\nb\nc", "qaA!\x1bqqAjq@a")), "a!\nb!\nc");
    assert_eq!(text(&run("ab", "qa\x01q\"ap")), "a\x01b");
    assert_eq!(text(&run("a1 b", "qa\x01q@a")), "a3 b");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn visual_block_in_screen_columns() {
    // A tab (cells 1-4 at ts=4) and wide chars keep the block straight on screen.
    let e = run("a\tb\nabcdefgh", "ll\x16jd");
    assert_eq!(text(&e), "a\nabgh");
    assert_eq!(e.regs.get('"').map(|r| r.text.as_str()), Some("\tb\ncdef"));
    assert_eq!(text(&run("日本語\nabcdef", "l\x16jd")), "語\naef");
    assert_eq!(text(&run("a\tb\nabcdefgh", "j5l\x16kIX\x1b")), "a\tXb\nabcdeXfgh");
    // The block ends at the last cell of 本 (screen column 3): the short line is padded.
    assert_eq!(text(&run("ab\n日本", "l\x16jAX\x1b")), "ab  X\n日本X");
    assert_eq!(snapshot("日本語\nabcdef", ":set nonu nornu\nl\x16j", 20, 3).0[..2], ["[日本]語", "a[bcd]ef"]);
    // A block pastes at the cursor's screen column, padding short lines.
    assert_eq!(text(&run("ab\ncd\n\tx\ny", "\x16jly2jlP")), "ab\ncd\n\tabx\ny   cd");
    // Visual r over a block of wide chars.
    assert_eq!(text(&run("日本\nabcd", "\x16jrx")), "x本\nxxcd");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn visual_block_delete_yank_paste() {
    let e = run("abc\ndef\nghi", "l\x16jld");
    assert_eq!((text(&e).as_str(), pos(&e)), ("a\nd\nghi", (0, 0)));
    assert_eq!(e.regs.get('"'), Some(&Reg { text: "bc\nef".into(), kind: RegKind::Block }));
    assert_eq!(text(&run("ab\ncd", "\x16jy$p")), "aba\ncdc");
    assert_eq!(text(&run("ab\ncd", "\x16jyP")), "aab\nccd");
    assert_eq!(text(&run("a\nb\nq", "\x16jyGp")), "a\nb\nqa\n b");
    assert_eq!(text(&run("a\nb\nq", "\x16jyG2p")), "a\nb\nqaa\n bb");
    assert_eq!(text(&run("ab\nabcd", "\x16j$d")), "\n");
    assert_eq!(text(&run("abc\nd\nabc", "ll\x16jjx")), "ab\nd\nab");
    assert_eq!(text(&run("abc\ndef", "l\x16jlyu")), "abc\ndef");
    assert_eq!(text(&run("abc\ndef", "l\x16jldu")), "abc\ndef");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn visual_block_insert_append_change() {
    assert_eq!(text(&run("ab\ncd\nef", "l\x16jjIX\x1b")), "aXb\ncXd\neXf");
    // The cursor end follows normal clamping: on a short line the block starts at its last char.
    assert_eq!(text(&run("ab\ncd\ne", "l\x16jjIX\x1b")), "Xab\nXcd\nXe");
    // `I` skips lines shorter than the column, `A` pads them.
    assert_eq!(text(&run("ab\n\ncd", "l\x16jjIX\x1b")), "aXb\n\ncXd");
    assert_eq!(text(&run("abc\nd", "ll\x16jAX\x1b")), "abcX\nd  X");
    assert_eq!(text(&run("ab\nabcd", "\x16j$AX\x1b")), "abX\nabcdX");
    assert_eq!(text(&run("abc\ndef", "l\x16jcX\x1b")), "aXc\ndXf");
    assert_eq!(text(&run("abc\ndef", "l\x16jsX\x1b")), "aXc\ndXf");
    // A line break typed in the block insert is not copied.
    assert_eq!(text(&run("ab\ncd", "\x16jIX\nY\x1b")), "X\nYab\ncd");
    let e = run("ab\ncd", "l\x16jIXY\x1b");
    assert_eq!((text(&e).as_str(), pos(&e), &e.mode), ("aXYb\ncXYd", (0, 1), &Mode::Normal));
    // One undo step for the whole block.
    assert_eq!(text(&run("ab\ncd", "l\x16jIX\x1bu")), "ab\ncd");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn visual_block_other_operators_and_render() {
    assert_eq!(text(&run("abc\ndef", "l\x16jrx")), "axc\ndxf");
    assert_eq!(text(&run("abc\ndef", "l\x16jU")), "aBc\ndEf");
    assert_eq!(text(&run("ABC\nDEF", "l\x16ju")), "AbC\nDeF");
    assert_eq!(text(&run("abc\ndef", "l\x16j~")), "aBc\ndEf");
    assert_eq!(text(&run("a\nb", "\x16j>")), "    a\n    b");
    assert_eq!(text(&run("a\nb", "\x16jJ")), "a b");
    let mut e = run("abc\ndef", "l\x16jl");
    let rows = screen(&e.frame(20, 3));
    assert_eq!(rows[..2], ["1 a[bc]", "2 d[ef]"]);
    assert!(rows[2].starts_with("-- VISUAL BLOCK --"));
    assert_eq!(run("a", "\x16v").mode, Mode::Visual(VKind::Char));
    assert_eq!(run("a", "v\x16").mode, Mode::Visual(VKind::Block));
    assert_eq!(run("a", "\x16\x16").mode, Mode::Normal);
    let e = run("abcd\nefgh", "ll\x16jlo");
    assert_eq!((e.anchor, pos(&e)), ((1, 3), (0, 2)));
    assert_eq!(text(&run("abcd\nefgh", "ll\x16jlold")), "abc\nefg");
    assert_eq!(screen(&run("ab\nabcd", "\x16j$").frame(20, 3))[..2], ["1 [ab]", "2 [abcd]"]);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn visual_replace_and_insert() {
    assert_eq!(text(&run("abc\nd", "vjrx")), "xxx\nx");
    assert_eq!(text(&run("ab\ncd", "Vrx")), "xx\ncd");
    assert_eq!(run("ab", "vr").pending, "r");
    assert_eq!(text(&run("abc", "lvlIX\x1b")), "aXbc");
    assert_eq!(text(&run("abc", "lvAX\x1b")), "abXc");
    assert_eq!(text(&run("  ab\nc", "VIX\x1b")), "  Xab\nc");
    assert_eq!(text(&run("ab\nc", "VAX\x1b")), "abX\nc");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn set_options() {
    let rows = |e: &mut Editor| screen(&e.frame(20, 3))[..2].to_vec();
    let mut e = run("a\nb", ":set nonu nornu\n");
    assert_eq!(rows(&mut e), ["a", "b"]);
    feed(&mut e, ":set nu\n");
    assert_eq!(rows(&mut e), ["1 a", "2 b"]);
    feed(&mut e, ":set nonu rnu\n");
    assert_eq!(rows(&mut e), ["0 a", "1 b"]);
    feed(&mut e, ":set nocul\n");
    assert_eq!(e.frame(20, 3).cursor_line, None);
    feed(&mut e, ":set ts?\n");
    assert_eq!(e.msg(), "tabstop=4");
    feed(&mut e, ":set foo\n");
    assert_eq!(e.msg(), "Unknown option: foo");
    assert!(run("a", ":set\n").msg().starts_with("number  relativenumber  cursorline  tabstop=4"));
    // tabstop: display, Tab key and shifts.
    let mut e = run("\tx", ":set ts=2\n");
    assert_eq!(screen(&e.frame(20, 2))[0], "1   x");
    feed(&mut e, "o\t\x1b>>");
    assert_eq!(text(&e), "\tx\n      ");
    // noexpandtab: Tab inserts a tab.
    assert_eq!(text(&run("x", ":set noet\nA\t\x1b")), "x\t");
    // Colors: highlight groups per background, changed by `:highlight`.
    let draw_out = |keys: &str| {
        let mut e = run("a", keys);
        let mut out = Vec::new();
        draw(&e.frame(10, 2), &mut out).unwrap();
        String::from_utf8(out).unwrap()
    };
    assert!(draw_out("").contains("\x1b[48;5;236m"));
    assert!(draw_out(":set bg=light\n").contains("\x1b[48;5;254m"));
    assert!(draw_out(":hi CursorLine ctermbg=17\n:hi CursorLineNr ctermfg=18\n").contains("\x1b[38;5;18m\x1b[48;5;17m"));
    // Attributes, truecolor and `Normal`.
    assert!(draw_out(":hi CursorLineNr cterm=italic,underline\n").contains("\x1b[3m"));
    for (attrs, code) in [("bold", "1m"), ("italic", "3m"), ("underline", "4m"), ("undercurl", "4:3m"), ("strikethrough", "9m"), ("reverse", "7m")] {
        assert!(draw_out(&format!(":hi CursorLineNr cterm=NONE,{attrs}\n")).contains(&format!("\x1b[{code}")), "{attrs}");
    }
    assert!(draw_out(":hi CursorLineNr guifg=#102030\n").contains("\x1b[38;5;214m"));
    assert!(draw_out(":hi CursorLineNr guifg=#102030\n:set tgc\n").contains("\x1b[38;2;16;32;48m"));
    assert!(draw_out(":hi Normal ctermbg=17\n").contains("\x1b[48;5;17m\x1b[K"));
    assert!(draw_out(":hi clear\n:hi link CursorLine NONE\n").find("48;5;236").is_none());
    let mut e = ed("a");
    e.set_background(Background::Light);
    assert_eq!(e.frame(10, 2).ui.cursor_line.bg, Some(hl::Color::Ansi(254)));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn sentence_objects() {
    let s = "Hi there. How are you?  Fine.";
    assert_eq!(text(&run(s, "fHdis")), "Hi there.   Fine.");
    assert_eq!(text(&run(s, "fHdas")), "Hi there. Fine.");
    // Last sentence: no trailing blanks, the leading ones go.
    assert_eq!(text(&run(s, "$das")), "Hi there. How are you?");
    assert_eq!(text(&run(s, "d2is")), "How are you?  Fine.");
    assert_eq!(text(&run(s, "d2as")), "Fine.");
    // On blanks: `is` is the blanks, `as` adds the next sentence.
    assert_eq!(text(&run(s, "f?ldis")), "Hi there. How are you?Fine.");
    assert_eq!(text(&run(s, "f?ldas")), "Hi there. How are you?");
    // Sentences cross lines but stop at paragraph ends.
    assert_eq!(text(&run("a b\nc. d\n\ne", "dis")), " d\n\ne");
    assert_eq!(text(&run("a\n\nb", "jdis")), "a\n\nb");
    assert_eq!(text(&run("(Yes!) No", "dis")), " No");
    assert_eq!(text(&run("x", "cisy\x1b")), "y");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn tag_objects() {
    let s = "<a><b>x</b> y</a>";
    assert_eq!(text(&run(s, "fxdit")), "<a><b></b> y</a>");
    assert_eq!(text(&run(s, "fxdat")), "<a> y</a>");
    assert_eq!(text(&run(s, "fxd2it")), "<a></a>");
    assert_eq!(text(&run(s, "fydit")), "<a></a>");
    // On a tag: that element.
    assert_eq!(text(&run(s, "fbdit")), "<a><b></b> y</a>");
    assert_eq!(text(&run(s, "fxd3it")), s);
    assert_eq!(text(&run("<p>\n  t\n</p>", "jdit")), "<p></p>");
    assert_eq!(text(&run("x", "dit")), "x");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn escaped_quotes_and_visual_growth() {
    assert_eq!(text(&run(r#"say "a \"b\" c" ok"#, "fadi\"")), r#"say "" ok"#);
    assert_eq!(text(&run(r#"x "\\" y"#, "di\"")), r#"x "" y"#);
    let s = "f(a(bc)d)";
    let sel = |keys: &str| {
        let e = run(s, keys);
        (e.anchor, pos(&e))
    };
    assert_eq!(sel("fbvi("), ((0, 4), (0, 5)));
    assert_eq!(sel("fbvi(i("), ((0, 2), (0, 7)));
    assert_eq!(text(&run(s, "fbvi(i(d")), "f()");
    assert_eq!(sel("fbva(a("), ((0, 1), (0, 8)));
    assert_eq!(sel("fbvi(i(i("), ((0, 2), (0, 7)));
    assert_eq!(text(&run("<a><b>xy</b></a>", "fxvititd")), "<a></a>");
    // Words do not grow, and a one-char selection is not grown (it is just the cursor).
    assert_eq!(sel("fbviwiw"), ((0, 4), (0, 5)));
    assert_eq!(sel("f(lvi("), ((0, 2), (0, 7)));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn regex_search() {
    let s = "a1 b22\nc333 a";
    let mut e = run(s, concat!(r"/\d+", "\n"));
    assert_eq!(pos(&e), (0, 1));
    feed(&mut e, "n");
    assert_eq!(pos(&e), (0, 4));
    // Like vim, the next match may start inside the current one.
    feed(&mut e, "n");
    assert_eq!(pos(&e), (0, 5));
    feed(&mut e, "ggN");
    assert_eq!((pos(&e), e.msg()), ((1, 3), "search hit TOP, continuing at BOTTOM"));
    feed(&mut e, "G$n");
    assert_eq!((pos(&e), e.msg()), ((0, 1), "search hit BOTTOM, continuing at TOP"));
    assert_eq!(pos(&run(s, "/(?i)C\n")), (1, 0));
    assert_eq!(pos(&run(s, "/^a\n")), (0, 0));
    assert_eq!(pos(&run(s, "w/^a\n")), (0, 0));
    assert_eq!(pos(&run(s, "/a$\n")), (1, 5));
    // Search from an empty line looks past its line break.
    assert_eq!(pos(&run("x\n\ny", "j/y\n")), (2, 0));
    // An invalid pattern keeps the last search.
    let mut e = run(s, "/b\n/(\n");
    assert!(e.msg().starts_with("Invalid pattern: "), "{}", e.msg());
    feed(&mut e, "gg");
    feed(&mut e, "n");
    assert_eq!(pos(&e), (0, 3));
    // incsearch: an incomplete pattern previews nothing.
    let mut e = run(s, "/c");
    assert_eq!((pos(&e), screen(&e.frame(20, 3))[1].as_str()), ((1, 0), "2 {c}333 a"));
    feed(&mut e, "(");
    assert_eq!((pos(&e), screen(&e.frame(20, 3))[1].as_str()), ((0, 0), "1 c333 a"));
    // Highlights: regex matches, empty ones ignored.
    assert_eq!(screen(&run(s, concat!(r"/\d+", "\n")).frame(20, 3))[0], "1 a{1} b{22}");
    assert_eq!(screen(&run(s, "/x*\n").frame(20, 3))[0], "1 a1 b22");
    // `*` builds `\bword\b`; punctuation around the word does not matter.
    let e = run("(foo) foo_x foo.", "l*");
    assert_eq!((pos(&e), e.last_search.as_ref().unwrap().pat.as_str()), ((0, 12), r"\bfoo\b"));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn substitute_lines_and_flags() {
    let s = "a a\na a\na a";
    assert_eq!(text(&run(s, ":s/a/b/\n")), "b a\na a\na a");
    assert_eq!(text(&run(s, ":s/a/b/g\n")), "b b\na a\na a");
    assert_eq!(text(&run(s, ":substitute/a/b/\n")), "b a\na a\na a");
    assert_eq!(text(&run(s, ":su/a/b/\n")), "b a\na a\na a");
    assert_eq!(text(&run(s, ":%s/a/b/\n")), "b a\nb a\nb a");
    assert_eq!(text(&run(s, ":%s/a/b/g\n")), "b b\nb b\nb b");
    assert_eq!(text(&run(s, ":2,3s/a/b/\n")), "a a\nb a\nb a");
    assert_eq!(text(&run(s, "j:.,$s/a/b/\n")), "a a\nb a\nb a");
    assert_eq!(text(&run(s, ":3,2s/a/b/\n")), "a a\nb a\nb a");
    assert_eq!(text(&run(s, "jma:'as/a/b/\n")), "a a\nb a\na a");
    assert_eq!(text(&run(s, ":.+1s/a/b/\n")), "a a\nb a\na a");
    assert_eq!(text(&run("Ab", ":s/a/x/i\n")), "xb");
    assert_eq!(text(&run("Ab", ":s/a/x/I\n")), "Ab");
    assert_eq!(text(&run("k=v", concat!(r":s/(\w)=(\w)/$2=$1/", "\n"))), "v=k");
    assert_eq!(text(&run("a,b", concat!(r":s/,/\n/", "\n"))), "a\nb");
    assert_eq!(text(&run("ab", concat!(r":s/b/\$1/", "\n"))), "a$1");
    assert_eq!(text(&run("a\nb", concat!(r":%s/\n//", "\n"))), "ab");
    assert_eq!(text(&run("ab", ":s/$/!/\n")), "ab!");
    // An empty pattern reuses the last search; `:s` sets it.
    assert_eq!(text(&run("xa a", "/a\n:s//b/g\n")), "xb b");
    let e = run("a b a", ":s/a/c/\nn");
    assert_eq!(pos(&e), (0, 4));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn substitute_cursor_messages_and_undo() {
    let s = "x\n  a\na\nb";
    let mut e = run(s, ":%s/a/z/g\n");
    assert_eq!((text(&e).as_str(), pos(&e), e.msg()), ("x\n  z\nz\nb", (2, 0), "2 substitutions on 2 lines"));
    feed(&mut e, "u");
    assert_eq!(text(&e), s);
    feed(&mut e, "\x12");
    assert_eq!(text(&e), "x\n  z\nz\nb");
    assert_eq!(run("aa", ":s/a/b/g\n").msg(), "2 substitutions on 1 line");
    assert_eq!(run("a", ":s/a/b/\n").msg(), "1 substitution on 1 line");
    // The cursor goes where the last substitution ends, past the line breaks it added.
    assert_eq!(pos(&run("a,b\nc,d", concat!(r":%s/,/\n/", "\n"))), (3, 0));
    let e = run(s, ":%s/q/z/\n");
    assert_eq!((text(&e).as_str(), e.msg()), (s, "Pattern not found: q"));
    assert_eq!(run(s, ":%s/(/z/\n").msg().split(':').next(), Some("Invalid pattern"));
    assert_eq!(run(s, ":s//z/\n").msg(), "No previous regular expression");
    assert_eq!(run(s, ":9s/a/z/\n").msg(), "Invalid range");
    // Line 0 counts as line 1 (vim).
    assert_eq!(text(&run(s, ":0s/a/z/\n")), text(&run(s, ":1s/a/z/\n")));
    assert_eq!(run(s, ":'qs/a/z/\n").msg(), "Mark not set");
    assert_eq!(run(s, ":s/a/z/q\n").msg(), "Trailing characters: q");
    // `.` does not repeat it: it repeats the `x` before.
    assert_eq!(text(&run("a a a", "x:s/a/z/\nw.")), " z ");
    // Undo after a substitute and a normal edit: separate steps.
    assert_eq!(text(&run("ab", ":s/a/z/\nxu")), "zb");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn substitute_on_a_visual_selection() {
    let s = "a\na\na\na";
    let mut e = run(s, "jVj:");
    assert_eq!(e.mode, Mode::Command("'<,'>".into()));
    feed(&mut e, "s/a/b/\n");
    assert_eq!(text(&e), "a\nb\nb\na");
    assert_eq!(text(&run(s, "jvj:s/a/b/\n")), "a\nb\nb\na");
    // The marks stay for later commands.
    assert_eq!(text(&run(s, "Vj\x1bG:'<,'>s/a/c/\n")), "c\nc\na\na");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn undo_tree_commands() {
    // Two branches: "ab" (undone) and "ac".
    let mut e = run("a", "Ab\x1buAc\x1b");
    assert_eq!(text(&e), "ac");
    feed(&mut e, "g-");
    assert_eq!(text(&e), "ab", "g- goes back in time across branches");
    feed(&mut e, "g-");
    assert_eq!(text(&e), "a");
    feed(&mut e, "g-");
    assert_eq!((text(&e).as_str(), e.msg()), ("a", "Already at oldest change"));
    feed(&mut e, "2g+");
    assert_eq!(text(&e), "ac");
    feed(&mut e, "g+");
    assert_eq!(e.msg(), "Already at newest change");
    feed(&mut e, ":earlier 2\n");
    assert_eq!(text(&e), "a");
    feed(&mut e, ":later\n");
    assert_eq!(text(&e), "ab");
    feed(&mut e, ":undo 2\n");
    assert_eq!(text(&e), "ac");
    feed(&mut e, ":undo 0\n");
    assert_eq!(text(&e), "a");
    feed(&mut e, ":u\n");
    assert_eq!(e.msg(), "Already at oldest change");
    feed(&mut e, ":red\n");
    assert_eq!(text(&e), "ac", "redo follows the last branch visited");
    feed(&mut e, ":undo\n");
    assert_eq!(text(&e), "a");
    feed(&mut e, ":earlier 10m\n");
    assert_eq!(text(&e), "a");
    feed(&mut e, ":later 1h\n");
    assert_eq!(text(&e), "ac", "nothing that late: the newest version");
    for bad in [":earlier 3x\n", ":later 99999999999999999999999\n", ":redo 2\n", ":undo 1s\n"] {
        feed(&mut e, bad);
        assert!(e.msg().starts_with("Invalid argument: "), "{bad:?}: {}", e.msg());
    }
    feed(&mut e, ":undolist\n");
    assert!(e.msg().starts_with("at 2 of 2 | 1:1:") && e.msg().contains(" 2:1:"), "{}", e.msg());
    // Marks follow time travel too.
    let e = run("x\ny", "jmaggOz\x1bg-g+`a");
    assert_eq!(pos(&e), (2, 0));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn char_info_and_byte_motions() {
    let s = "ab é\nfoo bar\n";
    let e = run(s, "j\x07");
    assert_eq!(e.msg(), "\"/nonexistent/rim-test\" 3 lines --66%--");
    assert_eq!(run(s, "x\x07").msg(), "\"/nonexistent/rim-test\" [Modified] 3 lines --33%--");
    let e = run(s, "jw\x07".replace('\x07', "g\x07").as_str());
    assert_eq!(e.msg(), "Col 5 of 7; Line 2 of 3; Word 4 of 4; Char 10 of 13; Byte 11 of 14");
    assert_eq!(run(s, "g\x07").msg(), "Col 1 of 4; Line 1 of 3; Word 1 of 4; Char 1 of 13; Byte 1 of 14");
    assert_eq!(run(s, "$ga").msg(), "<é> 233, Hex 00e9, Oct 351");
    assert_eq!(run(s, "$g8").msg(), "c3 a9");
    assert_eq!(run(s, "Gga").msg(), "NUL");
    // Byte motions land on the char containing the byte.
    assert_eq!(pos(&run(s, "5go")), (0, 3));
    assert_eq!(pos(&run(s, "6go")), (0, 3));
    assert_eq!(pos(&run(s, "7go")), (1, 0));
    assert_eq!(pos(&run(s, "8go")), (1, 1));
    assert_eq!(pos(&run(s, "Ggo")), (0, 0));
    assert_eq!(pos(&run(s, "999go")), (2, 0));
    assert_eq!(text(&run(s, "d4go")), "é\nfoo bar\n");
    assert_eq!(pos(&run(s, ":goto 9\n")), (1, 2));
    assert_eq!(pos(&run(s, "j$:go\n")), (0, 0));
    assert_eq!(run(s, ":goto x\n").msg(), "Invalid argument: x");
    // Column motion.
    assert_eq!(pos(&run(s, "j4|")), (1, 3));
    assert_eq!(pos(&run(s, "j99|")), (1, 6));
    assert_eq!(pos(&run(s, "j$|")), (1, 0));
    assert_eq!(text(&run(s, "j$d3|")), "ab é\nfor\n");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn segments_fast_path_matches_the_generic_one() {
    use super::layout::segments;
    // Same rows with and without the ASCII fast path (a trailing non-ASCII char forces the generic one).
    for (line, w) in [("", 4), ("abc", 4), ("abcd", 4), ("abcde", 4), ("abcdefgh", 4), ("abcdefghi", 1), ("abc", usize::MAX)] {
        let fast = segments(line, w, 4);
        let padded = format!("{line}é");
        let slow = segments(&padded, w, 4);
        let strip = |v: &[(usize, &str)]| v.iter().map(|&(i, s)| (i, s.trim_end_matches('é').to_string())).collect::<Vec<_>>();
        let mut want = strip(&slow);
        if want.last().is_some_and(|(_, s)| s.is_empty()) && want.len() > 1 {
            want.pop();
        }
        assert_eq!(strip(&fast), want, "{line:?} {w}");
    }
    // Random mixed text (ASCII runs, tabs, wide, combining and control chars) against the plain per-cluster layout.
    let naive = |line: &str, w: usize, ts: usize| {
        let (mut out, mut x, mut b0, mut c0) = (Vec::new(), 0usize, 0, 0);
        for (i, (b, g)) in unicode_segmentation::UnicodeSegmentation::grapheme_indices(line, true).enumerate() {
            let cw = graphemes::width(g, ts);
            if x > 0 && x.saturating_add(cw) > w {
                out.push((c0, line[b0..b].to_string()));
                (x, b0, c0) = (0, b, i);
            }
            x += cw;
        }
        out.push((c0, line[b0..].to_string()));
        out
    };
    let mut seed = 0x2545_F491_4F6C_DD1Du64;
    let mut next = |n: u64| {
        seed = seed.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
        (seed >> 33) % n
    };
    for _ in 0..2000 {
        let len = next(300);
        let line: String = (0..len)
            .map(|_| {
                let range = if next(2) == 0 { 8 } else { 3 };
                ['a', 'b', ' ', 'é', '日', '\u{301}', '\t', '\x01'][next(range) as usize]
            })
            .collect();
        let (w, ts) = ([1, 2, 3, 7, 20, 100, usize::MAX][next(7) as usize], 1 + next(8) as usize);
        let got: Vec<_> = segments(&line, w, ts).into_iter().map(|(i, s)| (i, s.to_string())).collect();
        assert_eq!(got, naive(&line, w, ts), "{line:?} w={w} ts={ts}");
    }
    // A tab takes the generic path: 4 cells at ts=4.
    assert_eq!(segments("a\tb", 4, 4), [(0, "a"), (1, "\t"), (2, "b")]);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn layout_kept_across_edits_matches_a_fresh_one() {
    use super::layout::{Layout, segments};
    let mut seed = 0x9E37_79B9_7F4A_7C15u64;
    let mut next = |n: u64| {
        seed = seed.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
        (seed >> 33) % n
    };
    let alphabet = ['a', 'b', ' ', 'é', '日', '\u{301}', '\t', '\x01'];
    for _ in 0..3000 {
        let len = next(300);
        let mut line: String = (0..len)
            .map(|_| {
                let range = if next(2) == 0 { 8 } else { 3 };
                alphabet[next(range) as usize]
            })
            .collect();
        let (w, ts) = ([1, 2, 3, 7, 20, 100][next(6) as usize], 1 + next(8) as usize);
        let mut layout = Layout::default();
        for _ in 0..6 {
            // Lay out part of the line, as a frame would, then edit it.
            let (l, rows) = layout.sync(&line, &Text::new(), 0, w, ts);
            assert_eq!(l, line);
            match next(3) {
                0 => rows.ensure(l, next(8) as usize),
                1 => drop(rows.row_of(l, next(300) as usize)),
                _ => drop(rows.height_to(l, 1 + next(8) as usize)),
            }
            let at = line.char_indices().map(|(b, _)| b).chain([line.len()]).nth(next(line.chars().count() as u64 + 1) as usize).unwrap();
            if next(2) == 0 && at < line.len() {
                line.remove(at);
            } else {
                line.insert(at, alphabet[next(8) as usize]);
            }
        }
        let (l, rows) = layout.sync(&line, &Text::new(), 0, w, ts);
        rows.extend(l, |_| false);
        let got: Vec<_> = (0..rows.len()).map(|k| rows.row(l, k)).collect();
        assert_eq!(got, segments(&line, w, ts), "{line:?} w={w} ts={ts}");
    }
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn typing_in_a_wrapped_line_updates_the_screen() {
    // Same screen as laying the edited line out from scratch, after edits before and after the cursor row.
    let line = "abcdefghij日本語klmnopqrst".repeat(20);
    let mut e = ed(&line);
    e.frame(10, 5);
    feed(&mut e, "40lix\x1b");
    e.frame(10, 5);
    feed(&mut e, "0iy日\x1b$");
    e.frame(10, 5);
    feed(&mut e, "0");
    let kept = screen(&e.frame(10, 5));
    let fresh = screen(&ed(&text(&e)).frame(10, 5));
    // The fresh editor still shows the startup hint on the message row.
    assert_eq!(kept[..4], fresh[..4]);
    assert_eq!(kept[0], "1 y日abcde");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn highlight_cache_follows_text_pattern_and_view() {
    let mut e = run("ab ab ab\nxb", "/b\n");
    assert_eq!(screen(&e.frame(20, 4))[..2], ["1 a{b} a{b} a{b}", "1 x{b}"]);
    // Same text and view: served from the cache; an edit, a new pattern and a smaller view are not.
    assert_eq!(screen(&e.frame(20, 4))[..2], ["1 a{b} a{b} a{b}", "1 x{b}"]);
    feed(&mut e, "0x");
    assert_eq!(screen(&e.frame(20, 4))[..2], ["1 {b} a{b} a{b}", "1 x{b}"]);
    feed(&mut e, "/x\n");
    assert_eq!(screen(&e.frame(20, 4))[..2], ["1 b ab ab", "2 {x}b"]);
    assert_eq!(screen(&e.frame(20, 2))[0], "2 {x}b");
    // Many matches on one line, with wide chars before them: columns stay exact.
    let mut e = run(&"日a".repeat(1000), "/a\n");
    assert_eq!(screen(&e.frame(12, 2))[0], "1 日{a}日{a}日{a}");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn lazy_char_iterators_match_the_plain_ones() {
    let mut seed = 0xD1B5_4A32_D192_ED03u64;
    let mut next = |n: u64| {
        seed = seed.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
        (seed >> 33) % n
    };
    for _ in 0..300 {
        let len = next(40);
        let text: String = (0..len)
            .map(|_| {
                let range = if next(3) == 0 { 8 } else { 5 };
                ['a', 'é', '\n', '日', ' ', '🦀', '\n', 'b'][next(range) as usize]
            })
            .collect();
        let e = ed(&text);
        let lines: Vec<Vec<char>> = text.split('\n').map(|l| l.chars().collect()).collect();
        let all: Vec<(Pos, char)> = lines
            .iter()
            .enumerate()
            .flat_map(|(l, cs)| cs.iter().copied().chain((l + 1 < lines.len()).then_some('\n')).enumerate().map(move |(c, ch)| ((l, c), ch)))
            .collect();
        for (l, cs) in lines.iter().enumerate() {
            // Every column of the line, its end (the `\n`) included.
            for c in 0..=cs.len() {
                // The last line has no `\n`, so its end is not a char: the rest is then empty or the whole line.
                let want_fwd: Vec<_> = all.iter().filter(|&&(p, _)| p >= (l, c)).copied().collect();
                assert_eq!(e.fwd((l, c)).collect::<Vec<_>>(), want_fwd, "fwd {text:?} {l},{c}");
                let want_bwd: Vec<_> = all.iter().filter(|&&(p, _)| p <= (l, c)).rev().copied().collect();
                assert_eq!(e.bwd((l, c)).collect::<Vec<_>>(), want_bwd, "bwd {text:?} {l},{c}");
            }
        }
    }
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn line_scans_count_chars_not_bytes() {
    // f/t/F/T, `%`, `*`, Ctrl-A, `iw`, `i"` after multi-byte chars (columns are chars, scans are bytes).
    assert_eq!(pos(&run("日日é(a)", "%")), (0, 5));
    assert_eq!(pos(&run("日é🦀xéx", "fx")), (0, 3));
    assert_eq!(pos(&run("日é🦀xéx", "2fx")), (0, 5));
    assert_eq!(pos(&run("日é🦀xéx", "$Fx")), (0, 3));
    assert_eq!(pos(&run("日é🦀xéx", "tx")), (0, 2));
    assert_eq!(pos(&run("日é🦀xéx", "$Tx")), (0, 4));
    assert_eq!(pos(&run("日é🦀xéx", "$2Fx;")), (0, 5 - 2));
    assert_eq!(pos(&run("日é foo é foo", "w*")), (0, 9));
    assert_eq!(text(&run("日é 9 é", "\x01")), "日é 10 é");
    assert_eq!(text(&run("日é -9", "$\x01")), "日é -8");
    assert_eq!(text(&run("日 é foo bár x", "wwdiw")), "日 é  bár x");
    assert_eq!(text(&run("日 é foo bár x", "wwdaw")), "日 é bár x");
    assert_eq!(text(&run("日 \"é\" x \"y\"", "fédi\"")), "日 \"\" x \"y\"");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn cached_layouts_match_fresh_ones_over_random_sessions() {
    let mut seed = 0x1405_7B7E_F767_814Fu64;
    let mut next = |n: u64| {
        seed = seed.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
        (seed >> 33) % n
    };
    // Several huge lines (kept in the cache), wide chars and tabs, short lines between them.
    let long = |c: &str| format!("{}\t日本{}", c.repeat(5000), c.repeat(3000));
    let text = format!("{}\nab\n{}\n\n{}\nz\n", long("a b"), long("é"), long("x"));
    let keys = ["j", "k", "gj", "gk", "G", "gg", "$", "0", "w", "b", "l", "h", "\x04", "\x15", "3gj", "2gk", "x", "ixy\x1b", "u", "zz", "zt", "zb", "dd", "A!\x1b", "H", "L", "M", ":set nowrap\n", ":set wrap\n"];
    for round in 0..40 {
        // The same session twice, one editor forgetting every cache before each frame.
        let (mut kept, mut fresh) = (ed(&text), ed(&text));
        let (mut w, mut h) = (14 + next(30) as usize, 4 + next(5) as usize);
        let mut done = String::new();
        for _ in 0..25 {
            if next(6) == 0 {
                // A resize: the cached rows are for another width.
                (w, h) = (14 + next(30) as usize, 4 + next(5) as usize);
            }
            let k = keys[next(keys.len() as u64) as usize];
            done.push_str(k);
            feed(&mut kept, k);
            feed(&mut fresh, k);
            *fresh.win.layout.borrow_mut() = Default::default();
            fresh.buf.cols.borrow_mut().clear();
            *fresh.win.match_cache.borrow_mut() = None;
            let want = screen(&fresh.frame(w, h));
            assert_eq!(screen(&kept.frame(w, h)), want, "round {round} keys {done:?} size {w}x{h}");
            assert_eq!((kept.win.line, kept.win.col, kept.win.top, kept.win.top_sub), (fresh.win.line, fresh.win.col, fresh.win.top, fresh.win.top_sub), "{done:?}");
        }
    }
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn wide_fast_path_agrees_with_unicode_width() {
    use unicode_width::UnicodeWidthChar;
    for c in ('\u{4E00}'..='\u{9FFF}').chain('\u{3041}'..='\u{3096}').chain('\u{30A1}'..='\u{30FA}').chain('\u{AC00}'..='\u{D7A3}').chain('\0'..='\u{7F}') {
        let slow = if c == '\t' { 4 } else if c.is_control() { 1 } else { c.width().unwrap_or(1) };
        assert_eq!(super::render::cell_width(c, 4), slow, "{c:?}");
    }
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn first_non_blank_reads_past_long_indents() {
    // Longer than one window, with 3-byte blanks that a window edge could split.
    let indent = format!("{}{}\t", " ".repeat(300), "\u{3000}".repeat(200));
    let e = run(&format!("{indent}x\n  y\n{indent}\n\nz"), "");
    assert_eq!(e.first_non_blank(0), 501);
    assert_eq!((e.first_non_blank(1), e.first_non_blank(2), e.first_non_blank(3), e.first_non_blank(4)), (2, 501, 0, 0));
    assert_eq!(pos(&run(&format!("{indent}x"), "$0^")), (0, 501));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn ex_addresses() {
    let s = "a\nb\nc\nd\ne";
    assert_eq!(text(&run(s, ":2,3d\n")), "a\nd\ne");
    assert_eq!(text(&run(s, ":2;+1d\n")), "a\nd\ne");
    assert_eq!(text(&run(s, ":2,+1d\n")), "a\nc\nd\ne");
    assert_eq!(text(&run(s, ":$d\n")), "a\nb\nc\nd");
    assert_eq!(text(&run(s, ":/c/d\n")), "a\nb\nd\ne");
    assert_eq!(text(&run(s, ":?d?d\n")), "a\nb\nc\ne");
    assert_eq!(text(&run(s, ":/b/;/d/d\n")), "a\ne");
    assert_eq!(text(&run(s, "/c\n:\\/d\n")), "a\nb\nd\ne");
    assert_eq!(text(&run(s, ":s/d/x/\n:\\&d\n")), "a\nb\nc\ne");
    assert_eq!(run(s, ":/zz/d\n").msg(), "Pattern not found: zz");
    assert_eq!(run(s, ":\\/d\n").msg(), "No previous regular expression");
    assert_eq!(run(s, ":9d\n").msg(), "Invalid range");
    // `/pat/` sets the last search; `^` matches at line starts.
    let e = run("xa\na", ":/^a/\n");
    assert_eq!((e.win.line, e.last_search.as_ref().map(|s| s.pat.as_str())), (1, Some("^a")));
    assert_eq!(pos(&run(s, ":'q\n")), (0, 0));
    assert_eq!(run(s, ":'q\n").msg(), "Mark not set");
    assert_eq!(run(s, ":3|\n").msg(), "Not an editor command: 3|");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn ex_delete_yank_move_copy() {
    let s = "a\nb\nc\nd\ne";
    let e = run(s, ":2,3d\n");
    assert_eq!((reg(&e), pos(&e)), (("b\nc\n".into(), true), (1, 0)));
    let e = run(s, ":2d x 2\n");
    assert_eq!((text(&e).as_str(), e.regs.get('x').map(|r| r.text.as_str())), ("a\nd\ne", Some("b\nc\n")));
    assert_eq!(run(s, ":d %\n").msg(), "Invalid register: %");
    let e = run(s, "j:3,4y\n");
    assert_eq!((text(&e).as_str(), reg(&e), pos(&e)), (s, ("c\nd\n".into(), true), (1, 0)));
    let e = run(s, ":2,3m0\n");
    assert_eq!((text(&e).as_str(), e.win.line), ("b\nc\na\nd\ne", 1));
    let e = run(s, ":1m$\n");
    assert_eq!((text(&e).as_str(), e.win.line), ("b\nc\nd\ne\na", 4));
    let e = run(s, ":1m2\n");
    assert_eq!((text(&e).as_str(), e.win.line), ("b\na\nc\nd\ne", 1));
    assert_eq!(text(&run(s, ":2,3m1\n")), s);
    assert_eq!(run(s, ":1,2m1\n").msg(), "Cannot move a range of lines into itself");
    assert_eq!(run(s, ":m\n").msg(), "Invalid address");
    let e = run(s, ":1t.\n");
    assert_eq!((text(&e).as_str(), e.win.line), ("a\na\nb\nc\nd\ne", 1));
    let e = run(s, ":1,2t$\n");
    assert_eq!((text(&e).as_str(), e.win.line), ("a\nb\nc\nd\ne\na\nb", 6));
    let e = run(s, ":3co0\n");
    assert_eq!((text(&e).as_str(), e.win.line), ("c\na\nb\nc\nd\ne", 0));
    // One undo step each; `.` does not repeat them.
    assert_eq!(text(&run(s, ":2,3m0\nu")), s);
    assert_eq!(text(&run("ab\nc\nd", "x:3d\n.")), "b\n");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn ex_shift_join_print() {
    let e = run("a\nb\nc", ":>> 2\n");
    assert_eq!((text(&e).as_str(), e.win.line), ("        a\n        b\nc", 1));
    assert_eq!(text(&run("        a", ":<\n")), "    a");
    assert_eq!(run("a", ":> 0\n").msg(), "Positive count required");
    let s = "a\n  b\nc";
    assert_eq!(text(&run(s, ":j\n")), "a b\nc");
    assert_eq!(text(&run(s, ":1,3j\n")), "a b c");
    assert_eq!(text(&run(s, ":j!\n")), "a  b\nc");
    assert_eq!(text(&run(s, ":j 3\n")), "a b c");
    assert_eq!(text(&run(s, ":3j\n")), s);
    let e = run("a\nb\nc", ":2p\n");
    assert_eq!((e.msg(), e.win.line), ("b", 1));
    assert_eq!(run("a\nb\nc", ":=\n").msg(), "3");
    assert_eq!(run("a\nb\nc", "j:.=\n").msg(), "2");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn ex_normal() {
    let e = run("a\nb", ":%norm Ax\n");
    assert_eq!(text(&e), "ax\nbx");
    assert_eq!(text(&run("a\nb", ":%norm Ax\nu")), "a\nb");
    assert_eq!(text(&run("abc", ":norm 2x\n")), "c");
    // An unfinished insert ends as with Esc, still one undo step.
    let e = run("abc", ":norm ix\n");
    assert_eq!((text(&e).as_str(), &e.mode), ("xabc", &Mode::Normal));
    assert_eq!(text(&run("abc", ":norm ix\nu")), "abc");
    // Lines follow the edits: deleted ones are skipped.
    assert_eq!(text(&run("a\nb\nc\nd", ":2,3norm dd\n")), "a\nd");
    assert_eq!(text(&run("a\nb\nc\nd", ":2,3norm jdd\n")), "a\nb\nd");
    assert_eq!(run("a", ":norm\n").msg(), "Argument required");
    // Not recorded by `q`.
    let e = run("a\nb", "qq:norm Ax\nq");
    assert_eq!(e.regs.get('q').map(|r| r.text.as_str()), Some(":norm Ax\r"));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn ex_global() {
    let s = "a\nb\nab\nc";
    assert_eq!(text(&run(s, ":g/b/d\n")), "a\nc");
    assert_eq!(text(&run(s, ":v/b/d\n")), "b\nab");
    assert_eq!(text(&run(s, ":g!/b/d\n")), "b\nab");
    assert_eq!(text(&run(s, ":2,3g/a/d\n")), "a\nb\nc");
    assert_eq!(text(&run("a\nb\nc", ":g/^/m0\n")), "c\nb\na");
    assert_eq!(text(&run("a\nb\nc\nd", ":g/./j\n")), "a b\nc d");
    assert_eq!(text(&run("a\nb\na", ":g/a/s/a/x/\n")), "x\nb\nx");
    assert_eq!(text(&run("a\nb\na", ":g/a/s/a/x/\nu")), "a\nb\na");
    assert_eq!(text(&run("a\nb\na", ":g/a/norm Ax\n")), "ax\nb\nax");
    assert_eq!(text(&run("a\nb\na", ":g/a/t.\n")), "a\na\nb\na\na");
    let e = run(s, ":g/b\n");
    assert_eq!((e.msg(), e.win.line), ("ab", 2));
    assert_eq!(run(s, ":g/zz/d\n").msg(), "Pattern not found: zz");
    assert_eq!(run(s, ":v/./d\n").msg(), "Pattern found in every line: .");
    assert_eq!(run(s, ":g\n").msg(), "Regular expression missing from :global");
    assert_eq!(run(s, ":g/a/g/b/d\n").msg(), "Cannot do :global recursive");
    assert_eq!(run(s, ":g/a/s/a/x/c\n").msg(), "The c flag cannot be used here");
    assert!(!feed(&mut ed(s), ":g/a/q!\n"));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn ex_sort() {
    let s = "c\na\nB\nb";
    assert_eq!(text(&run(s, ":sort\n")), "B\na\nb\nc");
    assert_eq!(text(&run(s, ":sort i\n")), "a\nB\nb\nc");
    assert_eq!(text(&run(s, ":sort!\n")), "c\nb\na\nB");
    assert_eq!(text(&run(s, ":2,3sort\n")), "c\nB\na\nb");
    assert_eq!(text(&run("b\na\nb\nA", ":sort u\n")), "A\na\nb");
    assert_eq!(text(&run("b\na\nB\nA", ":sort ui\n")), "a\nb");
    assert_eq!(text(&run("x10\nx9\ny\n-3", ":sort n\n")), "y\n-3\nx9\nx10");
    let s = "x,b\ny,a\nz";
    assert_eq!(text(&run(s, ":sort /,/\n")), "z\ny,a\nx,b");
    assert_eq!(text(&run(s, ":sort /\\w,/ r\n")), "z\nx,b\ny,a");
    assert_eq!(text(&run(s, ":sort! /,/\n")), "x,b\ny,a\nz");
    assert_eq!(run(s, ":sort x\n").msg(), "Invalid argument: x");
    assert_eq!(text(&run(s, ":sort\nu")), s);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn ex_read_write_saveas() {
    let dir = temp_dir("ex-files");
    let (input, out, own) = (dir.join("in"), dir.join("out"), dir.join("own"));
    fs::write(&input, "1\r\n2\r\n").unwrap();
    let _ = fs::remove_file(&out);
    let mut e = Editor::new(Document::new("a\nb\nc"), own.clone());
    feed(&mut e, &format!(":r {}\n", input.display()));
    assert_eq!((text(&e).as_str(), pos(&e)), ("a\n1\n2\nb\nc", (1, 0)));
    feed(&mut e, &format!(":0r {}\n", input.display()));
    assert_eq!(text(&e), "1\n2\na\n1\n2\nb\nc");
    feed(&mut e, "u");
    assert_eq!(text(&e), "a\n1\n2\nb\nc");
    feed(&mut e, ":r /nonexistent/rim\n");
    assert!(e.msg().starts_with("Can't open file /nonexistent/rim"), "{}", e.msg());
    let mut e = Editor::new(Document::new("a\nb\nc"), own.clone());
    feed(&mut e, &format!(":2,3w {}\n", out.display()));
    assert_eq!(fs::read_to_string(&out).unwrap(), "b\nc");
    feed(&mut e, &format!(":1w {}\n", out.display()));
    assert_eq!(e.msg(), "File exists (add ! to override)");
    feed(&mut e, &format!(":1w! {}\n", out.display()));
    assert_eq!(fs::read_to_string(&out).unwrap(), "a\n");
    feed(&mut e, &format!(":w >> {}\n", out.display()));
    assert_eq!(fs::read_to_string(&out).unwrap(), "a\na\nb\nc");
    feed(&mut e, ":2w\n");
    assert_eq!(e.msg(), "Use ! to write partial buffer");
    feed(&mut e, ":2w!\n");
    assert_eq!(fs::read_to_string(&own).unwrap(), "b\n");
    // Line endings follow the document's.
    let mut e = Editor::new(Document::new("a\r\nb"), own.clone());
    feed(&mut e, &format!(":w! {}\n", out.display()));
    assert_eq!(fs::read_to_string(&out).unwrap(), "a\r\nb");
    // `:sav` edits the new file from now on.
    let new = dir.join("new");
    let _ = fs::remove_file(&new);
    let mut e = Editor::new(Document::new("x"), own.clone());
    feed(&mut e, "ay\x1b");
    feed(&mut e, &format!(":sav {}\n", out.display()));
    assert_eq!(e.msg(), "File exists (add ! to override)");
    feed(&mut e, &format!(":sav {}\n", new.display()));
    assert_eq!((fs::read_to_string(&new).unwrap().as_str(), e.buf.path.as_deref(), e.is_dirty()), ("xy", Some(new.as_path()), false));
    feed(&mut e, ":sav\n");
    assert_eq!(e.msg(), "Argument required");
    fs::remove_dir_all(&dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn ex_retab_and_fileformat() {
    let e = run("\tx", ":retab 8\n");
    assert_eq!((text(&e).as_str(), e.buf.opts.tabstop), ("    x", 8));
    assert_eq!(text(&run("        x", ":set noet\n:ret!\n")), "\t\tx");
    // expandtab: tabs become spaces, `!` changes nothing more.
    assert_eq!(text(&run("\tx  \ty", ":ret!\n")), "    x   y");
    assert_eq!(run("x", ":retab 0\n").msg(), "Invalid argument: 0");
    let mut e = ed("a\nb");
    feed(&mut e, ":set ff=dos\n");
    assert_eq!((e.buf.doc.eol(), e.is_dirty()), (LineEnding::CrLf, true));
    feed(&mut e, ":set ff?\n");
    assert_eq!(e.msg(), "fileformat=dos");
    feed(&mut e, ":set ff=mac nu\n");
    assert_eq!((e.buf.doc.eol(), e.buf.opts.number), (LineEnding::Cr, true));
    feed(&mut e, ":set ff=unix fileformat\n");
    assert_eq!((e.msg(), e.is_dirty()), ("fileformat=unix", false));
    assert_eq!(run("a", ":set ff=xx\n").msg(), "Invalid argument: ff=xx");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn stats_compact_and_idle() {
    // `x` on every other char: one piece per kept char.
    let mut e = run("abcdefgh", "xlxlxlx");
    assert_eq!(text(&e), "bdfh");
    feed(&mut e, ":stats\n");
    let pieces = e.buf.doc.text().piece_count();
    assert!(pieces > 1);
    assert!(e.msg().starts_with(&format!("{pieces} pieces, ")), "{}", e.msg());
    assert!(e.msg().ends_with("4 bytes, 4 chars, 1 lines, 5 versions"), "{}", e.msg());
    feed(&mut e, ":compact\n");
    assert_eq!((e.msg().to_string(), text(&e)), (format!("{pieces} pieces -> 1"), "bdfh".into()));
    // History is kept.
    feed(&mut e, "u");
    assert_eq!(text(&e), "bdfgh");
    // A clean buffer stays clean.
    let mut e = run("ab", "x");
    e.buf.saved = e.buf.doc.text().clone();
    feed(&mut e, ":compact\n");
    assert!(!e.is_dirty());
    // Idle compaction: only past `compactat`, only in Normal mode.
    let mut e = run("abcdefgh", "xlxlxlx:set compactat=100\n");
    e.idle();
    assert_eq!(e.buf.doc.text().piece_count(), pieces);
    feed(&mut e, ":set compactat=2\ni");
    e.idle();
    assert_eq!(e.buf.doc.text().piece_count(), pieces);
    feed(&mut e, "\x1b");
    e.idle();
    assert_eq!(e.buf.doc.text().piece_count(), 1);
    feed(&mut e, ":set compactat=0\n:set compactat?\n");
    assert_eq!(e.msg(), "compactat=0");
    assert_eq!(run("a", ":set compactat=x\n").msg(), "Invalid argument: compactat=x");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn filetype_detected_and_set() {
    let dir = temp_dir("filetype");
    let (a, b, c) = (dir.join("a.rs"), dir.join("b.py"), dir.join("c"));
    for f in [&a, &b, &c] {
        fs::write(f, "x").unwrap();
    }
    let mut e = Editor::open(a).unwrap();
    assert_eq!(e.buf.opts.filetype, "rust");
    feed(&mut e, &format!(":e {}\n:set ft?\n", b.display()));
    assert_eq!(e.msg(), "filetype=python");
    feed(&mut e, ":set ft=foo\n:set ft?\n");
    assert_eq!(e.msg(), "filetype=foo");
    // A new buffer detects its own type instead of inheriting the current one.
    feed(&mut e, &format!(":e {}\n:set ft?\n", c.display()));
    assert_eq!(e.msg(), "filetype=");
    fs::remove_dir_all(&dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn buffers_switch_list_and_delete() {
    let dir = temp_dir("buffers");
    let (a, b) = (dir.join("a.txt"), dir.join("b.txt"));
    fs::write(&a, "a1\na2").unwrap();
    fs::write(&b, "b1\nb2\nb3").unwrap();
    let mut e = Editor::open(a.clone()).unwrap();
    feed(&mut e, &format!("jmx:e {}\n", b.display()));
    assert_eq!((text(&e).as_str(), e.buf.id), ("b1\nb2\nb3", 2));
    // A modified buffer can be left (hidden); each keeps its cursor and marks.
    feed(&mut e, "Gdd\x1e");
    assert_eq!((text(&e).as_str(), pos(&e), e.buf.marks.get(&'x')), ("a1\na2", (1, 0), Some(&3)));
    feed(&mut e, ":ls\n");
    assert_eq!(e.msg(), format!("  1 %a \"{}\" line 2\n  2 #  + \"{}\" line 2", a.display(), b.display()));
    feed(&mut e, &format!(":e {}\n", a.display()));
    assert_eq!((e.buf.id, e.buffers.len()), (1, 1), "the same file is not loaded twice");
    feed(&mut e, ":bn\n");
    assert_eq!((e.buf.id, text(&e).as_str(), pos(&e)), (2, "b1\nb2", (1, 0)));
    feed(&mut e, ":bp\n");
    assert_eq!(e.buf.id, 1);
    feed(&mut e, ":bn 3\n");
    assert_eq!(e.buf.id, 2);
    feed(&mut e, ":b 1\n");
    assert_eq!(e.buf.id, 1);
    feed(&mut e, ":b\n");
    assert_eq!(e.buf.id, 1);
    for (cmd, msg) in [
        (":b 9", "Buffer 9 does not exist"),
        (":b zzz", "E94: No matching buffer for zzz"),
        (":bn x", "Invalid count: x"),
        (":bd x", "Invalid buffer number: x"),
        (":bd 9", "Buffer 9 does not exist"),
        (":bd 2", "No write since last change for buffer 2 (add ! to override)"),
    ] {
        feed(&mut e, &format!("{cmd}\n"));
        assert_eq!(e.msg(), msg, "{cmd}");
    }
    // The last window refuses to quit while a hidden buffer is modified.
    feed(&mut e, ":q\n");
    assert_eq!(e.msg(), format!("No write since last change for buffer 2 \"{}\" (add ! to override)", b.display()));
    assert!(feed(&mut e, ":qa\n"));
    feed(&mut e, ":b 2\n:bd!\n");
    assert_eq!((e.buf.id, e.buffers.len(), e.alt), (1, 0, None));
    // The last buffer goes and an empty one without a file takes its place.
    feed(&mut e, ":bd\n");
    assert_eq!((e.buf.id, e.buf.path.is_none(), e.buffers.len(), text(&e).as_str()), (3, true, 0, ""));
    feed(&mut e, "\x1e");
    assert_eq!(e.msg(), "No alternate file");
    feed(&mut e, ":e /nonexistent/dir/x\n");
    assert_eq!(e.buf.id, 3, "a missing file is a new empty buffer");
    feed(&mut e, ":e /\n");
    assert!(e.msg().starts_with("\"/\": "), "{}", e.msg());
    // `:bd` of another buffer moves the windows showing it.
    feed(&mut e, ":e /nonexistent/dir/y\n:sp\n:b 3\n:bd 4\n");
    assert_eq!((e.buf.id, e.windows[0].buf), (3, 3));
    assert!(!feed(&mut e, ":qa!\n"));
    fs::remove_dir_all(dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn windows_split_move_and_close() {
    let mut e = ed("one\ntwo\nthree");
    e.buf.opts.winwidth = 1;
    feed(&mut e, "jj:sp\n");
    assert_eq!((e.window_ids(), pos(&e)), (vec![2, 1], (2, 0)));
    // An edit above it in one window moves the cursor of the other one.
    feed(&mut e, "ggOzero\x1b");
    let f = e.frame(20, 9);
    assert_eq!(
        screen(&f),
        [
            "1 zero",
            "1 one",
            "2 two",
            "[ /nonexistent/rim-te]",
            "2 one",
            "1 two",
            "4 three",
            " /nonexistent/rim-te",
            "",
        ]
    );
    assert_eq!(f.cursor, (5, 0));
    feed(&mut e, "\x17j");
    assert_eq!((e.win.id, pos(&e)), (1, (3, 0)));
    feed(&mut e, "\x17k\x17k");
    assert_eq!(e.win.id, 2, "no window above");
    feed(&mut e, ":vs\n");
    assert_eq!(e.window_ids(), [3, 2, 1]);
    let f = e.frame(21, 7);
    assert_eq!(screen(&f)[..3], ["1 zero    │1 zero", "1 one     │1 one", "[ /nonexist]│ /nonexist"]);
    assert_eq!(f.cursor_cols, 0..10);
    feed(&mut e, "\x17l");
    assert_eq!(e.win.id, 2);
    feed(&mut e, "\x17h3\x17w");
    assert_eq!(e.win.id, 1, "a count picks the window");
    feed(&mut e, "\x17w");
    assert_eq!(e.win.id, 3, "w wraps around");
    feed(&mut e, "\x17c");
    assert_eq!((e.window_ids(), e.win.id), (vec![2, 1], 2));
    feed(&mut e, "\x17s\x17v\x17x");
    assert_eq!(e.window_ids().len(), 4);
    feed(&mut e, "\x17o");
    assert_eq!(e.window_ids(), [e.win.id]);
    feed(&mut e, ":clo\n");
    assert_eq!(e.msg(), "Cannot close last window");
    feed(&mut e, ":sp\n:on\n");
    assert_eq!(e.window_ids().len(), 1);
    // `:q` closes a window, the last one quits.
    feed(&mut e, ":sp\n");
    assert!(feed(&mut e, ":q\n"));
    assert_eq!(e.window_ids().len(), 1);
    assert!(!feed(&mut e, ":q!\n"));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn insert_mode_survives_drawing_other_windows() {
    let mut e = ed("ab");
    feed(&mut e, ":vs\nA");
    e.frame(20, 4);
    feed(&mut e, "c");
    assert_eq!(text(&e), "abc");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn background_save_writes_the_snapshot() {
    let dir = temp_dir("bgsave");
    let (path, other) = (dir.join("f.txt"), dir.join("g.txt"));
    let mut e = Editor::new(Document::new("a"), path.clone());
    feed(&mut e, "rb:w\nic\x1b");
    assert!(e.wait_saves());
    assert!(!e.saving());
    assert_eq!(fs::read_to_string(&path).unwrap(), "b", "the version of `:w`, not the later edit");
    assert!(e.is_dirty(), "edits made during the write keep the buffer modified");
    // `:wqa` writes every modified buffer, then quits.
    feed(&mut e, &format!(":e {}\nix\x1b", other.display()));
    assert!(!feed(&mut e, ":wqa\n"));
    assert_eq!((fs::read_to_string(&path).unwrap().as_str(), fs::read_to_string(&other).unwrap().as_str()), ("cb", "x"));
    fs::remove_dir_all(dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn reload_clamps_a_parked_window_cursor() {
    let dir = temp_dir("repro");
    let path = dir.join("f.txt");
    fs::write(&path, "aé").unwrap();
    let mut e = Editor::open(path.clone()).unwrap();
    feed(&mut e, "$:sp\n");
    fs::write(&path, "éé").unwrap();
    feed(&mut e, ":e!\n");
    e.frame(20, 8);
    feed(&mut e, "\x17j");
    assert_eq!(pos(&e), (0, 0), "byte 1 was inside the new first char");
    fs::remove_dir_all(dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn saves_waited_for_and_their_messages() {
    let dir = temp_dir("savewait");
    let (a, b) = (dir.join("a.txt"), dir.join("b.txt"));
    let mut e = Editor::new(Document::new("a"), a.clone());
    e.open_more(b.clone()).unwrap();
    e.open_more(a.clone()).unwrap();
    assert_eq!(e.buffers.len(), 1, "a file already loaded is skipped");
    // `:bd` and `:e` right after `:w` wait for it instead of refusing a modified buffer.
    feed(&mut e, ":b 2\nix\x1b:w\n:bd\n");
    assert_eq!((e.buf.id, e.buffers.len()), (1, 0), "{}", e.msg());
    feed(&mut e, "x:w\n:e\n");
    assert_eq!(e.msg(), "Reloaded (LF)");
    // A write ending later does not cover the message of a later command, but replaces its own.
    feed(&mut e, "ix\x1b:w\n:ls\n");
    assert!(e.wait_saves());
    assert!(e.msg().starts_with("  1 %a"), "{}", e.msg());
    feed(&mut e, ":w\n");
    assert!(e.wait_saves());
    assert_eq!(e.msg(), format!("\"{}\" written (LF)", a.display()));
    assert!(e.open_more(dir.join("no/such/dir")).is_ok(), "a missing file is an empty buffer");
    assert!(e.open_more(dir.clone()).is_err());
    fs::remove_dir_all(dir).unwrap();
}



/// Frame rows with syntax colors as `<color:text>`.
fn colored(f: &Frame) -> Vec<String> {
    f.rows
        .iter()
        .map(|spans| spans.iter().map(|s| if let Style::Syntax(hl::Style { fg: Some(hl::Color::Ansi(c)), .. }) = s.style { format!("<{c}:{}>", s.text) } else { s.text.clone() }).collect::<String>().trim_end().to_string())
        .collect()
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn syntax_off_and_on() {
    let mut e = ed("fn a() {\n    1\n}\nfn b() {}\n");
    e.buf.opts.filetype = "rust".into();
    let plain = |e: &mut Editor| colored(&e.frame(30, 8)).iter().all(|r| !r.contains('<'));
    assert!(!plain(&mut e) && e.buf.syntax.is_some());
    feed(&mut e, ":syntax\n");
    assert_eq!(e.msg(), "syntax on");
    feed(&mut e, ":syntax off\n:syn\n");
    assert_eq!(e.msg(), "syntax off");
    // Nothing is colored or kept, and the objects do nothing.
    assert!(plain(&mut e) && e.buf.syntax.is_none());
    // Also in a buffer that is not shown.
    e.buf.opts.filetype = "rust".into();
    let other = std::env::temp_dir().join(format!("rim-syntax-off-{}.rs", std::process::id()));
    fs::write(&other, "fn z() {}\n").unwrap();
    feed(&mut e, ":syn on\n");
    feed(&mut e, &format!(":e {}\n", other.display()));
    e.frame(30, 4);
    assert!(e.buf.syntax.is_some());
    feed(&mut e, "\x1e:syn off\n");
    assert!(e.buffers.iter().all(|b| b.syntax.is_none()) && e.buf.syntax.is_none());
    fs::remove_file(&other).unwrap();
    feed(&mut e, "jdif");
    assert_eq!(text(&e), "fn a() {\n    1\n}\nfn b() {}\n");
    // On again: the tree is rebuilt from the filetype.
    feed(&mut e, ":syn on\n");
    assert!(!plain(&mut e) && e.buf.syntax.is_some());
    feed(&mut e, "dif");
    assert_eq!(text(&e), "fn a() \nfn b() {}\n");
    feed(&mut e, ":syntax maybe\n");
    assert_eq!(e.msg(), "Invalid argument: maybe");
    assert!(e.syntax_on);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn syntax_off_reaches_every_window() {
    let other = std::env::temp_dir().join(format!("rim-syntax-win-{}.rs", std::process::id()));
    fs::write(&other, "fn z() {}\n").unwrap();
    let mut e = ed("fn a() {}\n");
    e.buf.opts.filetype = "rust".into();
    feed(&mut e, &format!(":sp\n:e {}\n", other.display()));
    let colored_rows = |e: &mut Editor| colored(&e.frame(40, 12)).iter().filter(|r| r.contains("<176:fn>")).count();
    assert_eq!(colored_rows(&mut e), 2, "both windows are colored");
    feed(&mut e, ":syntax off\n");
    assert_eq!(colored_rows(&mut e), 0);
    feed(&mut e, ":syntax on\n");
    assert_eq!(colored_rows(&mut e), 2);
    fs::remove_file(&other).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn highlight_command_reports_and_validates() {
    let mut e = ed("fn a() {}");
    assert_eq!(e.candidates("hig").map(|c| (c.start, c.items)), Some((0, vec!["highlight".into()])));
    assert_eq!(e.candidates("hi").map(|c| (c.start, c.items)), Some((0, vec!["highlight".into()])));
    e.buf.opts.filetype = "rust".into();
    feed(&mut e, ":hi @keywrod ctermfg=5\n");
    assert_eq!(e.msg(), "Unknown capture: @keywrod");
    feed(&mut e, ":hi @keyword ctermfg=5\n:hi @keyword\n");
    assert_eq!(e.msg(), "@keyword ctermfg=5 cterm=NONE");
    feed(&mut e, ":highlight Foo ctermfg=x\n");
    assert_eq!(e.msg(), "Invalid argument: ctermfg=x");
    feed(&mut e, ":hi link Foo @keyword\n:hi Foo\n");
    assert_eq!(e.msg(), "Foo links to @keyword");
    feed(&mut e, ":hi clear\n:hi @keyword\n");
    assert_eq!(e.msg(), "@keyword ctermfg=176 cterm=NONE");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn syntax_colors_text_and_objects() {
    let mut e = ed("fn a() {\n    1\n}\nfn b() {\n    \"s\"\n}\n");
    // No filetype: plain.
    assert_eq!(colored(&e.frame(30, 8))[0], "1 fn a() {");
    e.buf.opts.filetype = "rust".into();
    assert_eq!(colored(&e.frame(30, 8))[..2], ["1 <176:fn> <75:a>() {", "1     <209:1>"]);
    // The user's groups win over the defaults, and clearing them brings those back.
    feed(&mut e, ":hi @keyword ctermfg=5\n:hi @function ctermfg=NONE\n");
    assert_eq!(colored(&e.frame(30, 8))[0], "1 <5:fn> a() {");
    feed(&mut e, ":hi clear\n");
    assert_eq!(colored(&e.frame(30, 8))[0], "1 <176:fn> <75:a>() {");
    // Edits keep the colors right without a full reparse of the line.
    feed(&mut e, "ggA // c\x1b");
    assert_eq!(colored(&e.frame(30, 8))[0], "1 <176:fn> <75:a>() { <244:// c>");
    feed(&mut e, "u");
    assert_eq!(colored(&e.frame(30, 8))[0], "1 <176:fn> <75:a>() {");
    // Text objects.
    feed(&mut e, "jdif");
    // `inside` is the body block, braces included (helix queries).
    assert_eq!(text(&e), "fn a() \nfn b() {\n    \"s\"\n}\n");
    feed(&mut e, "2Gvafd");
    assert_eq!(text(&e), "fn a() \n\n");
    feed(&mut e, "ggcia");
    assert_eq!(text(&e), "fn a() \n\n");
    // Another filetype drops the colors again.
    feed(&mut e, ":set ft=foo\n");
    assert_eq!(colored(&e.frame(30, 4))[0], "1 fn a()");
    assert!(e.buf.syntax.is_none());
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn messages_have_a_kind_and_survive_motions() {
    use super::messages::Level;
    let mut e = run("a\nb", ":foo\n");
    assert_eq!((e.msg(), e.msgs.level()), ("Not an editor command: foo", Level::Error));
    feed(&mut e, "j");
    assert_eq!(e.msg(), "Not an editor command: foo");
    feed(&mut e, "i");
    assert_eq!(e.msg(), "");
    feed(&mut e, "\x1b/zzz\n");
    assert_eq!(e.msg(), "Pattern not found: zzz");
    feed(&mut e, ":");
    assert_eq!(e.msg(), "");
    let e = run("a\nb", "G/a\n");
    assert_eq!(e.msgs.level(), Level::Warning);
    assert_eq!(run("a", ":=\n").msgs.level(), Level::Info);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn multi_row_messages_wait_for_a_key() {
    let mut e = run("a\nb", ":foo\n:bar\n:messages\n");
    assert_eq!(e.msg(), "Not an editor command: foo\nNot an editor command: bar");
    let f = e.frame(40, 6);
    assert_eq!(screen(&f)[3..], ["Not an editor command: foo", "Not an editor command: bar", "Press ENTER or type command to continue"]);
    assert_eq!(f.cursor.1, 5);
    // Enter only dismisses; the message was not added to the history again.
    feed(&mut e, "\n");
    assert_eq!((e.msg(), e.win.line), ("", 0));
    // Any other key dismisses and runs.
    feed(&mut e, ":messages\nj");
    assert_eq!((e.msg(), e.win.line), ("", 1));
    feed(&mut e, ":messages\n:");
    assert_eq!((e.msg(), &e.mode), ("", &Mode::Command(String::new())));
    feed(&mut e, "\x1b:messages clear\n:messages\n");
    assert_eq!(e.msg(), "No messages");
    assert!(e.command("messages x") && e.msg() == "Invalid argument: x");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn messagesopt_sets_history_and_prompt() {
    let mut e = run("a", ":set mopt?\n");
    assert_eq!(e.msg(), "messagesopt=hit-enter,history:500");
    feed(&mut e, ":set mopt=hit-enter,wait:50,history:2\n:set mopt?\n");
    assert_eq!(e.msg(), "messagesopt=hit-enter,wait:50,history:2");
    for bad in ["history:3", "wait:x", "hit-enter,history:10001", "foo"] {
        feed(&mut e, &format!(":set mopt={bad}\n"));
        assert_eq!(e.msg(), format!("Invalid argument: mopt={bad}"));
    }
    feed(&mut e, ":foo1\n:foo2\n:foo3\n");
    assert_eq!(e.msgs.list().lines().count(), 2);
    // Without `hit-enter` the rows show without a prompt and any key runs.
    feed(&mut e, ":set mopt=wait:0\n:messages\n");
    let f = e.frame(40, 6);
    assert_eq!(screen(&f)[4..], ["Not an editor command: foo2", "Not an editor command: foo3"]);
    feed(&mut e, "\n");
    assert_eq!(e.msg(), "");
    // `wait:N`: the message goes away by itself once N ms passed (`main` polls for `message_wait`).
    feed(&mut e, ":set mopt=wait:9000\n:messages\n");
    e.frame(40, 6);
    assert!(e.message_wait().is_some_and(|d| d > std::time::Duration::from_secs(5)) && !e.expire_message());
    feed(&mut e, ":set mopt=wait:0\n:messages\n");
    assert_eq!(e.message_wait(), None);
    e.frame(40, 6);
    assert!(e.expire_message() && e.msg().is_empty() && e.message_wait().is_none() && !e.expire_message());
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn laststatus_showmode_and_showcmd() {
    let mut e = run("a\nb\nc", ":sp\n");
    let rows = screen(&e.frame(30, 8));
    assert!(rows[2].starts_with("[ /nonexistent") && rows[7].is_empty(), "{rows:?}");
    feed(&mut e, ":set ls=0\n");
    assert_eq!(screen(&e.frame(30, 8))[..7].iter().filter(|r| r.contains("nonexistent")).count(), 0);
    feed(&mut e, "2d");
    let last = screen(&e.frame(40, 4)).pop().unwrap();
    assert!(last.contains("2d") && last.ends_with("Ln 1, Col 1"), "{last}");
    feed(&mut e, "\x1bvj");
    assert!(screen(&e.frame(40, 4))[3].starts_with("-- VISUAL --"));
    feed(&mut e, "\x1b:set nosmd nosc\nqa");
    let last = screen(&e.frame(40, 4)).pop().unwrap();
    assert_eq!(last.trim_start(), "Ln 2, Col 1");
    feed(&mut e, ":set smd\n");
    assert_eq!(screen(&e.frame(40, 4))[3].find("recording @a"), Some(0));
    feed(&mut e, ":set ls=3\n");
    assert_eq!(e.msg(), "Invalid argument: ls=3");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn macros_and_ex_normal_treat_hit_enter_like_typing() {
    // The Enter after `:messages` only dismisses while recording, so it does while replaying.
    let mut e = run("a\nb\nc", ":foo\n:bar\nqa:messages\n\nq");
    assert_eq!(e.win.line, 0);
    feed(&mut e, "@a");
    assert_eq!((e.win.line, e.msg()), (0, ""));
    // `:normal` has no screen: its keys are never eaten.
    let e = run("a\nb\nc", ":foo\n:bar\n:messages\n\n:normal j\n");
    assert_eq!(e.win.line, 1);
    let e = run("a\nb\nc", ":foo\n:bar\n:messages\n:g/b/normal x\n");
    assert_eq!(text(&e), "a\n\nc");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn screen_options_hold_for_every_buffer() {
    let dir = std::env::temp_dir().join(format!("rim-global-opts-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    let b = dir.join("b.txt");
    fs::write(&b, "b").unwrap();
    let mut e = ed("a");
    feed(&mut e, &format!(":set ls=2\n:e {}\n:set ls=0 nosmd mopt=wait:7,history:9\n:b1\n", b.display()));
    let o = &e.buf.opts;
    assert_eq!((e.buf.id, o.laststatus, o.showmode, o.msg_wait, o.msg_history), (1, 0, false, Some(7), 9));
    // A buffer's own options stay its own.
    feed(&mut e, ":set nonu\n:b2\n");
    assert!(e.buf.opts.number);
    fs::remove_dir_all(&dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn poll_timeout_follows_the_message_deadline() {
    use std::time::Duration;
    let s = Duration::from_secs;
    let mut e = run("a", ":foo\n:bar\n");
    // No expiring message: the base period, or none at all.
    assert_eq!((e.poll_timeout(None), e.poll_timeout(Some(s(1)))), (None, Some(s(1))));
    feed(&mut e, ":set mopt=wait:5000\n:messages\n");
    e.frame(40, 6);
    let t = e.poll_timeout(None).unwrap();
    assert!(t > s(4) && t <= s(5));
    // The shorter of the two wins.
    assert_eq!(e.poll_timeout(Some(Duration::from_millis(50))), Some(Duration::from_millis(50)));
    assert!(e.poll_timeout(Some(s(60))).unwrap() <= s(5));
    // Not over yet: the idle work runs, the message stays.
    assert!(e.timed_out(false) && !e.msg().is_empty());
    // Over: the message goes, nothing else runs, and there is nothing left to wait for.
    e.msgs.deadline = Some(std::time::Instant::now());
    assert!(!e.timed_out(false) && e.msg().is_empty());
    assert_eq!(e.poll_timeout(None), None);
    // A running save is polled instead of idling.
    assert!(!e.timed_out(true));
}

fn press(e: &mut Editor, code: KeyCode) {
    e.key(code.into());
}

fn press_mod(e: &mut Editor, code: KeyCode, m: KeyModifiers) {
    e.key(KeyEvent::new(code, m));
}

/// The command or search line and its cursor.
fn line(e: &Editor) -> (String, usize) {
    match &e.mode {
        Mode::Command(s) | Mode::Search(s) => (s.clone(), e.line_pos),
        m => panic!("not on the command line: {m:?}"),
    }
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_cursor_keys() {
    let mut e = ed("a");
    feed(&mut e, ":abc def");
    press(&mut e, KeyCode::Left);
    press(&mut e, KeyCode::Left);
    assert_eq!(line(&e), ("abc def".into(), 5));
    feed(&mut e, "X");
    assert_eq!(line(&e), ("abc dXef".into(), 6));
    press(&mut e, KeyCode::Home);
    feed(&mut e, "1");
    press(&mut e, KeyCode::End);
    feed(&mut e, "2");
    assert_eq!(line(&e), ("1abc dXef2".into(), 10));
    // Ctrl+B / Ctrl+E, and the arrows stop at the ends.
    feed(&mut e, "\x02");
    assert_eq!(line(&e).1, 0);
    press(&mut e, KeyCode::Left);
    assert_eq!(line(&e).1, 0);
    feed(&mut e, "\x05");
    press(&mut e, KeyCode::Right);
    assert_eq!(line(&e).1, 10);
    // Words: Ctrl/Shift+Left/Right jump over blank separated words.
    press_mod(&mut e, KeyCode::Left, KeyModifiers::CONTROL);
    assert_eq!(line(&e).1, 5);
    press_mod(&mut e, KeyCode::Left, KeyModifiers::SHIFT);
    assert_eq!(line(&e).1, 0);
    press_mod(&mut e, KeyCode::Right, KeyModifiers::SHIFT);
    assert_eq!(line(&e).1, 5);
    press_mod(&mut e, KeyCode::Right, KeyModifiers::CONTROL);
    assert_eq!(line(&e).1, 10);
    // Grapheme clusters are one step.
    let mut e = ed("a");
    feed(&mut e, ":e\u{301}x");
    press(&mut e, KeyCode::Left);
    press(&mut e, KeyCode::Left);
    assert_eq!(line(&e).1, 0);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_deleting_keys() {
    let mut e = ed("a");
    feed(&mut e, ":one two three");
    for _ in 0..6 {
        press(&mut e, KeyCode::Left);
    }
    // Backspace and Ctrl+H delete before the cursor, Delete at it.
    press(&mut e, KeyCode::Backspace);
    assert_eq!(line(&e), ("one tw three".into(), 6));
    feed(&mut e, "\x08");
    assert_eq!(line(&e), ("one t three".into(), 5));
    press(&mut e, KeyCode::Delete);
    assert_eq!(line(&e), ("one tthree".into(), 5));
    // Ctrl+W: the word before the cursor; Ctrl+U: everything before it.
    feed(&mut e, "\x17");
    assert_eq!(line(&e), ("one three".into(), 4));
    feed(&mut e, "\x15");
    assert_eq!(line(&e), ("three".into(), 0));
    // Backspace at the start does nothing; Delete at the end takes the last char.
    press(&mut e, KeyCode::Backspace);
    assert_eq!(line(&e), ("three".into(), 0));
    press(&mut e, KeyCode::End);
    press(&mut e, KeyCode::Delete);
    assert_eq!(line(&e), ("thre".into(), 4));
    // Empty line: Backspace, Ctrl+H and Delete leave; Ctrl+W and Ctrl+U do not.
    feed(&mut e, "\x15\x17\x15");
    assert_eq!(line(&e), (String::new(), 0));
    press(&mut e, KeyCode::Delete);
    assert_eq!(e.mode, Mode::Normal);
    feed(&mut e, ":\x08");
    assert_eq!(e.mode, Mode::Normal);
    feed(&mut e, ":x\x03");
    assert_eq!(e.mode, Mode::Normal);
    feed(&mut e, ":h");
    assert_eq!(line(&e), ("h".into(), 1), "a plain h is text");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_insert_overstrike_and_literal() {
    let mut e = ed("a");
    feed(&mut e, ":abcd");
    press(&mut e, KeyCode::Home);
    press(&mut e, KeyCode::Insert);
    feed(&mut e, "XY");
    assert_eq!(line(&e), ("XYcd".into(), 2));
    press(&mut e, KeyCode::End);
    feed(&mut e, "Z");
    assert_eq!(line(&e), ("XYcdZ".into(), 5));
    press(&mut e, KeyCode::Insert);
    press(&mut e, KeyCode::Home);
    feed(&mut e, "_");
    assert_eq!(line(&e), ("_XYcdZ".into(), 1));
    // Ctrl+V and Ctrl+Q: the next key as typed.
    feed(&mut e, "\x16\x01\x11\x1b");
    assert_eq!(line(&e).0, "_\x01\x1bXYcdZ");
    feed(&mut e, "\x16\t\x16");
    press(&mut e, KeyCode::Enter);
    assert_eq!(line(&e).0, "_\x01\x1b\t\rXYcdZ");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_registers_and_text_under_cursor() {
    let mut e = ed("foo-bar baz\nsecond");
    feed(&mut e, "ywj:a\x12\"b");
    assert_eq!(line(&e), ("afoob".into(), 5));
    let mut e = ed("foo-bar baz\nsecond");
    feed(&mut e, "w:x\x12\x17");
    assert_eq!(line(&e), ("xbar".into(), 4), "Ctrl+R Ctrl+W: the word under the cursor");
    press(&mut e, KeyCode::Home);
    press(&mut e, KeyCode::Right);
    feed(&mut e, "\x12\x01");
    assert_eq!(line(&e), ("xfoo-barbar".into(), 8), "Ctrl+R Ctrl+A: the WORD");
    feed(&mut e, "\x12\x0c");
    assert_eq!(line(&e).0, "xfoo-barfoo-bar bazbar");
    // Ctrl+R Ctrl+R and Ctrl+R Ctrl+O take a register like a plain Ctrl+R.
    feed(&mut e, "\x15\x12\x12\"\x12\x0f0");
    assert_eq!(line(&e).0, "bar");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_history_and_completion_at_the_cursor() {
    let mut e = ed("a");
    feed(&mut e, ":set nu\n:s/a/b/\n:set list\n:");
    // Up and Down keep to the entries starting with the typed text; Shift+Up, PageUp and Ctrl+P do not.
    feed(&mut e, "se");
    press(&mut e, KeyCode::Up);
    assert_eq!(line(&e), ("set list".into(), 8));
    press(&mut e, KeyCode::Up);
    assert_eq!(line(&e).0, "set nu");
    press(&mut e, KeyCode::Down);
    press(&mut e, KeyCode::Down);
    assert_eq!(line(&e), ("se".into(), 2), "past the newest entry: what was typed");
    press_mod(&mut e, KeyCode::Up, KeyModifiers::SHIFT);
    assert_eq!(line(&e).0, "set list");
    press(&mut e, KeyCode::PageUp);
    assert_eq!(line(&e).0, "s/a/b/");
    feed(&mut e, "\x10");
    assert_eq!(line(&e).0, "set nu");
    feed(&mut e, "\x0e");
    assert_eq!(line(&e).0, "s/a/b/");
    press(&mut e, KeyCode::PageDown);
    press(&mut e, KeyCode::PageDown);
    assert_eq!(line(&e).0, "se");
    // Tab completes the word before the cursor and keeps what follows it; Ctrl+N and Ctrl+P cycle.
    feed(&mut e, "\x15so :x");
    press(&mut e, KeyCode::Left);
    press(&mut e, KeyCode::Left);
    press(&mut e, KeyCode::Left);
    press(&mut e, KeyCode::Left);
    press(&mut e, KeyCode::Left);
    assert_eq!(line(&e), ("so :x".into(), 0));
    press(&mut e, KeyCode::Right);
    press(&mut e, KeyCode::Right);
    press(&mut e, KeyCode::Tab);
    assert_eq!(line(&e), ("sort :x".into(), 4));
    press(&mut e, KeyCode::Tab);
    assert_eq!(line(&e).0, "sort :x", "a single candidate");
    feed(&mut e, "\x15s");
    press(&mut e, KeyCode::Tab);
    let first = line(&e).0;
    press(&mut e, KeyCode::Tab);
    assert_ne!(line(&e).0, first);
    feed(&mut e, "\x10");
    assert_eq!(line(&e).0, first, "Ctrl+P goes back through the candidates");
    feed(&mut e, "\x0e");
    assert_ne!(line(&e).0, first);
    press(&mut e, KeyCode::BackTab);
    assert_eq!(line(&e).0, first);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn search_line_edits_at_the_cursor_with_incsearch() {
    let mut e = ed("one\ntwo\nthree");
    feed(&mut e, "/tx");
    press(&mut e, KeyCode::Left);
    press(&mut e, KeyCode::Backspace);
    feed(&mut e, "h");
    assert_eq!(line(&e), ("hx".into(), 1));
    press(&mut e, KeyCode::Delete);
    assert_eq!((line(&e).0.as_str(), e.win.line), ("h", 2), "incsearch previews after each edit");
    press(&mut e, KeyCode::Home);
    feed(&mut e, "t");
    press(&mut e, KeyCode::Enter);
    assert_eq!((&e.mode, e.win.line), (&Mode::Normal, 2));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn frame_wraps_the_command_line_and_puts_the_cursor_on_it() {
    // The cursor follows the line cursor.
    let (rows, cursor, bar) = snapshot("a", ":abc", 20, 4);
    assert_eq!((rows[3].as_str(), cursor, bar), (":abc", (4, 3), true));
    let mut e = ed("a");
    feed(&mut e, ":abcd");
    press(&mut e, KeyCode::Left);
    press(&mut e, KeyCode::Left);
    let f = e.frame(20, 4);
    assert_eq!((screen(&f)[3].as_str(), f.cursor), (":abcd", (3, 3)));
    // A line wider than the screen takes the rows above the last one.
    let mut e = ed("a\nb\nc");
    feed(&mut e, ":0123456789abcdefghij");
    let f = e.frame(10, 5);
    assert_eq!(screen(&f)[2..], [":012345678", "9abcdefghi", "j"]);
    assert_eq!(f.cursor, (1, 4));
    // Exactly full row: the cursor starts the next one.
    let mut e = ed("a");
    feed(&mut e, ":012345678");
    let f = e.frame(10, 4);
    assert_eq!((screen(&f)[2..].to_vec(), f.cursor), (vec![":012345678".to_string(), String::new()], (0, 3)));
    // And in the middle of the text.
    for _ in 0..9 {
        press(&mut e, KeyCode::Left);
    }
    assert_eq!(e.frame(10, 4).cursor, (1, 3), "the row of the line is back to one");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn buffers_without_a_file() {
    let dir = std::env::temp_dir().join(format!("rim-noname-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    let (a, b) = (dir.join("a.txt"), dir.join("b.rs"));
    let mut e = Editor::with_path(Document::new(""), None);
    assert_eq!((e.buf.name().as_str(), e.is_dirty()), ("[No Name]", false));
    // Nothing to write to, and `:r`/`:e!` have no file either.
    for cmd in [":w\n", ":r\n", ":wq\n"] {
        feed(&mut e, cmd);
        assert_eq!(e.msg(), "No file name", "{cmd:?}");
    }
    feed(&mut e, "ix\x1b:e!\n");
    assert_eq!(e.msg(), "No file name");
    assert!(e.is_dirty());
    assert!(feed(&mut e, ":q\n"), "a modified buffer stays");
    // `:w file` names the buffer and writes it, unless the file exists.
    fs::write(&b, "old").unwrap();
    feed(&mut e, &format!(":w {}\n", b.display()));
    assert_eq!((e.msg(), e.buf.path.is_none()), ("File exists (add ! to override)", true));
    feed(&mut e, &format!(":w {}\n", a.display()));
    e.wait_saves();
    assert_eq!((e.buf.path.as_deref(), fs::read_to_string(&a).unwrap().as_str(), e.is_dirty()), (Some(a.as_path()), "x", false));
    // `:e file` from an empty unnamed buffer reuses it; from another one it adds a buffer.
    let mut e = Editor::with_path(Document::new(""), None);
    feed(&mut e, &format!(":e {}\n", b.display()));
    assert_eq!((e.buf.id, e.buffers.len(), e.buf.opts.filetype.as_str(), text(&e).as_str()), (1, 0, "rust", "old"));
    // `:enew` is another buffer without a file; `:ls` lists it.
    feed(&mut e, ":enew\n");
    assert_eq!((e.buf.id, e.buf.name().as_str(), text(&e).as_str()), (2, "[No Name]", ""));
    feed(&mut e, ":ls\n");
    assert_eq!(e.msg(), format!("  1 #  \"{}\" line 1\n  2 %a \"[No Name]\" line 1", b.display()));
    // `:new` and `:vnew` split first.
    feed(&mut e, ":new\n");
    assert_eq!((e.window_ids().len(), e.buf.id), (2, 3));
    feed(&mut e, ":vnew\n");
    assert_eq!((e.window_ids().len(), e.buf.id), (3, 4));
    // buftype=nofile: never modified, not written, `:q` does not ask.
    let mut e = ed("a");
    feed(&mut e, ":set bt=nofile\nix\x1b:w\n");
    assert_eq!((e.is_dirty(), e.msg()), (false, "Cannot write, 'buftype' option is set"));
    feed(&mut e, ":set bt?\n");
    assert_eq!(e.msg(), "buftype=nofile");
    feed(&mut e, ":set bt=foo\n");
    assert_eq!(e.msg(), "Invalid argument: bt=foo");
    assert!(!feed(&mut e, ":q\n"));
    // The window status shows `[No Name]`.
    let mut e = Editor::with_path(Document::new(""), None);
    feed(&mut e, ":set ls=2\n");
    assert!(screen(&e.frame(30, 4))[2].starts_with("[ [No Name]"));
    fs::remove_dir_all(dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn start_with_no_file_or_stdin() {
    let dir = std::env::temp_dir().join(format!("rim-start-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    let f = dir.join("f.txt");
    fs::write(&f, "file").unwrap();
    let mut reads = 0;
    let mut stdin = || {
        reads += 1;
        Ok(format!("in{reads}\n"))
    };
    let start = |args: Vec<PathBuf>, stdin: &mut dyn FnMut() -> io::Result<String>| {
        let mut args = args.into_iter();
        let mut e = Editor::start(&mut args, &mut || stdin())?;
        e.open_rest(args, &mut || stdin())?;
        io::Result::Ok(e)
    };
    // No argument: an empty buffer without a file.
    let e = start(vec![], &mut stdin).unwrap();
    assert_eq!((e.buf.name().as_str(), text(&e).as_str(), e.is_dirty()), ("[No Name]", "", false));
    // `-`: the text of stdin, modified, without a file; `:w` has no name for it.
    let mut e = start(vec!["-".into()], &mut stdin).unwrap();
    assert_eq!((e.buf.name().as_str(), text(&e).as_str(), e.is_dirty()), ("[No Name]", "in1\n", true));
    feed(&mut e, ":w\n");
    assert_eq!(e.msg(), "No file name");
    // Files and `-` in any order: the first is shown, the others are hidden buffers.
    let e = start(vec![f.clone(), "-".into(), f.clone()], &mut stdin).unwrap();
    assert_eq!((e.buf.id, text(&e).as_str(), e.buffers.len()), (1, "file", 1), "the same file twice is one buffer");
    assert_eq!((e.buffers[0].name().as_str(), e.buffers[0].is_dirty(), e.buffers[0].doc.text().len()), ("[No Name]", true, 4));
    // A missing file is the error of `open`, as before.
    assert!(start(vec![dir.join("a").join("b")], &mut stdin).is_ok(), "a missing file is a new empty buffer");
    let mut failing = || Err(io::Error::other("no stdin"));
    assert!(start(vec!["-".into()], &mut failing).is_err());
    fs::remove_dir_all(dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_window_opens_with_the_history_and_the_typed_line() {
    let mut e = ed("a\nb");
    feed(&mut e, ":set cwh=3\n:foo\n:set nu\n:ab\x06");
    assert_eq!((&e.mode, e.cmdwin.is_some(), e.window_ids().len()), (&Mode::Normal, true, 2));
    assert_eq!((text(&e).as_str(), e.win.line, e.buf.name().as_str(), e.buf.is_dirty()), ("set cwh=3\nfoo\nset nu\nab", 3, "[Command Line]", false));
    // The window sits at the bottom, `cmdwinheight` rows and its status row.
    let rows = screen(&e.frame(20, 10));
    assert_eq!(rows[4], " /nonexistent/rim-te");
    assert_eq!(rows[5..9], ["2 foo", "1 set nu", "4 ab", "[ [Command Line] | Ln]"].map(String::from));
    assert_eq!(e.frame(20, 10).cursor, (3, 7));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_window_runs_the_edited_line_and_keeps_the_history() {
    let mut e = ed("aaa");
    feed(&mut e, ":s/a/b/\n:\x06");
    assert_eq!((text(&e).as_str(), e.win.line), ("s/a/b/\n", 1));
    // Enter in Normal mode runs the line under the cursor: here the history entry, with an edit.
    feed(&mut e, "kAg\x1b\n");
    assert_eq!((e.cmdwin.is_none(), e.buffers.len(), text(&e).as_str(), e.window_ids().len()), (true, 0, "bbb", 1));
    assert_eq!(e.history[0], ["s/a/b/", "s/a/b/g"], "the edit did not change the entry");
    // Insert mode too, on the typed line.
    feed(&mut e, ":\x06iset nu\n");
    assert_eq!((e.cmdwin.is_none(), e.mode == Mode::Normal, e.buf.opts.number), (true, true, true));
    feed(&mut e, ":\x06iset nonu\n");
    assert!(!e.buf.opts.number);
    assert_eq!(e.history[0].last().map(String::as_str), Some("set nonu"));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_window_leaves_with_ctrl_c_quit_and_ctrl_w_c() {
    let mut e = ed("a");
    feed(&mut e, ":abc\x06\x03");
    assert_eq!((line(&e), e.cmdwin.is_none(), e.window_ids().len()), (("abc".into(), 3), true, 1));
    feed(&mut e, "\x1b");
    // Insert mode too, and the line edited in the window comes back.
    feed(&mut e, ":ab\x06A!\x03");
    assert_eq!(line(&e).0, "ab!");
    feed(&mut e, "\x1b:x\x06:q\n");
    assert_eq!((e.cmdwin.is_none(), e.buffers.len(), e.window_ids().len(), &e.mode), (true, 0, 1, &Mode::Normal));
    feed(&mut e, ":x\x06\x17c");
    assert_eq!((e.cmdwin.is_none(), e.buffers.len()), (true, 0));
    feed(&mut e, ":x\x06:clo\n");
    assert!(e.cmdwin.is_none());
    // `:q` out of it quits as usual.
    assert!(!feed(&mut e, ":q\n"));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_window_refuses_what_leaves_it() {
    let mut e = ed("a");
    feed(&mut e, "q:");
    assert!(e.cmdwin.is_some());
    for keys in [":e x\n", ":enew\n", ":new\n", ":vnew\n", ":sp\n", ":vs\n", ":b 1\n", ":bn\n", ":bd\n", ":on\n", ":sav x\n", "\x1e", "\x17w", "\x17o", "\x17s", "q:", ":\x06"] {
        feed(&mut e, keys);
        assert_eq!((e.msg(), e.cmdwin.is_some(), e.window_ids().len()), (super::cmdwin::E11, true, 2), "{keys:?}");
        e.msgs.clear();
        feed(&mut e, "\x1b");
        assert_eq!(e.mode, Mode::Normal);
    }
    // Other commands work on the history buffer, which never counts as modified.
    feed(&mut e, "ifoo\x1b:s/foo/bar/\n");
    assert_eq!((text(&e).as_str(), e.is_dirty()), ("bar", false));
    feed(&mut e, ":w\n");
    assert_eq!(e.msg(), "Cannot write, 'buftype' option is set");
    feed(&mut e, ":ls\n");
    assert_eq!(e.msg(), "  1    \"/nonexistent/rim-test\" line 1", "the window's own buffer is not listed");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn command_line_window_for_searches() {
    let mut e = ed("one\ntwo\nthree\ntwo");
    feed(&mut e, "/two\n/three\ngg");
    feed(&mut e, "q/");
    assert_eq!((text(&e).as_str(), e.win.line, e.cmdwin.as_ref().map(|c| c.kind)), ("two\nthree\n", 2, Some('/')));
    // The line under the cursor is searched for from where the search started.
    feed(&mut e, "k\n");
    assert_eq!((e.cmdwin.is_none(), e.win.line, e.history[1].last().map(String::as_str)), (true, 2, Some("three")));
    feed(&mut e, "gg?x\x06");
    assert_eq!(e.cmdwin.as_ref().map(|c| c.kind), Some('?'));
    assert_eq!((text(&e).as_str(), e.win.line), ("two\nthree\nx", 2));
    feed(&mut e, "\x03");
    assert_eq!((line(&e), e.search_back), (("x".into(), 1), true));
    feed(&mut e, "\x1bG");
    // `q?` searches backward.
    feed(&mut e, "q?kk\n");
    assert_eq!((e.win.line, e.msg()), (1, ""));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn windows_resize_with_keys_and_commands() {
    let mut e = ed(&lines(30));
    // The default `winwidth` of 20 would widen windows on a screen this narrow.
    e.buf.opts.winwidth = 1;
    let sizes = |e: &mut Editor, w: usize| {
        e.frame(w, 21);
        e.win_rects().iter().map(|(_, r)| (r.w, r.h)).collect::<Vec<_>>()
    };
    feed(&mut e, ":sp\n");
    assert_eq!(sizes(&mut e, 30), [(30, 10), (30, 10)]);
    feed(&mut e, "\x17+");
    assert_eq!(sizes(&mut e, 30), [(30, 11), (30, 9)]);
    feed(&mut e, "3\x17-");
    assert_eq!(sizes(&mut e, 30), [(30, 8), (30, 12)]);
    // A height leaves out the status row.
    feed(&mut e, ":resize 5\n");
    assert_eq!(sizes(&mut e, 30), [(30, 6), (30, 14)]);
    feed(&mut e, ":res +2\n");
    assert_eq!(sizes(&mut e, 30), [(30, 8), (30, 12)]);
    feed(&mut e, ":res -1\n");
    assert_eq!(sizes(&mut e, 30), [(30, 7), (30, 13)]);
    feed(&mut e, "\x17_");
    assert_eq!(sizes(&mut e, 30), [(30, 18), (30, 2)]);
    feed(&mut e, "\x17=");
    assert_eq!(sizes(&mut e, 30), [(30, 10), (30, 10)]);
    feed(&mut e, "7\x17_");
    assert_eq!(sizes(&mut e, 30), [(30, 8), (30, 12)]);
    feed(&mut e, ":res x\n");
    assert_eq!(e.msg(), "Invalid argument: x");
    // A split or a close evens the sizes out again.
    feed(&mut e, ":sp\n");
    assert_eq!(sizes(&mut e, 30).iter().map(|s| s.1).collect::<Vec<_>>(), [6, 6, 8]);
    feed(&mut e, "\x17c");
    assert_eq!(sizes(&mut e, 30), [(30, 10), (30, 10)]);
    // Widths: `:vsplit` in the top window, then `Ctrl+W >`, `<`, `|` and `:vertical resize`.
    feed(&mut e, ":vs\n");
    assert_eq!(sizes(&mut e, 31)[..2], [(15, 10), (15, 10)]);
    feed(&mut e, "4\x17>");
    assert_eq!(sizes(&mut e, 31)[..2], [(19, 10), (11, 10)]);
    feed(&mut e, "2\x17<");
    assert_eq!(sizes(&mut e, 31)[..2], [(17, 10), (13, 10)]);
    feed(&mut e, ":vert res 6\n");
    assert_eq!(sizes(&mut e, 31)[..2], [(6, 10), (24, 10)]);
    feed(&mut e, "\x17|");
    assert_eq!(sizes(&mut e, 31)[..2], [(29, 10), (1, 10)]);
    feed(&mut e, ":vertical new\n");
    assert_eq!(e.window_ids().len(), 4);
    // A resize that cannot happen does nothing.
    let mut one = ed("a");
    feed(&mut one, "\x17+:res 3\n:vert res 3\n");
    assert_eq!(sizes(&mut one, 30), [(30, 20)]);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn winfixheight_winfixwidth_and_cmdwinheight_resize_open_windows() {
    let mut e = ed(&lines(30));
    let heights = |e: &mut Editor| {
        e.frame(30, 21);
        e.win_rects().iter().map(|(_, r)| r.h).collect::<Vec<_>>()
    };
    feed(&mut e, ":sp\n:set wfh?\n");
    assert_eq!(e.msg(), "nowinfixheight");
    heights(&mut e);
    feed(&mut e, ":set wfh\n:set winfixheight?\n");
    assert_eq!(e.msg(), "winfixheight");
    // The fixed window keeps its 10 rows when another one is split off.
    feed(&mut e, ":sp\n");
    assert_eq!(heights(&mut e), [5, 10, 5]);
    feed(&mut e, "\x17j:set nowfh\n:set wfh?\n");
    assert_eq!(e.msg(), "nowinfixheight");
    feed(&mut e, ":set invwfh\n:set wfh!\n:set wfh?\n");
    assert_eq!(e.msg(), "nowinfixheight");
    heights(&mut e);
    feed(&mut e, ":set wfw\n:set wfw?\n");
    assert_eq!(e.msg(), "winfixwidth");
    // `:set cwh=N` changes the height of an open command-line window.
    let mut e = ed("a");
    feed(&mut e, "q:");
    heights(&mut e);
    assert_eq!(e.win_rects().last().map(|(_, r)| r.h), Some(8));
    feed(&mut e, ":set cwh=3\n");
    heights(&mut e);
    assert_eq!(e.win_rects().last().map(|(_, r)| r.h), Some(4));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn pager_shows_tall_messages_a_page_at_a_time() {
    let mut e = ed("text");
    let long = (1..=20).map(|i| format!("l{i}")).collect::<Vec<_>>().join("\n");
    let page = |e: &mut Editor| {
        let rows = screen(&e.frame(40, 8));
        (rows[0].clone(), rows[6].clone(), rows[7].clone())
    };
    let more = "-- More --".to_string();
    e.info(long.clone());
    assert_eq!(page(&mut e), ("l1".into(), "l7".into(), more.clone()));
    // Space, f, PageDown and Ctrl+F: a page on, up to the last one.
    for (i, key) in [KeyCode::Char(' '), KeyCode::PageDown].into_iter().enumerate() {
        press(&mut e, key);
        assert_eq!(page(&mut e).0, ["l8", "l14"][i]);
    }
    assert_eq!(page(&mut e).2, "Press ENTER or type command to continue", "the last page asks for Enter");
    // Back: b, PageUp, Ctrl+B a page, u and d half of it, k and j, Up and Down a line, g and G the ends.
    press(&mut e, KeyCode::Char('b'));
    assert_eq!(page(&mut e).0, "l7");
    press(&mut e, KeyCode::PageUp);
    assert_eq!(page(&mut e).0, "l1");
    press(&mut e, KeyCode::Char('d'));
    assert_eq!(page(&mut e).0, "l4");
    press(&mut e, KeyCode::Char('u'));
    assert_eq!(page(&mut e).0, "l1");
    press(&mut e, KeyCode::Char('j'));
    press(&mut e, KeyCode::Down);
    press(&mut e, KeyCode::Enter);
    assert_eq!(page(&mut e).0, "l4");
    press(&mut e, KeyCode::Char('k'));
    press(&mut e, KeyCode::Up);
    assert_eq!(page(&mut e).0, "l2");
    press(&mut e, KeyCode::Char('G'));
    assert_eq!(page(&mut e).0, "l14");
    press(&mut e, KeyCode::Char('g'));
    assert_eq!(page(&mut e).0, "l1");
    feed(&mut e, "\x06");
    assert_eq!(page(&mut e).0, "l8");
    feed(&mut e, "\x02");
    assert_eq!(page(&mut e).0, "l1");
    // Keys that do nothing before the end are ignored, and none of them reaches the editor.
    feed(&mut e, "xyz");
    assert_eq!((text(&e).as_str(), page(&mut e).0.as_str()), ("text", "l1"));
    // q and Esc stop; so does Ctrl+C.
    for stop in [KeyCode::Char('q'), KeyCode::Esc] {
        press(&mut e, stop);
        assert_eq!(e.msg(), "");
        e.info(long.clone());
        page(&mut e);
    }
    feed(&mut e, "\x03");
    assert_eq!(e.msg(), "");
    // `:` starts a command line at once; on the last page any other key dismisses and runs.
    e.info(long.clone());
    page(&mut e);
    feed(&mut e, ":");
    assert_eq!((e.msg(), &e.mode), ("", &Mode::Command(String::new())));
    feed(&mut e, "\x1b");
    e.info(long.clone());
    page(&mut e);
    press(&mut e, KeyCode::Char('G'));
    page(&mut e);
    feed(&mut e, "x");
    assert_eq!((text(&e).as_str(), e.msg()), ("ext", ""));
    // `nomore`: the last rows, no pager.
    feed(&mut e, ":set nomore\n");
    e.info(long.clone());
    let rows = screen(&e.frame(40, 8));
    assert_eq!((rows[0].as_str(), rows[6].as_str(), rows[7].as_str()), ("l14", "l20", "Press ENTER or type command to continue"));
    feed(&mut e, "\n:set more?\n");
    assert_eq!(e.msg(), "nomore");
    // A message that fits is not paged.
    e.info("a\nb");
    let rows = screen(&e.frame(40, 8));
    assert_eq!(rows[5..], ["a", "b", "Press ENTER or type command to continue"].map(String::from));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn ctrl_v_codes_and_ctrl_k_digraphs_in_insert_and_on_the_command_line() {
    // Insert: decimal, hex, unicode and octal codes; the key that ends a code is typed as usual.
    let mut e = ed("");
    feed(&mut e, "i\x16065\x16x42\x16u20ac\x16U0001F600\x16o103\x16233");
    assert_eq!(text(&e), "AB€😀Cé");
    feed(&mut e, "\x1635z\x16xg\x16\x16");
    assert_eq!(text(&e), "AB€😀Cé#zxg\u{16}");
    // A code cut short by Enter or Esc still counts; Tab, Esc and Enter after Ctrl+V are literal.
    let mut e = ed("");
    feed(&mut e, "i\x1665\n\x16\t\x16\x1b");
    assert_eq!(text(&e), "A\n\t\x1b");
    // Digraphs: a pair, the pair reversed, a space and a character (high bit), an unknown pair.
    let mut e = ed("");
    feed(&mut e, "i\x0be:\x0b:e\x0bEu\x0b a\x0bZQ\x0b->");
    assert_eq!(text(&e), "ëë€\u{e1}Q→");
    // Esc cancels one, and the count of an insert repeats it.
    feed(&mut e, "\x0b\x1bx\x1b");
    assert_eq!(text(&e), "ëë€\u{e1}Q→x");
    let mut e = ed("");
    feed(&mut e, "3i\x0ba!\x1b");
    assert_eq!(text(&e), "ààà");
    // Replace mode types over.
    let mut e = ed("abc");
    feed(&mut e, "R\x0be:\x16x41\x1b");
    assert_eq!(text(&e), "ëAc");
    // The command line takes both, wherever the cursor is.
    let mut e = ed("a");
    feed(&mut e, ":x\x0be:\x16u20ac\x16065y");
    assert_eq!(line(&e).0, "xë€Ay");
    press(&mut e, KeyCode::Home);
    feed(&mut e, "\x0bEu");
    assert_eq!(line(&e), ("€xë€Ay".into(), 3));
    feed(&mut e, "\x1b/\x0bo:\x16120");
    assert_eq!(line(&e).0, "öx");
    // A code that ends at a key handled by the line, here Enter, runs the line.
    feed(&mut e, "\x15\x1665\n");
    assert_eq!(e.mode, Mode::Normal);
    // `:digraphs` defines and lists.
    feed(&mut e, ":dig e: 120 ab 0x263a\n");
    assert_eq!(e.msg(), "");
    feed(&mut e, "i\x0be:\x0bab\x1b");
    assert_eq!(text(&e), "x☺a");
    feed(&mut e, ":dig\n");
    assert!(e.msg().starts_with("ab ☺  9786") && e.msg().contains("e: x  120"), "user digraphs come first, the last one first");
    assert!(e.msg().lines().count() > 200 && e.msg().contains("Eu €  8364"));
    for (cmd, msg) in [(":dig abc 1\n", "E1214: Digraph must be just two characters: abc"), (":dig ab\n", "E104: Escape not allowed in digraph"), (":dig ab x\n", "E39: Number expected: x")] {
        feed(&mut e, cmd);
        assert_eq!(e.msg(), msg);
    }
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn expressions_evaluate_like_vim() {
    let mut e = ed("one\ntwo\nthree");
    feed(&mut e, "\"ayyj$");
    let mut ev = |src: &str| e.eval_text(src).unwrap_or_else(|m| format!("!{m}"));
    let table: &[(&str, &str)] = &[
        // Arithmetic, with vim's division by zero and truncation.
        ("1+2*3", "7"), ("(1+2)*3", "9"), ("10/3", "3"), ("10%3", "1"), ("-7/2", "-3"), ("7/0", "9223372036854775807"), ("-7/0", "-9223372036854775807"),
        ("0/0", "-9223372036854775808"), ("5%0", "0"), ("0x1f+0b11+010", "42"), ("1 - -2", "3"), ("+3", "3"),
        // Floats.
        ("1.5+1", "2.5"), ("10/4.0", "2.5"), ("1.0/3", "0.333333"), ("1/3.0*3", "1.0"), ("2.0*3", "6.0"), ("1.0e3", "1000.0"), ("1.5e10", "1.5e+10"), ("-2.5", "-2.5"), ("1.5%2", "!E804: Cannot use '%' with Float"),
        // Strings and their numbers.
        ("'a'.'b'", "ab"), ("'a' . 1", "a1"), ("'a'..'b'", "ab"), ("'it''s'", "it's"), ("\"a\\tb\"", "a\tb"), ("\"\\x41\\u20ac\\101\"", "A€A"), ("\"12abc\"+1", "13"),
        ("'abc'+1", "1"), ("'0x1f'+0", "31"), ("'-5'+0", "-5"), ("'abc'[1]", "b"), ("'abcdef'[2:3]", "cd"), ("'abc'[1:]", "bc"), ("'abc'[:1]", "ab"), ("'abc'[9]", ""),
        // Comparisons and logic.
        ("1==1", "1"), ("'a'==#'A'", "0"), ("'a'==?'A'", "1"), ("'abc'=~'b'", "1"), ("'abc'!~'x'", "1"), ("'abc'=~#'B'", "0"), ("'abc'=~?'B'", "1"), ("2>1", "1"), ("'b'>'a'", "1"),
        ("1<=1", "1"), ("1!=1", "0"), ("'10'<9", "0"), ("1.5>1", "1"), ("1&&0", "0"), ("0||2", "1"), ("!0", "1"), ("!5", "0"), ("-(3)", "-3"), ("1?'y':'n'", "y"),
        ("0?1:2", "2"), ("0?1:0?2:3", "3"), ("v:true+v:false", "1"), ("[1]==[1]", "1"), ("[1]!=[2]", "1"),
        // Lists.
        ("[1,2,3]", "1\n2\n3"), ("[1,2]+[3]", "1\n2\n3"), ("[1,2,3][1]", "2"), ("[1,2,3][-1]", "3"), ("[1,2,3][1:]", "2\n3"), ("[1,2,3][:1]", "1\n2"), ("[1,2,3][2:1]", ""),
        ("[1,2,3][5]", "!E684: List index out of range: 5"), ("[]", ""),
        // Errors.
        ("1+", "!E15: Invalid expression: \"1+\""), ("(1", "!E15: Invalid expression: \"(1\""), ("1 2", "!E15: Invalid expression: \"1 2\""), ("'abc", "!E15: Invalid expression: \"'abc\""),
        ("@", "!E15: Invalid expression: \"@\""), ("foo(1)", "!E117: Unknown function: foo"), ("abs()", "!E119: Not enough arguments for function: abs"),
        ("abs(1,2)", "!E118: Too many arguments for function: abs"), ("[1]+1", "!E745: Using a List as a Number"), ("'a'.[1]", "!E730: Using a List as a String"),
        ("&nosuch", "!E113: Unknown option: nosuch"), ("[1]<2", "!E691: Can only compare List with List"), ("[1]<[2]", "!E692: Invalid operation for List"),
        // Registers, options, the text.
        ("@a", "one\n"), ("getreg('a')", "one\n"), ("&tabstop", "4"), ("&ts", "4"), ("&number", "1"), ("&ic", "0"), ("&background", "dark"), ("&filetype", ""), ("&expandtab+1", "2"),
        ("line('.')", "2"), ("line('$')", "3"), ("col('.')", "3"), ("col('$')", "4"), ("getline(3)", "three"), ("getline('.')", "two"), ("getline('$')", "three"), ("getline(9)", ""),
        // Numbers.
        ("abs(-3)", "3"), ("abs(-2.5)", "2.5"), ("min([3,1,2])", "1"), ("max([3,1,2])", "3"), ("round(2.5)", "3.0"), ("floor(2.7)", "2.0"), ("ceil(2.1)", "3.0"), ("sqrt(16)", "4.0"),
        ("pow(2,10)", "1024.0"), ("exp(0)", "1.0"), ("log10(1000)", "3.0"), ("float2nr(3.9)", "3"), ("str2nr('12')", "12"), ("str2nr('ff',16)", "255"), ("str2nr('0x1f',16)", "31"), ("str2nr('11',2)", "3"),
        ("str2float('1.5abc')", "1.5"), ("string('a')", "'a'"), ("string([1,'a''b'])", "[1, 'a''b']"), ("string(1.5)", "1.5"), ("string(7)", "7"),
        // Strings.
        ("len('héllo')", "6"), ("strlen('héllo')", "6"), ("strchars('héllo')", "5"), ("strcharlen(\"e\\u0301x\")", "2"), ("len([1,2])", "2"), ("toupper('aé')", "AÉ"), ("tolower('AÉ')", "aé"),
        ("repeat('ab',3)", "ababab"), ("repeat([1],2)", "1\n1"), ("join([1,2,3],'-')", "1-2-3"), ("join(['a','b'])", "a b"), ("split('a b  c')", "a\nb\nc"), ("split('a,b,,c',',')", "a\nb\nc"),
        ("split('a,b,,c',',',1)", "a\nb\n\nc"), ("split('a1b22c','\\d+')", "a\nb\nc"), ("range(4)", "0\n1\n2\n3"), ("range(2,4)", "2\n3\n4"), ("range(0,10,5)", "0\n5\n10"), ("range(3,1,-1)", "3\n2\n1"),
        ("range(1,2,0)", "!E726: Stride is zero"), ("reverse([1,2,3])", "3\n2\n1"), ("reverse('abc')", "cba"), ("sort(['b','a','c'])", "a\nb\nc"), ("sort([10,9,100])", "10\n100\n9"),
        ("add([1],2)", "1\n2"), ("index([1,2,3],2)", "1"), ("index([1],5)", "-1"), ("get([1,2],1)", "2"), ("get([1,2],5,'x')", "x"), ("get([1,2],5)", "0"), ("empty('')", "1"), ("empty([1])", "0"),
        ("empty(0)", "1"), ("strpart('abcdef',2,3)", "cde"), ("strpart('abc',1)", "bc"), ("stridx('hello','l')", "2"), ("stridx('hello','l',3)", "3"), ("strridx('hello','l')", "3"), ("stridx('a','z')", "-1"),
        ("char2nr('A')", "65"), ("nr2char(8364)", "€"), ("escape('a.b','.')", "a\\.b"), ("tr('abc','ab','xy')", "xyc"), ("tr('a','ab','x')", "!E475: Invalid argument: tr()"),
        ("matchstr('foo123bar','\\d+')", "123"), ("matchstr('foo','\\d+')", ""), ("substitute('foo bar','o','0','g')", "f00 bar"), ("substitute('foo bar','o','0','')", "f0o bar"),
        ("substitute('a b','(\\w) (\\w)','$2 $1','')", "b a"), ("trim('  x  ')", "x"), ("trim('xxaxx','x')", "a"), ("copy([1])", "1"),
        // printf.
        ("printf('%d-%s',5,'a')", "5-a"), ("printf('%05d',42)", "00042"), ("printf('%-5d|',42)", "42   |"), ("printf('%5.2f',3.14159)", " 3.14"), ("printf('%x %X %o %b',255,255,8,5)", "ff FF 10 101"),
        ("printf('%#x %#o %#b',255,8,5)", "0xff 010 0b101"), ("printf('%+d % d',5,5)", "+5  5"), ("printf('%c',65)", "A"), ("printf('%.3s',[1])", "[1]"), ("printf('%.3s','abcdef')", "abc"),
        ("printf('%5s|%-5s|','a','b')", "    a|b    |"), ("printf('%e',1500.0)", "1.500000e+03"), ("printf('%E',0.00015)", "1.500000E-04"), ("printf('%g',0.0001)", "0.0001"), ("printf('%g',1.0e-5)", "1e-05"),
        ("printf('%g',100000.0)", "100000"), ("printf('%g',1.0e6)", "1e+06"), ("printf('%%')", "%"), ("printf('%3d',-5)", " -5"), ("printf('%03d',-5)", "-05"), ("printf('%08.3f',3.14159)", "0003.142"),
        ("printf('%.3d',5)", "005"), ("printf('%u',-1)", "18446744073709551615"), ("printf('%ld',5)", "5"), ("printf('%d')", "!E766: Insufficient arguments for printf()"),
        ("printf('x',1)", "!E767: Too many arguments for printf()"), ("printf('%q',1)", "!E767: Invalid format specifier: %q"),
    ];
    for (src, want) in table {
        assert_eq!(ev(src), *want, "{src}");
    }
    // `ignorecase` decides the plain string comparison, `#` and `?` do not care about it.
    e.buf.opts.ignorecase = true;
    assert_eq!((e.eval_text("'a'=='A'").unwrap(), e.eval_text("'a'==#'A'").unwrap(), e.eval_text("'abc'=~'B'").unwrap()), ("1".into(), "0".into(), "1".into()));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn expression_register_from_the_command_line_insert_mode_and_normal_mode() {
    // Command line: the value goes at the cursor, and the cursor after it.
    let mut e = ed("a");
    feed(&mut e, ":xy");
    press(&mut e, KeyCode::Left);
    feed(&mut e, "\x12=6*7\n");
    assert_eq!(line(&e), ("x42y".into(), 3));
    // The search line too, and a list makes line breaks.
    feed(&mut e, "\x1b/p\x12=[1,2]\n");
    assert_eq!(line(&e), ("p1\r2".into(), 4));
    feed(&mut e, "\x1b");
    // Esc and an error give the line back unchanged; the error stays on the screen.
    feed(&mut e, ":a\x12=1\x1b");
    assert_eq!(line(&e), ("a".into(), 1));
    feed(&mut e, "\x12=1+\n");
    assert_eq!((line(&e), e.msg()), (("a".into(), 1), "E15: Invalid expression: \"1+\""));
    feed(&mut e, "\x1b");
    // Insert: typed at the cursor, a repeated insert types the value again.
    let mut e = ed("");
    feed(&mut e, "ia\x12=1+2\nb\x1b");
    assert_eq!(text(&e), "a3b");
    let mut e = ed("");
    feed(&mut e, "3i\x12=7\n\x1b");
    assert_eq!(text(&e), "777");
    feed(&mut e, "ix\x12=[1,2]\n\x1b");
    assert_eq!(text(&e), "77x1\n27");
    let mut e = ed("");
    feed(&mut e, "i\x12=1+\n");
    assert_eq!((e.mode == Mode::Insert, e.msg(), text(&e).as_str()), (true, "E15: Invalid expression: \"1+\"", ""));
    feed(&mut e, "\x12=1\x1bx\x1b");
    assert_eq!(text(&e), "x");
    // Normal: `"=` sets the register of the next command.
    let mut e = ed("");
    feed(&mut e, "\"=5*5\np");
    assert_eq!(text(&e), "25");
    feed(&mut e, "\"=@=.'!'\nP");
    assert_eq!(text(&e), "225!5");
    feed(&mut e, "\"=1+\n");
    assert_eq!((e.msg(), e.pending.as_str()), ("E15: Invalid expression: \"1+\"", ""));
    feed(&mut e, "\"=2\x1bx");
    assert_eq!(text(&e), "2255", "Esc cancelled the register: `x` ran without it");
    // The expressions have a history of their own (Up), apart from the command line's.
    feed(&mut e, ":zzz\n:\x12=");
    press(&mut e, KeyCode::Up);
    assert!(matches!(&e.mode, Mode::Expr(s) if s == "1+"), "{:?}", e.mode);
    feed(&mut e, "\x1b\x1b");
    assert_eq!(e.mode, Mode::Normal);
    // A frame shows the `=` prompt and the cursor in it.
    feed(&mut e, "i\x12=12");
    let f = e.frame(20, 5);
    assert_eq!((screen(&f)[4].as_str(), f.cursor), ("=12", (3, 4)));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn completion_sources() {
    let dir = std::env::temp_dir().join(format!("rim-wild-{}", std::process::id()));
    fs::create_dir_all(dir.join("sub")).unwrap();
    for f in ["ab.txt", "ac.rs", "AD.txt", ".hidden"] {
        fs::write(dir.join(f), "").unwrap();
    }
    let d = dir.display();
    let mut e = ed("a");
    let cand = |e: &Editor, l: &str| e.candidates(l).map(|c| (c.start, c.items));
    let v = |xs: &[&str]| xs.iter().map(|s| s.to_string()).collect::<Vec<_>>();
    // Command names, and nothing where no command takes an argument.
    assert_eq!(cand(&e, "sp"), Some((0, v(&["split"]))));
    assert_eq!(cand(&e, "%so").map(|c| c.1), Some(v(&["sort"])));
    assert_eq!(cand(&e, "b").map(|c| c.1.len()), Some(6));
    assert!(cand(&e, "").is_none() && cand(&e, "normal x").is_none() && cand(&e, "s/a").is_some_and(|c| c.1.is_empty()));
    // Files: sorted, directories end in `/`, hidden ones after a dot, `wildignore`, `wildignorecase`.
    assert_eq!(cand(&e, &format!("e {d}/a")), Some((2, vec![format!("{d}/ab.txt"), format!("{d}/ac.rs")])));
    assert_eq!(cand(&e, &format!("w! {d}/s")).map(|c| c.1), Some(vec![format!("{d}/sub/")]));
    assert_eq!(cand(&e, &format!("e {d}/.")).map(|c| c.1), Some(vec![format!("{d}/.hidden")]));
    assert_eq!(cand(&e, &format!("e {d}/")).map(|c| c.1.len()), Some(4));
    feed(&mut e, ":set wig=*.txt\n");
    assert_eq!(cand(&e, &format!("e {d}/a")).map(|c| c.1), Some(vec![format!("{d}/ac.rs")]));
    feed(&mut e, ":set wig=\n:set wic\n");
    assert_eq!(cand(&e, &format!("e {d}/a")).map(|c| c.1.len()), Some(3));
    feed(&mut e, ":set nowic\n");
    // `~` and `$VAR` in the directory are read, and kept in what is completed.
    assert!(cand(&e, "e $HOME/").is_some_and(|c| !c.1.is_empty() && c.1.iter().all(|i| i.starts_with("$HOME/"))));
    assert!(cand(&e, "e ~/").is_some_and(|c| !c.1.is_empty() && c.1.iter().all(|i| i.starts_with("~/"))));
    // Options: names, `no` and `inv` forms, values, and the part after a comma.
    assert_eq!(cand(&e, "set nu").map(|c| c.1), Some(v(&["number"])));
    assert!(cand(&e, "set nonu").unwrap().1 == v(&["nonumber"]) && cand(&e, "set invw").unwrap().1.contains(&"invwrap".to_string()));
    assert_eq!(cand(&e, "set bg="), Some((7, v(&["dark", "light"]))));
    assert_eq!(cand(&e, "set wim=lo").map(|c| c.1), Some(v(&["longest", "longest:full"])));
    assert_eq!(cand(&e, "set wim=full,l"), Some((13, v(&["longest", "list", "lastused", "list:full", "list:longest", "longest:full"]))));
    assert_eq!(cand(&e, "set ft=rus").map(|c| c.1), Some(v(&["rust"])));
    assert_eq!(cand(&e, "set winfixh").map(|c| c.1), Some(v(&["winfixheight"])));
    assert!(cand(&e, "set zzz=").unwrap().1.is_empty());
    // Highlight groups, their keys, colors and attributes.
    assert_eq!(cand(&e, "hi Sear").map(|c| c.1), Some(v(&["Search"])));
    assert_eq!(cand(&e, "hi cl").map(|c| c.1), Some(v(&["clear"])));
    assert_eq!(cand(&e, "hi default li").map(|c| c.1), Some(v(&["link"])));
    assert_eq!(cand(&e, "hi link Normal Sea").map(|c| c.1), Some(v(&["Search"])));
    assert_eq!(cand(&e, "hi Search ct").map(|c| c.1), Some(v(&["ctermfg=", "ctermbg=", "cterm="])));
    assert_eq!(cand(&e, "hi Search ctermfg=Dark").map(|c| (c.0, c.1.contains(&"darkblue".to_string()))), Some((18, true)));
    assert_eq!(cand(&e, "hi Search gui=bold,un").map(|c| (c.0, c.1)), Some((19, v(&["underline", "undercurl"]))));
    // Buffers by a part of their name, `:syntax`, `:messages`, `:vertical`.
    feed(&mut e, &format!(":e {d}/ab.txt\n"));
    assert_eq!(cand(&e, "b ab.t").map(|c| c.1), Some(vec![format!("{d}/ab.txt")]));
    assert!(cand(&e, "bd rim-test").unwrap().1.len() == 1);
    assert_eq!(cand(&e, "syntax o").map(|c| c.1), Some(v(&["on", "off"])));
    assert_eq!(cand(&e, "messages c").map(|c| c.1), Some(v(&["clear"])));
    assert_eq!(cand(&e, "vertical r").map(|c| c.1), Some(v(&["resize"])));
    // Fuzzy matching, best first.
    feed(&mut e, ":set wop=fuzzy\n");
    assert_eq!(cand(&e, "sytx").map(|c| c.1.first().cloned()), Some(Some("syntax".into())));
    assert_eq!(cand(&e, &format!("e {d}/at")).map(|c| c.1.contains(&format!("{d}/ab.txt"))), Some(true));
    fs::remove_dir_all(&dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn wildmode_full_menu_and_keys() {
    let mut e = ed("a\nb");
    let tab = |e: &mut Editor| press(e, KeyCode::Tab);
    feed(&mut e, ":s");
    tab(&mut e);
    assert_eq!(line(&e), ("saveas".into(), 6));
    let f = e.frame(40, 12);
    // The popup above the command line, from the column of the word.
    assert_eq!(screen(&f)[4..11], ["  saveas", "  set", "  sort", "  split", "  stats", "  substitute", "  syntax"].map(String::from));
    assert_eq!((screen(&f)[11].as_str(), f.cursor), (":saveas", (7, 11)));
    // More Tabs go on, after the last one the typed word, then the first again; Shift+Tab goes back.
    for want in ["set", "sort", "split", "stats", "substitute", "syntax", "s", "saveas"] {
        tab(&mut e);
        assert_eq!(line(&e).0, want);
    }
    press(&mut e, KeyCode::BackTab);
    assert_eq!(line(&e).0, "s");
    press(&mut e, KeyCode::BackTab);
    assert_eq!(line(&e).0, "syntax");
    // `Ctrl+N`, `Ctrl+P`, Up and Down move through the candidates while the menu is up.
    feed(&mut e, "\x0e");
    assert_eq!(line(&e).0, "s");
    feed(&mut e, "\x10");
    assert_eq!(line(&e).0, "syntax");
    press(&mut e, KeyCode::Up);
    assert_eq!(line(&e).0, "substitute");
    press(&mut e, KeyCode::Down);
    assert_eq!(line(&e).0, "syntax");
    // `Ctrl+E` gives the typed word back and ends the completion; `Ctrl+Y` keeps the candidate.
    feed(&mut e, "\x05");
    assert_eq!((line(&e), e.wild.is_none()), (("s".into(), 1), true));
    tab(&mut e);
    tab(&mut e);
    feed(&mut e, "\x19");
    assert_eq!((line(&e).0.as_str(), e.wild.is_none()), ("set", true));
    // Any other key keeps it and goes on: typed after the word, or the key of a command.
    feed(&mut e, "\x15s");
    tab(&mut e);
    feed(&mut e, "x");
    assert_eq!(line(&e), ("saveasx".into(), 7));
    // Enter runs what the line shows.
    feed(&mut e, "\x15se");
    tab(&mut e);
    feed(&mut e, "\n");
    assert_eq!(e.mode, Mode::Normal);
    assert!(e.msg().contains("tabstop=4"), "{}", e.msg());
    // A single match is the completion: no menu, and the next Tab starts again.
    feed(&mut e, ":so");
    tab(&mut e);
    assert_eq!((line(&e).0.as_str(), e.wild.is_none()), ("sort", true));
    // The text after the cursor stays, and the word before it is the one completed.
    feed(&mut e, "\x15s :x");
    for _ in 0..3 {
        press(&mut e, KeyCode::Left);
    }
    tab(&mut e);
    assert_eq!(line(&e), ("saveas :x".into(), 6));
    // Up and Down walk the history without a menu, and with `nowildmenu` too.
    feed(&mut e, "\x1b:set nowmnu\n:s");
    tab(&mut e);
    assert!(e.wild.as_ref().is_some_and(|w| !w.menu));
    feed(&mut e, "\x1b");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn wildmode_steps_lists_and_keys_of_the_command_line() {
    let mut e = ed("a");
    let tab = |e: &mut Editor| press(e, KeyCode::Tab);
    // `longest,full`: the common start, then the candidates one by one.
    feed(&mut e, ":set wim=longest,full\n:u");
    tab(&mut e);
    assert_eq!((line(&e).0.as_str(), e.wild.as_ref().map(|w| w.menu)), ("undo", Some(false)));
    tab(&mut e);
    assert_eq!((line(&e).0.as_str(), e.wild.as_ref().map(|w| w.menu)), ("undo", Some(true)));
    tab(&mut e);
    assert_eq!(line(&e).0, "undolist");
    // `longest:full` starts the menu with the first press.
    feed(&mut e, "\x1b:set wim=longest:full\n:u");
    tab(&mut e);
    assert_eq!((line(&e).0.as_str(), e.wild.as_ref().map(|w| w.menu)), ("undo", Some(true)));
    // `list`: the first press lists, the next complete.
    feed(&mut e, "\x1b:set wim=list,full\n:s");
    tab(&mut e);
    assert_eq!((line(&e).0.as_str(), e.wild.as_ref().map(|w| w.list)), ("s", Some(true)));
    let rows = screen(&e.frame(40, 8));
    assert_eq!(rows[4..7], ["saveas      set         sort", "split       stats       substitute", "syntax"].map(String::from));
    assert_eq!(rows[3], "");
    tab(&mut e);
    assert_eq!(line(&e).0, "saveas");
    // `list:longest`.
    feed(&mut e, "\x1b:set wim=list:longest\n:u");
    tab(&mut e);
    assert_eq!((line(&e).0.as_str(), e.wild.as_ref().map(|w| w.list)), ("undo", Some(true)));
    assert_eq!(screen(&e.frame(40, 8))[6], "undo      undolist");
    // The empty entry only completes the first match.
    feed(&mut e, "\x1b:set wim=\n:s");
    tab(&mut e);
    tab(&mut e);
    assert_eq!(line(&e).0, "saveas");
    // `Ctrl+D` lists, `Ctrl+A` inserts every match, `Ctrl+L` the longest start.
    feed(&mut e, "\x15s\x04");
    assert_eq!((line(&e).0.as_str(), e.wild.as_ref().map(|w| w.list)), ("s", Some(true)));
    feed(&mut e, "\x15s\x01");
    assert_eq!(line(&e).0, "saveas set sort split stats substitute syntax");
    feed(&mut e, "\x15u\x0c");
    assert_eq!(line(&e).0, "undo");
    feed(&mut e, "\x15so\x0c");
    assert_eq!(line(&e).0, "sort");
    // Fuzzy.
    feed(&mut e, "\x1b:set wim=full wop=fuzzy\n:sytx");
    tab(&mut e);
    assert_eq!(line(&e).0, "syntax");
    // `wildoptions` without `pum`: one row above the command line.
    feed(&mut e, "\x1b:set wop=\n:s");
    tab(&mut e);
    let rows = screen(&e.frame(60, 8));
    let plain = |r: &str| r.replace(['[', ']'], "").trim_end().to_string();
    assert_eq!(plain(&rows[6]), "  saveas  set  sort  split  stats  substitute  syntax");
    tab(&mut e);
    assert_eq!(line(&e).0, "set");
    // Not enough room: scrolled to the selected one, with markers.
    for _ in 0..4 {
        tab(&mut e);
    }
    let rows = screen(&e.frame(24, 8));
    assert_eq!(plain(&rows[6]), "< stats  substitute  >");
    feed(&mut e, "\x1b");
    // `wildchar`: another key completes and Tab types itself; `wildcharm` also in a macro.
    feed(&mut e, ":set wc=<C-Z> wcm=<C-X>\n:s\t");
    assert_eq!(line(&e).0, "s\t");
    press(&mut e, KeyCode::Backspace);
    feed(&mut e, "\x1a");
    assert_eq!(line(&e).0, "saveas");
    feed(&mut e, "\x15s\x18");
    assert_eq!(line(&e).0, "saveas");
    feed(&mut e, "\x1b");
    e.regs.set_macro('b', ":s\x18".into());
    feed(&mut e, "@b");
    assert_eq!(line(&e).0, "saveas", "wildcharm completes in a macro");
    feed(&mut e, "\x1b:set wc=<C-Z> wcm=\n");
    e.regs.set_macro('c', ":s\x1a".into());
    feed(&mut e, "@c");
    assert_eq!(line(&e).0, "s", "wildchar does not in a macro");
    feed(&mut e, "\x1b:set wc=bad\n");
    assert_eq!(e.msg(), "Invalid argument: wc=bad");
    feed(&mut e, ":set wim=a,b,c,d,e\n");
    assert_eq!(e.msg(), "Invalid argument: wim=a,b,c,d,e");
    feed(&mut e, ":set wop=popup\n");
    assert_eq!(e.msg(), "Invalid argument: wop=popup");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn popup_menu_scrolls_clamps_and_keeps_a_width() {
    let mut e = ed("a\nb");
    let tab = |e: &mut Editor| press(e, KeyCode::Tab);
    feed(&mut e, ":set ph=3 pw=12\n:s");
    tab(&mut e);
    let rows = screen(&e.frame(30, 10));
    assert_eq!(rows[6..9], ["  saveas", "  set", "  sort"].map(String::from));
    // The selection leaves the window: it scrolls, one row at a time.
    for _ in 0..3 {
        tab(&mut e);
    }
    assert_eq!(line(&e).0, "split");
    let f = e.frame(30, 10);
    assert_eq!(screen(&f)[6..9], ["  set", "  sort", "  split"].map(String::from));
    // The scroll bar column has its thumb where the window is among the items: one of four rows down is still the first row of three.
    let bar: Vec<Style> = f.rows[6..9].iter().map(|r| r.last().unwrap().style).collect();
    assert_eq!(bar, [Style::PmenuThumb, Style::PmenuSbar, Style::PmenuSbar]);
    // The width is at least `pumwidth` and a long item widens it; the selected row has its own style.
    let row = &f.rows[8];
    assert_eq!((row[1].style, row[1].text.chars().count()), (Style::PmenuSel, 12));
    // A screen too narrow for it: the popup moves left to fit, and a tiny one shows what it can.
    feed(&mut e, "\x1b:set ph=0\n:set\t");
    feed(&mut e, "\x15s");
    tab(&mut e);
    let f = e.frame(10, 12);
    assert!(f.rows.iter().all(|r| r.iter().map(|s| s.text.chars().count()).sum::<usize>() <= 10));
    let f = e.frame(3, 3);
    assert_eq!(f.rows.len(), 3);
    // The popup draws over the text without breaking wide characters.
    let mut e = ed("日本語日本語");
    feed(&mut e, ":s");
    tab(&mut e);
    let f = e.frame(14, 6);
    assert!(f.rows.iter().all(|r| r.iter().map(|s| unicode_width::UnicodeWidthStr::width(s.text.as_str())).sum::<usize>() <= 14));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn buffer_by_name() {
    let dir = std::env::temp_dir().join(format!("rim-bname-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    let (a, b) = (dir.join("alpha.txt"), dir.join("alps.txt"));
    fs::write(&a, "a").unwrap();
    fs::write(&b, "b").unwrap();
    let mut e = Editor::open(a.clone()).unwrap();
    e.open_more(b.clone()).unwrap();
    feed(&mut e, ":b alps\n");
    assert_eq!(e.buf.id, 2);
    feed(&mut e, ":b alp\n");
    assert_eq!(e.msg(), "E93: More than one match for alp");
    feed(&mut e, ":b ALPHA\n");
    assert_eq!(e.buf.id, 1);
    feed(&mut e, &format!(":b {}\n", b.display()));
    assert_eq!(e.buf.id, 2);
    feed(&mut e, ":b nothing\n");
    assert_eq!(e.msg(), "E94: No matching buffer for nothing");
    fs::remove_dir_all(dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn equalalways_winheight_winwidth_and_the_least_sizes() {
    let narrow = |e: &mut Editor| e.buf.opts.winwidth = 1;
    let sizes = |e: &mut Editor, w: usize| {
        e.frame(w, 21);
        e.win_rects().iter().map(|(_, r)| (r.w, r.h)).collect::<Vec<_>>()
    };
    // `noequalalways`: a split takes half of the window it splits, the others keep their size.
    let mut e = ed(&lines(30));
    narrow(&mut e);
    sizes(&mut e, 31);
    feed(&mut e, ":set noea\n:sp\n");
    assert_eq!(sizes(&mut e, 31), [(31, 10), (31, 10)]);
    feed(&mut e, ":sp\n");
    assert_eq!(sizes(&mut e, 31), [(31, 5), (31, 5), (31, 10)]);
    // Closing gives the room to the next window, the previous one for the last.
    feed(&mut e, "\x17c");
    assert_eq!(sizes(&mut e, 31), [(31, 10), (31, 10)]);
    feed(&mut e, "\x17j\x17c");
    assert_eq!(sizes(&mut e, 31), [(31, 20)]);
    feed(&mut e, ":vs\n");
    assert_eq!(sizes(&mut e, 31), [(15, 20), (15, 20)]);
    feed(&mut e, ":vs\n:set ea?\n");
    assert_eq!(e.msg(), "noequalalways");
    assert_eq!(sizes(&mut e, 31), [(7, 20), (7, 20), (15, 20)]);
    feed(&mut e, "\x17c");
    assert_eq!(sizes(&mut e, 31), [(15, 20), (15, 20)]);
    feed(&mut e, ":set ea\n:vs\n");
    assert_eq!(sizes(&mut e, 31).iter().map(|s| s.0).collect::<Vec<_>>(), [9, 9, 11]);
    // `winheight` and `winwidth` grow the window that is entered when others can give.
    let mut e = ed(&lines(30));
    sizes(&mut e, 40);
    feed(&mut e, ":set wh=12\n:sp\n:sp\n");
    // The window a split enters gets its 12 rows and the status row; the others give.
    assert_eq!(sizes(&mut e, 40), [(40, 13), (40, 2), (40, 5)]);
    feed(&mut e, "\x17j");
    assert_eq!(sizes(&mut e, 40)[1].1, 13, "12 rows and the status row");
    feed(&mut e, "\x17j");
    assert_eq!(sizes(&mut e, 40)[2].1, 13);
    let mut e = ed(&lines(30));
    sizes(&mut e, 60);
    feed(&mut e, ":set wiw=40\n:vs\n");
    assert_eq!(sizes(&mut e, 60)[..2], [(40, 20), (19, 20)], "the window the split enters gets 40 columns");
    feed(&mut e, "\x17l");
    assert_eq!(sizes(&mut e, 60)[..2], [(19, 20), (40, 20)]);
    // `winminheight` and `winminwidth` are what the others keep when one is made as big as it can be.
    let mut e = ed(&lines(30));
    narrow(&mut e);
    sizes(&mut e, 31);
    feed(&mut e, ":set wmh=3\n:sp\n\x17_");
    assert_eq!(sizes(&mut e, 31), [(31, 16), (31, 4)]);
    feed(&mut e, ":set wmh=1 wmw=5\n:vs\n\x17|");
    assert_eq!(sizes(&mut e, 31)[..2], [(25, 10), (5, 10)], "a split evens the heights out again");
    feed(&mut e, ":set wh=0\n");
    assert_eq!(e.msg(), "Invalid argument: wh=0");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn cedit_lastused_and_globs() {
    // `cedit` is the key of the command-line window, and may be none.
    let mut e = ed("a");
    feed(&mut e, ":set cedit=<C-G>\n:x\x06");
    assert!(e.cmdwin.is_none());
    feed(&mut e, "\x07");
    assert!(e.cmdwin.is_some());
    feed(&mut e, "\x03\x1b:set cedit=\n:x\x07");
    assert!(e.cmdwin.is_none());
    feed(&mut e, "\x1b:set cedit=bad\n");
    assert_eq!(e.msg(), "Invalid argument: cedit=bad");
    feed(&mut e, ":set cedit?\n");
    assert_eq!(e.msg(), "cedit=");
    // `lastused`: the buffers most recently left first, the current one on top.
    let dir = std::env::temp_dir().join(format!("rim-lastused-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    let names = ["a.txt", "b.txt", "c.txt"].map(|n| dir.join(n));
    for n in &names {
        fs::write(n, "x").unwrap();
    }
    let mut e = Editor::open(names[0].clone()).unwrap();
    e.open_more(names[1].clone()).unwrap();
    e.open_more(names[2].clone()).unwrap();
    feed(&mut e, ":b 2\n:b 3\n:b 2\n");
    let order = |e: &Editor| e.candidates("b ").unwrap().items.iter().map(|n| n.rsplit('/').next().unwrap().to_string()).collect::<Vec<_>>();
    assert_eq!(order(&e), ["a.txt", "b.txt", "c.txt"]);
    feed(&mut e, ":set wim=lastused\n");
    assert_eq!(order(&e), ["b.txt", "c.txt", "a.txt"]);
    feed(&mut e, ":b 1\n");
    assert_eq!(order(&e), ["a.txt", "b.txt", "c.txt"]);
    fs::remove_dir_all(&dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn mouse_clicks_drags_wheel_and_windows() {
    use crossterm::event::{MouseButton as B, MouseEvent, MouseEventKind as K};
    use std::time::{Duration, Instant};
    let t0 = Instant::now();
    let ev = |kind, x: u16, y: u16| MouseEvent { kind, column: x, row: y, modifiers: KeyModifiers::NONE };
    let click = |e: &mut Editor, x, y, at: u64| {
        e.mouse(ev(K::Down(B::Left), x, y), t0 + Duration::from_millis(at));
        e.mouse(ev(K::Up(B::Left), x, y), t0 + Duration::from_millis(at));
    };
    let mut e = ed("hello world\nsecond line\nthird");
    e.frame(30, 8);
    // A click puts the cursor on the cell: past the gutter ("1 " is 2 cells wide here), past the end on the last char.
    click(&mut e, 2 + 4, 1, 0);
    assert_eq!(pos(&e), (1, 4));
    click(&mut e, 29, 0, 1000);
    assert_eq!(pos(&e), (0, 10));
    // Double click: the word; triple: the line.
    click(&mut e, 2 + 7, 0, 2000);
    click(&mut e, 2 + 7, 0, 2100);
    assert_eq!((&e.mode, e.anchor, pos(&e)), (&Mode::Visual(VKind::Char), (0, 6), (0, 10)));
    e.mouse(ev(K::Down(B::Left), 9, 0), t0 + Duration::from_millis(2200));
    assert_eq!((&e.mode, e.anchor.1, pos(&e).0), (&Mode::Visual(VKind::Line), 0, 0));
    feed(&mut e, "\x1b");
    // Drag: selects characters; a plain click leaves Visual again.
    e.mouse(ev(K::Down(B::Left), 3, 0), t0 + Duration::from_millis(5000));
    e.mouse(ev(K::Drag(B::Left), 8, 1), t0 + Duration::from_millis(5001));
    e.mouse(ev(K::Up(B::Left), 8, 1), t0 + Duration::from_millis(5002));
    assert_eq!((&e.mode, e.anchor, pos(&e)), (&Mode::Visual(VKind::Char), (0, 1), (1, 6)));
    click(&mut e, 5, 2, 9000);
    assert_eq!((&e.mode, pos(&e)), (&Mode::Normal, (2, 3)));
    // Insert mode: the click may land past the line end; `mouse` off does nothing.
    feed(&mut e, "i");
    click(&mut e, 29, 0, 12000);
    assert_eq!((&e.mode, pos(&e)), (&Mode::Insert, (0, 11)));
    feed(&mut e, "\x1b:set mouse=\n");
    click(&mut e, 4, 2, 15000);
    assert_eq!(pos(&e).0, 0);
    assert!(!e.mouse_enabled());
    feed(&mut e, ":set mouse=a\n:set mouse?\n");
    assert_eq!((e.msg(), e.mouse_enabled()), ("mouse=a", true));
    feed(&mut e, ":set mouse=z\n");
    assert_eq!(e.msg(), "Invalid argument: mouse=z");
    // The wheel scrolls `mousescroll` lines, and the cursor stays on screen.
    let mut e = ed(&lines(30));
    e.frame(30, 8);
    e.mouse(ev(K::ScrollDown, 5, 2), t0);
    assert_eq!(e.win.top, 3);
    e.mouse(ev(K::ScrollUp, 5, 2), t0);
    assert_eq!(e.win.top, 0);
    feed(&mut e, ":set mousescroll=ver:1\n");
    e.mouse(ev(K::ScrollDown, 5, 2), t0);
    assert_eq!(e.win.top, 1);
    feed(&mut e, ":set mousescroll=bad\n");
    assert_eq!(e.msg(), "Invalid argument: mousescroll=bad");
    // Windows: a click in another window enters it; the wheel scrolls the one under it.
    let mut e = ed(&lines(30));
    feed(&mut e, ":vs\n");
    e.frame(31, 8);
    assert_eq!(e.window_ids().len(), 2);
    let other = e.window_ids()[1];
    click(&mut e, 20, 2, 0);
    assert_eq!((e.win.id, pos(&e).0), (other, 2));
    let first = e.window_ids()[0];
    e.mouse(ev(K::ScrollDown, 3, 2), t0);
    assert_eq!(e.with_window(first, |e| e.win.top), 3);
    assert_eq!(e.win.top, 0);
    // Dragging the bar between side by side windows, and a status row, resizes them.
    feed(&mut e, ":set ls=2\n");
    e.frame(31, 8);
    e.mouse(ev(K::Down(B::Left), 15, 2), t0);
    e.mouse(ev(K::Drag(B::Left), 10, 2), t0);
    e.mouse(ev(K::Up(B::Left), 10, 2), t0);
    assert!(e.frame(31, 8).cursor.0 > 10);
    assert_eq!(e.win_rects().iter().map(|(_, r)| r.w).collect::<Vec<_>>(), [10, 20]);
    feed(&mut e, ":sp\n");
    e.frame(31, 8);
    let top = e.win_rects()[1].1;
    let status_row = (top.y + top.h - 1) as u16;
    e.mouse(ev(K::Down(B::Left), 20, status_row), t0);
    e.mouse(ev(K::Drag(B::Left), 20, status_row + 1), t0);
    e.mouse(ev(K::Up(B::Left), 20, status_row + 1), t0);
    e.frame(31, 8);
    assert_eq!(e.win_rects()[1].1.h, top.h + 1);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn mouse_in_hit_enter_and_the_completion_menu() {
    use crossterm::event::{MouseButton as B, MouseEvent, MouseEventKind as K};
    use std::time::Instant;
    let ev = |kind, x: u16, y: u16| MouseEvent { kind, column: x, row: y, modifiers: KeyModifiers::NONE };
    let mut e = ed("a");
    // A click answers the hit-enter prompt, when `mouse` has `r`.
    e.info("one\ntwo");
    e.frame(30, 8);
    e.mouse(ev(K::Down(B::Left), 3, 3), Instant::now());
    assert_eq!(e.msg(), "two\none".split('\n').rev().collect::<Vec<_>>().join("\n"), "not without `r`");
    feed(&mut e, ":set mouse=nvir\n");
    e.info("one\ntwo");
    e.frame(30, 8);
    e.mouse(ev(K::Down(B::Left), 3, 3), Instant::now());
    assert_eq!(e.msg(), "");
    // The command line: a click moves the cursor in it.
    feed(&mut e, ":set mouse=a\n:abcdef");
    e.frame(30, 8);
    e.mouse(ev(K::Down(B::Left), 3, 7), Instant::now());
    assert_eq!(line(&e), ("abcdef".into(), 2));
    // The menu: a click on an item completes with it, the wheel moves the selection.
    press(&mut e, KeyCode::End);
    feed(&mut e, "\x15s");
    press(&mut e, KeyCode::Tab);
    let f = e.frame(30, 12);
    let row = f.rows.iter().position(|r| r.iter().any(|s| s.text.contains("split"))).unwrap();
    e.mouse(ev(K::ScrollDown, 4, row as u16), Instant::now());
    assert_eq!(line(&e).0, "set");
    e.mouse(ev(K::ScrollUp, 4, row as u16), Instant::now());
    assert_eq!(line(&e).0, "saveas");
    e.frame(30, 12);
    e.mouse(ev(K::Down(B::Left), 4, row as u16), Instant::now());
    assert_eq!((line(&e).0.as_str(), e.wild.is_none()), ("split", true));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn winheight_applies_to_every_way_of_entering_a_window() {
    let heights = |e: &mut Editor| {
        e.frame(40, 21);
        e.win_rects().iter().map(|(_, r)| r.h).collect::<Vec<_>>()
    };
    let mut e = ed(&lines(30));
    heights(&mut e);
    feed(&mut e, ":sp\n:sp\n:set wh=12\n");
    assert_eq!(heights(&mut e), [6, 6, 8]);
    // `:q` leaves the window: the one entered gets its rows.
    feed(&mut e, ":q\n");
    assert!(heights(&mut e)[0] >= 13 || heights(&mut e).len() == 2);
    let h = heights(&mut e);
    assert_eq!(h.iter().sum::<usize>(), 20);
    assert!(h[0] >= 13, "{h:?}");
    // The command line window, left with Enter, too.
    let mut e = ed(&lines(30));
    heights(&mut e);
    feed(&mut e, ":sp\n:set wh=12\n");
    feed(&mut e, "q:\x1b");
    feed(&mut e, ":q\n");
    assert!(heights(&mut e)[0] >= 13);
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn fuzzy_completion_orders_by_score_and_drags_clamp_at_the_minimum() {
    use crossterm::event::{MouseButton as B, MouseEvent, MouseEventKind as K};
    // The better match comes first: a start of word beats letters spread out.
    let mut e = ed("a");
    feed(&mut e, ":set wop=fuzzy\n");
    let items = |e: &Editor, l: &str| e.candidates(l).map(|c| c.items).unwrap_or_default();
    let got = items(&e, "undl");
    assert_eq!(got.first().map(String::as_str), Some("undolist"), "{got:?}");
    let got = items(&e, "set tw");
    assert!(!got.is_empty() && got.iter().all(|o| o.chars().any(|c| c == 'w')), "{got:?}");
    let got = items(&e, "set smc");
    assert_eq!(got.first().map(String::as_str), Some("smartcase"), "{got:?}");
    assert!(items(&e, "qqqq").is_empty());
    // A drag of a status row to the far end or past the top stops at the least size.
    let ev = |kind, x: u16, y: u16| MouseEvent { kind, column: x, row: y, modifiers: KeyModifiers::NONE };
    let t = std::time::Instant::now();
    let mut e = ed(&lines(30));
    e.frame(31, 21);
    feed(&mut e, ":set ls=2\n:sp\n");
    e.frame(31, 21);
    let first = e.win_rects()[0].1;
    let status = (first.y + first.h - 1) as u16;
    e.mouse(ev(K::Down(B::Left), 3, status), t);
    e.mouse(ev(K::Drag(B::Left), 3, 200), t);
    e.mouse(ev(K::Up(B::Left), 3, 200), t);
    e.frame(31, 21);
    let r = e.win_rects();
    assert_eq!((r[0].1.h, r[1].1.h), (18, 2), "the other window keeps two rows");
    e.mouse(ev(K::Down(B::Left), 3, 17), t);
    e.mouse(ev(K::Drag(B::Left), 3, 0), t);
    e.mouse(ev(K::Up(B::Left), 3, 0), t);
    e.frame(31, 21);
    assert_eq!(e.win_rects()[0].1.h, 2, "and so does the one dragged up");
    // A drag that starts on a text cell and a click with nothing under it do not resize.
    let before = e.win_rects();
    e.mouse(ev(K::Drag(B::Left), 3, 10), t);
    e.mouse(ev(K::Down(B::Left), 3, 60), t);
    assert_eq!(e.win_rects(), before);
}
