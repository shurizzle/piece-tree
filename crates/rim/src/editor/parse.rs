//! Normal-mode key grammar.

use std::{iter::Peekable, str::Chars};

use crossterm::event::{KeyCode, KeyEvent, KeyModifiers};

/// Caps counts so a typo like `99999999999p` cannot exhaust memory.
pub(super) const MAX_COUNT: usize = 1_000_000;

/// Normal-mode keys after `normal_char` mapping: Ctrl+<letter> is its control char (Ctrl+D `\x04`,
/// Ctrl+U `\x15`, ...; Tab is Ctrl+I `\x09`), Ctrl+^ is `\x1e`.
pub(super) const MOTIONS: &str = "hjklwbe0^$gG\x04\x15nNfFtT;,%*#HML`'|";
/// Ctrl+R redo, Ctrl+V block, Ctrl+A/X numbers, Ctrl+G file info, Ctrl+W windows, Ctrl+^ alternate
/// buffer, Ctrl+O/Ctrl+I jumps, Ctrl+E/Ctrl+Y lines and Ctrl+F/Ctrl+B pages of scroll.
pub(super) const COMMANDS: &str = "iaIAoOxDCJpPRu\x12:/?vV\x16~r.\x01\x18mqz@S\x07&\x17\x1e\x0f\x09\x05\x19\x06\x02]";
/// Keys followed by a char argument.
pub(super) const ARG_KEYS: &str = "fFtTr`'mqz@\x17]";
/// Keys acting on the selection in Visual mode; any other key is parsed as a motion.
pub(super) const VISUAL_KEYS: &str = "dxcsyJ<>~uUoIAvV\x16:";
/// `g<c>` motions and commands, as keys `g_key(c)`.
pub(super) const G_MOTIONS: &str = "onNjk";
pub(super) const G_COMMANDS: &str = "-+\x07a8&viJpP;,";

/// Internal key for `g<c>`: a private-use char, so it never collides with a typed key.
pub(super) const fn g_key(c: char) -> char {
    match char::from_u32(0xE100 + c as u32) {
        Some(k) => k,
        None => panic!("g keys are ASCII"),
    }
}

/// The `c` of a `g<c>` key.
fn g_of(k: char) -> Option<char> {
    (0xE100..0xE180).contains(&(k as u32)).then(|| char::from_u32(k as u32 - 0xE100).expect("ASCII"))
}

/// Whether `k` (a parsed key) is a motion.
pub(super) fn is_motion(k: char) -> bool {
    MOTIONS.contains(k) || g_of(k).is_some_and(|c| G_MOTIONS.contains(c))
}

/// Internal operator chars for `gu`, `gU`, `g~`.
pub(super) const OP_LOWER: char = '\u{E000}';
pub(super) const OP_UPPER: char = '\u{E001}';
pub(super) const OP_TOGGLE: char = '\u{E002}';

/// One parsed Normal-mode command.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(super) struct Cmd {
    /// Register from a `"x` prefix.
    pub reg: Option<char>,
    pub count: Option<usize>,
    pub op: Option<char>,
    /// A motion or command; `op == Some(key)` means a doubled operator (`dd`, `guu`); `gg` is `'g'`;
    /// with an operator, `i`/`a` is a text object named by `arg`.
    pub key: char,
    pub arg: Option<char>,
}

#[derive(Debug, PartialEq, Eq)]
pub(super) enum Parse {
    Incomplete,
    Invalid,
    Cmd(Cmd),
}

pub(super) fn valid_reg(c: char) -> bool {
    c.is_ascii_alphanumeric() || matches!(c, '"' | '+' | '*' | '=' | '/')
}

