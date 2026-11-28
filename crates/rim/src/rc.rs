//! A clone of `std::rc::Rc` without `Weak`, and `RcString`, a growable string that freezes into
//! an `Rc<str>` without copying its text: the strong count sits in front of the bytes, so the
//! allocation is already the one `Rc<str>` wants.

use std::alloc::{handle_alloc_error, Allocator, Global, Layout};
use std::borrow::{Borrow, Cow};
use std::cell::Cell;
use std::cmp::Ordering;
use std::convert::Infallible;
use std::error::Error;
use std::fmt;
use std::hash::{Hash, Hasher};
use std::iter::FusedIterator;
use std::marker::PhantomData;
use std::mem::ManuallyDrop;
use std::ops::{
    Add, AddAssign, Bound, Deref, DerefMut, Index, IndexMut, RangeBounds,
};
use std::ptr::{self, NonNull};
use std::str::{FromStr, Utf8Error};

/// The allocation: the strong count, then the value.
///
/// `repr(C)` puts the value at a known offset, which `Rc::<str>::from_str_in` needs to build the
/// box pointer from the allocation address and the byte length.
#[repr(C)]
struct RcBox<T: ?Sized> {
    strong: Cell<usize>,
    value: T,
}

/// `std::rc::Rc` without `Weak`.
pub struct Rc<T: ?Sized, A: Allocator = Global> {
    ptr: NonNull<RcBox<T>>,
    alloc: A,
    _marker: PhantomData<RcBox<T>>,
}

/// The layout of the box holding a value with layout `value`, and where the value starts in it.
///
/// `Layout::extend` aligns the offset only. A struct with an unsized tail is also padded to its
/// alignment at the end (`size_of_val` of a `RcBox<[u8]>` holding 3 bytes is 16, not 11), and
/// the allocation has to cover what `Layout::for_value` of the box reports.
fn box_layout(value: Layout) -> Option<(Layout, usize)> {
    let (layout, offset) = Layout::new::<Cell<usize>>().extend(value).ok()?;
    let align = layout.align();
    let size = layout.size().checked_add(align - 1)? & !(align - 1);
    Some((Layout::from_size_align(size, align).ok()?, offset))
}

impl<T, A: Allocator> Rc<T, A> {
    /// A new `Rc` holding `value`, allocated with `alloc`.
    pub fn new_in(value: T, alloc: A) -> Self {
        let layout = Layout::new::<RcBox<T>>();
        let ptr = match alloc.allocate(layout) {
            Ok(ptr) => ptr.cast::<RcBox<T>>(),
            Err(_) => handle_alloc_error(layout),
        };
        // SAFETY: `ptr` is a fresh allocation of the layout of `RcBox<T>`.
        unsafe { ptr::write(ptr.as_ptr(), RcBox { strong: Cell::new(1), value }) };
        Self { ptr, alloc, _marker: PhantomData }
    }
}

impl<T> Rc<T> {
    /// A new `Rc` holding `value`, allocated with `Global`.
    pub fn new(value: T) -> Self {
        Self::new_in(value, Global)
    }
}

impl<A: Allocator> Rc<str, A> {
    /// A new `Rc<str>` holding a copy of `s`, allocated with `alloc`.
    pub fn from_str_in(s: &str, alloc: A) -> Self {
        let (layout, offset) = box_layout(Layout::for_value(s)).expect("size overflow");
        let base = match alloc.allocate(layout) {
            Ok(ptr) => ptr,
            Err(_) => handle_alloc_error(layout),
        };
        // SAFETY: `base` is a fresh allocation of `layout` bytes, the box of a `RcBox<str>`;
        // `s` is UTF-8 and copied whole at the offset of the value.
        unsafe {
            let data = base.as_ptr().cast::<u8>().add(offset);
            ptr::copy_nonoverlapping(s.as_ptr(), data, s.len());
            ptr::write(base.as_ptr().cast::<Cell<usize>>(), Cell::new(1));
            let bytes = ptr::slice_from_raw_parts_mut(base.as_ptr().cast::<u8>(), s.len());
            // SAFETY: `RcBox` is `repr(C)` with a `Cell<usize>` before the tail, and `[u8]` and
            // `str` share size, alignment and byte-length metadata: the pointer of a
            // `RcBox<[u8]>` is the pointer of the `RcBox<str>` of the same bytes.
            let boxed = bytes as *mut RcBox<[u8]> as *mut RcBox<str>;
            Self { ptr: NonNull::new_unchecked(boxed), alloc, _marker: PhantomData }
        }
    }
}

impl<A: Allocator + Default> Rc<str, A> {
    /// The text of `v`, replacing the invalid sequences with `U+FFFD`: one allocation, whether `v`
    /// is valid or not.
    pub fn from_utf8_lossy(v: &[u8]) -> Self {
        match str::from_utf8(v) {
            Ok(s) => Self::from_str_in(s, A::default()),
            Err(_) => {
                // Slack for the replacement chars; the conversion shrinks what is left over.
                let mut out = RcString::with_capacity_in(v.len() + 2, A::default());
                out.push_utf8_lossy(v);
                out.into()
            }
        }
    }
}

impl<A: Allocator + Default> From<&str> for Rc<str, A> {
    fn from(s: &str) -> Self {
        Self::from_str_in(s, A::default())
    }
}

impl<T: ?Sized, A: Allocator> Rc<T, A> {
    /// The strong count, `Weak` included in `std`.
    pub fn strong_count(&self) -> usize {
        // SAFETY: a live `Rc` owns a valid box.
        unsafe { self.ptr.as_ref().strong.get() }
    }

    /// Whether `this` and `other` share the same allocation.
    pub fn ptr_eq(this: &Self, other: &Self) -> bool {
        ptr::eq(this.ptr.as_ptr(), other.ptr.as_ptr())
    }
}

