//! Offsets of every `\n` in a byte slice, extracted in bulk.
//!
//! Why not `memchr_iter(b'\n', ..)`: its iterator calls `find_raw(start, end)` once per hit and
//! restarts at `hit + 1`. `find_raw` compares one unaligned head vector, realigns, runs a
//! 4-vector loop and returns the *first* hit only, throwing away the compares of the other
//! vectors, so the next call computes them again (~12 ns per newline, ~0.36 ns/B on source code
//! with a line every ~35 bytes). Its `count` is a different function without per-hit state, which
//! is why counting runs at ~0.02 ns/B.
//!
//! Here every 64-byte block yields one 64-bit mask (bit `i` set when byte `i` is `\n`) and the
//! mask is flattened into offsets with a fixed number of unconditional writes (a loop over the
//! set bits mispredicts once per block). Blocks without a newline are skipped after one test,
//! which is the part of memchr's design worth keeping: it ORs the four vector compares and
//! tests once, so sparse text costs about what memchr costs and dense text is 3-9x faster.
//! Measured against `memchr_iter` + `collect` from blank lines through mean line lengths of 16 to
//! 1000 bytes to a single line without newlines: faster everywhere except that last case, which
//! ties (`benchmarks.md`), so there is no density heuristic and no memchr fallback.
//!
//! `positions_callback` is the same scan without the buffer: it loops over the set bits of each
//! mask and calls back once per hit, for callers that place the offsets themselves (`Chunk::try_append`
//! writes them straight into its reserved slots). That loop is what `flatten` avoids, so it is
//! slower than `positions` on irregular text (Rust sources 0.103 -> 0.171 ns/B when `positions`
//! was built on it, `benchmarks.md`) and `positions` keeps `flatten`; `try_append` handles short
//! texts, where it wins.
//!
//! `mask64` is the only architecture specific part: NEON on aarch64 and SSE2 on x86_64 (both
//! baseline there, no runtime detection). Everything else, and Miri (which does not run the
//! intrinsics), uses the portable SWAR mask, plain integer arithmetic.
//!
//! AVX2 was tried and rejected (no gain with `target-cpu=native`, up to 28% slower behind
//! `is_x86_feature_detected!`, D16), and so was the SSE4.2 string compare (`pcmpestrm`: 15-51% slower); AVX-512BW is untried (no host). Other architectures (wasm32, 32-bit x86,
//! loongarch64, s390x, riscv64, powerpc64, `std::simd`) use SWAR and are listed in D16 as to-try.

use std::ptr;

use memchr::memchr_iter;

/// Offsets of the `\n` bytes of `bytes`, ascending.
///
/// `bytes.len()` must fit in `u32` (the caller asserts it: offsets are `u32`).
pub(crate) fn positions(bytes: &[u8]) -> Vec<u32> {
    positions_by(bytes, mask64)
}

/// Calls `f(i)` for every `\n` at offset `i` of `bytes`, ascending: the same scan as `positions`
/// for callers that place the offsets themselves (no temporary buffer, and `f` only ever sees real
/// hits, so a caller may write into slots it does not own past the last hit's).
///
/// `bytes.len()` must fit in `u32` like for `positions`.
#[inline(always)]
pub(crate) fn positions_callback(bytes: &[u8], f: impl FnMut(usize)) {
    each_by(bytes, mask64, f);
}

/// `positions_callback` with the mask given.
#[inline(always)]
fn each_by(bytes: &[u8], mask: impl Fn(&[u8; 64]) -> u64, mut f: impl FnMut(usize)) {
    blocks_by(bytes, mask, |mut m, base| {
        while m != 0 {
            f(base + m.trailing_zeros() as usize);
            m &= m - 1;
        }
    });
}

/// Calls `sink(mask(block), base)` for every 64-byte block of `bytes` (the last one zero padded),
/// `base` being the block's offset. The one block loop of the module: the sink decides how the
/// mask becomes offsets (`flatten` for `positions`, a loop per hit for `positions_callback`, counts
/// for `eol_counts`) and is inlined into it.
#[inline(always)]
fn blocks_by<M>(bytes: &[u8], mask: impl Fn(&[u8; 64]) -> M, mut sink: impl FnMut(M, usize)) {
    let mut base = 0usize;
    let (blocks, rest) = bytes.as_chunks::<64>();
    for block in blocks {
        sink(mask(block), base);
        base += 64;
    }
    if !rest.is_empty() {
        // Zero padding is never `\n` or `\r`, so the padded block reports only real hits.
        let mut pad = [0u8; 64];
        pad[..rest.len()].copy_from_slice(rest);
        sink(mask(&pad), base);
    }
}