/// Parses pending keys: `["x] [count] cmd [arg]` or `["x] [count] op [count] (motion [arg] | (i|a) obj | op)`.
/// The register may also follow the count (`3"ap`).
pub(super) fn parse(s: &str) -> Parse {
    let mut it = s.chars().peekable();
    let mut reg = None;
    if let Err(p) = register(&mut it, &mut reg) {
        return p;
    }
    let c1 = count(&mut it);
    if reg.is_none()
        && let Err(p) = register(&mut it, &mut reg)
    {
        return p;
    }
    let Some(c) = it.next() else { return Parse::Incomplete };
    let op = match c {
        'd' | 'c' | 'y' | '<' | '>' => Some(c),
        'g' => match it.peek() {
            None => return Parse::Incomplete,
            Some('u') => Some(OP_LOWER),
            Some('U') => Some(OP_UPPER),
            Some('~') => Some(OP_TOGGLE),
            Some(_) => None,
        },
        _ => None,
    };
    let (op, c2, key) = if let Some(op) = op {
        if c == 'g' {
            it.next();
        }
        let suffix = match op {
            OP_LOWER => Some('u'),
            OP_UPPER => Some('U'),
            OP_TOGGLE => Some('~'),
            _ => None,
        };
        let c2 = count(&mut it);
        let Some(m) = it.next() else { return Parse::Incomplete };
        let key = if m == op || Some(m) == suffix {
            op
        } else if m == 'g' && suffix.is_some() {
            // `gugu` is doubled, `gugg` lowercases to the first line.
            match it.peek() {
                None => return Parse::Incomplete,
                Some(&n) if Some(n) == suffix => {
                    it.next();
                    op
                }
                Some(_) => 'g',
            }
        } else if MOTIONS.contains(m) || matches!(m, 'i' | 'a') {
            m
        } else {
            return Parse::Invalid;
        };
        (Some(op), c2, key)
    } else if MOTIONS.contains(c) || COMMANDS.contains(c) {
        (None, None, c)
    } else {
        return Parse::Invalid;
    };
    let mut key = key;
    if key == 'g' {
        match it.next() {
            None => return Parse::Incomplete,
            Some('g') => {}
            Some(c) if G_MOTIONS.contains(c) || (op.is_none() && G_COMMANDS.contains(c)) => key = g_key(c),
            Some(_) => return Parse::Invalid,
        }
    }
    let arg = if ARG_KEYS.contains(key) || (op.is_some() && matches!(key, 'i' | 'a')) {
        let Some(a) = it.next() else { return Parse::Incomplete };
        Some(a)
    } else {
        None
    };
    let count = match (c1, c2) {
        (None, None) => None,
        (a, b) => Some((a.unwrap_or(1) * b.unwrap_or(1)).min(MAX_COUNT)),
    };
    Parse::Cmd(Cmd { reg, count, op, key, arg })
}

fn register(it: &mut Peekable<Chars>, reg: &mut Option<char>) -> Result<(), Parse> {
    if it.peek() == Some(&'"') {
        it.next();
        match it.next() {
            None => return Err(Parse::Incomplete),
            Some(r) if valid_reg(r) => *reg = Some(r),
            Some(_) => return Err(Parse::Invalid),
        }
    }
    Ok(())
}

/// A leading `0` is the motion, not a count.
pub(super) fn count(it: &mut Peekable<Chars>) -> Option<usize> {
    if !matches!(it.peek(), Some('1'..='9')) {
        return None;
    }
    let mut n = 0;
    while let Some(d) = it.peek().and_then(|c| c.to_digit(10)) {
        it.next();
        n = (n * 10 + d as usize).min(MAX_COUNT);
    }
    Some(n)
}

/// Pending keys without their counts, so `.` can apply a new one (`2dd` then `3.` is `3dd`).
pub(super) fn strip_counts(s: &str) -> String {
    let mut it = s.chars().peekable();
    let mut out = String::new();
    loop {
        if it.next_if_eq(&'"').is_some() {
            out.push('"');
            out.extend(it.next());
        } else if count(&mut it).is_none() {
            break;
        }
    }
    let Some(c) = it.next() else { return out };
    out.push(c);
    let case_op = c == 'g' && matches!(it.peek(), Some('u' | 'U' | '~'));
    if case_op {
        out.extend(it.next());
    }
    if case_op || matches!(c, 'd' | 'c' | 'y' | '<' | '>') {
        count(&mut it);
    }
    out.extend(it);
    out
}

pub(super) fn normal_char(key: KeyEvent) -> Option<char> {
    Some(match key.code {
        KeyCode::Char(c) if key.modifiers.contains(KeyModifiers::CONTROL) => match c {
            'a'..='z' => char::from(c as u8 - b'a' + 1),
            // Terminals send Ctrl+^ as 0x1e, which crossterm reports as Ctrl+6.
            '6' | '^' => '\x1e',
            _ => return None,
        },
        KeyCode::Char(c) => c,
        // Terminals send Ctrl+I as Tab.
        KeyCode::Tab => '\x09',
        KeyCode::Left => 'h',
        KeyCode::Down => 'j',
        KeyCode::Up => 'k',
        KeyCode::Right => 'l',
        KeyCode::Home => '0',
        KeyCode::End => '$',
        KeyCode::PageDown => '\x04',
        KeyCode::PageUp => '\x15',
        _ => return None,
    })
}