impl<T: ?Sized, A: Allocator + Clone> Clone for Rc<T, A> {
    fn clone(&self) -> Self {
        // SAFETY: a live `Rc` owns a valid box.
        unsafe { self.ptr.as_ref().strong.set(self.strong_count() + 1) };
        Self { ptr: self.ptr, alloc: self.alloc.clone(), _marker: PhantomData }
    }
}

impl<T: ?Sized, A: Allocator> Deref for Rc<T, A> {
    type Target = T;

    fn deref(&self) -> &T {
        // SAFETY: a live `Rc` owns a valid box, and the value outlives the borrow of `self`.
        unsafe { &self.ptr.as_ref().value }
    }
}

impl<T: ?Sized, A: Allocator> Drop for Rc<T, A> {
    fn drop(&mut self) {
        // SAFETY: a live `Rc` owns a valid box. The layout is read before the value is dropped,
        // and deallocated with the allocator and the layout of the allocation.
        unsafe {
            let boxed = self.ptr.as_ref();
            let strong = boxed.strong.get() - 1;
            boxed.strong.set(strong);
            if strong == 0 {
                let layout = Layout::for_value(boxed);
                ptr::drop_in_place(self.ptr.as_ptr());
                self.alloc.deallocate(self.ptr.cast(), layout);
            }
        }
    }
}

impl<T: ?Sized + PartialEq, A: Allocator> PartialEq for Rc<T, A> {
    fn eq(&self, other: &Self) -> bool {
        **self == **other
    }
}

impl<T: ?Sized + Eq, A: Allocator> Eq for Rc<T, A> {}

impl<T: ?Sized + PartialOrd, A: Allocator> PartialOrd for Rc<T, A> {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        (**self).partial_cmp(&**other)
    }
}

impl<T: ?Sized + Ord, A: Allocator> Ord for Rc<T, A> {
    fn cmp(&self, other: &Self) -> Ordering {
        (**self).cmp(&**other)
    }
}

impl<T: ?Sized + Hash, A: Allocator> Hash for Rc<T, A> {
    fn hash<H: Hasher>(&self, state: &mut H) {
        (**self).hash(state);
    }
}

// Lets a `HashMap<Rc<str>, _>` be queried with a `&str`.
impl<T: ?Sized, A: Allocator> Borrow<T> for Rc<T, A> {
    fn borrow(&self) -> &T {
        self
    }
}

impl<T: ?Sized, A: Allocator> AsRef<T> for Rc<T, A> {
    fn as_ref(&self) -> &T {
        self
    }
}

impl<T: ?Sized + fmt::Debug, A: Allocator> fmt::Debug for Rc<T, A> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        fmt::Debug::fmt(&**self, f)
    }
}

impl<T: ?Sized + fmt::Display, A: Allocator> fmt::Display for Rc<T, A> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        fmt::Display::fmt(&**self, f)
    }
}

impl<A: Allocator + Default> Default for Rc<str, A> {
    fn default() -> Self {
        Self::from_str_in("", A::default())
    }
}

// These three copy the text, like `std`'s; they keep call sites that already own a string
// compiling. Build into a `RcString` instead when the text is made here.
impl<A: Allocator + Default> From<String> for Rc<str, A> {
    fn from(s: String) -> Self {
        Self::from_str_in(&s, A::default())
    }
}

impl<A: Allocator + Default> From<Box<str>> for Rc<str, A> {
    fn from(s: Box<str>) -> Self {
        Self::from_str_in(&s, A::default())
    }
}

impl<A: Allocator + Default> From<Cow<'_, str>> for Rc<str, A> {
    fn from(s: Cow<'_, str>) -> Self {
        Self::from_str_in(&s, A::default())
    }
}

/// `format!` that builds a `Rc<str>` through a `RcString`: the text is never copied into a second
/// allocation, only the final resize of the buffer can move it.
pub fn format(args: fmt::Arguments<'_>) -> Rc<str> {
    match args.as_str() {
        Some(s) => Rc::from(s),
        None => {
            let mut out = RcString::new();
            // Writing to a `RcString` never fails.
            let _ = fmt::Write::write_fmt(&mut out, args);
            out.into()
        }
    }
}

/// The layout of the box of a `RcString`, and where its bytes start.
///
/// The box is the one `Rc<str>` of the same length would have, so a conversion that fills the
/// capacity exactly changes nothing in the allocation.
fn string_layout(cap: usize) -> Option<(Layout, usize)> {
    box_layout(Layout::from_size_align(cap, 1).ok()?)
}

/// Why a reservation failed, before it becomes a [`TryReserveError`].
enum Reserve {
    Overflow,
    Alloc(Layout),
}

/// A growable UTF-8 string that becomes an `Rc<str>` without copying its text.
///
/// The strong count sits in front of the bytes in the same allocation, so the conversion gives
/// the box to the `Rc` as it is; only a capacity that is not the size of the `Rc<str>` box is
/// resized, with one `grow` or `shrink` of the allocation.
pub struct RcString<A: Allocator = Global> {
    data: NonNull<u8>,
    len: usize,
    cap: usize,
    alloc: A,
}

impl<A: Allocator> RcString<A> {
    /// Appends `v`, each invalid sequence replaced by one `U+FFFD`: what `String::from_utf8_lossy`
    /// does, written into this buffer instead of a `String`.
    fn push_utf8_lossy(&mut self, v: &[u8]) {
        for chunk in v.utf8_chunks() {
            self.push_str(chunk.valid());
            if !chunk.invalid().is_empty() {
                self.push('\u{FFFD}');
            }
        }
    }

    /// An empty `RcString` with room for `cap` bytes, allocated with `alloc`.
    pub fn with_capacity_in(cap: usize, alloc: A) -> Self {
        let (layout, offset) = string_layout(cap).expect("size overflow");
        let block = match alloc.allocate(layout) {
            Ok(block) => block,
            Err(_) => handle_alloc_error(layout),
        };
        // SAFETY: `block` is a fresh allocation of `layout`, the box of a `RcString` of `cap`.
        unsafe {
            ptr::write(block.cast::<Cell<usize>>().as_ptr(), Cell::new(1));
            Self {
                data: NonNull::new_unchecked(block.cast::<u8>().as_ptr().add(offset)),
                len: 0,
                cap,
                alloc,
            }
        }
    }

