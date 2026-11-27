//! Key names in strings (`"\<C-W>"`): a port of `find_special_key` and its helpers (`keycodes.c`), with the names of
//! `keycodes.lua`. A name that is one plain character gives it; one that Neovim stores as the bytes
//! `K_SPECIAL ...` (function keys, `<BS>`, `<Del>`, a modifier that stays such as `<M-a>`) gives `Key::Special`.

use super::expr::vim_str2nr;

#[derive(Debug, PartialEq)]
pub(super) enum Key {
    Char(char),
    Special,
}

const SHIFT: u32 = 0x02;
const CTRL: u32 = 0x04;
const ALT: u32 = 0x08;

/// `name_to_mod_mask`.
fn name_to_mod_mask(c: u8) -> u32 {
    match c.to_ascii_uppercase() {
        b'M' | b'A' => ALT,
        b'T' => 0x10,
        b'C' => CTRL,
        b'S' => SHIFT,
        b'2' => 0x20,
        b'3' => 0x40,
        b'4' => 0x60,
        b'D' => 0x80,
        _ => 0,
    }
}

/// The names of `keycodes.lua`, lower case (the lookup ignores case), with the character when the key is one.
const NAMES: &[(&str, Option<char>)] = &[
    ("space", Some(' ')),
    ("tab", Some('\t')),
    ("nl", Some('\n')),
    ("newline", Some('\n')),
    ("linefeed", Some('\n')),
    ("lf", Some('\n')),
    ("cr", Some('\r')),
    ("return", Some('\r')),
    ("enter", Some('\r')),
    ("bs", None),
    ("backspace", None),
    ("esc", Some('\u{1b}')),
    ("escape", Some('\u{1b}')),
    ("csi", Some('\u{9b}')),
    ("bar", Some('|')),
    ("bslash", Some('\\')),
    ("del", None),
    ("delete", None),
    ("kdel", None),
    ("kpperiod", None),
    ("up", None),
    ("down", None),
    ("left", None),
    ("right", None),
    ("xup", None),
    ("xdown", None),
    ("xleft", None),
    ("xright", None),
    ("kup", None),
    ("kp8", None),
    ("kdown", None),
    ("kp2", None),
    ("kleft", None),
    ("kp4", None),
    ("kright", None),
    ("kp6", None),
    ("f1", None),
    ("f2", None),
    ("f3", None),
    ("f4", None),
    ("f5", None),
    ("f6", None),
    ("f7", None),
    ("f8", None),
    ("f9", None),
    ("f10", None),
    ("f11", None),
    ("f12", None),
    ("f13", None),
    ("f14", None),
    ("f15", None),
    ("f16", None),
    ("f17", None),
    ("f18", None),
    ("f19", None),
    ("f20", None),
    ("f21", None),
    ("f22", None),
    ("f23", None),
    ("f24", None),
    ("f25", None),
    ("f26", None),
    ("f27", None),
    ("f28", None),
    ("f29", None),
    ("f30", None),
    ("f31", None),
    ("f32", None),
    ("f33", None),
    ("f34", None),
    ("f35", None),
    ("f36", None),
    ("f37", None),
    ("f38", None),
    ("f39", None),
    ("f40", None),
    ("f41", None),
    ("f42", None),
    ("f43", None),
    ("f44", None),
    ("f45", None),
    ("f46", None),
    ("f47", None),
    ("f48", None),
    ("f49", None),
    ("f50", None),
    ("f51", None),
    ("f52", None),
    ("f53", None),
    ("f54", None),
    ("f55", None),
    ("f56", None),
    ("f57", None),
    ("f58", None),
    ("f59", None),
    ("f60", None),
    ("f61", None),
    ("f62", None),
    ("f63", None),
    ("xf1", None),
    ("xf2", None),
    ("xf3", None),
    ("xf4", None),
    ("help", None),
    ("undo", None),
    ("find", None),
    ("select", None),
    ("insert", None),
    ("ins", None),
    ("kinsert", None),
    ("kp0", None),
    ("home", None),
    ("khome", None),
    ("kp7", None),
    ("xhome", None),
    ("zhome", None),
    ("end", None),
    ("kend", None),
    ("kp1", None),
    ("xend", None),
    ("zend", None),
    ("pageup", None),
    ("pagedown", None),
    ("kpageup", None),
    ("kp9", None),
    ("kpagedown", None),
    ("kp3", None),
    ("korigin", None),
    ("kp5", None),
    ("kplus", None),
    ("kpplus", None),
    ("kminus", None),
    ("kpminus", None),
    ("kdivide", None),
    ("kpdiv", None),
    ("kmultiply", None),
    ("kpmult", None),
    ("kenter", None),
    ("kpenter", None),
    ("kpoint", None),
    ("kcomma", None),
    ("kpcomma", None),
    ("kequal", None),
    ("kpequals", None),
    ("k0", None),
    ("k1", None),
    ("k2", None),
    ("k3", None),
    ("k4", None),
    ("k5", None),
    ("k6", None),
    ("k7", None),
    ("k8", None),
    ("k9", None),
    ("lt", Some('<')),
    ("mouse", None),
    ("leftmouse", None),
    ("leftmousenm", None),
    ("leftdrag", None),
    ("leftrelease", None),
    ("leftreleasenm", None),
    ("mousemove", None),
    ("middlemouse", None),
    ("middledrag", None),
    ("middlerelease", None),
    ("rightmouse", None),
    ("rightdrag", None),
    ("rightrelease", None),
    ("scrollwheelup", None),
    ("scrollwheeldown", None),
    ("scrollwheelright", None),
    ("scrollwheelleft", None),
    ("mousedown", None),
    ("mouseup", None),
    ("x1mouse", None),
    ("x1drag", None),
    ("x1release", None),
    ("x2mouse", None),
    ("x2drag", None),
    ("x2release", None),
    ("drop", None),
    ("nul", None),
    ("snr", None),
    ("plug", None),
    ("ignore", None),
    ("cmd", None),
];

