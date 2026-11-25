use super::{registers::*, render::*, *};

fn ed(s: &str) -> Editor {
    Editor::new(Document::new(s), PathBuf::from("/nonexistent/pt-edit-test"))
}

/// Feeds keys; `\x1b` is Esc, `\n` Enter, `\x7f` Backspace, `\t` Tab, `\x04`/`\x12`/`\x15` Ctrl+D/R/U.
/// Returns false if the editor asked to quit.
fn feed(e: &mut Editor, keys: &str) -> bool {
    keys.chars().all(|c| {
        e.key(match c {
            '\x1b' => KeyCode::Esc.into(),
            '\n' => KeyCode::Enter.into(),
            '\x7f' => KeyCode::Backspace.into(),
            '\t' => KeyCode::Tab.into(),
            '\x04' | '\x12' | '\x15' => KeyEvent::new(KeyCode::Char((c as u8 + b'a' - 1) as char), KeyModifiers::CONTROL),
            c => KeyCode::Char(c).into(),
        })
    })
}

fn text(e: &Editor) -> String {
    let t = e.doc.text();
    t.slice(0..t.len()).into_owned()
}

fn run(s: &str, keys: &str) -> Editor {
    let mut e = ed(s);
    assert!(feed(&mut e, keys));
    e
}

fn pos(e: &Editor) -> Pos {
    (e.line, e.col)
}

/// Unnamed register as `(text, linewise)`.
fn reg(e: &Editor) -> (String, bool) {
    e.regs.get('"').map_or_else(Default::default, |r| (r.text.clone(), r.kind == RegKind::Line))
}

#[test]
fn gutter_fits_the_widest_number() {
    assert_eq!(gutter_width(1), 2);
    assert_eq!(gutter_width(9), 2);
    assert_eq!(gutter_width(10), 3);
    assert_eq!(gutter_width(999), 4);
    assert_eq!(gutter_width(1000), 5);
}

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
    e.rows = 10;
    feed(&mut e, "\x04");
    assert_eq!(e.line, 5);
    feed(&mut e, "\x15\x15");
    assert_eq!(e.line, 0);
}

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

#[test]
fn undo_clamps_the_cursor() {
    let mut e = run("ab", "Acdef\x1b");
    assert_eq!(pos(&e), (0, 5));
    feed(&mut e, "u");
    assert_eq!(pos(&e), (0, 1));
}

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

#[test]
fn save_writes_and_cleans() {
    let dir = env_dir();
    let path = dir.join("save.txt");
    let mut e = Editor::new(Document::new("a\nb"), path.clone());
    assert!(!feed(&mut e, "dd:wq\n"));
    assert_eq!(fs::read_to_string(&path).unwrap(), "b");
    let mut e = Editor::new(Document::new("a"), path.clone());
    feed(&mut e, "x:w\n");
    assert!(!e.is_dirty());
    assert!(!feed(&mut e, ":q\n"));
    fs::remove_dir_all(dir).unwrap();
}

fn env_dir() -> PathBuf {
    let dir = std::env::temp_dir().join(format!("pt-edit-test-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    dir
}

#[test]
fn command_line_editing_and_goto() {
    let e = run("a\nb\nc", ":3\n");
    assert_eq!((pos(&e), &e.mode), ((2, 0), &Mode::Normal));
    assert_eq!(run("a\nb\nc", ":99\n").line, 2);
    assert_eq!(run("a", ":foo\n").msg, "Not an editor command: foo");
    assert_eq!(run("a\nb", ":x\x7f2\n").line, 1);
    assert_eq!(run("a", ":\x7f").mode, Mode::Normal);
    assert_eq!(run("a", ":q\x1b").mode, Mode::Normal);
    assert_eq!(run("a", ":\n").mode, Mode::Normal);
}

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

#[test]
fn esc_and_unknown_keys_cancel_pending() {
    let e = run("a\nb", "d\x1bj");
    assert_eq!((text(&e).as_str(), e.line), ("a\nb", 1));
    assert_eq!(text(&run("a\nb", "dzj")), "a\nb");
    assert_eq!(run("a", "3").pending, "3");
}

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
    assert_eq!(text(&run("  \t a", "<<")), "\t a");
    // Each is one undo step.
    assert_eq!(text(&run("a\nb", "2>>u")), "a\nb");
    assert_eq!(text(&run("abc", "3~u")), "abc");
}

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
    let dir = std::env::temp_dir().join(format!("pt-edit-{name}-{}", std::process::id()));
    fs::create_dir_all(&dir).unwrap();
    dir
}