    /// A copy of `s`, allocated with `alloc` and with room for `s.len()` bytes only.
    pub fn from_str_in(s: &str, alloc: A) -> Self {
        let mut text = Self::with_capacity_in(s.len(), alloc);
        text.push_str(s);
        text
    }

    /// The start of the allocation, where the strong count lives.
    fn block(&self) -> NonNull<u8> {
        let (_, offset) = string_layout(self.cap).expect("size overflow");
        // SAFETY: `data` is `offset` bytes past the header of the allocation of `cap` bytes.
        unsafe { NonNull::new_unchecked(self.data.as_ptr().sub(offset)) }
    }

    /// Room for `additional` more bytes, without panicking on failure.
    fn reserve_into(&mut self, additional: usize, exact: bool) -> Result<(), Reserve> {
        let need = self.len.checked_add(additional).ok_or(Reserve::Overflow)?;
        if need <= self.cap {
            return Ok(());
        }
        let cap = if exact { need } else { need.max(self.cap.saturating_mul(2)) };
        let (old, _) = string_layout(self.cap).ok_or(Reserve::Overflow)?;
        let (new, offset) = string_layout(cap).ok_or(Reserve::Overflow)?;
        // SAFETY: the allocation is the box of `self.cap` bytes, and `new` is larger.
        let block = unsafe { self.alloc.grow(self.block(), old, new) }
            .map_err(|_| Reserve::Alloc(new))?;
        // SAFETY: `block` is the resized allocation, and its bytes start `offset` past its header.
        self.data = unsafe { NonNull::new_unchecked(block.cast::<u8>().as_ptr().add(offset)) };
        self.cap = cap;
        Ok(())
    }

    /// Room for `additional` more bytes, aborting on failure.
    fn reserve_or_abort(&mut self, additional: usize, exact: bool) {
        match self.reserve_into(additional, exact) {
            Ok(()) => {}
            Err(Reserve::Overflow) => panic!("capacity overflow"),
            Err(Reserve::Alloc(layout)) => handle_alloc_error(layout),
        }
    }

    /// The text.
    pub fn as_str(&self) -> &str {
        // SAFETY: `data` holds `len` bytes, the UTF-8 text pushed so far.
        unsafe {
            str::from_utf8_unchecked(std::slice::from_raw_parts(self.data.as_ptr(), self.len))
        }
    }

    /// The text, for changing in place with the methods of `str`.
    pub fn as_mut_str(&mut self) -> &mut str {
        // SAFETY: `data` holds `len` bytes of UTF-8, and the methods of `str` keep it UTF-8.
        unsafe {
            str::from_utf8_unchecked_mut(std::slice::from_raw_parts_mut(
                self.data.as_ptr(),
                self.len,
            ))
        }
    }

    /// The bytes of the text.
    pub fn as_bytes(&self) -> &[u8] {
        // SAFETY: `data` holds `len` initialized bytes.
        unsafe { std::slice::from_raw_parts(self.data.as_ptr(), self.len) }
    }

    /// The length in bytes.
    pub fn len(&self) -> usize {
        self.len
    }

    /// Whether the text is empty.
    pub fn is_empty(&self) -> bool {
        self.len == 0
    }

    /// How many bytes fit without growing the allocation.
    pub fn capacity(&self) -> usize {
        self.cap
    }

    /// Appends `s`.
    pub fn push_str(&mut self, s: &str) {
        self.reserve_or_abort(s.len(), false);
        // SAFETY: `reserve` made room for `s.len()` bytes past `len`, which hold no text yet.
        unsafe {
            ptr::copy_nonoverlapping(s.as_ptr(), self.data.as_ptr().add(self.len), s.len());
        }
        self.len += s.len();
    }

    /// Appends `c`.
    pub fn push(&mut self, c: char) {
        let mut buf = [0u8; 4];
        self.push_str(c.encode_utf8(&mut buf));
    }

    /// Room for `additional` more bytes, with room to grow again.
    pub fn reserve(&mut self, additional: usize) {
        self.reserve_or_abort(additional, false);
    }

    /// Room for `additional` more bytes, no more.
    pub fn reserve_exact(&mut self, additional: usize) {
        self.reserve_or_abort(additional, true);
    }

    /// Room for `additional` more bytes, with room to grow again.
    ///
    /// # Errors
    ///
    /// When the capacity overflows or the allocator fails.
    pub fn try_reserve(&mut self, additional: usize) -> Result<(), TryReserveError> {
        self.reserve_into(additional, false).map_err(TryReserveError::from)
    }

    /// Room for `additional` more bytes, no more.
    ///
    /// # Errors
    ///
    /// When the capacity overflows or the allocator fails.
    pub fn try_reserve_exact(&mut self, additional: usize) -> Result<(), TryReserveError> {
        self.reserve_into(additional, true).map_err(TryReserveError::from)
    }

    /// Shrinks the allocation to the text.
    pub fn shrink_to_fit(&mut self) {
        self.shrink_to(0);
    }

    /// Shrinks the allocation to `min_capacity` or the text, whichever is larger.
    pub fn shrink_to(&mut self, min_capacity: usize) {
        let cap = min_capacity.max(self.len);
        if cap >= self.cap {
            return;
        }
        let (old, _) = string_layout(self.cap).expect("size overflow");
        let (new, offset) = string_layout(cap).expect("size overflow");
        // SAFETY: the allocation is the box of `self.cap` bytes, and `new` is smaller.
        // Shrinking is optional: a failed shrink keeps the larger allocation.
        if let Ok(block) = unsafe { self.alloc.shrink(self.block(), old, new) } {
            // SAFETY: the bytes of the allocation start `offset` past its header.
            self.data = unsafe { NonNull::new_unchecked(block.cast::<u8>().as_ptr().add(offset)) };
            self.cap = cap;
        }
    }

