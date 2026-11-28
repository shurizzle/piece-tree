set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh< wfw< | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh! | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh! | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh< wfw< | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh< wfw< | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh< wfw< | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh! | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh! | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh< wfw< | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh! | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | e! x | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | sp | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfw | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw! | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set wfw! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw? | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh< wfw< | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh! | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh! | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfh | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh?x | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfh | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh wfw | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd b | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal nowfh | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | only | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh< wfw< | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd w | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
try | set winfixheight | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setglobal wfw | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | e! x | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | enew | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh? | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | vnew | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd k | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd t | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd j | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vnew | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh! | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set invwfw | catch | echo v:exception | endtry
try | set wfw? | catch | echo v:exception | endtry
try | let &g:wfw = 1 | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh=1 | catch | echo v:exception | endtry
try | setlocal wfh< wfw< | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | let &wfw = 0 | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd l | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd k | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set nowinfixheight winfixwidth | catch | echo v:exception | endtry
try | set nowfh nowfw nu | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
try | set invwfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw | catch | echo v:exception | endtry
try | set wfh wfw | catch | echo v:exception | endtry
try | setlocal wfw | catch | echo v:exception | endtry
try | wincmd j | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
try | only | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set nowfw | catch | echo v:exception | endtry
try | wincmd h | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd l | catch | echo v:exception | endtry
try | set wfh! | catch | echo v:exception | endtry
try | close | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | vs | catch | echo v:exception | endtry
try | set wfh nu rnu | catch | echo v:exception | endtry
try | sp | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | enew | catch | echo v:exception | endtry
try | let &wfh = 1 | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd p | catch | echo v:exception | endtry
try | let &l:wfh = 1 | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | setglobal nowfh | catch | echo v:exception | endtry
try | set wfh=1 | catch | echo v:exception | endtry
try | wincmd b | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | wincmd h | catch | echo v:exception | endtry
try | setglobal wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | wincmd w | catch | echo v:exception | endtry
try | set wfh wfw? | catch | echo v:exception | endtry
try | let &wfw = 0 | catch | echo v:exception | endtry
try | set wfh< wfw< | catch | echo v:exception | endtry
try | set nowfh | catch | echo v:exception | endtry
try | set wfh?x | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | setlocal wfh | catch | echo v:exception | endtry
try | setlocal nowfh | catch | echo v:exception | endtry
try | setlocal wfh | catch | echo v:exception | endtry
try | new | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfh nu rnu | catch | echo v:exception | endtry
try | set wfh? | catch | echo v:exception | endtry
try | set nowfw | catch | echo v:exception | endtry
try | vs | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | set wfw? | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | new | catch | echo v:exception | endtry
try | set wfw | catch | echo v:exception | endtry
try | set invwfw | catch | echo v:exception | endtry
try | set wfh& wfw& | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
"---
set ts=8 sw=8 noet nu nornu nocul wrap nolist so=0 noic nohid nohls ls=2
try | close | catch | echo v:exception | endtry
try | wincmd p | catch | echo v:exception | endtry
try | wincmd t | catch | echo v:exception | endtry
try | setglobal wfh | catch | echo v:exception | endtry
try | set nowfh! | catch | echo v:exception | endtry
try | set wfh | catch | echo v:exception | endtry
let s = []
for i in range(1, winnr('$'))
  execute i . 'wincmd w'
  call add(s, [i, &wfh, &wfw, &l:wfh, &g:wfh, &l:wfw, &g:wfw])
endfor
echo s