#[test]
fn reload_from_disk() {
    let dir = temp_dir("reload");
    let path = dir.join("f.txt");
    fs::write(&path, "one\r\ntwo").unwrap();
    let mut e = Editor::open(path.clone(), None).unwrap();
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
    // The `--eol` override survives a reload.
    let mut e = Editor::open(path.clone(), Some(LineEnding::Cr)).unwrap();
    feed(&mut e, ":e!\n");
    assert_eq!(e.doc.eol(), LineEnding::Cr);
    fs::remove_dir_all(&dir).unwrap();
    feed(&mut e, ":e!\n");
    assert_eq!(text(&e), "");
    let mut e = Editor::open(dir.join("missing-dir/f"), None).unwrap();
    fs::create_dir_all(dir.join("missing-dir/f")).unwrap();
    feed(&mut e, ":e!\n");
    assert!(e.msg.starts_with("Reload failed"), "{}", e.msg);
    fs::remove_dir_all(&dir).unwrap();
}

#[cfg(unix)]
#[test]
fn save_keeps_permissions_and_symlinks() {
    use std::os::unix::fs::{PermissionsExt, symlink};
    let dir = temp_dir("perm");
    let path = dir.join("f.txt");
    fs::write(&path, "a").unwrap();
    fs::set_permissions(&path, fs::Permissions::from_mode(0o640)).unwrap();
    let link = dir.join("link.txt");
    symlink(&path, &link).unwrap();
    let mut e = Editor::open(link.clone(), None).unwrap();
    feed(&mut e, "rb:w\n");
    assert_eq!(e.msg, "Saved (LF)");
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
                    Style::Reverse => format!("[{}]", s.text),
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

#[test]
fn frame_shows_relative_numbers_status_and_cursor() {
    let (rows, cursor, bar) = snapshot("a\nbc\nd", "jl", 58, 5);
    assert_eq!(rows[..4], ["1 a", "2 bc", "1 d", ""]);
    assert_eq!(rows[4], "[ NORMAL | /nonexistent/pt-edit-test | Ln 2, Col 2 | LF |  ]");
    assert_eq!((cursor, bar), ((3, 1), false));
    let (rows, _, bar) = snapshot("a", "ix", 30, 2);
    assert_eq!((rows[1].as_str(), bar), ("[ INSERT | /nonexistent/pt-edit]", true));
    assert!(snapshot("a", "V", 12, 2).0[1].starts_with("[ V-LINE"));
    assert!(snapshot("a", "2d", 80, 2).0[1].contains("| LF | 2d "));
}

#[test]
fn frame_scrolls_vertically() {
    let s: String = (1..=20).map(|i| format!("l{i}\n")).collect();
    let (rows, cursor, _) = snapshot(&s, "10j", 20, 4);
    assert_eq!(rows[..3], [" 2 l9", " 1 l10", "11 l11"]);
    assert_eq!(cursor, (3, 2));
}

#[test]
fn frame_highlights_the_visual_selection() {
    assert_eq!(snapshot("abcd", "lvl", 20, 2).0[0], "1 a[bc]d");
    assert_eq!(snapshot("ab\ncd", "lvj", 20, 3).0[..2], ["1 a[b ]", "2 [cd]"]);
    assert_eq!(snapshot("a\n\nb", "jV", 20, 4).0[..3], ["1 a", "2 [ ]", "1 b"]);
}

#[test]
fn frame_renders_wide_chars_tabs_and_controls() {
    assert_eq!(snapshot("\tx\x01", "", 20, 2).0[0], "1     x?");
    assert!(!snapshot("\tx", "l", 20, 2).2);
    assert_eq!(snapshot("\tx", "l", 20, 2).1, (6, 0));
    // Text area of 4 cells: the cursor char is always fully visible; a cut wide char shows as a space.
    let (rows, cursor, _) = snapshot("日本語abc", "", 6, 2);
    assert_eq!((rows[0].as_str(), cursor), ("1 日本", (2, 0)));
    let (rows, cursor, _) = snapshot("日本語abc", "ll", 6, 2);
    assert_eq!((rows[0].as_str(), cursor), ("1 本語", (4, 0)));
    let (rows, cursor, _) = snapshot("日本語abc", "lll", 6, 2);
    assert_eq!((rows[0].as_str(), cursor), ("1  語a", (5, 0)));
    // Combining marks take no cell.
    assert_eq!(snapshot("e\u{301}x", "", 20, 2).0[0], "1 e\u{301}x");
    assert_eq!(snapshot("e\u{301}x", "ll", 20, 2).1, (3, 0));
}

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

#[test]
fn draw_emits_text_and_cursor_shape() {
    let mut e = run("hello", "");
    let mut out = Vec::new();
    draw(&e.frame(20, 2), &mut out).unwrap();
    let out = String::from_utf8(out).unwrap();
    assert!(out.contains("hello") && out.contains("\x1b[2 q"), "{out:?}");
}

#[test]
fn cursor_line_is_padded_and_drawn_on_its_background() {
    let mut e = run("a\nb日\nc", "j");
    let f = e.frame(10, 4);
    assert_eq!(f.cursor_line, Some(1));
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
    assert_eq!(e.frame(10, 4).cursor_line, Some(2));
}

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
    assert_eq!(run(s, "50%").line, 1);
    assert_eq!(run(s, "100%").line, 3);
    assert_eq!(run(s, "1%").line, 0);
    assert_eq!(run(s, "500%").line, 3);
}

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
    feed(&mut e, "n");
    assert_eq!(pos(&e), (0, 0));
    assert_eq!(pos(&run(s, "ll2*")), (1, 0));
    // From blanks: the next word in the line.
    assert_eq!(pos(&run("  foo x foo", "*")), (0, 8));
    assert_eq!(run("  ..", "*").msg, "No identifier under cursor");
    assert_eq!(text(&run("a b a", "d*")), "a");
}

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