    /// Keeps the first `new_len` bytes.
    ///
    /// # Panics
    ///
    /// When `new_len` is not a char boundary.
    pub fn truncate(&mut self, new_len: usize) {
        if new_len >= self.len {
            return;
        }
        assert!(self.as_str().is_char_boundary(new_len), "not a char boundary");
        self.len = new_len;
    }

    /// Removes and returns the last char.
    pub fn pop(&mut self) -> Option<char> {
        let c = self.as_str().chars().next_back()?;
        self.len -= c.len_utf8();
        Some(c)
    }

    /// Removes and returns the char at byte index `idx`.
    ///
    /// # Panics
    ///
    /// When `idx` is past the end or not a char boundary.
    pub fn remove(&mut self, idx: usize) -> char {
        let s = self.as_str();
        assert!(idx < s.len(), "cannot remove a char from the end of a string");
        assert!(s.is_char_boundary(idx), "not a char boundary");
        let c = s[idx..].chars().next().expect("a char at a char boundary");
        let n = c.len_utf8();
        // SAFETY: the char at `idx` is moved over by the text after it, inside the allocation.
        unsafe {
            ptr::copy(
                self.data.as_ptr().add(idx + n),
                self.data.as_ptr().add(idx),
                self.len - idx - n,
            );
        }
        self.len -= n;
        c
    }

    /// Keeps the chars for which `f` returns true.
    pub fn retain<F: FnMut(char) -> bool>(&mut self, mut f: F) {
        let len = self.len;
        let (mut read, mut write) = (0, 0);
        while read < len {
            // SAFETY: `read` is a char boundary and the text is UTF-8.
            let rest = unsafe {
                str::from_utf8_unchecked(std::slice::from_raw_parts(
                    self.data.as_ptr().add(read),
                    len - read,
                ))
            };
            let c = rest.chars().next().expect("a char at a char boundary");
            let n = c.len_utf8();
            if f(c) {
                if write != read {
                    // SAFETY: `write` is at or before `read`, inside the allocation.
                    unsafe {
                        ptr::copy(self.data.as_ptr().add(read), self.data.as_ptr().add(write), n);
                    }
                }
                write += n;
            }
            read += n;
        }
        self.len = write;
    }

    /// Inserts `c` at byte index `idx`.
    ///
    /// # Panics
    ///
    /// When `idx` is past the end or not a char boundary.
    pub fn insert(&mut self, idx: usize, c: char) {
        assert!(self.as_str().is_char_boundary(idx), "not a char boundary");
        let mut buf = [0u8; 4];
        self.insert_str(idx, c.encode_utf8(&mut buf));
    }

    /// Inserts `string` at byte index `idx`.
    ///
    /// # Panics
    ///
    /// When `idx` is past the end or not a char boundary.
    pub fn insert_str(&mut self, idx: usize, string: &str) {
        assert!(self.as_str().is_char_boundary(idx), "not a char boundary");
        self.reserve_or_abort(string.len(), false);
        let tail = self.len - idx;
        // SAFETY: `reserve` made room for the new text after `len`, and `string` cannot alias
        // `self` (a borrow of it would not compile next to `&mut self`).
        unsafe {
            let data = self.data.as_ptr();
            ptr::copy(data.add(idx), data.add(idx + string.len()), tail);
            ptr::copy_nonoverlapping(string.as_ptr(), data.add(idx), string.len());
        }
        self.len += string.len();
    }

    /// Splits the string in two at byte index `at`, keeping the first part.
    ///
    /// # Panics
    ///
    /// When `at` is past the end or not a char boundary.
    pub fn split_off(&mut self, at: usize) -> Self
    where
        A: Clone,
    {
        assert!(self.as_str().is_char_boundary(at), "not a char boundary");
        let mut tail = Self::with_capacity_in(self.len - at, self.alloc.clone());
        tail.push_str(&self.as_str()[at..]);
        self.len = at;
        tail
    }

    /// Removes the text.
    pub fn clear(&mut self) {
        self.len = 0;
    }

