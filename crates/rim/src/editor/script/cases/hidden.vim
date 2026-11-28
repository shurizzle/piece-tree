echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
e /nonexistent/b
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
normal! ix
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
execute 'e ' . expand('<sfile>')
e /nonexistent/a
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
sp
e /nonexistent/b
normal! ix
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
set nohidden
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
normal! iy
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
e /nonexistent/b
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
e! /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
e /nonexistent/a
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
e /nonexistent/b
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
e #
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
enew!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
b! 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
bp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
bl
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
br
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
b3
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
sb1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
sbn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
q!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
close!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
only!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
sp
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
new
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
vnew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
hide e /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
hide enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
hide b2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
hide bn
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
hide sp /nonexistent/c
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
1close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
2close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
2hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
1q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
2q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
1only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
2only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
close 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
hide 2
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
hide close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
q|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
e!
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
e
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
enew|enew
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
enew|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
e /nonexistent/c|e /nonexistent/d
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
b1|b2|b1
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
sp|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
sp|close
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
sp|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
sp|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
sp|enew|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
sp|e /nonexistent/c|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
new|only
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
new|hide
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')
"---
e /nonexistent/a
normal! ix
sp
new|q
echo execute('ls')
echo map(range(1,5), 'bufloaded(v:val)') map(range(1,5), 'buflisted(v:val)') map(range(1,5), 'bufexists(v:val)') winnr('$') bufnr('%')


