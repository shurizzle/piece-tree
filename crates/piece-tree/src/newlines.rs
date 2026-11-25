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
//! `is_x86_feature_detected!`, D16); AVX-512BW is untried (no host). Other architectures (wasm32, 32-bit x86,
//! loongarch64, s390x, riscv64, powerpc64, `std::simd`) use SWAR and are listed in D16 as to-try.

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

/// Calls `sink(mask, base)` for every 64-byte block of `bytes` (the last one zero padded), where
/// bit `i` of `mask` is set when byte `base + i` is `\n`. The one block loop of the module: the
/// sink decides how the mask becomes offsets (`flatten` for `positions`, a loop per hit for
/// `positions_callback`) and is inlined into it.
#[inline(always)]
fn blocks_by(bytes: &[u8], mask: impl Fn(&[u8; 64]) -> u64, mut sink: impl FnMut(u64, usize)) {
    let mut base = 0usize;
    let (blocks, rest) = bytes.as_chunks::<64>();
    for block in blocks {
        sink(mask(block), base);
        base += 64;
    }
    if !rest.is_empty() {
        // Zero padding is never `\n`, so the padded block reports only real hits.
        let mut pad = [0u8; 64];
        pad[..rest.len()].copy_from_slice(rest);
        sink(mask(&pad), base);
    }
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
use mask64_swar as mask64;

/// Portable mask: 8 bytes at a time in a `u64`, no intrinsics (so Miri runs it too).
#[cfg(any(test, miri, not(any(target_arch = "aarch64", target_arch = "x86_64"))))]
#[inline(always)]
fn mask64_swar(block: &[u8; 64]) -> u64 {
    let mut zero = [0u64; 8];
    let mut any = 0u64;
    for (z, word) in zero.iter_mut().zip(block.as_chunks::<8>().0) {
        // Zero byte wherever the byte was `\n`; exact zero-byte test, no carry crosses a byte
        // because `(t & 0x7F) + 0x7F <= 0xFE`. The result has 0x80 in the matching bytes.
        let t = u64::from_le_bytes(*word) ^ 0x0A0A_0A0A_0A0A_0A0A;
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

/// Bit `i` of the result is set when byte `i` of `block` is `\n`.
#[cfg(all(not(miri), target_arch = "aarch64"))]
#[inline(always)]
fn mask64(block: &[u8; 64]) -> u64 {
    use std::arch::aarch64::*;
    let p = block.as_ptr();
    // SAFETY: NEON is part of the aarch64 baseline; the four 16-byte loads stay inside `block`.
    unsafe {
        let nl = vdupq_n_u8(b'\n');
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

/// Bit `i` of the result is set when byte `i` of `block` is `\n`.
#[cfg(all(not(miri), target_arch = "x86_64"))]
#[inline(always)]
fn mask64(block: &[u8; 64]) -> u64 {
    use std::arch::x86_64::*;
    let p = block.as_ptr();
    // SAFETY: SSE2 is part of the x86_64 baseline; the loads are unaligned and stay inside `block`.
    unsafe {
        let nl = _mm_set1_epi8(b'\n' as i8);
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

    #[test]
    fn every_mask_matches_the_naive_scan_at_every_length() {
        let mut rng = Rng(7);
        // Lengths around the 16 and 64 byte boundaries and the zero-padded tail; densities from
        // all newlines to none (the empty-block early out) and one per block or two.
        for len in (0..=200).chain([255, 256, 257, 1000, 4097]) {
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
    /// its own, all lanes at once, and none, with noise around so a wrong lane order or width
    /// cannot hide.
    fn check_lanes(mask: impl Fn(&[u8; 64]) -> u64) {
        let mut rng = Rng(3);
        for lane in 0..64 {
            let mut block = [0u8; 64];
            block.iter_mut().for_each(|b| *b = NOISE[rng.below(NOISE.len())]);
            block[lane] = b'\n';
            assert_eq!(mask(&block), 1 << lane, "lane {lane}");
        }
        assert_eq!(mask(&[b'\n'; 64]), u64::MAX);
        assert_eq!(mask(&[0x8A; 64]), 0);
    }

    #[test]
    fn masks_report_exactly_the_newline_lanes() {
        check_lanes(mask64);
        check_lanes(mask64_swar);
    }
}
