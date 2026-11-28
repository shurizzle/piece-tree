call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
let g:m = execute('0file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
let g:m = execute('file! k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
let g:m = execute('1file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
let g:m = execute('file nosuch/q')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
let g:m = execute('file d/')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
let g:m = execute('file k.x l.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
let g:m = execute('1,2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('f')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('0file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('1file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('file! k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('file nosuch/q')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('file d/')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('file k.x l.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
let g:m = execute('1,2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
let g:m = execute('file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
let g:m = execute('f')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
let g:m = execute('0file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
let g:m = execute('1file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
let g:m = execute('file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
let g:m = execute('0file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
let g:m = execute('file nosuch/q')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
let g:m = execute('file d/')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
let g:m = execute('file ~/zz')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('1file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('f ./k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('1file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('file nosuch/q')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('file d/')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('1,2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! G
let g:m = execute('file ~/zz')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e nosuch.x
let g:m = execute('fi')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e nosuch.x
let g:m = execute('file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e nosuch.x
let g:m = execute('1file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e nosuch.x
let g:m = execute('2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e nosuch.x
let g:m = execute('f ./k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e nosuch.x
let g:m = execute('1file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e nosuch.x
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e nosuch.x
let g:m = execute('file k.x|echo 1')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro
let g:m = execute('0file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro
let g:m = execute('1file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro
let g:m = execute('2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro
let g:m = execute('file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro
let g:m = execute('file f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro
let g:m = execute('file nosuch/q')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set nomodifiable
let g:m = execute('file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set nomodifiable
let g:m = execute('fi')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set nomodifiable
let g:m = execute('0file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set nomodifiable
let g:m = execute('f ./k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set nomodifiable
let g:m = execute('0file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set nomodifiable
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set nomodifiable
let g:m = execute('file k.x|echo 1')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
let g:m = execute('0f')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
let g:m = execute('0file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
let g:m = execute('file nosuch/q')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
let g:m = execute('file k.x l.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
let g:m = execute('file k.x|echo 1')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
let g:m = execute('1,2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('0f')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('0file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('1file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('f ./k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('file! k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('1file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('file nosuch/q')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('file k.x l.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('file k.x|echo 1')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
enew
call setline(1,"a")
let g:m = execute('file ~/zz')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e g.x
e f.x
set hidden
let g:m = execute('file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e g.x
e f.x
set hidden
let g:m = execute('fi')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e g.x
e f.x
set hidden
let g:m = execute('0file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e g.x
e f.x
set hidden
let g:m = execute('2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e g.x
e f.x
set hidden
let g:m = execute('file! k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e g.x
e f.x
set hidden
let g:m = execute('0file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e g.x
e f.x
set hidden
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e g.x
e f.x
set hidden
let g:m = execute('file k.x l.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e g.x
e f.x
set hidden
let g:m = execute('file ~/zz')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=m
let g:m = execute('fi')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=m
let g:m = execute('file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=m
let g:m = execute('0file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=m
let g:m = execute('0f')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=m
let g:m = execute('1file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=m
let g:m = execute('file! k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=m
let g:m = execute('file f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=m
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=m
let g:m = execute('file k.x|echo 1')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=m
let g:m = execute('1,2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
set shortmess+=m
let g:m = execute('f')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
set shortmess+=m
let g:m = execute('file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
set shortmess+=m
let g:m = execute('0file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
set shortmess+=m
let g:m = execute('1file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
set shortmess+=m
let g:m = execute('2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
set shortmess+=m
let g:m = execute('f ./k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
set shortmess+=m
let g:m = execute('file nosuch/q')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
set shortmess+=m
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
set shortmess+=m
let g:m = execute('file k.x l.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
normal! x
set shortmess+=m
let g:m = execute('file ~/zz')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro shortmess+=r
let g:m = execute('fi')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro shortmess+=r
let g:m = execute('file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro shortmess+=r
let g:m = execute('2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro shortmess+=r
let g:m = execute('f ./k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro shortmess+=r
let g:m = execute('file nosuch/q')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro shortmess+=r
let g:m = execute('file d/')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set ro shortmess+=r
let g:m = execute('file k.x|echo 1')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=F
let g:m = execute('file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=F
let g:m = execute('f')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=F
let g:m = execute('0file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=F
let g:m = execute('2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=F
let g:m = execute('file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=F
let g:m = execute('0file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=F
let g:m = execute('1file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=F
let g:m = execute('file d/')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=F
let g:m = execute('file k.x|echo 1')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
set shortmess+=F
let g:m = execute('file ~/zz')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
call setline(1,[])
%d
let g:m = execute('file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
call setline(1,[])
%d
let g:m = execute('0file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
call setline(1,[])
%d
let g:m = execute('2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
call setline(1,[])
%d
let g:m = execute('file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
call setline(1,[])
%d
let g:m = execute('file! k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
call setline(1,[])
%d
let g:m = execute('0file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
call setline(1,[])
%d
let g:m = execute('1file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
call setline(1,[])
%d
let g:m = execute('file f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
call setline(1,[])
%d
let g:m = execute('file k.x l.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('f')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('file! k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('file f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('file nosuch/q')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('file ./f.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('file k.x l.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('1,2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
new
file n.x
let g:m = execute('file ~/zz')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('f')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('0file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('0file!')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('0file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('1file k.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('file d/')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('file k.x l.x')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('1,2file')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
sp g.x
let g:m = execute('file ~/zz')
echo g:m
echo bufname("%") bufname("#") bufnr("$")
echo execute("ls!")
"---
call writefile(["one","two","three"], "f.x")
call writefile(["alpha"], "g.x")
e f.x
file k.x
echo bufname("#")
e #
echo bufname("%")
echo execute("ls!")
