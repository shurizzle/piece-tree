//! Benchmarks modeled on the VS Code text buffer article.
//! Run with `cargo bench -p piece-tree`. Each scenario runs `REPS` times and
//! reports the minimum (least disturbed by other load) and the median.

use std::{
    hint::black_box,
    time::{Duration, Instant},
};

use piece_tree::{Document, Regex, Text};

const REPS: usize = 7;

struct Rng(u64);

impl Rng {
    fn below(&mut self, n: usize) -> usize {
        self.0 = self.0.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
        ((self.0 >> 33) % n as u64) as usize
    }
}

/// Source-like text of about `bytes` bytes, with some multibyte chars.
fn sample(bytes: usize) -> String {
    let mut s = String::with_capacity(bytes + 64);
    let mut i = 0;
    while s.len() < bytes {
        s.push_str(&format!("    let value_{i} = compute({i}, \"lorem ipsum ✓\");\n"));
        i += 1;
    }
    s
}

/// Runs `f` `REPS` times with a fresh seed each, prints min and median ns/op, returns the last output.
fn bench<T>(name: &str, ops: usize, mut f: impl FnMut(&mut Rng) -> T) -> T {
    let mut times: Vec<Duration> = Vec::with_capacity(REPS);
    let mut out = None;
    for rep in 0..REPS {
        let mut rng = Rng(rep as u64 + 1);
        let start = Instant::now();
        out = Some(black_box(f(&mut rng)));
        times.push(start.elapsed());
    }
    times.sort();
    let per_op = |d: Duration| d.as_nanos() as f64 / ops as f64;
    println!("{name:<30} min {:>11.1} ns/op   median {:>11.1} ns/op", per_op(times[0]), per_op(times[REPS / 2]));
    out.expect("REPS > 0")
}

/// Passes over every line, so each rep runs for milliseconds rather than microseconds.
const READ_PASSES: usize = 50;

fn read_all_lines(name: &str, t: &Text) {
    bench(name, READ_PASSES * t.line_count(), |_| {
        (0..READ_PASSES).map(|_| (0..t.line_count()).map(|i| t.line(i).len()).sum::<usize>()).sum::<usize>()
    });
}

/// 10 000 keystrokes in the middle of `base`, a newline every 40.
fn type_into(base: &Text) -> Text {
    let mut t = base.clone();
    let start = t.line_to_offset(t.line_count() / 2);
    for (i, off) in (start..start + 10_000).enumerate() {
        t = t.insert(off, if i % 40 == 39 { "\n" } else { "x" });
    }
    t
}

fn main() {
    let big = sample(50 << 20);
    let loaded = bench("load 50MB (per byte)", big.len(), |_| Text::from(big.as_str()));
    // Inputs cloned up front so only the load itself is timed.
    let mut owned = vec![big.clone(); REPS];
    bench("load 50MB owned (per byte)", big.len(), |_| Text::from(owned.pop().expect("one per rep")));
    let mut owned = vec![big.clone(); REPS];
    bench("Document load 50MB (per byte)", big.len(), |_| {
        Document::from_string(owned.pop().expect("one per rep"))
    });
    bench("line() random, loaded", 100_000, |rng| {
        (0..100_000).map(|_| loaded.line(rng.below(loaded.line_count())).len()).sum::<usize>()
    });
    drop(loaded);

    let base = Text::from(sample(1 << 20).as_str());
    let typed = bench("typing 10k chars in 1MB", 10_000, |_| type_into(&base));
    println!("{:<30} {:>10}", "pieces after typing", typed.chunks().count());
    read_all_lines("line() all, after typing", &typed);
    bench("line() 10x50 windows, typed", 50_000, |rng| {
        let mut sum = 0;
        for _ in 0..1_000 {
            let start = rng.below(typed.line_count() - 50);
            sum += (start..start + 50).map(|i| typed.line(i).len()).sum::<usize>();
        }
        sum
    });

    // Backspace over the typed text: deletes inside one piece.
    // `type_into` typed 10 000 ASCII bytes starting at the middle line of `base`.
    let end = base.line_to_offset(base.line_count() / 2) + 10_000;
    bench("backspace 10k", 10_000, |_| {
        let mut t = typed.clone();
        for off in (end - 10_000..end).rev() {
            t = t.delete(off..off + 1);
        }
        t
    });
    bench("offset_to_line random, typed", 100_000, |rng| {
        (0..100_000).map(|_| typed.offset_to_line(typed.len() / 2 + rng.below(1 << 16))).sum::<usize>()
    });

    let base = Text::from(sample(10 << 20).as_str());
    // Each paste lands inside the single loaded piece (or a piece split by an earlier paste).
    bench("paste mid-piece 1k on 10MB", 1_000, |rng| {
        let mut t = base.clone();
        for _ in 0..1_000 {
            // Every line but the empty last one starts with 4 ASCII spaces.
            let off = t.line_to_offset(rng.below(t.line_count() - 1)) + 4;
            t = t.insert(off, "paste\n");
        }
        t
    });
    let edited = bench("random edits 1k+1k on 10MB", 2_000, |rng| {
        let mut t = base.clone();
        for _ in 0..1_000 {
            let off = t.line_to_offset(rng.below(t.line_count()));
            t = t.insert(off, "edit\n");
            let line = rng.below(t.line_count() - 1);
            t = t.delete(t.line_to_offset(line)..t.line_to_offset(line + 1));
        }
        t
    });
    println!("{:<30} {:>10}", "pieces after random edits", edited.chunks().count());
    read_all_lines("line() all, after edits", &edited);

    // Regex over the loaded 10 MB (one piece) and after the random edits (~3000 pieces).
    // `regex on to_string` is the contiguous baseline, copy included.
    for (name, t) in [("10MB", &base), ("edited", &edited)] {
        for (kind, pat) in [("literal", "value_12345"), ("regex", r"\bvalue_\d+5\b")] {
            let (ours, oracle) = (Regex::new(pat).unwrap(), regex::Regex::new(pat).unwrap());
            let mb = t.len() as f64 / (1 << 20) as f64;
            let label = format!("find_iter {kind} {name}");
            bench(&format!("{label} (per MB)"), mb.ceil() as usize, |_| t.find_iter(&ours).count());
            bench(&format!("{label} regex+copy (per MB)"), mb.ceil() as usize, |_| {
                oracle.find_iter(&t.to_string()).count()
            });
        }
    }
    let re = Regex::new(r"compute\((\d+)").unwrap();
    let n = base.find_iter(&re).count();
    bench("replace_all literal (per match)", n, |_| base.replace_all(&re, "calc("));
    bench("replace_all $1 (per match)", n, |_| base.replace_all(&re, "calc($1"));
}
