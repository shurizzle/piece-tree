//! Key names in strings (`"\<C-W>"`): a port of `find_special_key` and its helpers (`keycodes.c`), with the names of
//! `keycodes.lua`. A name that is one plain character gives it; one that Neovim stores as the bytes
//! `K_SPECIAL ...` (function keys, `<BS>`, `<Del>`, a modifier that stays such as `<M-a>`) gives `Key::Special`.

use super::expr::vim_str2nr;
use super::keytable::{KEY_NAMES, MODIFIER_KEYS};

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

/// `get_special_key_code`: the key of the name at the start of `name` (`keycodes.lua`, any case): a char, or `Some(None)` for a
/// key with a code of its own; `None` when there is no such name.
fn get_special_key_code(name: &str) -> Option<Option<char>> {
    let b = name.as_bytes();
    if b.starts_with(b"t_") && b.len() > 3 {
        return Some(None);
    }
    let len = b.iter().take_while(|&&c| ascii_isident(c)).count();
    let name = &name[..len];
    KEY_NAMES.iter().find(|(n, _, _)| n.eq_ignore_ascii_case(name)).map(|&(_, k, _)| u32::try_from(k).ok().and_then(char::from_u32))
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

/// `K_S_TAB` and `K_ZERO`.
const K_S_TAB: i32 = -17003;

/// `find_special_key_in_table`: the name `get_special_key_name` gives to key `c` (an alternative name is never used).
fn table_name(c: i32) -> Option<&'static str> {
    KEY_NAMES.iter().find(|&&(_, k, alt)| k == c && !alt).map(|&(n, _, _)| n)
}

/// `simplify_key`: a key with a modifier that has a code of its own (`<S-F1>`, `<C-Left>`) loses the modifier.
fn simplify_key(key: i32, mods: &mut u32) -> i32 {
    if *mods & (SHIFT | CTRL) == 0 {
        return key;
    }
    // TAB is a special case.
    if key == 9 && *mods & SHIFT != 0 {
        *mods &= !SHIFT;
        return K_S_TAB;
    }
    for &(mask, with, without) in MODIFIER_KEYS {
        if key == without && *mods & mask != 0 {
            *mods &= !mask;
            return with;
        }
    }
    key
}

/// `unsimplify_key`, the inverse of `simplify_key`.
fn unsimplify_key(c: i32, mods: &mut u32) -> i32 {
    if c >= 0 {
        return c;
    }
    for &(mask, with, without) in MODIFIER_KEYS {
        if c == with {
            *mods |= mask;
            return without;
        }
    }
    c
}

/// `find_key_len` of `string_to_key`: `<name>` as the number Neovim gives the key (a char, or the code of a key of its own), with
/// the length of the name; a modifier that stays (`<M-a>`, `<C-F1>`) makes it no key.
pub(in crate::editor) fn option_key(arg: &str) -> Option<(i64, usize)> {
    let (key, len) = match find_special_key(arg, true) {
        Ok(Some(found)) => found,
        _ => return None,
    };
    if let Key::Char(c) = key {
        return Some((i64::from(u32::from(c)), len));
    }
    // A key with a code of its own: the modifiers in front of the name, then the name.
    let inner = arg[..len].trim_start_matches('<').trim_end_matches('>');
    let inner = inner.strip_prefix('*').unwrap_or(inner).as_bytes();
    let (mut mods, mut i) = (0, 0);
    while i + 1 < inner.len() && inner[i + 1] == b'-' && name_to_mod_mask(inner[i]) != 0 {
        mods |= name_to_mod_mask(inner[i]);
        i += 2;
    }
    let number = match get_special_key_code(std::str::from_utf8(&inner[i..]).ok()?)? {
        Some(c) => c as i32,
        None => KEY_NAMES.iter().find(|(n, _, _)| n.as_bytes().eq_ignore_ascii_case(&inner[i..])).map(|&(_, k, _)| k)?,
    };
    let number = simplify_key(number, &mut mods);
    (mods == 0).then_some((i64::from(number), len))
}

/// Whether `option_value2string` writes the key of 'wildchar' by its name: a key with a code of its own, or one in the table.
pub(in crate::editor) fn key_has_name(n: i64) -> bool {
    n < 0 || i32::try_from(n).ok().and_then(table_name).is_some()
}