/// `bytes` copied into a new buffer of exactly its length, and the offsets of its `\n` (as
/// `positions`): one pass, each block copied while its mask is computed, instead of a copy and then
/// a second read of the whole text.
pub(crate) fn copy_positions(bytes: &[u8]) -> (Vec<u8>, Vec<u32>) {
    debug_assert!(u32::try_from(bytes.len()).is_ok());
    let mut copy = Vec::<u8>::with_capacity(bytes.len());
    let (src, dst) = (bytes.as_ptr(), copy.as_mut_ptr());
    let mut out: Vec<u32> = Vec::with_capacity(bytes.len() / 64 + 64);
    blocks_by(bytes, mask64, |m, base| {
        let n = bytes.len() - base;
        // SAFETY: `base < bytes.len()` (a block exists there); `[base, base + min(n, 64))` is inside
        // both `bytes` and the capacity of `copy`, which are distinct allocations.
        unsafe {
            if n >= 64 {
                // A constant size: vector moves, no `memcpy` call per block.
                ptr::copy_nonoverlapping(src.add(base), dst.add(base), 64);
            } else {
                ptr::copy_nonoverlapping(src.add(base), dst.add(base), n);
            }
        }
        push_block(&mut out, m, base as u32);
    });
    // SAFETY: every block wrote its bytes, so `[0, bytes.len())` is initialized.
    unsafe { copy.set_len(bytes.len()) };
    debug_assert_eq!(out.len(), memchr_iter(b'\n', bytes).count(), "newline scan disagrees with memchr");
    (copy, out)
}

/// `bytes[from..]` with `\r\n` and lone `\r` turned into `\n`, in place, then truncated (the
/// result is never longer). One pass of block masks: no per-line search restart, no per-line copy call.
pub(crate) fn normalize_in_place(bytes: &mut Vec<u8>, from: usize) {
    normalize_in_place_by(bytes, from, byte_mask64);
}

/// Appends `src` to `out` with `\r\n` and lone `\r` turned into `\n` (the same pass as
/// `normalize_in_place`, writing into `out`'s spare capacity).
pub(crate) fn normalize_append(out: &mut Vec<u8>, src: &[u8]) {
    normalize_append_by(out, src, byte_mask64);
}

#[inline(always)]
fn normalize_in_place_by(bytes: &mut Vec<u8>, from: usize, mask: impl Fn(&[u8; 64], u8) -> u64) {
    let len = bytes.len() - from;
    // One raw pointer for reads and writes: the pass reads and writes the same bytes.
    // SAFETY: `from <= bytes.len()`.
    let p = unsafe { bytes.as_mut_ptr().add(from) };
    // SAFETY: `p` is valid for reads and writes of `len` initialized bytes, and `dst == src`.
    let w = unsafe { normalize_raw(p, len, p, mask) };
    bytes.truncate(from + w);
}

#[inline(always)]
fn normalize_append_by(out: &mut Vec<u8>, src: &[u8], mask: impl Fn(&[u8; 64], u8) -> u64) {
    out.reserve(src.len());
    let old = out.len();
    // SAFETY: `reserve` left `src.len()` writable bytes after `old`, in `out`'s own allocation, which
    // `src` (borrowed while `out` is borrowed mutably) cannot overlap.
    let w = unsafe { normalize_raw(src.as_ptr(), src.len(), out.as_mut_ptr().add(old), mask) };
    // SAFETY: `normalize_raw` initialized `[old, old + w)`.
    unsafe { out.set_len(old + w) };
}

