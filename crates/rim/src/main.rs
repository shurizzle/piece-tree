//! Minimal vim-like terminal editor on top of `piece-tree`.

mod editor;

use std::{
    env,
    io::{self, BufWriter},
    path::PathBuf,
    process::ExitCode,
    time::Duration,
};
use std::time::Instant;
#[cfg(unix)]
use std::io::Write;

use crossterm::{
    cursor,
    event::{self, DisableMouseCapture, EnableMouseCapture, Event, KeyEventKind},
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
/// Pause between reads of the tty while the clipboard answer is awaited (`rim -`).
#[cfg(unix)]
const CLIPBOARD_TICK: Duration = Duration::from_millis(5);

/// How often a running background `:w` is checked for completion.
const SAVE_POLL: Duration = Duration::from_millis(50);


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
    let mut args = env::args_os().skip(1).map(PathBuf::from);
    let mut stdin = || io::read_to_string(io::stdin());
    let mut editor = Editor::start(&mut args, &mut stdin)?;
    // Asked before raw mode and the alternate screen: the query drives the terminal itself.
    if let Ok(ThemeMode::Light) = terminal_colorsaurus::theme_mode(QueryOptions::default()) {
        editor.set_background(Background::Light);
    }
    // After the background, so `set bg=` wins; before the other files, which copy the options.
    if let Some(dir) = env::var_os("XDG_CONFIG_HOME").map(PathBuf::from).or_else(|| env::var_os("HOME").map(|h| PathBuf::from(h).join(".config"))) {
        editor.set_runtime(dir.join("rim"));
        editor.load_init(&dir.join("rim").join("init"));
    }
    editor.open_rest(args, &mut stdin)?;
    editor.finish_start();
    #[cfg(unix)]
    editor.set_clipboard_reader(read_clipboard);
    let _guard = TerminalGuard::enter()?;
    let mut out = BufWriter::new(io::stdout());
    let mut idle = true;
    let mut mouse_on = false;
    set_mouse(&mut mouse_on, editor.mouse_enabled())?;
    loop {
        editor.render(&mut out)?;
        let saving = editor.saving();
        let base = if saving {
            Some(SAVE_POLL)
        } else if !idle {
            Some(IDLE)
        } else {
            None
        };
        if let Some(t) = editor.poll_timeout(base)
            && !event::poll(t)?
        {
            idle |= editor.timed_out(saving);
            continue;
        }
        idle = false;
        match event::read()? {
            Event::Key(key) if key.kind == KeyEventKind::Press && !editor.key(key) => return Ok(()),
            Event::Mouse(m) => editor.mouse(m, Instant::now()),
            _ => {}
        }
        // `:set mouse=` turns the terminal's mouse reporting on or off.
        set_mouse(&mut mouse_on, editor.mouse_enabled())?;
    }
}

/// Turns the terminal's mouse reporting on or off when `want` differs from `on`.
fn set_mouse(on: &mut bool, want: bool) -> io::Result<()> {
    if want != *on {
        if want { execute!(io::stdout(), EnableMouseCapture)? } else { execute!(io::stdout(), DisableMouseCapture)? }
        *on = want;
        #[cfg(unix)]
        MOUSE_ON.store(want, std::sync::atomic::Ordering::Relaxed);
    }
    Ok(())
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
    // Mouse reports arriving meanwhile would end up in the reply and be lost.
    let mouse = MOUSE_ON.load(std::sync::atomic::Ordering::Relaxed);
    if mouse {
        execute!(out, DisableMouseCapture).ok()?;
    }
    let _restore = Restore(mouse);
    out.write_all(b"\x1b]52;c;?\x07").ok()?;
    out.flush().ok()?;
    // Standard input is the text itself after `rim -`: the terminal answers on the tty then.
    // `poll` does not work on a tty opened by name on macOS (it reports it ready at once), so
    // that one is read without blocking and retried until the deadline.
    let stdin = io::stdin();
    let tty = if rustix::termios::isatty(&stdin) { None } else { Some(std::fs::File::open("/dev/tty").ok()?) };
    if let Some(t) = &tty {
        rustix::io::ioctl_fionbio(t, true).ok()?;
    }
    let fd = tty.as_ref().map_or_else(|| stdin.as_fd(), |t| t.as_fd());
    let deadline = Instant::now() + CLIPBOARD_WAIT;
    let mut reply = Vec::new();
    let mut buf = [0; 4096];
    loop {
        let left = deadline.checked_duration_since(Instant::now())?;
        let n = if tty.is_some() {
            match rustix::io::read(fd, &mut buf) {
                Err(rustix::io::Errno::AGAIN) => {
                    std::thread::sleep(CLIPBOARD_TICK.min(left));
                    continue;
                }
                n => n.ok()?,
            }
        } else {
            let timeout = Timespec { tv_sec: left.as_secs() as _, tv_nsec: left.subsec_nanos().into() };
            if poll(&mut [PollFd::new(&fd, PollFlags::IN)], Some(&timeout)).ok()? == 0 {
                return None;
            }
            rustix::io::read(fd, &mut buf).ok()?
        };
        if n == 0 {
            return None;
        }
        reply.extend_from_slice(&buf[..n]);
        if let Some(text) = editor::parse_osc52_reply(&reply) {
            return Some(text);
        }
    }
}

/// Whether the terminal reports the mouse (read by `read_clipboard`).
#[cfg(unix)]
static MOUSE_ON: std::sync::atomic::AtomicBool = std::sync::atomic::AtomicBool::new(false);

/// Turns mouse reporting back on when the clipboard read is over.
#[cfg(unix)]
struct Restore(bool);

#[cfg(unix)]
impl Drop for Restore {
    fn drop(&mut self) {
        if self.0 {
            let _ = execute!(io::stdout(), EnableMouseCapture);
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
        let _ = execute!(io::stdout(), DisableMouseCapture, terminal::LeaveAlternateScreen, cursor::SetCursorStyle::DefaultUserShape, cursor::Show);
        let _ = terminal::disable_raw_mode();
    }
}
