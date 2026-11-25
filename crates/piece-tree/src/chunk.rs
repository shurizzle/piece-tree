//! Append-only storage: text bytes and their `\n` offsets in one allocation.
//!
//! Persistence relies on one rule: bytes and newline slots are written once,
//! before any piece references them, and never change afterwards. A writer
//! first reserves a range past the reserved end with one atomic
//! read-modify-write, then fills it; readers only touch ranges that pieces got
//! from completed appends, so they never race with writers.

use std::{
    mem::{ManuallyDrop, MaybeUninit},
    ptr::{self, NonNull},
    slice, str,
    sync::atomic::{AtomicU64, Ordering},
};

use memchr::memchr_iter;
use triomphe::Arc;

/// Largest add chunk. Bigger inserts get an exact chunk of their own.
#[cfg(not(miri))]
pub(crate) const MAX_ADD_BYTES: usize = 64 * 1024;
/// Under Miri a small threshold lets the large-text tests reach the exact and
/// owned chunk paths with ~1 KiB of text instead of 64 KiB.
#[cfg(miri)]
pub(crate) const MAX_ADD_BYTES: usize = 1024;
/// First add chunk of a text; later ones double up to `MAX_ADD_BYTES`.
pub(crate) const MIN_ADD_BYTES: usize = 256;

pub(crate) struct Chunk {
    /// Text bytes (`cap`) and newline offsets (`nl_cap`). Kept raw so writes
    /// into the unpublished tail never alias a `Box`/`&` covering published bytes.
    bytes: NonNull<u8>,
    newlines: NonNull<u32>,
    cap: u32,
    nl_cap: u32,
    /// Reserved prefix, packed by `Fill::pack`.
    fill: AtomicU64,
    storage: Storage,
}

/// Who owns the memory behind `bytes` and `newlines`; freed in `Drop`.
enum Storage {
    /// One allocation from `Box::leak`: `cap.div_ceil(4)` words of bytes, then the newline slots.
    Words(NonNull<[MaybeUninit<u32>]>),
    /// Buffers taken over from a `String` (as `Vec<u8>`) and a `Vec<u32>` (sealed, no copy).
    Owned { text_cap: usize, nl_cap: usize },
}

/// Published prefix: bytes and newline slots written so far.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(crate) struct Fill {
    pub(crate) len: u32,
    pub(crate) nl: u32,
}

// SAFETY: bytes and newline slots of completed appends are immutable. A range
// is written only by the thread that reserved it (reservations are disjoint,
// made by one atomic RMW on `fill`), and no reader references it until that
// append returns. Storage is freed only in `Drop`.
unsafe impl Send for Chunk {}
unsafe impl Sync for Chunk {}

impl Fill {
    fn pack(self) -> u64 {
        u64::from(self.len) | u64::from(self.nl) << 32
    }

    fn unpack(v: u64) -> Self {
        Fill { len: v as u32, nl: (v >> 32) as u32 }
    }
}

/// Pieces address chunks with `u32` offsets.
pub(crate) fn assert_fits_u32(len: usize) {
    assert!(u32::try_from(len).is_ok(), "buffer larger than 4 GiB");
}

pub(crate) fn count_lf(s: &str) -> usize {
    memchr_iter(b'\n', s.as_bytes()).count()
}

impl Chunk {
    fn with_capacity(cap: usize, nl_cap: usize) -> Self {
        assert_fits_u32(cap);
        assert!(cap > 0, "empty chunk");
        let words = NonNull::from(Box::leak(Box::<[u32]>::new_uninit_slice(cap.div_ceil(4) + nl_cap)));
        let bytes = words.cast::<u8>();
        // SAFETY: the newline slots start right after `cap.div_ceil(4)` words, inside the allocation.
        let newlines = unsafe { words.cast::<u32>().add(cap.div_ceil(4)) };
        Self {
            bytes,
            newlines,
            cap: cap as u32,
            nl_cap: nl_cap as u32,
            fill: AtomicU64::new(0),
            storage: Storage::Words(words),
        }
    }

    /// Sealed chunk holding exactly `s` (non-empty).
    pub(crate) fn exact(s: &str) -> Arc<Self> {
        Self::from_string(s.to_owned())
    }

    /// Sealed chunk taking over `s`'s buffer (non-empty): one SIMD newline scan, no copy.
    pub(crate) fn from_string(s: String) -> Arc<Self> {
        assert_fits_u32(s.len());
        assert!(!s.is_empty(), "empty chunk");
        let newlines = crate::newlines::positions(s.as_bytes());
        // `Vec::as_mut_ptr` keeps provenance over the whole allocation (capacity,
        // not just length), which `Drop` needs to free it.
        let (mut bytes, mut newlines) = (ManuallyDrop::new(s.into_bytes()), ManuallyDrop::new(newlines));
        let fill = Fill { len: bytes.len() as u32, nl: newlines.len() as u32 };
        Arc::new(Self {
            bytes: NonNull::new(bytes.as_mut_ptr()).expect("Vec pointers are never null"),
            newlines: NonNull::new(newlines.as_mut_ptr()).expect("Vec pointers are never null"),
            cap: fill.len,
            nl_cap: fill.nl,
            fill: AtomicU64::new(fill.pack()),
            storage: Storage::Owned { text_cap: bytes.capacity(), nl_cap: newlines.capacity() },
        })
    }