    /// Removes the chars of `range`, returning them.
    ///
    /// # Panics
    ///
    /// When `range` is out of bounds or not on char boundaries.
    pub fn drain<R: RangeBounds<usize>>(&mut self, range: R) -> Drain<'_> {
        let (start, end) = self.bounds(range);
        let text = self.as_str()[start..end].to_owned();
        let len = self.len;
        // SAFETY: the text after `end` is moved over the drained text, inside the allocation.
        unsafe {
            ptr::copy(
                self.data.as_ptr().add(end),
                self.data.as_ptr().add(start),
                len - end,
            );
        }
        self.len = len - (end - start);
        let back = text.len();
        Drain { text, front: 0, back, _borrow: PhantomData }
    }

    /// Replaces the chars of `range` with `replace_with`.
    ///
    /// # Panics
    ///
    /// When `range` is out of bounds or not on char boundaries.
    pub fn replace_range<R: RangeBounds<usize>>(&mut self, range: R, replace_with: &str) {
        let (start, end) = self.bounds(range);
        let tail = self.len - end;
        self.reserve_or_abort(replace_with.len(), false);
        // SAFETY: `reserve` made room for the new text, and `replace_with` cannot alias `self`.
        unsafe {
            let data = self.data.as_ptr();
            if replace_with.len() != end - start {
                ptr::copy(data.add(end), data.add(start + replace_with.len()), tail);
            }
            ptr::copy_nonoverlapping(replace_with.as_ptr(), data.add(start), replace_with.len());
        }
        self.len = start + replace_with.len() + tail;
    }

    /// Appends the chars of `src`, which may overlap the text.
    ///
    /// # Panics
    ///
    /// When `src` is out of bounds or not on char boundaries.
    pub fn extend_from_within<R: RangeBounds<usize>>(&mut self, src: R) {
        let (start, end) = self.bounds(src);
        let count = end - start;
        self.reserve_or_abort(count, false);
        let len = self.len;
        // SAFETY: the copy may overlap, and the space after `len` has room for `count` bytes.
        unsafe {
            ptr::copy(self.data.as_ptr().add(start), self.data.as_ptr().add(len), count);
        }
        self.len = len + count;
    }

    /// The byte range of `range` in the text.
    ///
    /// # Panics
    ///
    /// When `range` is out of bounds or not on char boundaries.
    fn bounds<R: RangeBounds<usize>>(&self, range: R) -> (usize, usize) {
        let start = match range.start_bound() {
            Bound::Included(&n) => n,
            Bound::Excluded(&n) => n.checked_add(1).expect("range start overflow"),
            Bound::Unbounded => 0,
        };
        let end = match range.end_bound() {
            Bound::Included(&n) => n.checked_add(1).expect("range end overflow"),
            Bound::Excluded(&n) => n,
            Bound::Unbounded => self.len,
        };
        if start > end || end > self.len {
            panic!("range {start}..{end} out of bounds for `RcString` of length {}", self.len);
        }
        if !self.as_str().is_char_boundary(start) || !self.as_str().is_char_boundary(end) {
            panic!("range {start}..{end} is not on char boundaries");
        }
        (start, end)
    }

    /// The bytes as a box, copied.
    pub fn into_boxed_str(self) -> Box<str> {
        self.as_str().into()
    }

    /// The bytes as a vector, copied.
    pub fn into_bytes(self) -> Vec<u8> {
        self.as_bytes().to_vec()
    }

    /// The allocation as a pointer, its length and its capacity.
    #[must_use = "losing the pointer leaks the allocation"]
    pub fn into_raw_parts(self) -> (*mut u8, usize, usize) {
        let text = ManuallyDrop::new(self);
        (text.data.as_ptr(), text.len, text.cap)
    }

    /// The text, leaking its allocation: the strong count stays in front of the bytes.
    ///
    /// One way only: a `&mut str` knows nothing of the strong count in front of it, so the
    /// allocation cannot be taken back with [`RcString::from_raw_parts`] (`into_raw_parts` can).
    #[must_use = "losing the string leaks the allocation"]
    pub fn leak<'a>(self) -> &'a mut str {
        let text = ManuallyDrop::new(self);
        // SAFETY: the allocation is leaked, and the text stays valid and UTF-8 for `'a`.
        unsafe {
            str::from_utf8_unchecked_mut(std::slice::from_raw_parts_mut(
                text.data.as_ptr(),
                text.len,
            ))
        }
    }
}

impl RcString {
    /// An empty `RcString`, allocated with `Global`.
    pub fn new() -> Self {
        Self::with_capacity_in(0, Global)
    }

    /// An empty `RcString` with room for `cap` bytes, allocated with `Global`.
    pub fn with_capacity(cap: usize) -> Self {
        Self::with_capacity_in(cap, Global)
    }

    /// A copy of the bytes of `vec`, when they are UTF-8.
    ///
    /// # Errors
    ///
    /// As `String::from_utf8`, with the bytes still in the error.
    pub fn from_utf8(vec: Vec<u8>) -> Result<Self, FromUtf8Error> {
        match str::from_utf8(&vec) {
            Ok(s) => Ok(Self::from(s)),
            Err(error) => Err(FromUtf8Error { bytes: vec, error }),
        }
    }

