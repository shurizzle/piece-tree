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
    assert_eq!((text(&e).as_str(), e.msg.as_str()), ("abc", "Already at oldest change"));
    feed(&mut e, "9\x12");
    assert_eq!((text(&e).as_str(), e.msg.as_str()), ("", "Already at newest change"));
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
    assert_eq!(e.msg, "No write since last change (add ! to override)");
    assert!(!feed(&mut e, ":q!\n"));
    // The save target does not exist: write-and-quit stays open.
    let mut e = run("a", "x:wq\n");
    assert!(e.msg.starts_with("Save failed"));
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
    assert_eq!(run("a", ":foo\n").msg, "Not an editor command: foo");
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
    assert_eq!((pos(&e), e.msg.as_str()), ((0, 0), "search hit BOTTOM, continuing at TOP"));
    feed(&mut e, "N");
    assert_eq!((pos(&e), e.msg.as_str()), ((2, 0), "search hit TOP, continuing at BOTTOM"));
    // Empty pattern reuses the last one.
    feed(&mut e, "gg/\n");
    assert_eq!(pos(&e), (1, 4));
    assert_eq!(text(&run(s, "/bar\nggdn")), "bar foo\nfoo");
    assert_eq!(run(s, "/zzz\n").msg, "Pattern not found: zzz");
    assert_eq!(run(s, "n").msg, "No previous search pattern");
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
    assert_eq!((text(&e).as_str(), e.msg.as_str()), ("one", "No write since last change (add ! to override)"));
    feed(&mut e, ":e!\n");
    assert_eq!((text(&e).as_str(), e.is_dirty(), e.msg.as_str()), ("one\ntwo", false, "Reloaded (CRLF)"));
    assert_eq!(pos(&e), (0, 0));
    feed(&mut e, "u");
    assert_eq!(e.msg, "Already at oldest change");
    fs::write(&path, "x").unwrap();
    feed(&mut e, ":e\n");
    assert_eq!(text(&e), "x");
    fs::remove_dir_all(&dir).unwrap();
    feed(&mut e, ":e!\n");
    assert_eq!(text(&e), "");
    let mut e = Editor::open(dir.join("missing-dir/f")).unwrap();
    fs::create_dir_all(dir.join("missing-dir/f")).unwrap();
    feed(&mut e, ":e!\n");
    assert!(e.msg.starts_with("Reload failed"), "{}", e.msg);
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
    assert_eq!(e.msg, format!("\"{}\" written (LF)", link.display()));
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
    assert_eq!(rows[4], "[ NORMAL | /nonexistent/rim-test | Ln 2, Col 2 | LF |      ]");
    assert_eq!((cursor, bar), ((3, 1), false));
    let (rows, _, bar) = snapshot("a", "ix", 30, 2);
    assert_eq!((rows[1].as_str(), bar), ("[ INSERT | /nonexistent/rim-tes]", true));
    assert!(snapshot("a", "V", 12, 2).0[1].starts_with("[ V-LINE"));
    assert!(snapshot("a", "2d", 80, 2).0[1].contains("| LF | 2d "));
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
    assert_eq!((e.win.line, e.msg.as_str()), (0, "At start of change list"));
    feed(&mut e, "g,");
    assert_eq!(e.win.line, 2);
    feed(&mut e, "g,");
    assert_eq!(e.msg, "At end of change list");
    assert_eq!(run("a", "g;").msg, "Change list is empty");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn gv_gi_gj_gp_and_bracket_p() {
    // gv: the last selection again, shifted by an edit before it.
    let e = run("abc def", "lvl\x1b$0iXY\x1bgv");
    assert_eq!((e.mode == Mode::Visual(VKind::Char), e.anchor, pos(&e)), (true, (0, 3), (0, 4)));
    assert_eq!(run("ab\ncd", "Vj\x1bgggvd").buf.doc.text().len(), 0);
    assert_eq!(run("a", "gv").msg, "No previous Visual selection");
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
    assert_eq!(e.msg, "Already at oldest change");
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
    assert_eq!((e.msg.as_str(), e.buf.opts.tabstop), ("i insert | Esc normal | :w save | :q quit", 4));
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
    assert!(e.msg.ends_with("line 2: Invalid argument: maybe; line 3: only :set, :syntax and :highlight are allowed"), "{}", e.msg);
    // Errors name their lines; the other lines still apply.
    fs::write(&path, "set nu\nmap x y\nset foo\nset rnu!").unwrap();
    let mut e = ed("a");
    e.load_init(&path);
    assert_eq!(e.msg, format!("{}: line 2: only :set, :syntax and :highlight are allowed; line 3: Unknown option: foo", path.display()));
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
    assert_eq!((pos(&e), e.msg.as_str()), ((0, 0), "search hit BOTTOM, continuing at TOP"));
    feed(&mut e, "#");
    assert_eq!((pos(&e), e.msg.as_str()), ((1, 0), "search hit TOP, continuing at BOTTOM"));
    feed(&mut e, "n"); // follows the last direction (backward)
    assert_eq!(pos(&e), (0, 9));
    assert_eq!(pos(&run(s, "ll2*")), (1, 0));
    // From blanks: the next word in the line.
    assert_eq!(pos(&run("  foo x foo", "*")), (0, 8));
    assert_eq!(run("  ..", "*").msg, "No identifier under cursor");
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
    assert_eq!((pos(&e), e.msg.as_str()), ((1, 3), "search hit TOP, continuing at BOTTOM"));
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
    assert_eq!(run(s, "/cd/x\n").msg, "Invalid search offset: x");
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
    assert_eq!((text(&e).as_str(), e.msg.as_str()), (s, "6 matches on 2 lines"));
    assert_eq!(run(s, ":s/q/x/n\n").msg, "Pattern not found: q");
    // Confirm: y n a q l, one undo step, per-line without `g`.
    let mut e = run(s, ":%s/a/x/c\n");
    assert_eq!((pos(&e), e.msg.as_str()), ((0, 0), "replace with x (y/n/a/q/l)?"));
    feed(&mut e, "y");
    assert_eq!(pos(&e), (2, 0));
    feed(&mut e, "n");
    assert_eq!((text(&e).as_str(), &e.mode), ("xa aa\nb\naa", &Mode::Normal));
    assert_eq!(e.msg, "1 substitution on 1 line");
    feed(&mut e, "u");
    assert_eq!(text(&e), s);
    let mut e = run(s, ":%s/a/x/gc\nyn");
    feed(&mut e, "z"); // other keys are ignored
    assert_eq!(e.mode, Mode::Confirm);
    feed(&mut e, "a");
    assert_eq!((text(&e).as_str(), e.msg.as_str()), ("xa xx\nb\nxx", "5 substitutions on 2 lines"));
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
    assert_eq!(run(s, ":s/q/x/c\n").msg, "Pattern not found: q");
    // Empty matches advance; replacements that grow the text keep the range.
    assert_eq!(text(&run("ab", ":s/x*/-/gc\nyyy")), "-a-b-");
    assert_eq!(text(&run("ab\ncd", ":1,1s/b/XYZ/gc\ny")), "aXYZ\ncd");
    // `&`, `:&`, `:&&`, `g&`.
    assert_eq!(run(s, "&").msg, "No previous substitute");
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
    assert_eq!(run(s, "gn").msg, "No previous search pattern");
    assert_eq!(text(&run(s, "/foo\ngg0dgn")), " bar foo bar foo");
    // On the match, it is that match; `gN` goes backward.
    assert_eq!(text(&run(s, "/foo\ngg0wwdgn")), "foo bar  bar foo");
    assert_eq!(text(&run(s, "/bar\n$dgN")), "foo bar foo  foo");
    assert_eq!(text(&run(s, "/foo\nggcgnX\x1b")), "X bar foo bar foo");
    // `.` repeats `cgn` on the next match.
    assert_eq!(text(&run(s, "/foo\nggcgnX\x1b..")), "X bar X bar X");
    assert_eq!(pos(&run(s, "/bar\ngg0gn")), (0, 6));
    assert_eq!(run(s, "/bar\ngg0gn").mode, Mode::Visual(VKind::Char));
    assert_eq!(run(s, "/zzz\ngn").msg, "Pattern not found: zzz");
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
    assert_eq!(run(s, "'z").msg, "Mark not set");
    assert_eq!(run(s, "m1").msg, "Invalid mark name");
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
    assert_eq!((text(&e).as_str(), e.msg.as_str()), ("9223372036854775807", "Number out of range"));
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
    assert_eq!(run("a", "\"zp").msg, "Nothing in register z");
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
    assert_eq!((text(&e).as_str(), e.msg.as_str()), ("abc", "Clipboard read failed: the terminal did not answer OSC 52"));
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
    assert_eq!(run("a", "qa@aq@a").msg, "Macro recursion too deep");
    assert_eq!(run("a", "qaix\x1b@aq@a").msg, "Macro recursion too deep");
    assert_eq!(run("a", "q1").msg, "Invalid register name");
    assert_eq!(run("a", "@z").msg, "Register z is empty");
    assert_eq!(run("a", "@@").msg, "No previously used register");
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
    assert!(rows[2].starts_with("[ V-BLOCK"));
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
    assert_eq!(e.msg, "tabstop=4");
    feed(&mut e, ":set foo\n");
    assert_eq!(e.msg, "Unknown option: foo");
    assert!(run("a", ":set\n").msg.starts_with("number  relativenumber  cursorline  tabstop=4"));
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
    assert_eq!((pos(&e), e.msg.as_str()), ((1, 3), "search hit TOP, continuing at BOTTOM"));
    feed(&mut e, "G$n");
    assert_eq!((pos(&e), e.msg.as_str()), ((0, 1), "search hit BOTTOM, continuing at TOP"));
    assert_eq!(pos(&run(s, "/(?i)C\n")), (1, 0));
    assert_eq!(pos(&run(s, "/^a\n")), (0, 0));
    assert_eq!(pos(&run(s, "w/^a\n")), (0, 0));
    assert_eq!(pos(&run(s, "/a$\n")), (1, 5));
    // Search from an empty line looks past its line break.
    assert_eq!(pos(&run("x\n\ny", "j/y\n")), (2, 0));
    // An invalid pattern keeps the last search.
    let mut e = run(s, "/b\n/(\n");
    assert!(e.msg.starts_with("Invalid pattern: "), "{}", e.msg);
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
    assert_eq!((text(&e).as_str(), pos(&e), e.msg.as_str()), ("x\n  z\nz\nb", (2, 0), "2 substitutions on 2 lines"));
    feed(&mut e, "u");
    assert_eq!(text(&e), s);
    feed(&mut e, "\x12");
    assert_eq!(text(&e), "x\n  z\nz\nb");
    assert_eq!(run("aa", ":s/a/b/g\n").msg, "2 substitutions on 1 line");
    assert_eq!(run("a", ":s/a/b/\n").msg, "1 substitution on 1 line");
    // The cursor goes where the last substitution ends, past the line breaks it added.
    assert_eq!(pos(&run("a,b\nc,d", concat!(r":%s/,/\n/", "\n"))), (3, 0));
    let e = run(s, ":%s/q/z/\n");
    assert_eq!((text(&e).as_str(), e.msg.as_str()), (s, "Pattern not found: q"));
    assert_eq!(run(s, ":%s/(/z/\n").msg.split(':').next(), Some("Invalid pattern"));
    assert_eq!(run(s, ":s//z/\n").msg, "No previous regular expression");
    assert_eq!(run(s, ":9s/a/z/\n").msg, "Invalid range");
    // Line 0 counts as line 1 (vim).
    assert_eq!(text(&run(s, ":0s/a/z/\n")), text(&run(s, ":1s/a/z/\n")));
    assert_eq!(run(s, ":'qs/a/z/\n").msg, "Mark not set");
    assert_eq!(run(s, ":s/a/z/q\n").msg, "Trailing characters: q");
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
    assert_eq!((text(&e).as_str(), e.msg.as_str()), ("a", "Already at oldest change"));
    feed(&mut e, "2g+");
    assert_eq!(text(&e), "ac");
    feed(&mut e, "g+");
    assert_eq!(e.msg, "Already at newest change");
    feed(&mut e, ":earlier 2\n");
    assert_eq!(text(&e), "a");
    feed(&mut e, ":later\n");
    assert_eq!(text(&e), "ab");
    feed(&mut e, ":undo 2\n");
    assert_eq!(text(&e), "ac");
    feed(&mut e, ":undo 0\n");
    assert_eq!(text(&e), "a");
    feed(&mut e, ":u\n");
    assert_eq!(e.msg, "Already at oldest change");
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
        assert!(e.msg.starts_with("Invalid argument: "), "{bad:?}: {}", e.msg);
    }
    feed(&mut e, ":undolist\n");
    assert!(e.msg.starts_with("at 2 of 2 | 1:1:") && e.msg.contains(" 2:1:"), "{}", e.msg);
    // Marks follow time travel too.
    let e = run("x\ny", "jmaggOz\x1bg-g+`a");
    assert_eq!(pos(&e), (2, 0));
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn char_info_and_byte_motions() {
    let s = "ab é\nfoo bar\n";
    let e = run(s, "j\x07");
    assert_eq!(e.msg, "\"/nonexistent/rim-test\" 3 lines --66%--");
    assert_eq!(run(s, "x\x07").msg, "\"/nonexistent/rim-test\" [Modified] 3 lines --33%--");
    let e = run(s, "jw\x07".replace('\x07', "g\x07").as_str());
    assert_eq!(e.msg, "Col 5 of 7; Line 2 of 3; Word 4 of 4; Char 10 of 13; Byte 11 of 14");
    assert_eq!(run(s, "g\x07").msg, "Col 1 of 4; Line 1 of 3; Word 1 of 4; Char 1 of 13; Byte 1 of 14");
    assert_eq!(run(s, "$ga").msg, "<é> 233, Hex 00e9, Oct 351");
    assert_eq!(run(s, "$g8").msg, "c3 a9");
    assert_eq!(run(s, "Gga").msg, "NUL");
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
    assert_eq!(run(s, ":goto x\n").msg, "Invalid argument: x");
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
    assert_eq!(kept, fresh);
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
    assert_eq!(run(s, ":/zz/d\n").msg, "Pattern not found: zz");
    assert_eq!(run(s, ":\\/d\n").msg, "No previous regular expression");
    assert_eq!(run(s, ":9d\n").msg, "Invalid range");
    // `/pat/` sets the last search; `^` matches at line starts.
    let e = run("xa\na", ":/^a/\n");
    assert_eq!((e.win.line, e.last_search.as_ref().map(|s| s.pat.as_str())), (1, Some("^a")));
    assert_eq!(pos(&run(s, ":'q\n")), (0, 0));
    assert_eq!(run(s, ":'q\n").msg, "Mark not set");
    assert_eq!(run(s, ":3|\n").msg, "Not an editor command: 3|");
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn ex_delete_yank_move_copy() {
    let s = "a\nb\nc\nd\ne";
    let e = run(s, ":2,3d\n");
    assert_eq!((reg(&e), pos(&e)), (("b\nc\n".into(), true), (1, 0)));
    let e = run(s, ":2d x 2\n");
    assert_eq!((text(&e).as_str(), e.regs.get('x').map(|r| r.text.as_str())), ("a\nd\ne", Some("b\nc\n")));
    assert_eq!(run(s, ":d %\n").msg, "Invalid register: %");
    let e = run(s, "j:3,4y\n");
    assert_eq!((text(&e).as_str(), reg(&e), pos(&e)), (s, ("c\nd\n".into(), true), (1, 0)));
    let e = run(s, ":2,3m0\n");
    assert_eq!((text(&e).as_str(), e.win.line), ("b\nc\na\nd\ne", 1));
    let e = run(s, ":1m$\n");
    assert_eq!((text(&e).as_str(), e.win.line), ("b\nc\nd\ne\na", 4));
    let e = run(s, ":1m2\n");
    assert_eq!((text(&e).as_str(), e.win.line), ("b\na\nc\nd\ne", 1));
    assert_eq!(text(&run(s, ":2,3m1\n")), s);
    assert_eq!(run(s, ":1,2m1\n").msg, "Cannot move a range of lines into itself");
    assert_eq!(run(s, ":m\n").msg, "Invalid address");
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
    assert_eq!(run("a", ":> 0\n").msg, "Positive count required");
    let s = "a\n  b\nc";
    assert_eq!(text(&run(s, ":j\n")), "a b\nc");
    assert_eq!(text(&run(s, ":1,3j\n")), "a b c");
    assert_eq!(text(&run(s, ":j!\n")), "a  b\nc");
    assert_eq!(text(&run(s, ":j 3\n")), "a b c");
    assert_eq!(text(&run(s, ":3j\n")), s);
    let e = run("a\nb\nc", ":2p\n");
    assert_eq!((e.msg.as_str(), e.win.line), ("b", 1));
    assert_eq!(run("a\nb\nc", ":=\n").msg, "3");
    assert_eq!(run("a\nb\nc", "j:.=\n").msg, "2");
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
    assert_eq!(run("a", ":norm\n").msg, "Argument required");
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
    assert_eq!((e.msg.as_str(), e.win.line), ("ab", 2));
    assert_eq!(run(s, ":g/zz/d\n").msg, "Pattern not found: zz");
    assert_eq!(run(s, ":v/./d\n").msg, "Pattern found in every line: .");
    assert_eq!(run(s, ":g\n").msg, "Regular expression missing from :global");
    assert_eq!(run(s, ":g/a/g/b/d\n").msg, "Cannot do :global recursive");
    assert_eq!(run(s, ":g/a/s/a/x/c\n").msg, "The c flag cannot be used here");
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
    assert_eq!(run(s, ":sort x\n").msg, "Invalid argument: x");
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
    assert!(e.msg.starts_with("Can't open file /nonexistent/rim"), "{}", e.msg);
    let mut e = Editor::new(Document::new("a\nb\nc"), own.clone());
    feed(&mut e, &format!(":2,3w {}\n", out.display()));
    assert_eq!(fs::read_to_string(&out).unwrap(), "b\nc");
    feed(&mut e, &format!(":1w {}\n", out.display()));
    assert_eq!(e.msg, "File exists (add ! to override)");
    feed(&mut e, &format!(":1w! {}\n", out.display()));
    assert_eq!(fs::read_to_string(&out).unwrap(), "a\n");
    feed(&mut e, &format!(":w >> {}\n", out.display()));
    assert_eq!(fs::read_to_string(&out).unwrap(), "a\na\nb\nc");
    feed(&mut e, ":2w\n");
    assert_eq!(e.msg, "Use ! to write partial buffer");
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
    assert_eq!(e.msg, "File exists (add ! to override)");
    feed(&mut e, &format!(":sav {}\n", new.display()));
    assert_eq!((fs::read_to_string(&new).unwrap().as_str(), e.buf.path.as_path(), e.is_dirty()), ("xy", new.as_path(), false));
    feed(&mut e, ":sav\n");
    assert_eq!(e.msg, "Argument required");
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
    assert_eq!(run("x", ":retab 0\n").msg, "Invalid argument: 0");
    let mut e = ed("a\nb");
    feed(&mut e, ":set ff=dos\n");
    assert_eq!((e.buf.doc.eol(), e.is_dirty()), (LineEnding::CrLf, true));
    feed(&mut e, ":set ff?\n");
    assert_eq!(e.msg, "fileformat=dos");
    feed(&mut e, ":set ff=mac nu\n");
    assert_eq!((e.buf.doc.eol(), e.buf.opts.number), (LineEnding::Cr, true));
    feed(&mut e, ":set ff=unix fileformat\n");
    assert_eq!((e.msg.as_str(), e.is_dirty()), ("fileformat=unix", false));
    assert_eq!(run("a", ":set ff=xx\n").msg, "Invalid argument: ff=xx");
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
    assert!(e.msg.starts_with(&format!("{pieces} pieces, ")), "{}", e.msg);
    assert!(e.msg.ends_with("4 bytes, 4 chars, 1 lines, 5 versions"), "{}", e.msg);
    feed(&mut e, ":compact\n");
    assert_eq!((e.msg.clone(), text(&e)), (format!("{pieces} pieces -> 1"), "bdfh".into()));
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
    assert_eq!(e.msg, "compactat=0");
    assert_eq!(run("a", ":set compactat=x\n").msg, "Invalid argument: compactat=x");
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
    assert_eq!(e.msg, "filetype=python");
    feed(&mut e, ":set ft=foo\n:set ft?\n");
    assert_eq!(e.msg, "filetype=foo");
    // A new buffer detects its own type instead of inheriting the current one.
    feed(&mut e, &format!(":e {}\n:set ft?\n", c.display()));
    assert_eq!(e.msg, "filetype=");
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
    assert_eq!(e.msg, format!("  1 %a \"{}\" line 2 |   2 #  + \"{}\" line 2", a.display(), b.display()));
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
        (":b x", "Invalid buffer number: x"),
        (":bn x", "Invalid count: x"),
        (":bd x", "Invalid buffer number: x"),
        (":bd 9", "Buffer 9 does not exist"),
        (":bd 2", "No write since last change for buffer 2 (add ! to override)"),
    ] {
        feed(&mut e, &format!("{cmd}\n"));
        assert_eq!(e.msg, msg, "{cmd}");
    }
    // The last window refuses to quit while a hidden buffer is modified.
    feed(&mut e, ":q\n");
    assert_eq!(e.msg, format!("No write since last change for buffer 2 \"{}\" (add ! to override)", b.display()));
    assert!(feed(&mut e, ":qa\n"));
    feed(&mut e, ":b 2\n:bd!\n");
    assert_eq!((e.buf.id, e.buffers.len(), e.alt), (1, 0, None));
    feed(&mut e, ":bd\n");
    assert_eq!(e.msg, "Cannot delete the last buffer");
    feed(&mut e, "\x1e");
    assert_eq!(e.msg, "No alternate file");
    feed(&mut e, ":e /nonexistent/dir/x\n");
    assert_eq!(e.buf.id, 3, "a missing file is a new empty buffer");
    feed(&mut e, ":e /\n");
    assert!(e.msg.starts_with("\"/\": "), "{}", e.msg);
    // `:bd` of another buffer moves the windows showing it.
    feed(&mut e, ":sp\n:b 1\n:bd 3\n");
    assert_eq!((e.buf.id, e.windows[0].buf), (1, 1));
    assert!(!feed(&mut e, ":qa!\n"));
    fs::remove_dir_all(dir).unwrap();
}