fn lines(n: usize) -> String {
    (1..=n).map(|i| format!("l{i}")).collect::<Vec<_>>().join("\n")
}

#[test]
fn screen_line_motions_and_scrolling() {
    let mut e = ed(&lines(20));
    e.frame(10, 6);
    let mut at = |keys: &str| {
        feed(&mut e, keys);
        e.line
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

#[test]
fn undo_puts_the_cursor_on_the_change() {
    let e = run("a\nb\nc\nd", "Gddggu");
    assert_eq!(pos(&e), (3, 0));
    let e = run("abc def", "wdwgg0u");
    assert_eq!(pos(&e), (0, 4));
    let e = run("abc def", "wdw0u\x12");
    assert_eq!(pos(&e), (0, 3));
}

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
    feed(&mut e, "\"*p");
    assert_eq!(text(&e), "abc\nabc");
}

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
}

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
    assert_eq!(text(&e), "\tx\n  \t  ");
    // Colors: palette per background, overrides by index.
    let draw_out = |keys: &str| {
        let mut e = run("a", keys);
        let mut out = Vec::new();
        draw(&e.frame(10, 2), &mut out).unwrap();
        String::from_utf8(out).unwrap()
    };
    assert!(draw_out("").contains("\x1b[48;5;236m"));
    assert!(draw_out(":set bg=light\n").contains("\x1b[48;5;254m"));
    assert!(draw_out(":set clbg=17 cnufg=18\n").contains("\x1b[38;5;18m\x1b[48;5;17m"));
    let mut e = ed("a");
    e.set_background(Background::Light);
    assert_eq!(e.frame(10, 2).palette, options::Palette::new(Background::Light));
}

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
    assert_eq!((pos(&e), e.msg.as_str()), ((1, 1), "search hit TOP, continuing at BOTTOM"));
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

#[test]
fn substitute_lines_and_flags() {
    let s = "a a\na a\na a";
    assert_eq!(text(&run(s, ":s/a/b/\n")), "b a\na a\na a");
    assert_eq!(text(&run(s, ":s/a/b/g\n")), "b b\na a\na a");
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
    assert_eq!(run(s, ":0s/a/z/\n").msg, "Invalid range");
    assert_eq!(run(s, ":'qs/a/z/\n").msg, "Mark not set");
    assert_eq!(run(s, ":s/a/z/q\n").msg, "Trailing characters: q");
    // `.` does not repeat it: it repeats the `x` before.
    assert_eq!(text(&run("a a a", "x:s/a/z/\nw.")), " z ");
    // Undo after a substitute and a normal edit: separate steps.
    assert_eq!(text(&run("ab", ":s/a/z/\nxu")), "zb");
}

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

#[test]
fn char_info_and_byte_motions() {
    let s = "ab é\nfoo bar\n";
    let e = run(s, "j\x07");
    assert_eq!(e.msg, "\"/nonexistent/pt-edit-test\" 3 lines --66%--");
    assert_eq!(run(s, "x\x07").msg, "\"/nonexistent/pt-edit-test\" [Modified] 3 lines --33%--");
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