/// Special keys kept in register text (a macro), as private-use chars from U+E200.
const SPECIAL: [KeyCode; 9] =
    [KeyCode::Left, KeyCode::Right, KeyCode::Up, KeyCode::Down, KeyCode::Home, KeyCode::End, KeyCode::PageUp, KeyCode::PageDown, KeyCode::Delete];

/// A key as register text: chars as themselves, Ctrl+<letter> as its control char, Esc `\x1b`,
/// Enter `\r`, Backspace `\x7f`, Tab `\t`, other special keys as private-use chars. None for a
/// key that has no text (F keys).
pub(super) fn key_char(key: KeyEvent) -> Option<char> {
    Some(match key.code {
        KeyCode::Char(_) if key.modifiers.contains(KeyModifiers::CONTROL) => normal_char(key)?,
        KeyCode::Char(c) => c,
        KeyCode::Esc => '\x1b',
        KeyCode::Enter => '\r',
        KeyCode::Backspace => '\x7f',
        KeyCode::Tab => '\t',
        code => char::from_u32(0xE200 + SPECIAL.iter().position(|&k| k == code)? as u32).expect("private-use char"),
    })
}

/// Keys of register text (a macro, `:normal`): the inverse of `key_char`; `\n` is Enter too.
pub(super) fn text_keys(s: &str) -> Vec<KeyEvent> {
    s.chars()
        .map(|c| match c {
            '\x1b' => KeyCode::Esc.into(),
            '\r' | '\n' => KeyCode::Enter.into(),
            '\x7f' => KeyCode::Backspace.into(),
            c if (0xE200..0xE200 + SPECIAL.len() as u32).contains(&(c as u32)) => SPECIAL[c as usize - 0xE200].into(),
            c => char_key(c),
        })
        .collect()
}