/// `get_special_key_code`: the key of the name at the start of `name`, `None` when there is none.
fn get_special_key_code(name: &str) -> Option<Option<char>> {
    let b = name.as_bytes();
    if b.starts_with(b"t_") && b.len() > 3 {
        return Some(None);
    }
    let len = b.iter().take_while(|&&c| ascii_isident(c)).count();
    let name = name[..len].to_ascii_lowercase();
    NAMES.iter().find(|(n, _)| *n == name).map(|&(_, c)| c)
}

fn ascii_isident(c: u8) -> bool {
    c.is_ascii_alphanumeric() || c == b'_'
}

/// `extract_modifiers`: `<S-a>` is "A", `<C-H>` is 0x08; `None` for `<C-@>` (K_ZERO).
fn extract_modifiers(mut key: char, mods: &mut u32, simplify: bool) -> Option<char> {
    if *mods & SHIFT != 0 && key.is_ascii_alphabetic() {
        key = key.to_ascii_uppercase();
        if *mods & CTRL == 0 {
            *mods &= !SHIFT;
        }
    }
    if *mods & CTRL != 0 && key.is_ascii_alphabetic() {
        key = key.to_ascii_uppercase();
    }
    if simplify && *mods & CTRL != 0 && (('?'..='_').contains(&key) || key.is_ascii_alphabetic()) {
        key = ((key.to_ascii_uppercase() as u8) ^ 0x40) as char;
        *mods &= !CTRL;
        if key == '\0' {
            return None;
        }
    }
    Some(key)
}

