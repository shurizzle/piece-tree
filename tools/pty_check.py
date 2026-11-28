#!/usr/bin/env python3
"""Checks `rim`'s terminal side in a real pty (what the unit tests cannot reach): mouse reporting
on at start, `:set mouse=` turning it off and on, its suspension while the clipboard is read, a
clipboard answer with mouse reports before it, and the reset at exit.

    cargo build -p rim && python3 -I tools/pty_check.py target/debug/rim [file]
"""
import base64
import fcntl
import os
import pty
import select
import shutil
import struct
import sys
import tempfile
import termios
import time

exe = sys.argv[1]
# A short name: the status row (a window always has one, as in Neovim) shows `Ln N, Col N` after it, in 60 columns.
path = sys.argv[2] if len(sys.argv) > 2 else tempfile.mkstemp(dir="/tmp")[1]
# A home of its own, with a file under it: `:e ~/...` and `home_replace` need one, and the temp
# directory of the machine is not under it here. Short names: the status row has `Ln N, Col N` after the name.
home = tempfile.mkdtemp(dir="/tmp")
with open(os.path.join(home, ".rimpty"), "w") as f:
    f.write("RIMPTYOK\n")
noeol = os.path.join(home, ".rimnoeol")
with open(noeol, "w") as f:
    f.write("NOEOL")
pid, fd = pty.fork()
if pid == 0:
    os.environ["XDG_CONFIG_HOME"] = "/nonexistent"
    os.environ["HOME"] = home
    os.execv(exe, [exe, path])
fcntl.ioctl(fd, termios.TIOCSWINSZ, struct.pack("HHHH", 20, 60, 0, 0))
seen = b""


def pump(t):
    """Reads what rim writes for `t` seconds; returns it."""
    global seen
    out, end = b"", time.time() + t
    while time.time() < end:
        if select.select([fd], [], [], 0.05)[0]:
            try:
                out += os.read(fd, 65536)
            except OSError:
                break
    seen += out
    return out


def send(b):
    os.write(fd, b)


failures = []


def check(name, ok):
    print(("ok   " if ok else "FAIL ") + name)
    if not ok:
        failures.append(name)


on, off = b"\x1b[?1000h", b"\x1b[?1000l"
# rim asks the terminal for its colors first and waits for an answer that never comes here.
start = b""
for _ in range(8):
    start += pump(0.5)
    if on in start:
        break
check("mouse reporting on at start", on in start)
send(b":set mouse=\r")
check("`:set mouse=` turns it off", off in pump(0.4))
send(b":set mouse=a\r")
check("`:set mouse=a` turns it on", on in pump(0.4))
send(b'"+p')
out = pump(0.2)
check("reporting off while the clipboard is read", off in out and b"\x1b]52;c;?" in out)
send(b"\x1b[<0;5;2M\x1b[<0;5;2m" + b"\x1b]52;c;" + base64.b64encode(b"CLIP\n") + b"\x07")
out = pump(1.0)
check("mouse reports before the answer do not spoil it", b"CLIP" in out)
check("reporting on again afterwards", on in out)
# `:e ~/file`: the `~` is expanded (the file is read, not an empty buffer) and the name comes back
# as `~/...` in the `Ctrl+G` message (`home_replace`).
send(b":e ~/.rimpty\r")
check("`:e ~/file` opens the file", b"RIMPTYOK" in pump(0.6))
send(b"\x07")
check("Ctrl+G shows the name with `~`", b"~/.rimpty" in pump(0.4))
# The file ends with a line break: that is not a line of its own (Neovim's buffer has 1).
send(b"G:redraw!\r")
out = pump(0.6)
check("a file ending with a newline has no extra line", b"Ln 1" in out and b"Ln 2" not in out)
# `'fixendofline'` (default): a write ends the file with a line break even when it had none.
send(b":e ~/.rimnoeol\r")
pump(0.4)
send(b":w\r")
pump(0.6)
check("a write adds the last line break", open(noeol, "rb").read() == b"NOEOL\n")
# `:set nofixeol`: the break is left to `'endofline'`, so a file without one keeps none.
with open(noeol, "w") as f:
    f.write("NOEOL")
send(b":e ~/.rimnoeol\r")
pump(0.4)
send(b":set nofixeol\r")
pump(0.3)
send(b":w\r")
pump(0.6)
check("`:set nofixeol` keeps a file without its last break", open(noeol, "rb").read() == b"NOEOL")
send(b":set fixeol\r")
pump(0.3)
# A `~user` there is no user for: the wildcard expansion Neovim does says `E79`.
send(b":e ~rim_no_such_user_pty/x\r")
check("`:e ~nosuchuser/x` says E79", b"E79: Cannot expand wildcards" in pump(0.6))
# A file that cannot be read is told when it is entered, a directory is an empty buffer: neither ends the editor.
noperm = os.path.join(home, "noperm")
open(noperm, "w").write("secret\n")
os.chmod(noperm, 0)
if os.geteuid() != 0:
    send(b":e " + noperm.encode() + b"\r")
    check("an unreadable file says [Permission Denied]", b"[Permission Denied]" in pump(0.6))
os.chmod(noperm, 0o644)
send(b":set shortmess-=F\r:e " + home.encode() + b"\r")
check("a directory says it is one", b"is a directory" in pump(0.6))
# A control char is drawn as `^A`, as Neovim does.
send(b":call setline(1, \"a\\x01b\")\r")
check("a control char is drawn as ^A", b"a^Ab" in pump(0.6))
# `:q!` refuses while a hidden buffer has changes (`E162`), as Neovim does: `:qa!` leaves.
send(b":qa!\r")
check("reporting off at exit", off in pump(0.5))
shutil.rmtree(home, ignore_errors=True)
sys.exit(1 if failures else 0)