/// Writes the `len` bytes at `src` to `dst` with every `\r` as `\n` and every `\n` that follows a
/// `\r` dropped (so `\r\n` -> `\n`), and returns the bytes written (at most `len`).
///
/// Per 64-byte block: a `\r` mask (a block without one, not right after a `\r`, is one 64-byte
/// store); otherwise the `\r` lanes are rewritten in a local copy and the runs between dropped lanes
/// stored with constant 64-byte writes, the junk past each run being overwritten by the next one
/// or left past the end. Every write stays below `len` and below the end of the next block, which
/// is loaded before the current one is written, so the pass also works in place.
///
/// # Safety
/// `src` is valid for reads and `dst` for writes of `len` bytes, and either `dst == src` or the two
/// ranges do not overlap.
#[inline(always)]
unsafe fn normalize_raw(src: *const u8, len: usize, dst: *mut u8, mask: impl Fn(&[u8; 64], u8) -> u64) -> usize {
    let load = |at: usize| -> [u8; 64] {
        let mut b = [0u8; 64];
        if at + 64 <= len {
            // SAFETY: `[at, at + 64)` is inside the source.
            b = unsafe { ptr::read_unaligned(src.add(at).cast::<[u8; 64]>()) };
        } else if at < len {
            // SAFETY: `[at, len)` is inside the source; the rest of `b` stays zero (never `\r`).
            unsafe { ptr::copy_nonoverlapping(src.add(at), b.as_mut_ptr(), len - at) };
        }
        b
    };
    // Stores the `n <= 64` bytes of `from` at output offset `w`: 64 of them (a constant-size move)
    // when that stays inside the output, exactly `n` otherwise.
    let put = |w: usize, from: &[u8], n: usize| {
        // SAFETY: `from` has at least 64 bytes (a block, or `buf[prev..]` with `prev <= 64`), and
        // `n <= 64`. `w + 64 <= len` (or `w + n <= len`: output never outgrows input) is inside `dst`;
        // in place, `w` never passes the read position, so the write ends before the end of the next
        // block, already loaded.
        unsafe {
            if w + 64 <= len {
                ptr::write_unaligned(dst.add(w).cast::<[u8; 64]>(), *from.as_ptr().cast::<[u8; 64]>());
            } else {
                ptr::copy(from.as_ptr(), dst.add(w), n);
            }
        }
    };
    // `carry`: the previous block ended with `\r`, so a `\n` in lane 0 is dropped.
    let (mut w, mut base, mut carry) = (0usize, 0usize, 0u64);
    let mut cur = load(0);
    while base < len {
        let next = load(base + 64);
        let blen = (len - base).min(64);
        let cr = mask(&cur, b'\r');
        if cr | carry == 0 {
            put(w, &cur, blen);
            w += blen;
        } else {
            let drop = mask(&cur, b'\n') & (cr << 1 | carry);
            // Room for a 64-byte store from any run start.
            let mut buf = [0u8; 128];
            buf[..64].copy_from_slice(&cur);
            let mut m = cr;
            while m != 0 {
                buf[m.trailing_zeros() as usize] = b'\n';
                m &= m - 1;
            }
            let (mut prev, mut d) = (0, drop);
            while d != 0 {
                let i = d.trailing_zeros() as usize;
                d &= d - 1;
                put(w, &buf[prev..], i - prev);
                w += i - prev;
                prev = i + 1;
            }
            put(w, &buf[prev..], blen - prev);
            w += blen - prev;
        }
        carry = cr >> 63;
        base += 64;
        cur = next;
    }
    w
}

/// Line endings of `bytes` as `(\n, \r, \r\n)` counts, where a `\r\n` also counts in the other two:
/// one pass of two block masks and popcounts, no per-hit work.
pub(crate) fn eol_counts(bytes: &[u8]) -> (usize, usize, usize) {
    eol_counts_by(bytes, byte_mask64)
}

/// `eol_counts` with the byte mask given.
#[inline(always)]
fn eol_counts_by(bytes: &[u8], mask: impl Fn(&[u8; 64], u8) -> u64) -> (usize, usize, usize) {
    // `carry`: the previous block ended with `\r`, so a `\n` in lane 0 completes a `\r\n`.
    let (mut lf, mut cr, mut crlf, mut carry) = (0, 0, 0, 0u64);
    blocks_by(bytes, |b| (mask(b, b'\n'), mask(b, b'\r')), |(n, c), _| {
        lf += n.count_ones() as usize;
        cr += c.count_ones() as usize;
        crlf += (n & (c << 1 | carry)).count_ones() as usize;
        carry = c >> 63;
    });
    (lf, cr, crlf)
}

