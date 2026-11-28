set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! 2u
:t.
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
undo
:%normal Ax
call feedkeys("\<Esc>", "xt")
undo
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! u
:d
call feedkeys("\<Esc>", "xt")
undo
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
undo
:sort
call feedkeys("\<Esc>", "xt")
undo
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
:sort
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! 2u
:m$
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
:2,3d
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! u
:t.
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
undo
normal! D
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! G
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
undo
:d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! G
call feedkeys("\<Esc>", "xt")
normal! u
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! 2u
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
undo
normal! D
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! ~
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
:d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! J
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! u
:%s/\n//
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! $
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! ~
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
normal! w
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
:t0
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
:t0
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! u
normal! J
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! u
:d
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
:>
call feedkeys("\<Esc>", "xt")
undo
:m$
call feedkeys("\<Esc>", "xt")
normal! 2u
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! gUU
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! u
normal! ~
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
:put ='new'
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
:t0
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! x
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
undo
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! w
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! >>
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
undo
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
undo
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dd
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
normal! gUU
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
:t.
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
:m$
call feedkeys("\<Esc>", "xt")
normal! u
normal! gg
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:>
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
normal! J
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! u
normal! 3x
call feedkeys("\<Esc>", "xt")
undo
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! x
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
undo
:m$
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
undo
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! u
normal! k
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
undo
normal! ~
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! u
:d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
normal! ~
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
normal! 2u
:j
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! 3x
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
normal! 2u
:m$
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
undo
normal! 3x
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! dw
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dw
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyp
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
normal! D
call feedkeys("\<Esc>", "xt")
normal! u
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! u
normal! >>
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! 2u
:m$
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! w
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! 2dd
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! gg
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
undo
normal! 3x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
:t0
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! u
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
:%normal Ax
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! $
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! u
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! 2u
:m0
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! u
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
undo
normal! >>
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
normal! J
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
undo
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
:put ='new'
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
normal! yyP
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
undo
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/\n//
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! u
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dw
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
undo
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! u
:t.
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
undo
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
:sort
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
normal! u
normal! 3x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
undo
normal! ~
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
undo
normal! 3x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! u
:>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! J
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
undo
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! u
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! u
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
undo
normal! rZ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
undo
:2,3d
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! dd
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! >>
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! yyP
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! G
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! dd
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! x
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! u
normal! J
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
undo
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! u
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! u
normal! k
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! u
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! yyp
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
undo
:m$
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! u
:t0
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dd
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! u
normal! 2dd
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
normal! 2u
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! gUU
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! u
:t0
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
:sort
call feedkeys("\<Esc>", "xt")
undo
normal! G
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:%s/\n//
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! k
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
:t.
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! u
normal! ~
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! u
:t.
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! ~
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! 2dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! D
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! u
:2,3d
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
undo
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:>
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
undo
:put ='new'
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
normal! u
:%s/\n//
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
undo
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! 2u
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! 2u
:m$
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
normal! w
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! >>
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
undo
:sort
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
undo
normal! G
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
normal! rZ
call feedkeys("\<Esc>", "xt")
undo
:put ='new'
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! J
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! 2u
:t.
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! k
call feedkeys("\<Esc>", "xt")
normal! 2u
:j
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! u
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! dw
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! $
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! u
normal! J
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! J
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
undo
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! rZ
call feedkeys("\<Esc>", "xt")
undo
normal! dd
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! yyp
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
undo
normal! 3x
call feedkeys("\<Esc>", "xt")
undo
normal! gUU
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! u
:>
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! 2u
:sort
call feedkeys("\<Esc>", "xt")
undo
normal! gg
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! u
normal! dw
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! u
normal! rZ
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
normal! $
call feedkeys("\<Esc>", "xt")
undo
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! w
call feedkeys("\<Esc>", "xt")
undo
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! w
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! u
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! yyP
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! 2u
:m0
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
normal! 2dd
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! u
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! u
:j
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
undo
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
:sort
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
:m$
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
undo
:m0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
normal! 2u
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! yyp
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
undo
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! u
normal! dd
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
undo
normal! rZ
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! u
normal! dd
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
:m0
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
:sort
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
normal! 2dd
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! u
normal! J
call feedkeys("\<Esc>", "xt")
undo
:2,3d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
:m$
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
:sort
call feedkeys("\<Esc>", "xt")
undo
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
undo
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! u
normal! dw
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
normal! w
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
normal! ~
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
normal! 2u
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
normal! D
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! 2dd
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
undo
normal! D
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! u
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! u
normal! dw
call feedkeys("\<Esc>", "xt")
normal! u
normal! w
call feedkeys("\<Esc>", "xt")
normal! 2u
:t0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
normal! x
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
normal! D
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
normal! u
normal! w
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
normal! u
normal! D
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! u
:t0
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
normal! 2u
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
undo
normal! k
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! 2u
:>
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dd
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! gUU
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
:m0
call feedkeys("\<Esc>", "xt")
normal! u
normal! j
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! J
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:d
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
normal! 2u
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! D
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
normal! u
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! gg
call feedkeys("\<Esc>", "xt")
undo
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:j
call feedkeys("\<Esc>", "xt")
undo
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! u
normal! gUU
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
undo
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
undo
:t.
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dd
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! 2dd
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! u
:>
call feedkeys("\<Esc>", "xt")
undo
:%normal Ax
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dd
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! 2u
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! u
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! G
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! u
normal! 2dd
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
:m0
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
undo
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
:m$
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! >>
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dw
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! u
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! J
call feedkeys("\<Esc>", "xt")
normal! u
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
undo
:m$
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyP
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
undo
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! k
call feedkeys("\<Esc>", "xt")
normal! 2u
:d
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
undo
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! 2u
:2,3d
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
:>
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:m0
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
undo
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
:t.
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
undo
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! u
normal! J
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
:t0
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
normal! yyP
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! G
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
:>
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
undo
normal! 2dd
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
undo
normal! k
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
undo
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
undo
:t0
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! G
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
:j
call feedkeys("\<Esc>", "xt")
undo
:d
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! w
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
undo
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/\n//
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! u
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
normal! >>
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
undo
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
normal! u
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
undo
:put ='new'
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! 2u
:m$
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
undo
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
undo
normal! J
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
normal! u
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
:t0
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! >>
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! yyP
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! >>
call feedkeys("\<Esc>", "xt")
undo
:sort
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! $
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! >>
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! J
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
undo
:t.
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! u
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
undo
:m$
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! $
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
undo
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
undo
normal! j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! ~
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! u
:>
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! 2dd
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
normal! J
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! G
call feedkeys("\<Esc>", "xt")
undo
normal! >>
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
undo
:t.
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! k
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
normal! k
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
:m$
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! u
normal! ~
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
undo
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
normal! k
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
:t.
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:>
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
normal! ~
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
normal! 2dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! w
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! 2u
:t0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
undo
normal! x
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! k
call feedkeys("\<Esc>", "xt")
normal! u
:m$
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
undo
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! >>
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
undo
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! k
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
undo
:sort
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
normal! 2u
:j
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! u
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! u
normal! x
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
undo
:>
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
normal! G
call feedkeys("\<Esc>", "xt")
normal! u
normal! w
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
:%s/\n//
call feedkeys("\<Esc>", "xt")
undo
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
normal! gg
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
normal! x
call feedkeys("\<Esc>", "xt")
undo
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! $
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! u
:t0
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
normal! u
normal! G
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! u
normal! G
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
undo
normal! j
call feedkeys("\<Esc>", "xt")
undo
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! yyp
call feedkeys("\<Esc>", "xt")
undo
:>
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! D
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2u
:t.
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
normal! u
normal! J
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! dw
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
undo
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
normal! u
normal! 2dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! G
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! u
:put ='new'
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=-1
:j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! u
normal! yyP
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! >>
call feedkeys("\<Esc>", "xt")
undo
normal! gg
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
undo
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! u
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
undo
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! D
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dw
call feedkeys("\<Esc>", "xt")
normal! u
normal! J
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=2
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
execute "normal! vjd"
call feedkeys("\<Esc>", "xt")
undo
normal! $
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=3
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
undo
normal! yyp
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
:t.
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! 2u
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
:j
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
normal! k
call feedkeys("\<Esc>", "xt")
normal! u
normal! j
call feedkeys("\<Esc>", "xt")
:sort
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undolist
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo!
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! j
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! $
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
:m$
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 3g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
normal! u
normal! rZ
call feedkeys("\<Esc>", "xt")
normal! rZ
call feedkeys("\<Esc>", "xt")
undo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 9
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 1
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=0
normal! gg
call feedkeys("\<Esc>", "xt")
normal! u
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:put ='new'
call feedkeys("\<Esc>", "xt")
execute "normal! Vjd"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 3x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 0
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! 2dd
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! $
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
redo
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
normal! w
call feedkeys("\<Esc>", "xt")
undo
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! u
normal! J
call feedkeys("\<Esc>", "xt")
undo
normal! gUU
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! $
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten', 'eleven twelve']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
normal! gg
call feedkeys("\<Esc>", "xt")
normal! 3x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
normal! 2u
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! \<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g+
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
later 2
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
normal! 2u
normal! gg
call feedkeys("\<Esc>", "xt")
normal! u
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 4
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['a b c', 'd e f', 'g h i']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
set undolevels=1
:t.
call feedkeys("\<Esc>", "xt")
normal! ~
call feedkeys("\<Esc>", "xt")
normal! u
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undojoin | normal! x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
execute "normal! 2\<C-r>"
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
normal! g-
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
earlier 5
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc', 'tail']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ma
normal! jmb
normal! gg
execute "normal! Vj\<Esc>"
normal! j
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
undo
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! k
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! 2u
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 3
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
undo 1x
echo string(getline(1,'$')) line('.') col('.') changenr() getpos("'[")[1] getpos("']")[1] getpos("'a")[1:2] getpos("'b")[1:2] getpos("'<")[1:2] getpos("'>")[1:2] getpos("'.")[1:2]
