//! Minimal vim-like terminal editor on top of `piece-tree`.

mod editor;

use std::{
    env,
    io::{self, BufWriter},
    path::PathBuf,
    process::ExitCode,
};

use crossterm::{
    cursor,
    event::{self, Event, KeyEventKind},
    execute, terminal,
};
use editor::{Background, Editor};
use terminal_colorsaurus::{QueryOptions, ThemeMode};

const USAGE: &str = "usage: pt-edit <file> [--eol lf|cr|crlf]";

fn main() -> ExitCode {
    match run() {
        Ok(()) => ExitCode::SUCCESS,
        Err(e) => {
            eprintln!("pt-edit: {e}");
            ExitCode::FAILURE
        }
    }
}

fn invalid(msg: impl std::fmt::Display) -> io::Error {
    io::Error::new(io::ErrorKind::InvalidInput, msg.to_string())
}

fn run() -> io::Result<()> {
    let (mut path, mut eol) = (None, None);
    let mut args = env::args().skip(1);
    while let Some(arg) = args.next() {
        match arg.as_str() {
            "--eol" => eol = Some(args.next().ok_or_else(|| invalid(USAGE))?.parse().map_err(invalid)?),
            _ if path.is_none() => path = Some(PathBuf::from(arg)),
            _ => return Err(invalid(USAGE)),
        }
    }
    let path = path.ok_or_else(|| invalid(USAGE))?;
    let mut editor = Editor::open(path, eol)?;
    // Asked before raw mode and the alternate screen: the query drives the terminal itself.
    if let Ok(ThemeMode::Light) = terminal_colorsaurus::theme_mode(QueryOptions::default()) {
        editor.set_background(Background::Light);
    }
    let _guard = TerminalGuard::enter()?;
    let mut out = BufWriter::new(io::stdout());
    loop {
        editor.render(&mut out)?;
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