/// `get_special_key_name(c, 0)`: `<Tab>`, `<S-F1>`, `<C-Left>`, `<t_xx>` for a key that has no name here.
pub(in crate::editor) fn special_key_name(c: i64) -> String {
    let mut c = i32::try_from(c).unwrap_or(0);
    let mut mods = 0;
    // A key that stands for a normal character.
    if c < 0 && (-c) & 0xff == 242 {
        c = ((-c) >> 8) & 0xff;
    }
    c = unsimplify_key(c, &mut mods);
    let table = table_name(c);
    if c > 0 && c < 0x80 && table.is_none() && c < i32::from(b' ') {
        c += i32::from(b'@');
        mods |= CTRL;
    }
    let mut out = String::from("<");
    // `mod_mask_table`: Alt, Meta, Ctrl, Shift.
    for (mask, letter) in [(ALT, 'M'), (0x10, 'T'), (CTRL, 'C'), (SHIFT, 'S')] {
        if mods & mask == mask {
            out.push(letter);
            out.push('-');
        }
    }
    match table {
        Some(name) => out.push_str(name),
        None if c < 0 => {
            // `<t_xx>` with the two bytes of the code: the string ends at a NUL one.
            let bytes = [u8::try_from(-c & 0xff).unwrap_or(0), u8::try_from((-c >> 8) & 0xff).unwrap_or(0)];
            out.push_str("t_");
            // The bytes are text when they are UTF-8 and `<xx>` (what `transchar_byte` writes) when they are not.
            let mut rest: &[u8] = &bytes[..bytes.iter().take_while(|&&b| b != 0).count()];
            while !rest.is_empty() {
                match std::str::from_utf8(rest) {
                    Ok(s) => {
                        out.push_str(s);
                        break;
                    }
                    Err(e) => {
                        out.push_str(std::str::from_utf8(&rest[..e.valid_up_to()]).unwrap_or_default());
                        let bad = e.error_len().unwrap_or(rest.len() - e.valid_up_to());
                        for b in &rest[e.valid_up_to()..e.valid_up_to() + bad] {
                            out.push_str(&format!("<{b:02x}>"));
                        }
                        rest = &rest[e.valid_up_to() + bad..];
                    }
                }
            }
        }
        None => {
            let ch = u32::try_from(c).ok().and_then(char::from_u32).unwrap_or('\0');
            out.push_str(&if (' '..='~').contains(&ch) || u32::from(ch) > 0x7f { ch.to_string() } else { format!("^{}", char::from((ch as u8) ^ 0x40)) });
        }
    }
    // The `>` goes after the NUL of an unknown key, so it is not part of the string then.
    if !(table.is_none() && c < 0 && (-c >> 8) & 0xff == 0) {
        out.push('>');
    }
    out
}

/// The key a number of 'wildchar' is, as the terminal reports it: the code and the modifiers (`None` for a key rim never gets).
pub(in crate::editor) fn key_event(n: i64) -> Option<(crossterm::event::KeyCode, crossterm::event::KeyModifiers)> {
    use crossterm::event::{KeyCode, KeyModifiers};
    let mut mods = 0;
    let base = unsimplify_key(i32::try_from(n).ok()?, &mut mods);
    let name = table_name(base)?;
    let code = match name.to_ascii_lowercase().as_str() {
        "up" | "xup" | "kup" => KeyCode::Up,
        "down" | "xdown" | "kdown" => KeyCode::Down,
        "left" | "xleft" | "kleft" => KeyCode::Left,
        "right" | "xright" | "kright" => KeyCode::Right,
        "home" | "xhome" | "zhome" | "khome" => KeyCode::Home,
        "end" | "xend" | "zend" | "kend" => KeyCode::End,
        "pageup" | "kpageup" => KeyCode::PageUp,
        "pagedown" | "kpagedown" => KeyCode::PageDown,
        "insert" | "kinsert" => KeyCode::Insert,
        "del" | "kdel" => KeyCode::Delete,
        "bs" => KeyCode::Backspace,
        "tab" => KeyCode::Tab,
        "kenter" => KeyCode::Enter,
        f => KeyCode::F(f.strip_prefix('f').or_else(|| f.strip_prefix("xf"))?.parse().ok()?),
    };
    let modifiers = [(SHIFT, KeyModifiers::SHIFT), (CTRL, KeyModifiers::CONTROL)].iter().filter(|(m, _)| mods & m != 0).fold(KeyModifiers::NONE, |a, (_, k)| a | *k);
    Some((code, modifiers))
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