/// `find_special_key` with `FSK_KEYCODE | FSK_IN_STRING`: `src` starts at the `<` and ends before the closing
/// quote. Returns the key and the length of the name, `Ok(None)` when it is not one; `Err` is the error
/// `emsg()` gives (the caller goes on with the `<` as it is).
pub(super) fn find_special_key(src: &str, simplify: bool) -> Result<Option<(Key, usize)>, &'static str> {
    const E_INVARG: &str = "E474: Invalid argument";
    let b = src.as_bytes();
    let g = |i: usize| b.get(i).copied().unwrap_or(0);
    if g(0) != b'<' {
        return Ok(None);
    }
    // `<*xxx>`: do not simplify (the caller passes `simplify` from `p[1] != '*'`).
    let s0 = usize::from(g(1) == b'*');
    let end = b.len() - 1;
    let char_len = |i: usize| src[i..].chars().next().map_or(1, char::len_utf8);
    let mut last_dash = s0;
    let mut bp = s0 + 1;
    while bp <= end && (g(bp) == b'-' || ascii_isident(g(bp))) {
        if g(bp) == b'-' {
            last_dash = bp;
            if bp < end {
                let l = char_len(bp + 1);
                // `<C-">` is not special in a string, `<M-\">` is.
                if end - bp > l && g(bp + 1) != b'"' && g(bp + l + 1) == b'>' {
                    bp += l;
                } else if end - bp > 2 && g(bp + 1) == b'\\' && g(bp + 2) == b'"' && g(bp + 3) == b'>' {
                    bp += 2;
                }
            }
        }
        if end - bp > 3 && g(bp) == b't' && g(bp + 1) == b'_' {
            bp += 3;
        } else if end - bp > 4 && src[bp..].len() >= 5 && src.is_char_boundary(bp + 5) && src[bp..bp + 5].eq_ignore_ascii_case("char-") {
            let (_, l) = vim_str2nr(&src[bp + 5..], true);
            if l == 0 {
                return Err(E_INVARG);
            }
            bp += l + 5;
            break;
        }
        bp += 1;
    }
    if bp > end || g(bp) != b'>' {
        return Ok(None);
    }
    let end_of_name = bp + 1;
    let mut mods = 0;
    bp = s0 + 1;
    while bp < last_dash {
        if g(bp) != b'-' {
            let bit = name_to_mod_mask(g(bp));
            if bit == 0 {
                break;
            }
            mods |= bit;
        }
        bp += 1;
    }
    if bp < last_dash {
        return Ok(None);
    }
    // `Some(None)`: a special key; `None`: not a key.
    let key: Option<Option<char>> = if src.is_char_boundary(last_dash + 1)
        && src[last_dash + 1..].len() >= 5
        && src.is_char_boundary(last_dash + 6)
        && src[last_dash + 1..last_dash + 6].eq_ignore_ascii_case("char-")
        && g(last_dash + 6).is_ascii_digit()
    {
        // `<Char-123>`, `<Char-033>`, `<Char-0x33>`.
        let (n, l) = vim_str2nr(&src[last_dash + 6..], true);
        if l == 0 {
            return Err(E_INVARG);
        }
        // A number that is no character is a key code of Neovim, bytes in a string.
        Some(u32::try_from(n).ok().and_then(char::from_u32).filter(|&c| c != '\0'))
    } else {
        let (off, l) = if g(last_dash + 1) == b'\\' && g(last_dash + 2) == b'"' { (2, 2) } else { (1, char_len(last_dash + 1)) };
        if mods != 0 && g(last_dash + l + 1) == b'>' {
            src[last_dash + off..].chars().next().map(Some)
        } else {
            get_special_key_code(&src[last_dash + off..])
        }
    };
    let Some(key) = key else { return Ok(None) };
    // A key with a special code stays special; `<S-Tab>` is the special `K_S_TAB`.
    let Some(mut ch) = key else { return Ok(Some((Key::Special, end_of_name))) };
    if ch == '\t' && mods & SHIFT != 0 {
        return Ok(Some((Key::Special, end_of_name)));
    }
    let Some(c) = extract_modifiers(ch, &mut mods, simplify) else { return Ok(Some((Key::Special, end_of_name))) };
    ch = c;
    // A modifier that is left (`<M-a>`, `<C-Space>`) is written as bytes before the key.
    Ok(Some((if mods == 0 { Key::Char(ch) } else { Key::Special }, end_of_name)))
}

#[cfg(test)]
mod tests {
    use super::*;

    fn key(s: &str) -> Option<(Key, usize)> {
        find_special_key(s, true).unwrap()
    }

    #[cfg_attr(miri, ignore = "safe editor logic or tree-sitter (C code Miri cannot run); the unsafe of rim is reached by the reader_* tests of syntax/tests.rs")]
    #[test]
    fn names_and_modifiers() {
        assert_eq!(key("<CR>"), Some((Key::Char('\r'), 4)));
        assert_eq!(key("<cr>x"), Some((Key::Char('\r'), 4)));
        assert_eq!(key("<C-H>"), Some((Key::Char('\u{8}'), 5)));
        assert_eq!(key("<c-h>"), Some((Key::Char('\u{8}'), 5)));
        assert_eq!(key("<S-a>"), Some((Key::Char('A'), 5)));
        assert_eq!(key("<C-]>"), Some((Key::Char('\u{1d}'), 5)));
        assert_eq!(key("<lt>"), Some((Key::Char('<'), 4)));
        assert_eq!(key("<Char-65>"), Some((Key::Char('A'), 9)));
        assert_eq!(key("<C-Space>"), Some((Key::Special, 9)));
        assert_eq!(key("<M-a>"), Some((Key::Special, 5)));
        assert_eq!(key("<C-@>"), Some((Key::Special, 5)));
        assert_eq!(key("<BS>"), Some((Key::Special, 4)));
        assert_eq!(key("<Foo>"), None);
        assert_eq!(key("<C-"), None);
        assert_eq!(find_special_key("<C-S-a>", false).unwrap(), Some((Key::Special, 7)));
        assert_eq!(find_special_key("<Char-x>", true), Err("E474: Invalid argument"));
    }
}