/// Inverse of `normal_char`, for replaying stored commands.
pub(super) fn char_key(c: char) -> KeyEvent {
    let ctrl = |c| KeyEvent::new(KeyCode::Char(c), KeyModifiers::CONTROL);
    match c {
        '\x09' => KeyCode::Tab.into(),
        '\x01'..='\x1a' => ctrl(char::from(c as u8 - 1 + b'a')),
        '\x1e' => ctrl('6'),
        c => KeyCode::Char(c).into(),
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn cmd(count: Option<usize>, op: Option<char>, key: char, arg: Option<char>) -> Parse {
        Parse::Cmd(Cmd { reg: None, count, op, key, arg })
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn counts_operators_and_prefixes() {
        assert_eq!(parse("3dd"), cmd(Some(3), Some('d'), 'd', None));
        assert_eq!(parse("d2w"), cmd(Some(2), Some('d'), 'w', None));
        assert_eq!(parse("2d3w"), cmd(Some(6), Some('d'), 'w', None));
        assert_eq!(parse("10j"), cmd(Some(10), None, 'j', None));
        assert_eq!(parse("0"), cmd(None, None, '0', None));
        assert_eq!(parse("d0"), cmd(None, Some('d'), '0', None));
        assert_eq!(parse("gg"), cmd(None, None, 'g', None));
        assert_eq!(parse("dgg"), cmd(None, Some('d'), 'g', None));
        assert_eq!(parse("99999999999999999999x"), cmd(Some(MAX_COUNT), None, 'x', None));
        assert_eq!(parse("fx"), cmd(None, None, 'f', Some('x')));
        assert_eq!(parse("d2tx"), cmd(Some(2), Some('d'), 't', Some('x')));
        assert_eq!(parse("3r "), cmd(Some(3), None, 'r', Some(' ')));
        assert_eq!(parse("3>>"), cmd(Some(3), Some('>'), '>', None));
        assert_eq!(parse("<j"), cmd(None, Some('<'), 'j', None));
        assert_eq!(parse("diw"), cmd(None, Some('d'), 'i', Some('w')));
        assert_eq!(parse("2ca("), cmd(Some(2), Some('c'), 'a', Some('(')));
        assert_eq!(parse("i"), cmd(None, None, 'i', None));
        assert_eq!(parse("zz"), cmd(None, None, 'z', Some('z')));
        assert_eq!(parse("ma"), cmd(None, None, 'm', Some('a')));
        assert_eq!(parse("d'a"), cmd(None, Some('d'), '\'', Some('a')));
        assert_eq!(parse("3@@"), cmd(Some(3), None, '@', Some('@')));
        assert_eq!(parse("\x16"), cmd(None, None, '\x16', None));
        assert_eq!(parse("3g-"), cmd(Some(3), None, g_key('-'), None));
        assert_eq!(parse("g+"), cmd(None, None, g_key('+'), None));
        assert_eq!(parse("dg-"), Parse::Invalid);
        assert!(!is_motion(g_key('-')) && is_motion('w') && !is_motion('x'));
        for s in ["", "3", "d", "d2", "g", "dg", "f", "dt", "r", "di", "z", "\"", "\"a", "gu", "gug"] {
            assert_eq!(parse(s), Parse::Incomplete, "{s:?}");
        }
        for s in ["Z", "dz", "dx", "gx", "dy", "dr", "\"!", "gux"] {
            assert_eq!(parse(s), Parse::Invalid, "{s:?}");
        }
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn case_operators() {
        assert_eq!(parse("guw"), cmd(None, Some(OP_LOWER), 'w', None));
        assert_eq!(parse("gUiw"), cmd(None, Some(OP_UPPER), 'i', Some('w')));
        assert_eq!(parse("2g~~"), cmd(Some(2), Some(OP_TOGGLE), OP_TOGGLE, None));
        assert_eq!(parse("guu"), cmd(None, Some(OP_LOWER), OP_LOWER, None));
        assert_eq!(parse("gugu"), cmd(None, Some(OP_LOWER), OP_LOWER, None));
        assert_eq!(parse("gUgU"), cmd(None, Some(OP_UPPER), OP_UPPER, None));
        assert_eq!(parse("gugg"), cmd(None, Some(OP_LOWER), 'g', None));
        assert_eq!(parse("gu3j"), cmd(Some(3), Some(OP_LOWER), 'j', None));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn registers() {
        let reg = |r, count, op, key| Parse::Cmd(Cmd { reg: Some(r), count, op, key, arg: None });
        assert_eq!(parse("\"ayy"), reg('a', None, Some('y'), 'y'));
        assert_eq!(parse("\"a3p"), reg('a', Some(3), None, 'p'));
        assert_eq!(parse("3\"+p"), reg('+', Some(3), None, 'p'));
        assert_eq!(parse("\"Add"), reg('A', None, Some('d'), 'd'));
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn strips_counts() {
        assert_eq!(strip_counts("2dd"), "dd");
        assert_eq!(strip_counts("2d3w"), "dw");
        assert_eq!(strip_counts("\"a3p"), "\"ap");
        assert_eq!(strip_counts("3\"ap"), "\"ap");
        assert_eq!(strip_counts("2gu3w"), "guw");
        assert_eq!(strip_counts("d0"), "d0");
        assert_eq!(strip_counts("3x"), "x");
        assert_eq!(strip_counts("2f3"), "f3");
        assert_eq!(strip_counts(""), "");
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn keys_round_trip() {
        for c in ['a', '\x1e'].into_iter().chain('\x01'..='\x1a') {
            assert_eq!(normal_char(char_key(c)), Some(c));
        }
        assert_eq!(char_key('\x09'), KeyCode::Tab.into());
        // Register text round trip, special keys included.
        let keys: Vec<KeyEvent> = [KeyCode::Char('a'), KeyCode::Esc, KeyCode::Enter, KeyCode::Backspace, KeyCode::Tab, KeyCode::Left, KeyCode::Delete]
            .into_iter()
            .map(KeyEvent::from)
            .chain([KeyEvent::new(KeyCode::Char('w'), KeyModifiers::CONTROL)])
            .collect();
        let text: String = keys.iter().map(|&k| key_char(k).unwrap()).collect();
        assert_eq!(text, "a\x1b\r\x7f\t\u{e200}\u{e208}\x17");
        assert_eq!(text_keys(&text), keys);
        assert_eq!(text_keys("\n"), [KeyEvent::from(KeyCode::Enter)]);
        assert_eq!(key_char(KeyCode::F(1).into()), None);
        assert_eq!(normal_char(KeyEvent::new(KeyCode::Char('1'), KeyModifiers::CONTROL)), None);
        assert_eq!(normal_char(KeyCode::F(1).into()), None);
    }
}
