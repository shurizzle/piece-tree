set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ts=3
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ts=3
enew
echo &l:ts &g:ts &ts
b #
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ts=3
vnew
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ts=5
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ts=5
enew
echo &l:ts &g:ts &ts
b #
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ts=5
new
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ts=5
sp
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ts=5
e x.y
echo &l:ts &g:ts &ts
b #
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ts=3
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ts=3
new
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ts=3
sp
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ts=5
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ts=5
enew
echo &l:ts &g:ts &ts
b #
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal ts=3
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal ts=3
new
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal ts=3
e x.y
echo &l:ts &g:ts &ts
b #
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal ts=5
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal ts=5
enew
echo &l:ts &g:ts &ts
b #
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal ts=5
vnew
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ts=3
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ts=3
vnew
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ts=3
e x.y
echo &l:ts &g:ts &ts
b #
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ts=5
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ts=5
vnew
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ts=5
sp
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ts=5
e x.y
echo &l:ts &g:ts &ts
b #
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal ts=3
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal ts=3
new
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal ts=3
sp
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal ts=5
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal ts=5
enew
echo &l:ts &g:ts &ts
b #
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal ts=5
new
echo &l:ts &g:ts &ts
wincmd p
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ts=5
setg ts=3
echo &l:ts &g:ts &ts
enew
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ts=5
setl ts=3
echo &l:ts &g:ts &ts
enew
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ts=5
setg ts=3
echo &l:ts &g:ts &ts
enew
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:ts = 3
echo &l:ts &g:ts &ts
enew
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:ts = 3
echo &l:ts &g:ts &ts
enew
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &ts = 3
echo &l:ts &g:ts &ts
enew
echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sw=2
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sw=2
vnew
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sw=2
sp
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sw=6
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sw=6
new
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sw=6
sp
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sw=6
e x.y
echo &l:sw &g:sw &sw
b #
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=2
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=2
enew
echo &l:sw &g:sw &sw
b #
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=2
sp
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=6
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=6
enew
echo &l:sw &g:sw &sw
b #
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=6
vnew
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sw=2
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sw=2
vnew
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sw=2
sp
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sw=6
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sw=6
enew
echo &l:sw &g:sw &sw
b #
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sw=6
new
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sw=6
vnew
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sw=6
e x.y
echo &l:sw &g:sw &sw
b #
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sw=2
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sw=2
enew
echo &l:sw &g:sw &sw
b #
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sw=2
vnew
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sw=6
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sw=6
enew
echo &l:sw &g:sw &sw
b #
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sw=6
new
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sw=2
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sw=2
e x.y
echo &l:sw &g:sw &sw
b #
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sw=6
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sw=6
new
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sw=6
vnew
echo &l:sw &g:sw &sw
wincmd p
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=2
set sw=2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=6
set sw=2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=2
setl sw=2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=6
setl sw=2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sw=2
setg sw=2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sw=6
set sw=2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sw=6
setl sw=2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sw=6
setg sw=2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:sw = 2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:sw = 2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &sw = 2
echo &l:sw &g:sw &sw
enew
echo &l:sw &g:sw &sw
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set et
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set et
vnew
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set et
sp
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noet
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noet
new
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noet
vnew
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noet
e x.y
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl et
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl et
enew
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl et
new
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl et
vnew
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl et
e x.y
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noet
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noet
enew
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noet
vnew
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal et
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal et
enew
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal et
new
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal et
sp
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal et
e x.y
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal noet
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal noet
enew
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal noet
vnew
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal noet
sp
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal noet
e x.y
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg et
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg et
new
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg et
sp
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg et
e x.y
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noet
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noet
vnew
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noet
sp
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noet
e x.y
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal et
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal et
new
echo &l:et &g:et &et
wincmd p
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal et
e x.y
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal noet
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal noet
enew
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal noet
e x.y
echo &l:et &g:et &et
b #
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl et
set et
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noet
set et
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noet
setl et
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl et
setg et
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noet
setg et
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg et
set et
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noet
set et
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noet
setl et
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg et
setg et
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:et = 1
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:et = 1
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &et = 1
echo &l:et &g:et &et
enew
echo &l:et &g:et &et
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set number
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set number
vnew
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set number
e x.y
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nonumber
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nonumber
enew
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nonumber
new
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nonumber
e x.y
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl number
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl number
enew
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl number
new
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl number
vnew
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nonumber
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nonumber
enew
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nonumber
new
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nonumber
vnew
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nonumber
sp
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal number
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal number
new
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal number
e x.y
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nonumber
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nonumber
enew
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nonumber
new
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nonumber
sp
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg number
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg number
enew
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg number
new
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg number
e x.y
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nonumber
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nonumber
enew
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nonumber
new
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nonumber
e x.y
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal number
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal number
vnew
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal number
sp
echo &l:number &g:number &number
wincmd p
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal number
e x.y
echo &l:number &g:number &number
b #
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nonumber
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nonumber
set number
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl number
setl number
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nonumber
setl number
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl number
setg number
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nonumber
setg number
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nonumber
set number
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg number
setl number
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nonumber
setl number
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nonumber
setg number
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:number = 1
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:number = 1
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &number = 1
echo &l:number &g:number &number
enew
echo &l:number &g:number &number
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set wrap
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set wrap
enew
echo &l:wrap &g:wrap &wrap
b #
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set wrap
vnew
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nowrap
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nowrap
e x.y
echo &l:wrap &g:wrap &wrap
b #
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl wrap
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl wrap
sp
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nowrap
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nowrap
new
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nowrap
vnew
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal wrap
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal wrap
enew
echo &l:wrap &g:wrap &wrap
b #
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal wrap
new
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal wrap
vnew
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nowrap
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nowrap
enew
echo &l:wrap &g:wrap &wrap
b #
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nowrap
new
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nowrap
vnew
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nowrap
sp
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nowrap
e x.y
echo &l:wrap &g:wrap &wrap
b #
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg wrap
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg wrap
enew
echo &l:wrap &g:wrap &wrap
b #
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg wrap
sp
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nowrap
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nowrap
enew
echo &l:wrap &g:wrap &wrap
b #
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal wrap
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal wrap
enew
echo &l:wrap &g:wrap &wrap
b #
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal wrap
sp
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal wrap
e x.y
echo &l:wrap &g:wrap &wrap
b #
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nowrap
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nowrap
sp
echo &l:wrap &g:wrap &wrap
wincmd p
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl wrap
set wrap
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nowrap
set wrap
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl wrap
setl wrap
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nowrap
setl wrap
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl wrap
setg wrap
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nowrap
setg wrap
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg wrap
setl wrap
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg wrap
setg wrap
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:wrap = 1
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:wrap = 1
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &wrap = 1
echo &l:wrap &g:wrap &wrap
enew
echo &l:wrap &g:wrap &wrap
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set list
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set list
new
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set list
vnew
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set list
sp
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set list
e x.y
echo &l:list &g:list &list
b #
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nolist
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nolist
enew
echo &l:list &g:list &list
b #
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nolist
new
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nolist
vnew
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nolist
sp
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl list
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl list
enew
echo &l:list &g:list &list
b #
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl list
vnew
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl list
e x.y
echo &l:list &g:list &list
b #
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nolist
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nolist
sp
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal list
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal list
new
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal list
e x.y
echo &l:list &g:list &list
b #
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nolist
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nolist
enew
echo &l:list &g:list &list
b #
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nolist
new
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg list
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg list
new
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg list
vnew
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg list
sp
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg list
e x.y
echo &l:list &g:list &list
b #
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nolist
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nolist
sp
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal list
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal list
enew
echo &l:list &g:list &list
b #
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal list
new
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal list
sp
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal list
e x.y
echo &l:list &g:list &list
b #
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nolist
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nolist
new
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nolist
vnew
echo &l:list &g:list &list
wincmd p
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl list
set list
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nolist
set list
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl list
setl list
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nolist
setl list
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl list
setg list
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nolist
setg list
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nolist
set list
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg list
setl list
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nolist
setl list
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg list
setg list
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:list = 1
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:list = 1
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &list = 1
echo &l:list &g:list &list
enew
echo &l:list &g:list &list
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set so=0
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set so=0
enew
echo &l:so &g:so &so
b #
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set so=0
sp
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set so=4
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set so=4
enew
echo &l:so &g:so &so
b #
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set so=4
sp
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=0
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=0
vnew
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=4
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=4
vnew
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=4
sp
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=4
e x.y
echo &l:so &g:so &so
b #
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal so=0
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal so=0
sp
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal so=4
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal so=4
new
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal so=4
e x.y
echo &l:so &g:so &so
b #
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=0
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=0
new
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=0
vnew
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=4
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=4
vnew
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=4
sp
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=4
e x.y
echo &l:so &g:so &so
b #
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal so=0
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal so=0
enew
echo &l:so &g:so &so
b #
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal so=4
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal so=4
enew
echo &l:so &g:so &so
b #
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal so=4
new
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal so=4
vnew
echo &l:so &g:so &so
wincmd p
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal so=4
e x.y
echo &l:so &g:so &so
b #
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=0
set so=0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=4
set so=0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=4
setl so=0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=0
setg so=0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl so=4
setg so=0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=0
set so=0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=0
setl so=0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=0
setg so=0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg so=4
setg so=0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:so = 0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:so = 0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &so = 0
echo &l:so &g:so &so
enew
echo &l:so &g:so &so
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ic
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ic
enew
echo &l:ic &g:ic &ic
b #
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ic
new
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set ic
e x.y
echo &l:ic &g:ic &ic
b #
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noic
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noic
enew
echo &l:ic &g:ic &ic
b #
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noic
new
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ic
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ic
new
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ic
vnew
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ic
sp
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noic
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noic
new
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noic
vnew
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noic
e x.y
echo &l:ic &g:ic &ic
b #
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal ic
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal ic
sp
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal noic
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal noic
e x.y
echo &l:ic &g:ic &ic
b #
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ic
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ic
new
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ic
e x.y
echo &l:ic &g:ic &ic
b #
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noic
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noic
vnew
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noic
e x.y
echo &l:ic &g:ic &ic
b #
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal ic
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal ic
enew
echo &l:ic &g:ic &ic
b #
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal ic
vnew
echo &l:ic &g:ic &ic
wincmd p
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal noic
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal noic
enew
echo &l:ic &g:ic &ic
b #
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal noic
e x.y
echo &l:ic &g:ic &ic
b #
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ic
setl ic
echo &l:ic &g:ic &ic
enew
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noic
setl ic
echo &l:ic &g:ic &ic
enew
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl ic
setg ic
echo &l:ic &g:ic &ic
enew
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noic
setg ic
echo &l:ic &g:ic &ic
enew
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ic
set ic
echo &l:ic &g:ic &ic
enew
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg ic
setl ic
echo &l:ic &g:ic &ic
enew
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noic
setg ic
echo &l:ic &g:ic &ic
enew
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:ic = 1
echo &l:ic &g:ic &ic
enew
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:ic = 1
echo &l:ic &g:ic &ic
enew
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &ic = 1
echo &l:ic &g:ic &ic
enew
echo &l:ic &g:ic &ic
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set hidden
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nohidden
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nohidden
enew
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nohidden
e x.y
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hidden
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hidden
new
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hidden
vnew
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hidden
sp
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hidden
e x.y
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohidden
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohidden
enew
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohidden
new
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohidden
vnew
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal hidden
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal hidden
enew
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal hidden
vnew
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal hidden
sp
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nohidden
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nohidden
enew
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nohidden
new
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nohidden
e x.y
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hidden
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hidden
enew
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hidden
sp
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hidden
e x.y
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohidden
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohidden
enew
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohidden
vnew
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohidden
sp
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohidden
e x.y
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal hidden
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal hidden
enew
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal hidden
new
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal hidden
vnew
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal hidden
sp
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal hidden
e x.y
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nohidden
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nohidden
enew
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nohidden
new
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nohidden
vnew
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nohidden
sp
echo &l:hidden &g:hidden &hidden
wincmd p
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nohidden
e x.y
echo &l:hidden &g:hidden &hidden
b #
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hidden
set hidden
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohidden
set hidden
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohidden
setl hidden
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hidden
setg hidden
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohidden
setg hidden
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hidden
set hidden
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hidden
setl hidden
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohidden
setl hidden
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hidden
setg hidden
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohidden
setg hidden
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:hidden = 1
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:hidden = 1
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &hidden = 1
echo &l:hidden &g:hidden &hidden
enew
echo &l:hidden &g:hidden &hidden
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set scs
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set scs
new
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set scs
vnew
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set scs
sp
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noscs
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noscs
enew
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noscs
vnew
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set noscs
e x.y
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl scs
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl scs
enew
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl scs
new
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl scs
e x.y
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noscs
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noscs
enew
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noscs
e x.y
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal scs
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal scs
enew
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal scs
new
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal scs
vnew
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal scs
sp
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal scs
e x.y
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal noscs
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal noscs
vnew
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal noscs
e x.y
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg scs
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg scs
sp
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg scs
e x.y
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noscs
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noscs
vnew
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noscs
sp
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal scs
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal scs
enew
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal scs
new
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal scs
vnew
echo &l:scs &g:scs &scs
wincmd p
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal noscs
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal noscs
enew
echo &l:scs &g:scs &scs
b #
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noscs
set scs
echo &l:scs &g:scs &scs
enew
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl scs
setl scs
echo &l:scs &g:scs &scs
enew
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noscs
setl scs
echo &l:scs &g:scs &scs
enew
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl noscs
setg scs
echo &l:scs &g:scs &scs
enew
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg scs
set scs
echo &l:scs &g:scs &scs
enew
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noscs
set scs
echo &l:scs &g:scs &scs
enew
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg noscs
setg scs
echo &l:scs &g:scs &scs
enew
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:scs = 1
echo &l:scs &g:scs &scs
enew
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:scs = 1
echo &l:scs &g:scs &scs
enew
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &scs = 1
echo &l:scs &g:scs &scs
enew
echo &l:scs &g:scs &scs
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set hls
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set hls
sp
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nohls
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nohls
enew
echo &l:hls &g:hls &hls
b #
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nohls
vnew
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nohls
sp
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set nohls
e x.y
echo &l:hls &g:hls &hls
b #
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hls
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hls
enew
echo &l:hls &g:hls &hls
b #
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hls
sp
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohls
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohls
new
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohls
vnew
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohls
e x.y
echo &l:hls &g:hls &hls
b #
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal hls
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal hls
enew
echo &l:hls &g:hls &hls
b #
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal hls
new
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal hls
vnew
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal hls
sp
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal nohls
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hls
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hls
new
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohls
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohls
enew
echo &l:hls &g:hls &hls
b #
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohls
vnew
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal hls
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal hls
enew
echo &l:hls &g:hls &hls
b #
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal hls
vnew
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal hls
sp
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nohls
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nohls
enew
echo &l:hls &g:hls &hls
b #
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal nohls
sp
echo &l:hls &g:hls &hls
wincmd p
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hls
set hls
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohls
set hls
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl hls
setl hls
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl nohls
setg hls
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hls
set hls
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohls
set hls
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hls
setl hls
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg nohls
setl hls
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg hls
setg hls
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:hls = 1
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:hls = 1
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &hls = 1
echo &l:hls &g:hls &hls
enew
echo &l:hls &g:hls &hls
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sts=2
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sts=2
e x.y
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sts=3
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sts=3
enew
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sts=3
new
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
set sts=3
vnew
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=2
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=2
enew
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=2
vnew
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=2
sp
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=3
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=3
new
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=3
vnew
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=3
e x.y
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sts=2
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sts=2
enew
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sts=2
sp
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sts=2
e x.y
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sts=3
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sts=3
enew
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setlocal sts=3
vnew
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=2
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=2
new
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=2
vnew
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=2
sp
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=2
e x.y
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=3
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=3
enew
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=3
new
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=3
sp
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=3
e x.y
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sts=2
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sts=2
enew
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sts=2
vnew
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sts=2
sp
echo &l:sts &g:sts &sts
wincmd p
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sts=2
e x.y
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sts=3
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setglobal sts=3
enew
echo &l:sts &g:sts &sts
b #
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=2
set sts=2
echo &l:sts &g:sts &sts
enew
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=3
set sts=2
echo &l:sts &g:sts &sts
enew
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setl sts=2
setg sts=2
echo &l:sts &g:sts &sts
enew
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=2
set sts=2
echo &l:sts &g:sts &sts
enew
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=3
set sts=2
echo &l:sts &g:sts &sts
enew
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=2
setl sts=2
echo &l:sts &g:sts &sts
enew
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
setg sts=3
setl sts=2
echo &l:sts &g:sts &sts
enew
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &l:sts = 2
echo &l:sts &g:sts &sts
enew
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &g:sts = 2
echo &l:sts &g:sts &sts
enew
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet nu wrap nolist so=0 noic nohid
let &sts = 2
echo &l:sts &g:sts &sts
enew
echo &l:sts &g:sts &sts
"---
set ts=8 sw=8 noet
echo &l:nosuch
"---
set ts=8 sw=8 noet
echo &g:nosuch
"---
set ts=8 sw=8 noet
setl nosuch
"---
set ts=8 sw=8 noet
setg nosuch
"---
set ts=8 sw=8 noet
setl ts=x
"---
set ts=8 sw=8 noet
setg ts=x
"---
set ts=8
"---
set ts=8 sw=8 noet
setg ts=3 | setl ts=5 | echo &l:ts &g:ts &ts
"---
set ts=8 sw=8 noet
setl ts=3|new|echo &l:ts &g:ts|setg ts=7|new|echo &l:ts &g:ts
"---
set ts=8 sw=8 noet
let &l:ts=3 | let &g:ts=4 | echo &ts &l:ts &g:ts
"---
set ts=8 sw=8 noet
let &l:ts += 2 | echo &l:ts
"---
set ts=8 sw=8 noet
let &g:ts += 2 | echo &g:ts &l:ts
"---
set ts=8 sw=8 noet
setl so=2 | echo &l:so &g:so &so
"---
set ts=8 sw=8 noet
setl so=2 | new | echo &l:so &g:so &so
"---
set ts=8 sw=8 noet
setl so=2 | setl so< | echo &l:so &g:so &so
"---
set ts=8 sw=8 noet
setg so=3 | echo &l:so &g:so &so
"---
set ts=8 sw=8 noet
setl ts< | echo &ts
"---
set ts=8 sw=8 noet
setg ts< | echo &g:ts