    /// The text of `v`, replacing the invalid sequences with `U+FFFD`.
    pub fn from_utf8_lossy(v: &[u8]) -> Cow<'_, str> {
        String::from_utf8_lossy(v)
    }

    /// A copy of `v`, with the invalid sequences replaced by `U+FFFD`.
    pub fn from_utf8_lossy_owned(v: Vec<u8>) -> Self {
        let mut out = Self::with_capacity(v.len());
        out.push_utf8_lossy(&v);
        out
    }

    /// A copy of `bytes`, which must be UTF-8.
    ///
    /// # Safety
    ///
    /// The bytes must be valid UTF-8.
    pub unsafe fn from_utf8_unchecked(bytes: Vec<u8>) -> Self {
        // SAFETY: valid UTF-8, as the caller promises.
        Self::from(unsafe { str::from_utf8_unchecked(&bytes) })
    }

    /// The text of the UTF-16 units of `v`, when they are a valid sequence.
    ///
    /// # Errors
    ///
    /// As `String::from_utf16`, with no way to recover the units (std does not keep them either).
    pub fn from_utf16(v: &[u16]) -> Result<Self, FromUtf16Error> {
        Self::from_utf16_units(v.iter().copied())
    }

    /// The text of the UTF-16 units of `v`, replacing the lone surrogates with `U+FFFD`.
    pub fn from_utf16_lossy(v: &[u16]) -> Self {
        Self::from_utf16_units_lossy(v.iter().copied())
    }

    /// The text of the little-endian UTF-16 bytes of `v`.
    ///
    /// # Errors
    ///
    /// When `v` has an odd number of bytes or holds a lone surrogate.
    pub fn from_utf16le(v: &[u8]) -> Result<Self, FromUtf16Error> {
        let (chunks, rest) = v.as_chunks::<2>();
        if !rest.is_empty() {
            return Err(FromUtf16Error { kind: FromUtf16ErrorKind::OddBytes });
        }
        Self::from_utf16_units(chunks.iter().copied().map(u16::from_le_bytes))
    }

    /// The text of the little-endian UTF-16 bytes of `v`, replacing the errors with `U+FFFD`.
    pub fn from_utf16le_lossy(v: &[u8]) -> Self {
        let (chunks, rest) = v.as_chunks::<2>();
        let mut text =
            Self::from_utf16_units_lossy(chunks.iter().copied().map(u16::from_le_bytes));
        if !rest.is_empty() {
            text.push(char::REPLACEMENT_CHARACTER);
        }
        text
    }

    /// The text of the big-endian UTF-16 bytes of `v`.
    ///
    /// # Errors
    ///
    /// When `v` has an odd number of bytes or holds a lone surrogate.
    pub fn from_utf16be(v: &[u8]) -> Result<Self, FromUtf16Error> {
        let (chunks, rest) = v.as_chunks::<2>();
        if !rest.is_empty() {
            return Err(FromUtf16Error { kind: FromUtf16ErrorKind::OddBytes });
        }
        Self::from_utf16_units(chunks.iter().copied().map(u16::from_be_bytes))
    }

    /// The text of the big-endian UTF-16 bytes of `v`, replacing the errors with `U+FFFD`.
    pub fn from_utf16be_lossy(v: &[u8]) -> Self {
        let (chunks, rest) = v.as_chunks::<2>();
        let mut text =
            Self::from_utf16_units_lossy(chunks.iter().copied().map(u16::from_be_bytes));
        if !rest.is_empty() {
            text.push(char::REPLACEMENT_CHARACTER);
        }
        text
    }

    fn from_utf16_units(units: impl Iterator<Item = u16>) -> Result<Self, FromUtf16Error> {
        let mut text = Self::new();
        for unit in char::decode_utf16(units) {
            match unit {
                Ok(c) => text.push(c),
                Err(_) => {
                    return Err(FromUtf16Error { kind: FromUtf16ErrorKind::LoneSurrogate })
                }
            }
        }
        Ok(text)
    }

    fn from_utf16_units_lossy(units: impl Iterator<Item = u16>) -> Self {
        let mut text = Self::new();
        for unit in char::decode_utf16(units) {
            text.push(unit.unwrap_or(char::REPLACEMENT_CHARACTER));
        }
        text
    }

    /// Takes back the allocation of [`RcString::into_raw_parts`].
    ///
    /// # Safety
    ///
    /// `buf`, `length` and `capacity` must come from `into_raw_parts` of an `RcString` that was
    /// not dropped, and the strong count in front of `buf` must be intact: the allocation of a
    /// `String` is not one of this type, and the pointer of `leak` is too narrow for the header.
    pub unsafe fn from_raw_parts(buf: *mut u8, length: usize, capacity: usize) -> Self {
        // SAFETY: the caller promises a pointer of this type, as the documentation says.
        Self {
            data: unsafe { NonNull::new_unchecked(buf) },
            len: length,
            cap: capacity,
            alloc: Global,
        }
    }
}

impl<A: Allocator + Default> Default for RcString<A> {
    fn default() -> Self {
        Self::with_capacity_in(0, A::default())
    }
}

impl From<&str> for RcString {
    fn from(s: &str) -> Self {
        Self::from_str_in(s, Global)
    }
}

impl From<&mut str> for RcString {
    fn from(s: &mut str) -> Self {
        Self::from_str_in(s, Global)
    }
}

impl From<&RcString> for RcString {
    fn from(s: &RcString) -> Self {
        Self::from_str_in(s.as_str(), Global)
    }
}

impl From<Box<str>> for RcString {
    fn from(s: Box<str>) -> Self {
        Self::from_str_in(&s, Global)
    }
}

impl From<Cow<'_, str>> for RcString {
    fn from(s: Cow<'_, str>) -> Self {
        Self::from_str_in(&s, Global)
    }
}

impl From<char> for RcString {
    fn from(c: char) -> Self {
        let mut text = Self::with_capacity_in(c.len_utf8(), Global);
        text.push(c);
        text
    }
}

impl<A: Allocator + Clone> Clone for RcString<A> {
    fn clone(&self) -> Self {
        Self::from_str_in(self.as_str(), self.alloc.clone())
    }

    fn clone_from(&mut self, source: &Self) {
        self.len = 0;
        self.push_str(source.as_str());
    }
}

impl<A: Allocator> Deref for RcString<A> {
    type Target = str;

    fn deref(&self) -> &str {
        self.as_str()
    }
}

impl<A: Allocator> DerefMut for RcString<A> {
    fn deref_mut(&mut self) -> &mut str {
        self.as_mut_str()
    }
}

impl<A: Allocator> AsRef<str> for RcString<A> {
    fn as_ref(&self) -> &str {
        self.as_str()
    }
}

impl<A: Allocator> AsRef<[u8]> for RcString<A> {
    fn as_ref(&self) -> &[u8] {
        self.as_bytes()
    }
}

impl<A: Allocator> AsMut<str> for RcString<A> {
    fn as_mut(&mut self) -> &mut str {
        self.as_mut_str()
    }
}

impl<A: Allocator> Add<&str> for RcString<A> {
    type Output = Self;

    fn add(mut self, rhs: &str) -> Self {
        self.push_str(rhs);
        self
    }
}

impl<A: Allocator> AddAssign<&str> for RcString<A> {
    fn add_assign(&mut self, rhs: &str) {
        self.push_str(rhs);
    }
}

impl<A: Allocator> From<RcString<A>> for Rc<str, A> {
    /// Hands the allocation to the `Rc`, with no copy of the text.
    ///
    /// The box of a `Rc<str>` is padded to its alignment, so a capacity that is not padded
    /// exactly is resized first: one `grow` (by less than the alignment) or `shrink` of the
    /// allocation, which allocators usually do in place.
    fn from(s: RcString<A>) -> Self {
        let s = ManuallyDrop::new(s);
        let (needed, _) = string_layout(s.len).expect("size overflow");
        let (current, _) = string_layout(s.cap).expect("size overflow");
        let block = if needed.size() == current.size() {
            s.block()
        } else {
            // SAFETY: the allocation is the box of `s.cap` bytes, and `needed` is the size of
            // the box of `s.len` bytes it becomes.
            let block = unsafe {
                if needed.size() > current.size() {
                    s.alloc.grow(s.block(), current, needed)
                } else {
                    s.alloc.shrink(s.block(), current, needed)
                }
            };
            match block {
                Ok(block) => block.cast::<u8>(),
                Err(_) => handle_alloc_error(needed),
            }
        };
        let len = s.len;
        // SAFETY: `s` is `ManuallyDrop`, so the allocator is moved out of it, not dropped.
        let alloc = unsafe { ptr::read(&s.alloc) };
        // SAFETY: `block` is the box of a `Rc<str>` of `len` bytes, the one of the `RcString` or
        // the one it was resized to; the text is UTF-8 and the count is already 1.
        unsafe {
            let bytes = ptr::slice_from_raw_parts_mut(block.as_ptr(), len);
            let boxed = bytes as *mut RcBox<[u8]> as *mut RcBox<str>;
            Rc { ptr: NonNull::new_unchecked(boxed), alloc, _marker: PhantomData }
        }
    }
}

