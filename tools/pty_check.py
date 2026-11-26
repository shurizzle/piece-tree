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
import struct
import sys
import tempfile
import termios
import time

exe = sys.argv[1]
path = sys.argv[2] if len(sys.argv) > 2 else tempfile.mkstemp()[1]
pid, fd = pty.fork()
if pid == 0:
    os.environ["XDG_CONFIG_HOME"] = "/nonexistent"
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
send(b":q!\r")
check("reporting off at exit", off in pump(0.5))
sys.exit(1 if failures else 0)
