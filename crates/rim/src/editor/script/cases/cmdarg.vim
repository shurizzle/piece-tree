call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e +3 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e + f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e +$ f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e +/two f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e +/a$ f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e +s/o/0/ f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e +echo\ 1 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e +normal\ Gx f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e +2|echo\ 5 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e +9 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e +0 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e + f.x g.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++ff=dos f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++ff=unix +2 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++ff=foo f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++fileformat=dos f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++enc=utf-8 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++encoding=latin1 +3 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++bin f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++binary +2 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++nobin f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++bi f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++nobinary f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++bad=keep f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++bad=drop f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++bad=x f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++bad=xx f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++bad f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++foo f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++ f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++ff f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++p f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++edit f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++bin ++ff=dos +2 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e ++ff=dos ++enc=utf-8 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
sp +3 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
vs +2 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
new +2 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
vnew +2 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
sp ++ff=dos +2 f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | b +2 1
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | e g.x | b +2 1
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | e g.x | bn +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | e g.x | bp +1
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | e g.x | 1b +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | e g.x | br +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | e g.x | bl +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | e g.x | b +nosuchcmd 1
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | e g.x | b +s/e/E/ 1
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | e g.x | b9 +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
e f.x | e g.x | sb +2 1
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
args f.x g.x | next +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
args +2 f.x g.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
args ++ff=dos f.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
args f.x g.x | argument +3 1
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
args f.x g.x | last +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
args f.x g.x | first +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
args f.x g.x | rewind +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
args f.x g.x | argedit +2 h.x
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
args f.x g.x | Next +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
"---
call writefile(["one", "two a", "three", "four a", "five"], "f.x")
call writefile(["alpha", "beta"], "g.x")
call writefile(["x"], "h.x")
set nonumber
args f.x g.x | previous +2
echo line('.') col('.') bufname('%') winnr('$') getline('.')
echo execute('ls')