impl<A: Allocator> Drop for RcString<A> {
    fn drop(&mut self) {
        // SAFETY: the allocation is the box of `self.cap` bytes, and nothing else uses it.
        unsafe { self.alloc.deallocate(self.block().cast(), string_layout(self.cap).expect("size overflow").0) }
    }
}

/// The chars of a [`RcString::drain`], copied out before the text moves.
pub struct Drain<'a> {
    text: String,
    front: usize,
    back: usize,
    _borrow: PhantomData<&'a mut ()>,
}

impl<'a> Drain<'a> {
    /// The chars not returned yet.
    pub fn as_str(&self) -> &str {
        &self.text[self.front..self.back]
    }

    /// The bytes of the chars not returned yet.
    pub fn as_bytes(&self) -> &[u8] {
        self.as_str().as_bytes()
    }
}

impl Iterator for Drain<'_> {
    type Item = char;

    fn next(&mut self) -> Option<char> {
        let c = self.as_str().chars().next()?;
        self.front += c.len_utf8();
        Some(c)
    }

    fn size_hint(&self) -> (usize, Option<usize>) {
        let len = self.len();
        (len, Some(len))
    }
}

impl DoubleEndedIterator for Drain<'_> {
    fn next_back(&mut self) -> Option<char> {
        let c = self.as_str().chars().next_back()?;
        self.back -= c.len_utf8();
        Some(c)
    }
}

impl ExactSizeIterator for Drain<'_> {
    fn len(&self) -> usize {
        self.as_str().chars().count()
    }
}

impl FusedIterator for Drain<'_> {}

impl<A: Allocator, I: std::slice::SliceIndex<str>> Index<I> for RcString<A> {
    type Output = I::Output;

    fn index(&self, index: I) -> &Self::Output {
        <str as Index<I>>::index(self.as_str(), index)
    }
}

impl<A: Allocator, I: std::slice::SliceIndex<str>> IndexMut<I> for RcString<A> {
    fn index_mut(&mut self, index: I) -> &mut Self::Output {
        <str as IndexMut<I>>::index_mut(self.as_mut_str(), index)
    }
}

impl<A: Allocator> fmt::Display for RcString<A> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        f.write_str(self.as_str())
    }
}

impl<A: Allocator> fmt::Debug for RcString<A> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        fmt::Debug::fmt(self.as_str(), f)
    }
}

impl<A: Allocator> fmt::Write for RcString<A> {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        self.push_str(s);
        Ok(())
    }

    fn write_char(&mut self, c: char) -> fmt::Result {
        self.push(c);
        Ok(())
    }
}

impl<A: Allocator> Hash for RcString<A> {
    fn hash<H: Hasher>(&self, state: &mut H) {
        self.as_str().hash(state);
    }
}

impl<A: Allocator> PartialEq for RcString<A> {
    fn eq(&self, other: &Self) -> bool {
        self.as_str() == other.as_str()
    }
}

impl<A: Allocator> Eq for RcString<A> {}

impl<A: Allocator> PartialOrd for RcString<A> {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        Some(self.cmp(other))
    }
}

impl<A: Allocator> Ord for RcString<A> {
    fn cmp(&self, other: &Self) -> Ordering {
        self.as_str().cmp(other.as_str())
    }
}

/// What the cross-type comparisons and orderings of a [`RcString`] read as a `str`.
trait Text {
    fn text(&self) -> &str;
}

impl Text for str {
    fn text(&self) -> &str {
        self
    }
}

impl Text for &str {
    fn text(&self) -> &str {
        self
    }
}

impl Text for String {
    fn text(&self) -> &str {
        self
    }
}

impl<A: Allocator> Text for RcString<A> {
    fn text(&self) -> &str {
        self.as_str()
    }
}

impl Text for Cow<'_, str> {
    fn text(&self) -> &str {
        self
    }
}

macro_rules! cross {
    ($($t:ty),* $(,)?) => {$(
        impl<A: Allocator> PartialEq<$t> for RcString<A> {
            fn eq(&self, other: &$t) -> bool {
                self.as_str() == Text::text(other)
            }
        }

        impl<A: Allocator> PartialEq<RcString<A>> for $t {
            fn eq(&self, other: &RcString<A>) -> bool {
                Text::text(self) == other.as_str()
            }
        }

        impl<A: Allocator> PartialOrd<$t> for RcString<A> {
            fn partial_cmp(&self, other: &$t) -> Option<Ordering> {
                Some(self.as_str().cmp(Text::text(other)))
            }
        }

        impl<A: Allocator> PartialOrd<RcString<A>> for $t {
            fn partial_cmp(&self, other: &RcString<A>) -> Option<Ordering> {
                Some(Text::text(self).cmp(other.as_str()))
            }
        }
    )*};
}