/// `positions` with the mask given (tests run the native and the SWAR one on the same inputs).
fn positions_by(bytes: &[u8], mask: impl Fn(&[u8; 64]) -> u64) -> Vec<u32> {
    debug_assert!(u32::try_from(bytes.len()).is_ok());
    // One slot per 64 bytes is enough for sparse text; denser text grows it by doubling. Unused
    // capacity is never touched, so it costs address space, not memory.
    let mut out: Vec<u32> = Vec::with_capacity(bytes.len() / 64 + 64);
    // Cannot overflow `u32`: `base + 64 <= bytes.len() <= u32::MAX` after a full block.
    blocks_by(bytes, mask, |m, base| push_block(&mut out, m, base as u32));
    // Every test (all debug builds) checks the whole result against memchr's counter.
    debug_assert_eq!(out.len(), memchr_iter(b'\n', bytes).count(), "newline scan disagrees with memchr");
    out
}

/// Appends `base + i` for every set bit `i` of `mask`; an empty mask (sparse text) costs one test.
#[inline(always)]
fn push_block(out: &mut Vec<u32>, mask: u64, base: u32) {
    if mask != 0 {
        // `flatten` writes up to 64 slots past the ones it keeps.
        out.reserve(64);
        let len = out.len();
        // SAFETY: `reserve(64)` left room for 64 slots at `len`, and `flatten` needs
        // `max(hits, 8) <= 64`.
        let n = unsafe { flatten(mask, base, out.as_mut_ptr().add(len)) };
        // SAFETY: `flatten` initialized slots `[len, len + n)`, inside the capacity.
        unsafe { out.set_len(len + n) };
    }
}

/// Writes `base + i` for every set bit `i` of `mask` (ascending) at `dst`; returns the count.
/// Writes at least 8 slots (junk after the real ones, overwritten or dropped by the caller):
/// a fixed trip count avoids a mispredicted loop for the common blocks with 1-8 newlines.
///
/// # Safety
/// `dst` is valid for writes of `max(mask.count_ones(), 8)` `u32`s.
#[inline(always)]
unsafe fn flatten(mut mask: u64, base: u32, dst: *mut u32) -> usize {
    let hits = mask.count_ones() as usize;
    for k in 0..8 {
        // `wrapping_add`: once the mask is empty `trailing_zeros() == 64`, and the junk may wrap.
        // SAFETY: `k < 8 <= max(hits, 8)`.
        unsafe { dst.add(k).write(base.wrapping_add(mask.trailing_zeros())) };
        mask &= mask.wrapping_sub(1);
    }
    for k in 8..hits {
        // SAFETY: `k < hits`.
        unsafe { dst.add(k).write(base + mask.trailing_zeros()) };
        mask &= mask.wrapping_sub(1);
    }
    hits
}

/// The native mask where there is one, SWAR elsewhere and under Miri.
#[cfg(not(all(not(miri), any(target_arch = "aarch64", target_arch = "x86_64"))))]
use byte_mask64_swar as byte_mask64;

/// Bit `i` of the result is set when byte `i` of `block` is `\n`.
#[inline(always)]
fn mask64(block: &[u8; 64]) -> u64 {
    byte_mask64(block, b'\n')
}

/// `mask64` on the portable code, for tests that compare it with the native one.
#[cfg(test)]
fn mask64_swar(block: &[u8; 64]) -> u64 {
    byte_mask64_swar(block, b'\n')
}

