call mkdir("d")
call writefile(["a"], "f.x")
e d
echo bufnr('%') &modified &readonly line('$') bufname('%')
echo execute('ls!')
"---
call mkdir("d")
call writefile(["a"], "f.x")
e f.x
e d
echo bufnr('%') &modified &readonly bufname('%')
e f.x
echo bufnr('%')
"---
call mkdir("d")
call writefile(["a"], "f.x")
e f.x
sp d
echo winnr('$') bufname('%') &readonly
"---
e nosuchdir/x
echo bufname('%') &readonly
"---
call mkdir("d")
call writefile(["a"], "f.x")
badd d
b d
echo bufname('%') line('$')
echo execute('ls!')
"---
call mkdir("d")
call writefile(["a"], "f.x")
args f.x d
next
echo isdirectory(bufname("%")) bufnr("%")
"---
call mkdir("d")
call writefile(["a"], "f.x")
args f.x d
next
echo bufname("%") isdirectory(bufname("%")) argv()
echo execute("ls!")
"---
call mkdir("d")
e d/
echo bufname("%") bufnr("%")
echo execute("ls!")
