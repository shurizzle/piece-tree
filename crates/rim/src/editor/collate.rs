//! `strcoll()` of the C library, as Neovim's `:sort l` and `sort(list, 'l')` use it: the collation of the locale the
//! environment names (`LC_ALL`, `LC_COLLATE`, `LANG`).

use std::cmp::Ordering;
use std::ffi::CString;
use std::sync::Once;

/// Compares `a` and `b` with `strcoll`; a string with a NUL (which a C string cannot hold) compares as bytes.
pub(super) fn strcoll(a: &str, b: &str) -> Ordering {
    static INIT: Once = Once::new();
    INIT.call_once(|| {
        // SAFETY: `setlocale` is given a valid NUL-terminated string; it is called once, before any `strcoll`, and rim
        // reads no other locale-dependent C function.
        unsafe {
            libc::setlocale(libc::LC_COLLATE, c"".as_ptr());
        }
    });
    let (Ok(x), Ok(y)) = (CString::new(a), CString::new(b)) else { return a.as_bytes().cmp(b.as_bytes()) };
    // SAFETY: both pointers are valid NUL-terminated strings that live through the call.
    unsafe { libc::strcoll(x.as_ptr(), y.as_ptr()).cmp(&0) }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg_attr(miri, ignore = "calls the C library (setlocale, strcoll)")]
    #[test]
    fn compares_like_the_c_library() {
        assert_eq!(strcoll("a", "a"), Ordering::Equal);
        assert_eq!(strcoll("a", "b"), Ordering::Less);
        // A NUL cannot be in a C string: bytes.
        assert_eq!(strcoll("a\0b", "a\0c"), Ordering::Less);
    }
}