#[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
#[test]
fn windows_split_move_and_close() {
    let mut e = ed("one\ntwo\nthree");
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
            "[ NORMAL |           ]",
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
    assert_eq!(e.msg, "Cannot close last window");
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
    assert_eq!((e.buf.id, e.buffers.len()), (1, 0), "{}", e.msg);
    feed(&mut e, "x:w\n:e\n");
    assert_eq!(e.msg, "Reloaded (LF)");
    // A write ending later does not cover the message of a later command, but replaces its own.
    feed(&mut e, "ix\x1b:w\n:ls\n");
    assert!(e.wait_saves());
    assert!(e.msg.starts_with("  1 %a"), "{}", e.msg);
    feed(&mut e, ":w\n");
    assert!(e.wait_saves());
    assert_eq!(e.msg, format!("\"{}\" written (LF)", a.display()));
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
    assert_eq!(e.msg, "syntax on");
    feed(&mut e, ":syntax off\n:syn\n");
    assert_eq!(e.msg, "syntax off");
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
    assert_eq!(e.msg, "Invalid argument: maybe");
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
    assert_eq!(ex::complete("hig"), Some((0, vec!["highlight".into()])));
    assert_eq!(ex::complete("hi"), Some((0, vec!["highlight".into()])));
    let mut e = ed("fn a() {}");
    e.buf.opts.filetype = "rust".into();
    feed(&mut e, ":hi @keywrod ctermfg=5\n");
    assert_eq!(e.msg, "Unknown capture: @keywrod");
    feed(&mut e, ":hi @keyword ctermfg=5\n:hi @keyword\n");
    assert_eq!(e.msg, "@keyword ctermfg=5 cterm=NONE");
    feed(&mut e, ":highlight Foo ctermfg=x\n");
    assert_eq!(e.msg, "Invalid argument: ctermfg=x");
    feed(&mut e, ":hi link Foo @keyword\n:hi Foo\n");
    assert_eq!(e.msg, "Foo links to @keyword");
    feed(&mut e, ":hi clear\n:hi @keyword\n");
    assert_eq!(e.msg, "@keyword ctermfg=176 cterm=NONE");
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
