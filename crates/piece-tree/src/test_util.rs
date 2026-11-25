//! Deterministic randomness for tests (fixed seeds, reproducible failures).

/// Building blocks for random text: ASCII, multibyte chars, newlines.
pub(crate) const ATOMS: &[&str] = &["a", "bc", "\n", "é", "€", "xyz\n", "\n\n", "🦀", " ", "ß\n"];

/// 64-bit LCG (Knuth's MMIX constants).
pub(crate) struct Rng(pub(crate) u64);

impl Rng {
    pub(crate) fn below(&mut self, n: usize) -> usize {
        self.0 = self.0.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
        ((self.0 >> 33) % n as u64) as usize
    }

    /// Random char boundary in `s`.
    pub(crate) fn boundary(&mut self, s: &str) -> usize {
        let mut off = self.below(s.len() + 1);
        while !s.is_char_boundary(off) {
            off -= 1;
        }
        off
    }

    /// Random boundary range in `s`.
    pub(crate) fn range(&mut self, s: &str) -> std::ops::Range<usize> {
        let start = self.boundary(s);
        start..start + self.boundary(&s[start..])
    }

    /// Random text of 1..=`max_atoms` atoms.
    pub(crate) fn text(&mut self, max_atoms: usize) -> String {
        (0..1 + self.below(max_atoms)).map(|_| ATOMS[self.below(ATOMS.len())]).collect()
    }
}
