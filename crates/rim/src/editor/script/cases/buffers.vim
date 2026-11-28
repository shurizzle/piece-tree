echo execute("ls")
"---
echo execute("ls!")
"---
enew
echo execute("ls")
"---
enew
enew
echo execute("ls")
"---
e /nonexistent/a
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
b1
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
b1
echo execute("buffers")
"---
e /nonexistent/a
e /nonexistent/b
b1
echo execute("files")
"---
e /nonexistent/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
echo execute("ls a")
"---
e /nonexistent/a
normal! ix
echo execute("ls")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls +")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls a")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls h")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls %")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls #")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls u")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls!u")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls -")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls =")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls x")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls R")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls ah")
"---
e /nonexistent/a
normal! ix
enew!
echo execute("ls +h")
"---
e /nonexistent/a
split
echo execute("ls")
"---
e /nonexistent/a
split
echo execute("ls a")
"---
e /nonexistent/a
split
echo execute("ls h")
"---
e /nonexistent/a
e /nonexistent/b
split
echo execute("ls a")
"---
e /nonexistent/a
e /nonexistent/b
split
echo execute("ls h")
"---
e /nonexistent/a
e /nonexistent/b
split
b1
echo execute("ls")
"---
normal! 3ix
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
echo execute("ls")
"---
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
b2
b3
echo execute("ls")
"---
e /nonexistent/日本語
echo execute("ls")
"---
e /nonexistent/a b
echo execute("ls")
"---
enew
normal! ix
enew!
echo execute("ls")
"---
enew
normal! ix
enew!
echo execute("ls +")
