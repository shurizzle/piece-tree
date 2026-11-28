e /nonexistent/a
sp
e /nonexistent/b
wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
2wincmd w
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd b
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
2wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
2wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
2wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
2wincmd w
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
2wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
2wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
2wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
2wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd j|wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
2wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
2wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd b
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd b
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
2wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd p
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
2wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd j|wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
2wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd j|wincmd p
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
2wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd j|wincmd p
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd w
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd l
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd l
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd p
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd b
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd j|wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd w
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd j|wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd j|wincmd j|wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd w
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd j|wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|wincmd l|wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd t
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd b
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd b
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd W
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd b
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
3wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd b
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
2wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd w
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd w
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd w
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd w
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd w
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
2wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd j|wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd w
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
3wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd j|wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd w
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd j|wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
2wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
2wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd w
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
3wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd w
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd w
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd w
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd w
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd j|wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd w
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l|wincmd l|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
3wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd w
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd W
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd b
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd j|wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd t
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd j|wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
2wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd l|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd p
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd W
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j|wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd l|wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd l|wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd W
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j|wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd W
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd w
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd w
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j|wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd l|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd w
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd W
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd w
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j|wincmd j|wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd w
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j|wincmd j|wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd l|wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd w
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd l|wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j|wincmd j|wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j|wincmd j|wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd w
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd W
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd W
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd W
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd l|wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd l|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j|wincmd j|wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd W
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd t
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
3wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd j|wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l|wincmd l|wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd j|wincmd j|wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd k|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
wincmd b
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
sp
e /nonexistent/c
2wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd w
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd w
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd l|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd j|wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd w
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd l|wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd w
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd j|wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd p
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd W
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd W
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd l|wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd W
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd l|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd W
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd l|wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd W
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd W
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd W
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd p
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd j|wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd p
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd j|wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd w
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd l|wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd j|wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd j|wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd j|wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd W
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd j|wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd j|wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd l|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd W
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd l|wincmd j|wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd W
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k|wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd k
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd w
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd t
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd w
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd w
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
2wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
3wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
vs
e /nonexistent/c
wincmd b
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
3wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
3wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd w
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd b
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
3wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd w
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd W
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd w
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
3wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd W
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd w
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
3wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
3wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd b
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd w
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd W
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd W
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
3wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
3wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
3wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd j|wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd b
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd t
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
3wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd b
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd l
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd l|wincmd l|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
2wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd j|wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
wincmd j
vs
e /nonexistent/d
wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd t
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd W
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd p
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd W
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd W
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd W
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd t
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd k
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd t
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd t
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd W
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd W
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd t
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd t
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd h
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd t
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd l
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd t
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd l
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd k
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd l
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd l
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd W
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd W
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd w
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd b
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
2wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
3wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd l
sp
e /nonexistent/d
wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd W
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd w
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd W
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd W
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd w
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd W
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd W
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd w
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd j|wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd l
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd W
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd w
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd p
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd w
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd W
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd w
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd W
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd w
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|wincmd l|wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd l
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd W
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd p
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd b
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd k
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
3wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
2wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd t
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd j|wincmd j|wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
sp
e /nonexistent/b
vs
e /nonexistent/c
sp
e /nonexistent/d
wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd j|wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
3wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd t
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd t
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd W
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
3wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd W
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd W
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd l|wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd j|wincmd k
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd W
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd j|wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
3wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd l|wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd l|wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd l|wincmd h
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
3wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
3wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd l|wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd j|wincmd k
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd j|wincmd k
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd j|wincmd k
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd t
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd t
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd W
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd j|wincmd k
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd W
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd t
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd l|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd l|wincmd h
wincmd c
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd j|wincmd k
hide
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
2close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
3wincmd j
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd b
1close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
3close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l
$close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd k
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd t
quit
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd W
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
wincmd o
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
only
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l|wincmd j|wincmd p
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
3wincmd j
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd W
wincmd j|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd l
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd t
wincmd k|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
wincmd h|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd w
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
wincmd l|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd t
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd l
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd w
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
2wincmd h
close|close
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
3wincmd j
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd p
close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd t
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd k|wincmd h
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
"---
set splitbelow splitright
e /nonexistent/a
vs
e /nonexistent/b
sp
e /nonexistent/c
wincmd h
sp
e /nonexistent/d
wincmd j
wincmd j|wincmd p
wincmd j|close|wincmd p
echo map(range(1, winnr('$') + 1), 'winbufnr(v:val)') winnr() winnr('#') winnr('$') bufnr('%') map(range(1, winnr('$')), 'bufwinnr(v:val)') bufwinid(bufnr('%')) == win_getid()
