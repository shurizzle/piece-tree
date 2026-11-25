//! Long-running loops of one edit scenario, for sampling profilers:
//!
//! ```sh
//! cargo build --release -p piece-tree --example profile
//! samply record target/release/examples/profile typing
//! ```
//!
//! Scenarios: `typing`, `backspace`, `paste`, `edits`, `read`, `doc-typing`.

use std::{env, hint::black_box};

use piece_tree::{Document, Text};

fn sample(bytes: usize) -> String {
    let mut s = String::with_capacity(bytes + 64);
    let mut i = 0;
    while s.len() < bytes {
        s.push_str(&format!("    let value_{i} = compute({i}, \"lorem ipsum ✓\");\n"));
        i += 1;
    }
    s
}

fn main() {
    let scenario = env::args().nth(1).unwrap_or_else(|| "typing".into());
    let base = Text::from(sample(1 << 20).as_str());
    let start = base.line_to_offset(base.line_count() / 2);
    let mut seed = 1u64;
    let mut below = |n: usize| {
        seed = seed.wrapping_mul(6364136223846793005).wrapping_add(1442695040888963407);
        ((seed >> 33) % n as u64) as usize
    };
    for _ in 0..200 {
        let mut t = base.clone();
        match scenario.as_str() {
            "typing" => {
                for (i, off) in (start..start + 10_000).enumerate() {
                    t = t.insert(off, if i % 40 == 39 { "\n" } else { "x" });
                }
            }
            "backspace" => {
                t = t.insert(start, &"x".repeat(10_000));
                for off in (start..start + 10_000).rev() {
                    t = t.delete(off..off + 1);
                }
            }
            "paste" => {
                for _ in 0..10_000 {
                    let off = t.line_to_offset(below(t.line_count() - 1)) + 4;
                    t = t.insert(off, "paste\n");
                }
            }
            "edits" => {
                for _ in 0..5_000 {
                    let off = t.line_to_offset(below(t.line_count()));
                    t = t.insert(off, "edit\n");
                    let line = below(t.line_count() - 1);
                    t = t.delete(t.line_to_offset(line)..t.line_to_offset(line + 1));
                }
            }
            "read" => {
                // Reads over a typed text; the typing itself is a small part of the run.
                for (i, off) in (start..start + 10_000).enumerate() {
                    t = t.insert(off, if i % 40 == 39 { "\n" } else { "x" });
                }
                for _ in 0..20 {
                    black_box((0..t.line_count()).map(|i| t.line(i).len()).sum::<usize>());
                }
            }
            "doc-typing" => {
                // Typing through `Document`: one version and edit log entry per key.
                let mut doc = Document::new("");
                doc.insert(0, &t.to_string());
                for (i, off) in (start..start + 10_000).enumerate() {
                    doc.insert(off, if i % 40 == 39 { "\n" } else { "x" });
                }
                t = doc.text().clone();
                black_box(doc);
            }
            other => panic!("unknown scenario {other:?}"),
        }
        black_box(t);
    }
}
