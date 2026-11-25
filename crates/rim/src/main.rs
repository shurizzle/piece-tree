//! Minimal vim-like terminal editor on top of `piece-tree`.

mod editor;

use std::{
    env,
    io::{self, BufWriter},
    path::PathBuf,
    process::ExitCode,
    time::Duration,
};

use crossterm::{
    cursor,
    event::{self, Event, KeyEventKind},
    execute, terminal,
};
use editor::{Background, Editor};
use terminal_colorsaurus::{QueryOptions, ThemeMode};

// The editor allocates on every key (frame layout, and the tree path when a version is kept):
// mimalloc makes each key 6-16% faster end to end on Linux/glibc (W8d) and edits 20-29% on macOS (D18).
#[global_allocator]
static ALLOCATOR: mimalloc::MiMalloc = mimalloc::MiMalloc;

/// Quiet time after the last event before `Editor::idle` runs (once per quiet period).
const IDLE: Duration = Duration::from_secs(1);

/// How often a running background `:w` is checked for completion.
const SAVE_POLL: Duration = Duration::from_millis(50);

const USAGE: &str = "usage: rim <file>...";

fn main() -> ExitCode {
    match run() {
        Ok(()) => ExitCode::SUCCESS,
        Err(e) => {
            eprintln!("rim: {e}");
            ExitCode::FAILURE
        }
    }
}

fn run() -> io::Result<()> {
    let mut paths = env::args_os().skip(1).map(PathBuf::from);
    let mut editor = Editor::open(paths.next().ok_or_else(|| io::Error::new(io::ErrorKind::InvalidInput, USAGE))?)?;
    for path in paths {
        editor.open_more(path)?;
    }
    // Asked before raw mode and the alternate screen: the query drives the terminal itself.
    if let Ok(ThemeMode::Light) = terminal_colorsaurus::theme_mode(QueryOptions::default()) {
        editor.set_background(Background::Light);
    }
    let _guard = TerminalGuard::enter()?;
    let mut out = BufWriter::new(io::stdout());
    let mut idle = true;
    loop {
        editor.render(&mut out)?;
        let saving = editor.saving();
        if (saving || !idle) && !event::poll(if saving { SAVE_POLL } else { IDLE })? {
            if saving {
                editor.poll_saves();
            } else {
                editor.idle();
                idle = true;
            }
            continue;
        }
        idle = false;
        if let Event::Key(key) = event::read()?
            && key.kind == KeyEventKind::Press
            && !editor.key(key)
        {
            return Ok(());
        }
    }
}

/// Restores the terminal on drop, including on panic.
struct TerminalGuard;

impl TerminalGuard {
    fn enter() -> io::Result<Self> {
        terminal::enable_raw_mode()?;
        let guard = Self;
        execute!(io::stdout(), terminal::EnterAlternateScreen)?;
        Ok(guard)
    }
}

impl Drop for TerminalGuard {
    fn drop(&mut self) {
        let _ = execute!(io::stdout(), terminal::LeaveAlternateScreen, cursor::SetCursorStyle::DefaultUserShape, cursor::Show);
        let _ = terminal::disable_raw_mode();
    }
}