cross!(str, &str, String, Cow<'_, str>);

impl<A: Allocator + Default> FromStr for RcString<A> {
    type Err = Infallible;

    fn from_str(s: &str) -> Result<Self, Infallible> {
        Ok(Self::from_str_in(s, A::default()))
    }
}

impl TryFrom<Vec<u8>> for RcString {
    type Error = FromUtf8Error;

    fn try_from(bytes: Vec<u8>) -> Result<Self, FromUtf8Error> {
        Self::from_utf8(bytes)
    }
}

impl<A: Allocator + Default> FromIterator<char> for RcString<A> {
    fn from_iter<I: IntoIterator<Item = char>>(iter: I) -> Self {
        let mut text = Self::default();
        text.extend(iter);
        text
    }
}

impl<'a, A: Allocator + Default> FromIterator<&'a char> for RcString<A> {
    fn from_iter<I: IntoIterator<Item = &'a char>>(iter: I) -> Self {
        let mut text = Self::default();
        text.extend(iter);
        text
    }
}

impl<'a, A: Allocator + Default> FromIterator<&'a str> for RcString<A> {
    fn from_iter<I: IntoIterator<Item = &'a str>>(iter: I) -> Self {
        let mut text = Self::default();
        text.extend(iter);
        text
    }
}

impl<A: Allocator + Default> FromIterator<RcString<A>> for RcString<A> {
    fn from_iter<I: IntoIterator<Item = RcString<A>>>(iter: I) -> Self {
        let mut text = Self::default();
        text.extend(iter);
        text
    }
}

impl<A: Allocator + Default> FromIterator<Box<str>> for RcString<A> {
    fn from_iter<I: IntoIterator<Item = Box<str>>>(iter: I) -> Self {
        let mut text = Self::default();
        text.extend(iter);
        text
    }
}

impl<'a, A: Allocator + Default> FromIterator<Cow<'a, str>> for RcString<A> {
    fn from_iter<I: IntoIterator<Item = Cow<'a, str>>>(iter: I) -> Self {
        let mut text = Self::default();
        text.extend(iter);
        text
    }
}

impl<A: Allocator> Extend<char> for RcString<A> {
    fn extend<I: IntoIterator<Item = char>>(&mut self, iter: I) {
        let iter = iter.into_iter();
        self.reserve_or_abort(iter.size_hint().0.saturating_mul(4), false);
        for c in iter {
            self.push(c);
        }
    }
}

impl<'a, A: Allocator> Extend<&'a char> for RcString<A> {
    fn extend<I: IntoIterator<Item = &'a char>>(&mut self, iter: I) {
        self.extend(iter.into_iter().copied());
    }
}

impl<'a, A: Allocator> Extend<&'a str> for RcString<A> {
    fn extend<I: IntoIterator<Item = &'a str>>(&mut self, iter: I) {
        for s in iter {
            self.push_str(s);
        }
    }
}

impl<A: Allocator> Extend<RcString<A>> for RcString<A> {
    fn extend<I: IntoIterator<Item = RcString<A>>>(&mut self, iter: I) {
        for s in iter {
            self.push_str(s.as_str());
        }
    }
}

impl<A: Allocator> Extend<Box<str>> for RcString<A> {
    fn extend<I: IntoIterator<Item = Box<str>>>(&mut self, iter: I) {
        for s in iter {
            self.push_str(&s);
        }
    }
}

impl<'a, A: Allocator> Extend<Cow<'a, str>> for RcString<A> {
    fn extend<I: IntoIterator<Item = Cow<'a, str>>>(&mut self, iter: I) {
        for s in iter {
            self.push_str(&s);
        }
    }
}

impl From<Reserve> for TryReserveError {
    fn from(reason: Reserve) -> Self {
        let kind = match reason {
            Reserve::Overflow => TryReserveErrorKind::CapacityOverflow,
            Reserve::Alloc(_) => TryReserveErrorKind::AllocError,
        };
        TryReserveError { kind }
    }
}

/// The error of [`RcString::try_reserve`] and [`RcString::try_reserve_exact`].
///
/// `std::collections::TryReserveError` has private fields and cannot be built here.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct TryReserveError {
    kind: TryReserveErrorKind,
}

#[derive(Clone, Debug, PartialEq, Eq)]
enum TryReserveErrorKind {
    CapacityOverflow,
    AllocError,
}

impl fmt::Display for TryReserveError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let message = match self.kind {
            TryReserveErrorKind::CapacityOverflow => "capacity overflow",
            TryReserveErrorKind::AllocError => "memory allocation failed",
        };
        f.write_str(message)
    }
}

impl Error for TryReserveError {}

/// The error of [`RcString::from_utf8`].
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct FromUtf8Error {
    bytes: Vec<u8>,
    error: Utf8Error,
}

impl FromUtf8Error {
    /// The bytes the text was made of.
    pub fn as_bytes(&self) -> &[u8] {
        &self.bytes
    }

    /// The bytes the text was made of, as a vector.
    pub fn into_bytes(self) -> Vec<u8> {
        self.bytes
    }

    /// The bytes as a string, with the invalid sequences replaced by `U+FFFD`.
    pub fn into_utf8_lossy(self) -> RcString {
        RcString::from_utf8_lossy_owned(self.bytes)
    }

    /// What is wrong with the bytes.
    pub fn utf8_error(&self) -> Utf8Error {
        self.error
    }
}

impl fmt::Display for FromUtf8Error {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        fmt::Display::fmt(&self.error, f)
    }
}

impl Error for FromUtf8Error {}

/// The error of the UTF-16 constructors of [`RcString`].
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct FromUtf16Error {
    kind: FromUtf16ErrorKind,
}

#[derive(Clone, Debug, PartialEq, Eq)]
enum FromUtf16ErrorKind {
    LoneSurrogate,
    OddBytes,
}

impl fmt::Display for FromUtf16Error {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        let message = match self.kind {
            FromUtf16ErrorKind::LoneSurrogate => "invalid utf-16: lone surrogate found",
            FromUtf16ErrorKind::OddBytes => "invalid utf-16: odd number of bytes",
        };
        f.write_str(message)
    }
}

impl Error for FromUtf16Error {}

#[cfg(test)]
mod tests;