/// Portable mask: 8 bytes at a time in a `u64`, no intrinsics (so Miri runs it too).
#[cfg(any(test, miri, not(any(target_arch = "aarch64", target_arch = "x86_64"))))]
#[inline(always)]
fn byte_mask64_swar(block: &[u8; 64], byte: u8) -> u64 {
    let needle = u64::from_le_bytes([byte; 8]);
    let mut zero = [0u64; 8];
    let mut any = 0u64;
    for (z, word) in zero.iter_mut().zip(block.as_chunks::<8>().0) {
        // Zero byte wherever the byte was `byte`; exact zero-byte test, no carry crosses a byte
        // because `(t & 0x7F) + 0x7F <= 0xFE`. The result has 0x80 in the matching bytes.
        let t = u64::from_le_bytes(*word) ^ needle;
        *z = !(((t & 0x7F7F_7F7F_7F7F_7F7F) + 0x7F7F_7F7F_7F7F_7F7F) | t) & 0x8080_8080_8080_8080;
        any |= *z;
    }
    if any == 0 {
        return 0;
    }
    // The multiply gathers the 8 high bits (positions 7, 15, ..) into the top byte: bit `i` of
    // it is byte `i` of the word, with no overlapping partial products.
    zero.iter().enumerate().fold(0, |m, (i, z)| m | ((z >> 7).wrapping_mul(0x0102_0408_1020_4080) >> 56) << (i * 8))
}

/// Bit `i` of the result is set when byte `i` of `block` is `byte`.
#[cfg(all(not(miri), target_arch = "aarch64"))]
#[inline(always)]
fn byte_mask64(block: &[u8; 64], byte: u8) -> u64 {
    use std::arch::aarch64::*;
    let p = block.as_ptr();
    // SAFETY: NEON is part of the aarch64 baseline; the four 16-byte loads stay inside `block`.
    unsafe {
        let nl = vdupq_n_u8(byte);
        let e0 = vceqq_u8(vld1q_u8(p), nl);
        let e1 = vceqq_u8(vld1q_u8(p.add(16)), nl);
        let e2 = vceqq_u8(vld1q_u8(p.add(32)), nl);
        let e3 = vceqq_u8(vld1q_u8(p.add(48)), nl);
        // memchr's early out: one horizontal max for the whole block.
        if vmaxvq_u8(vorrq_u8(vorrq_u8(e0, e1), vorrq_u8(e2, e3))) == 0 {
            return 0;
        }
        const WEIGHTS: [u8; 16] = [1, 2, 4, 8, 16, 32, 64, 128, 1, 2, 4, 8, 16, 32, 64, 128];
        let w = vld1q_u8(WEIGHTS.as_ptr());
        // Three pairwise adds fold 4 x 16 weighted lane bytes into 8 bytes = the 64-bit mask.
        let s = vpaddq_u8(vpaddq_u8(vandq_u8(e0, w), vandq_u8(e1, w)), vpaddq_u8(vandq_u8(e2, w), vandq_u8(e3, w)));
        let s = vpaddq_u8(s, s);
        vgetq_lane_u64(vreinterpretq_u64_u8(s), 0)
    }
}

