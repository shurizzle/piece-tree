//! Persistent piece tree text buffer.
//!
//! Combines a purely functional piece tree (cheap snapshots, undo/redo by swapping
//! roots) with per-buffer line feed caches (fast line lookup). The tree is a
//! join-based AVL: insert and delete are expressed as `split` + `join`.
//!
//! Text is stored with `\n` line endings only; [`LineEnding`] is applied on output.
//!
//! ```
//! use piece_tree::{Document, LineEnding};
//!
//! let mut doc = Document::new("one\r\ntwo\r\n");
//! assert_eq!(doc.eol(), LineEnding::CrLf);
//! doc.insert(4, "1.5\n");
//! assert_eq!(doc.text().line(1), "1.5");
//!
//! let snapshot = doc.text().clone(); // O(1), shares structure
//! doc.delete(0..4);
//! assert_eq!(snapshot.line_count(), 4);
//! assert!(doc.undo() && doc.text().ptr_eq(&snapshot));
//!
//! let mut out = Vec::new();
//! doc.write_to(&mut out).unwrap();
//! assert_eq!(out, b"one\r\n1.5\r\ntwo\r\n");
//! ```

mod chunk;
mod document;
mod eol;
mod newlines;
mod search;
mod text;
mod tree;

#[cfg(test)]
mod test_util;

pub use document::{Document, Edit, Version, map_offset};
pub use eol::LineEnding;
pub use regex_cursor::Cursor as RegexCursor;
pub use search::{Regex, RegexError, TextCursor};
pub use text::{Chunks, Text};