    /// Empty add chunk able to hold `len` bytes with `lf` newlines, growing
    /// geometrically from `prev`. Requires `len <= MAX_ADD_BYTES`.
    pub(crate) fn for_add(prev: Option<&Chunk>, len: usize, lf: usize) -> Arc<Self> {
        debug_assert!(len <= MAX_ADD_BYTES);
        let grown = prev.map_or(MIN_ADD_BYTES, |c| (c.cap as usize * 2).min(MAX_ADD_BYTES));
        let cap = grown.max(len.next_power_of_two());
        // Average line of 4+ bytes; text with denser newlines seals the chunk earlier.
        Arc::new(Self::with_capacity(cap, (cap / 4).max(lf)))
    }

    pub(crate) fn fill(&self) -> Fill {
        Fill::unpack(self.fill.load(Ordering::Acquire))
    }

    /// Appends `s`, which has `lf` newlines, if it fits. With `at = Some(end)`
    /// appends only when the published length is exactly `end`, so the piece
    /// ending there can be extended in place of creating a new one.
    pub(crate) fn try_append(&self, s: &str, lf: usize, at: Option<u32>) -> Option<Fill> {
        // Reserve `[len, len + s.len())` and `[nl, nl + lf)` in one atomic step.
        let reserved = self.fill.try_update(Ordering::AcqRel, Ordering::Acquire, |cur| {
            let f = Fill::unpack(cur);
            let fits = at.is_none_or(|end| end == f.len)
                && f.len as usize + s.len() <= self.cap as usize
                && f.nl as usize + lf <= self.nl_cap as usize;
            fits.then(|| Fill { len: f.len + s.len() as u32, nl: f.nl + lf as u32 }.pack())
        });
        let start = Fill::unpack(reserved.ok()?);
        // SAFETY: the range is inside the byte area (capacity checked) and was
        // reserved by this call only; no piece references it yet.
        unsafe { ptr::copy_nonoverlapping(s.as_ptr(), self.bytes_ptr().add(start.len as usize), s.len()) };
        if lf > 0 {
            let (slots, mut k) = (start.nl as usize, 0);
            crate::newlines::positions_callback(s.as_bytes(), |i| {
                // `lf` is the caller's count; never write past the slots reserved for it.
                if k < lf {
                    // SAFETY: `start.nl + k < start.nl + lf <= nl_cap` (capacity checked); slot
                    // reserved by this call.
                    unsafe { self.nl_ptr().add(slots + k).write(start.len + i as u32) };
                }
                k += 1;
            });
            debug_assert_eq!(k, lf, "`lf` disagrees with the newline scan");
        }
        Some(start)
    }

    /// # Safety
    /// `[start, start + len)` must be published and lie on char boundaries of
    /// the appended text.
    pub(crate) unsafe fn str(&self, start: u32, len: u32) -> &str {
        // SAFETY: published bytes were copied from `&str`s and never change;
        // the caller guarantees the range and its boundaries.
        unsafe {
            str::from_utf8_unchecked(slice::from_raw_parts(self.bytes_ptr().add(start as usize), len as usize))
        }
    }

    /// # Safety
    /// Newline slots `[first, first + count)` must be published.
    pub(crate) unsafe fn newlines(&self, first: u32, count: u32) -> &[u32] {
        // SAFETY: published slots are initialized and never change.
        unsafe { slice::from_raw_parts(self.nl_ptr().add(first as usize), count as usize) }
    }

    fn bytes_ptr(&self) -> *mut u8 {
        self.bytes.as_ptr()
    }

    fn nl_ptr(&self) -> *mut u32 {
        self.newlines.as_ptr()
    }
}

impl Drop for Chunk {
    fn drop(&mut self) {
        let fill = Fill::unpack(*self.fill.get_mut());
        match self.storage {
            // SAFETY: `words` came from `Box::leak` in `with_capacity` and is freed only here.
            Storage::Words(words) => drop(unsafe { Box::from_raw(words.as_ptr()) }),
            // SAFETY: pointers, lengths (owned chunks are sealed: fill = original
            // lengths) and capacities come from the two `Vec`s forgotten in `from_string`.
            Storage::Owned { text_cap, nl_cap } => unsafe {
                drop(Vec::from_raw_parts(self.bytes.as_ptr(), fill.len as usize, text_cap));
                drop(Vec::from_raw_parts(self.newlines.as_ptr(), fill.nl as usize, nl_cap));
            },
        }
    }
}

#[cfg(test)]
mod tests;