/// Bit `i` of the result is set when byte `i` of `block` is `byte`.
#[cfg(all(not(miri), target_arch = "x86_64"))]
#[inline(always)]
fn byte_mask64(block: &[u8; 64], byte: u8) -> u64 {
    use std::arch::x86_64::*;
    let p = block.as_ptr();
    // SAFETY: SSE2 is part of the x86_64 baseline; the loads are unaligned and stay inside `block`.
    unsafe {
        let nl = _mm_set1_epi8(byte as i8);
        let e0 = _mm_cmpeq_epi8(_mm_loadu_si128(p.cast()), nl);
        let e1 = _mm_cmpeq_epi8(_mm_loadu_si128(p.add(16).cast()), nl);
        let e2 = _mm_cmpeq_epi8(_mm_loadu_si128(p.add(32).cast()), nl);
        let e3 = _mm_cmpeq_epi8(_mm_loadu_si128(p.add(48).cast()), nl);
        // memchr's early out: one movemask for the whole block.
        if _mm_movemask_epi8(_mm_or_si128(_mm_or_si128(e0, e1), _mm_or_si128(e2, e3))) == 0 {
            return 0;
        }
        // 16 bits each, never negative.
        let lane = |e| _mm_movemask_epi8(e) as u32 as u64;
        lane(e0) | lane(e1) << 16 | lane(e2) << 32 | lane(e3) << 48
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::test_util::Rng;

    fn naive(bytes: &[u8]) -> Vec<u32> {
        bytes.iter().enumerate().filter(|&(_, &b)| b == b'\n').map(|(i, _)| i as u32).collect()
    }

    /// Bytes next to `\n` in value or bit pattern must never match: 0x0B, 0x8A (high bit set), 0xFF, 0.
    const NOISE: [u8; 5] = [0x0B, 0x8A, 0xFF, 0x00, b'a'];

    /// Large enough for many 64-byte blocks; scaled down under Miri.
    #[cfg(not(miri))]
    const LARGE: usize = 100_003;
    #[cfg(miri)]
    const LARGE: usize = 1_003;

    fn random_bytes(rng: &mut Rng, len: usize, one_in: usize) -> Vec<u8> {
        (0..len).map(|_| if rng.below(one_in) == 0 { b'\n' } else { NOISE[rng.below(NOISE.len())] }).collect()
    }

    /// The public entry (native mask) and the portable mask must both give the naive result.
    fn check_all(bytes: &[u8], what: &str) {
        let expected = naive(bytes);
        assert_eq!(positions(bytes), expected, "native mask, {what}");
        assert_eq!(copy_positions(bytes), (bytes.to_vec(), expected.clone()), "copy, {what}");
        assert_eq!(positions_by(bytes, mask64_swar), expected, "swar mask, {what}");
        let collect = |mask: &dyn Fn(&[u8; 64]) -> u64| {
            let mut got = Vec::new();
            each_by(bytes, mask, |i| got.push(i as u32));
            got
        };
        assert_eq!(collect(&mask64), expected, "callback, native mask, {what}");
        assert_eq!(collect(&mask64_swar), expected, "callback, swar mask, {what}");
        let mut via_public = Vec::new();
        positions_callback(bytes, |i| via_public.push(i as u32));
        assert_eq!(via_public, expected, "positions_callback, {what}");
    }

    /// Lengths around the 16 and 64 byte boundaries and the zero-padded tail.
    #[cfg(not(miri))]
    fn lengths() -> Vec<usize> {
        (0..=200).chain([255, 256, 257, 1000, 4097]).collect()
    }

    /// Under Miri only the lengths next to a block boundary: every length took 258 s.
    #[cfg(miri)]
    fn lengths() -> Vec<usize> {
        (0..=17).chain([31, 32, 33, 47, 48, 49, 63, 64, 65, 127, 128, 129, 255, 256, 257]).collect()
    }

    #[test]
    fn every_mask_matches_the_naive_scan_at_every_length() {
        let mut rng = Rng(7);
        // Densities from all newlines to none (the empty-block early out) and one per block or two.
        for len in lengths() {
            for one_in in [1, 2, 5, 64, 100, 1_000_000] {
                check_all(&random_bytes(&mut rng, len, one_in), &format!("len {len}, one in {one_in}"));
            }
        }
    }

    #[test]
    fn every_mask_matches_the_naive_scan_on_large_input() {
        let mut rng = Rng(11);
        // Source-like density (one in ~35), dense (the >8 hits path and capacity growth), and long
        // lines (mostly empty blocks).
        for one_in in [35, 3, 1000] {
            check_all(&random_bytes(&mut rng, LARGE, one_in), &format!("one in {one_in}"));
        }
        assert_eq!(positions(b""), Vec::<u32>::new());
    }

    /// The mask producers are the only code that depends on the architecture: check every lane on
    /// its own, all lanes at once, and none, with noise around (bytes next to `byte` in value or
    /// bit pattern) so a wrong lane order, width or needle cannot hide.
    fn check_lanes(mask: impl Fn(&[u8; 64], u8) -> u64) {
        let mut rng = Rng(3);
        for byte in *b"\n\r" {
            let noise = [byte + 1, byte - 1, byte | 0x80, 0xFF, 0x00, b'a', b'\n' ^ b'\r' ^ byte];
            for lane in 0..64 {
                let mut block = [0u8; 64];
                block.iter_mut().for_each(|b| *b = noise[rng.below(noise.len())]);
                block[lane] = byte;
                assert_eq!(mask(&block, byte), 1 << lane, "byte {byte}, lane {lane}");
            }
            assert_eq!(mask(&[byte; 64], byte), u64::MAX);
            assert_eq!(mask(&[byte | 0x80; 64], byte), 0);
        }
    }

    #[test]
    fn masks_report_exactly_the_needle_lanes() {
        check_lanes(byte_mask64);
        check_lanes(byte_mask64_swar);
        let block = [b'\n'; 64];
        assert_eq!((mask64(&block), mask64_swar(&block)), (u64::MAX, u64::MAX));
    }

    /// `\r\n` and lone `\r` to `\n`, byte by byte.
    fn naive_normalize(b: &[u8]) -> Vec<u8> {
        let mut out = Vec::new();
        for (i, &c) in b.iter().enumerate() {
            if c == b'\n' && i > 0 && b[i - 1] == b'\r' {
                continue;
            }
            out.push(if c == b'\r' { b'\n' } else { c });
        }
        out
    }

    /// Both entries with both masks; `from` > 0 keeps a prefix untouched in place.
    fn check_normalize(b: &[u8], what: &str) {
        let want = naive_normalize(b);
        for (name, mask) in [("native", &byte_mask64 as &dyn Fn(&[u8; 64], u8) -> u64), ("swar", &byte_mask64_swar)] {
            let mut v = b.to_vec();
            normalize_in_place_by(&mut v, 0, mask);
            assert_eq!(v, want, "in place, {name}, {what}");
            let mut out = b"pre".to_vec();
            normalize_append_by(&mut out, b, mask);
            assert_eq!(out[3..], want[..], "append, {name}, {what}");
            assert_eq!(&out[..3], b"pre");
        }
        let cut = b.iter().position(|&c| c == b'\r').unwrap_or(b.len());
        let mut v = b.to_vec();
        normalize_in_place(&mut v, cut);
        assert_eq!(v, want, "public in place from the first \\r, {what}");
        let mut out = Vec::new();
        normalize_append(&mut out, b);
        assert_eq!(out, want, "public append, {what}");
    }

    #[test]
    fn normalize_matches_the_naive_rewrite() {
        const BYTES: [u8; 5] = [b'\r', b'\n', b'a', 0x8D, 0xE9];
        let mut rng = Rng(13);
        for len in lengths() {
            for density in [1, 3, 40, 1_000_000] {
                let b: Vec<u8> = (0..len)
                    .map(|_| if rng.below(density) == 0 { BYTES[rng.below(2)] } else { BYTES[2 + rng.below(3)] })
                    .collect();
                check_normalize(&b, &format!("len {len}, one in {density}"));
            }
        }
        // `\r\n` split by every block boundary, a `\r` run, all CRLF, and the large input.
        let mut b = vec![b'x'; 300];
        for at in [63, 127, 191, 255] {
            b[at..at + 2].copy_from_slice(b"\r\n");
        }
        check_normalize(&b, "split pairs");
        check_normalize(&[b'\r'; 200], "all cr");
        check_normalize(&b"\r\n".repeat(150), "all crlf");
        check_normalize(&random_bytes(&mut rng, LARGE, 35).iter().map(|&c| if c == 0x0B { b'\r' } else { c }).collect::<Vec<_>>(), "large");
    }

    /// `(\n, \r, \r\n)` counted byte by byte.
    fn naive_eol(b: &[u8]) -> (usize, usize, usize) {
        let count = |x| b.iter().filter(|&&c| c == x).count();
        (count(b'\n'), count(b'\r'), b.windows(2).filter(|w| w == b"\r\n").count())
    }

    #[test]
    fn eol_counts_match_the_naive_count() {
        const BYTES: [u8; 4] = [b'\r', b'\n', b'a', 0x8D];
        let mut rng = Rng(5);
        for len in lengths() {
            for _ in 0..4 {
                let b: Vec<u8> = (0..len).map(|_| BYTES[rng.below(BYTES.len())]).collect();
                let want = naive_eol(&b);
                assert_eq!(eol_counts(&b), want, "native, len {len}");
                assert_eq!(eol_counts_by(&b, byte_mask64_swar), want, "swar, len {len}");
            }
        }
        // A `\r\n` split by every block boundary, and one that is not.
        let mut b = vec![b'a'; 257];
        for at in [63, 127, 191, 255] {
            b[at..at + 2].copy_from_slice(b"\r\n");
        }
        assert_eq!(eol_counts(&b), (4, 4, 4));
        assert_eq!(eol_counts(b"\r"), (0, 1, 0));
    }
}
