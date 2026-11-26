//! Minimal vim-like terminal editor on top of `piece-tree`.

mod editor;

use std::{
    env,
    io::{self, BufWriter},
    path::PathBuf,
    process::ExitCode,
    time::Duration,
};
#[cfg(unix)]
use std::{io::Write, time::Instant};

use crossterm::{
    cursor,
    event::{self, Event, KeyEventKind},
    execute, terminal,
};
use editor::{Background, Editor};
use terminal_colorsaurus::{QueryOptions, ThemeMode};

// The editor allocates on every key (frame layout, and the tree path when a version is kept):
// mimalloc makes each key 6-16% faster end to end on Linux/glibc (W8d) and edits 20-29% on macOS (D18).
// Miri cannot run mimalloc's C code.
#[cfg(not(miri))]
#[global_allocator]
static ALLOCATOR: mimalloc::MiMalloc = mimalloc::MiMalloc;

/// Quiet time after the last event before `Editor::idle` runs (once per quiet period).
const IDLE: Duration = Duration::from_secs(1);

/// How long `"+p` waits for the terminal's answer to the OSC 52 clipboard query.
#[cfg(unix)]
const CLIPBOARD_WAIT: Duration = Duration::from_millis(500);

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
    // Asked before raw mode and the alternate screen: the query drives the terminal itself.
    if let Ok(ThemeMode::Light) = terminal_colorsaurus::theme_mode(QueryOptions::default()) {
        editor.set_background(Background::Light);
    }
    // After the background, so `set bg=` wins; before the other files, which copy the options.
    if let Some(dir) = env::var_os("XDG_CONFIG_HOME").map(PathBuf::from).or_else(|| env::var_os("HOME").map(|h| PathBuf::from(h).join(".config"))) {
        editor.set_runtime(dir.join("rim"));
        editor.load_init(&dir.join("rim").join("init"));
    }
    for path in paths {
        editor.open_more(path)?;
    }
    #[cfg(unix)]
    editor.set_clipboard_reader(read_clipboard);
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

/// Asks the terminal for the clipboard (OSC 52 query) and reads its answer from stdin. It runs
/// while a key is handled, when crossterm is not reading, so the reply does not reach the key
/// parser; keys typed meanwhile are dropped. None without an answer in `CLIPBOARD_WAIT` (a
/// terminal without OSC 52 reads, or with them disabled).
#[cfg(unix)]
fn read_clipboard() -> Option<String> {
    use rustix::event::{PollFd, PollFlags, Timespec, poll};
    use std::os::fd::AsFd;
    let mut out = io::stdout();
    out.write_all(b"\x1b]52;c;?\x07").ok()?;
    out.flush().ok()?;
    let stdin = io::stdin();
    let fd = stdin.as_fd();
    let deadline = Instant::now() + CLIPBOARD_WAIT;
    let mut reply = Vec::new();
    let mut buf = [0; 4096];
    loop {
        let left = deadline.checked_duration_since(Instant::now())?;
        let timeout = Timespec { tv_sec: left.as_secs() as _, tv_nsec: left.subsec_nanos().into() };
        if poll(&mut [PollFd::new(&fd, PollFlags::IN)], Some(&timeout)).ok()? == 0 {
            return None;
        }
        let n = rustix::io::read(fd, &mut buf).ok()?;
        if n == 0 {
            return None;
        }
        reply.extend_from_slice(&buf[..n]);
        if let Some(text) = editor::parse_osc52_reply(&reply) {
            return Some(text);
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
