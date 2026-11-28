set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! x
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3x
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! $X
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! $X
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! $X
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! $X
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dd
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3dd
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dG
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dG
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dG
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dG
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dgg
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dgg
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dgg
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dgg
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dw
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dw
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dw
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dw
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! d$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! d$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! d$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! d$
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! D
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! D
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! D
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! D
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dj
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dj
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dj
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dj
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dk
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dk
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dk
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dk
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! d2w
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! d2w
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! d2w
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! d2w
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dap
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dap
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dap
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dap
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! cwQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! cwQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! ccQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3ccQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! CQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! CQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! CQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! CQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! oQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! OQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3oQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! IQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3iQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3iQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3iQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3iQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! iQ\<CR>R\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! iQ\<CR>R\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! iQ\<CR>R\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! iQ\<CR>R\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<CR>R\<CR>S\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<CR>R\<CR>S\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<CR>R\<CR>S\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<CR>R\<CR>S\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! A\<CR>x\<C-h>\<C-h>\<C-h>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! A\<CR>x\<C-h>\<C-h>\<C-h>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! A\<CR>x\<C-h>\<C-h>\<C-h>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! A\<CR>x\<C-h>\<C-h>\<C-h>\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3~
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3~
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3~
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3~
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! g~~
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! g~~
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! g~~
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! g~~
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUU
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3guu
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3guu
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3guu
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3guu
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUip
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUip
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUip
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUip
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! J
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3J
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gJ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gJ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gJ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gJ
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! >>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! >>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! >>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! >>
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3>>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3>>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3>>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3>>
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! <<
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! <<
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! <<
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! <<
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyp
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyP
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yy3p
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yy3p
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yy3p
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yy3p
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ddp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ddp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ddp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ddp
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! xp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! xp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! xp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! xp
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ylp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ylp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ylp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ylp
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ywP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ywP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ywP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ywP
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3rZ
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-a>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-a>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-a>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-a>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:d
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3d
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%d
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m0
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m$
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3m$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3m$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3m$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3m$
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:4m1
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:4m1
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:4m1
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:4m1
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t.
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t.
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t.
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t.
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t0
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,2t$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,2t$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,2t$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,2t$
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/g
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/g
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/g
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/\n//
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/\n//
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/\n//
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/\n//
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3s/\n/ /
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3s/\n/ /
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3s/\n/ /
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3s/\n/ /
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/e\ne/X/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/e\ne/X/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/e\ne/X/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/e\ne/X/
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/\r\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/\r\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/\r\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/\r\r/g
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/zzz/y/e
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/zzz/y/e
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/zzz/y/e
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/zzz/y/e
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort!
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort!
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort!
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort!
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,4sort
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,4sort
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,4sort
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,4sort
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:j
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:j
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:j
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:j
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,3j
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,3j
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,3j
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,3j
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:>
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3>
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:<
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:<
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:<
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:<
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/d
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/normal Ax
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/s//E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/s//E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/s//E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/s//E/
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:v/[ex]/d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:v/[ex]/d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:v/[ex]/d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:v/[ex]/d
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/^/m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/^/m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/^/m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/^/m0
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/t.
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/t.
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/t.
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/t.
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:normal Ax
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%normal Ax
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3normal 0x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3normal 0x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3normal 0x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3normal 0x
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put ='new'
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put! ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put! ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put! ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put! ='new'
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:0put ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:0put ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:0put ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:0put ='new'
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put =['n1','n2']
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put =['n1','n2']
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put =['n1','n2']
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put =['n1','n2']
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:append|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:append|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:append|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:append|x
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:insert|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:insert|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:insert|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:insert|x
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2change|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2change|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2change|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2change|x
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:retab 4
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:retab 4
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:retab 4
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:retab 4
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:k a
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:k a
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:k a
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:k a
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3y
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3y
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3y
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3y
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vjd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vjd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vjd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vjd
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! VjcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! VjcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! VjcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! VjcQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! VjJ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! VjJ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! VjJ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! VjJ
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vj>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vj>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vj>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vj>
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjrZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjrZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjrZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjrZ
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjU
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jld"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jld"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jld"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jld"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jIQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j$AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j$AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j$AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j$AQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlcQ\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlrZ"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jly$p"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jly$p"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jly$p"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jly$p"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-w>\<C-w>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-w>\<C-w>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-w>\<C-w>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-w>\<C-w>\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-u>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-u>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-u>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-u>\<Esc>"
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! lh
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! lh
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['only line']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! lh
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! lh
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ddp
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlcQ\<Esc>"
:%s/zzz/y/e
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! 3~
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3m$
call feedkeys("\<Esc>", "xt")
normal! d$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dw
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,3j
call feedkeys("\<Esc>", "xt")
:>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dG
:2,4sort
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! oQ\<Esc>"
:sort
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dap
:>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort!
call feedkeys("\<Esc>", "xt")
:insert|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/g
:put! ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:>
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjU
call feedkeys("\<Esc>", "xt")
execute "normal! 3iQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/\r\r/g
:%s/[ex]/E\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/d
normal! D
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vjd
normal! ylp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dG
:2,3normal 0x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:0put ='new'
normal! ywP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jly$p"
normal! dk
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dw
:retab 4
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:insert|x
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3~
call feedkeys("\<Esc>", "xt")
normal! VjJ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%d
call feedkeys("\<Esc>", "xt")
:%d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,2t$
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-u>\<Esc>"
:sort!
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put! ='new'
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! IQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! x
execute "normal! oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3ccQ\<Esc>"
:0put ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%d
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/^/m0
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! A\<CR>x\<C-h>\<C-h>\<C-h>\<Esc>"
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:<
call feedkeys("\<Esc>", "xt")
normal! dgg
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/zzz/y/e
call feedkeys("\<Esc>", "xt")
normal! d2w
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
call feedkeys("\<Esc>", "xt")
execute "normal! A\<CR>x\<C-h>\<C-h>\<C-h>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ywP
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! cwQ\<Esc>"
execute "normal! \<C-v>j>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3y
normal! ylp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/e\ne/X/
normal! $X
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:0put ='new'
:sort
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put =['n1','n2']
execute "normal! \<C-v>j>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
normal! VjJ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/normal Ax
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:k a
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jld"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
call feedkeys("\<Esc>", "xt")
:retab 4
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/
normal! 3J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jIQ\<Esc>"
:2change|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! g~~
normal! dap
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ylp
call feedkeys("\<Esc>", "xt")
execute "normal! A\<CR>x\<C-h>\<C-h>\<C-h>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:normal Ax
call feedkeys("\<Esc>", "xt")
normal! ywP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjrZ
:insert|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t.
call feedkeys("\<Esc>", "xt")
normal! vjU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3ccQ\<Esc>"
normal! dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/normal Ax
execute "normal! \<C-v>jlcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort!
call feedkeys("\<Esc>", "xt")
:sort!
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jld"
call feedkeys("\<Esc>", "xt")
:2change|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
call feedkeys("\<Esc>", "xt")
execute "normal! iQ\<CR>R\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3~
normal! <<
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort
call feedkeys("\<Esc>", "xt")
:2,3m$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
:%normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/\r\r/g
:2,3s/\n/ /
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/
call feedkeys("\<Esc>", "xt")
:g/[ex]/s//E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put! ='new'
call feedkeys("\<Esc>", "xt")
:s/e\ne/X/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUip
call feedkeys("\<Esc>", "xt")
execute "normal! iQ\<CR>R\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/\n//
call feedkeys("\<Esc>", "xt")
:1,2t$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ddp
:g/[ex]/normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3s/\n/ /
call feedkeys("\<Esc>", "xt")
:%s/zzz/y/e
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,4sort
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<CR>R\<CR>S\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! ccQ\<Esc>"
:%d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3normal 0x
call feedkeys("\<Esc>", "xt")
normal! 3guu
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3normal 0x
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! oQ\<Esc>"
normal! J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3y
normal! d2w
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3normal 0x
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3s/\n/ /
:m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! rZ
normal! yy3p
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ylp
:sort!
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3d
call feedkeys("\<Esc>", "xt")
normal! xp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjrZ
call feedkeys("\<Esc>", "xt")
normal! gUU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gJ
normal! dG
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j$AQ\<Esc>"
:4m1
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/zzz/y/e
:2,3s/\n/ /
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! >>
normal! dw
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gJ
normal! $X
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
execute "normal! Aab cd\<C-w>\<C-w>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-u>\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort!
call feedkeys("\<Esc>", "xt")
:2,3m$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/\r\r/g
call feedkeys("\<Esc>", "xt")
:append|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3J
call feedkeys("\<Esc>", "xt")
normal! dgg
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:v/[ex]/d
normal! yyP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/\n//
:put ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jld"
call feedkeys("\<Esc>", "xt")
normal! $X
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! $X
:retab 4
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,2t$
normal! dap
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/\n//
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<CR>R\<CR>S\<Esc>"
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dgg
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>jly$p"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:v/[ex]/d
:k a
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dw
normal! dj
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:0put ='new'
normal! <<
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! gJ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3rZ
call feedkeys("\<Esc>", "xt")
normal! xp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! lh
normal! yyP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! x
call feedkeys("\<Esc>", "xt")
normal! xp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! >>
call feedkeys("\<Esc>", "xt")
:%s/\n//
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dk
call feedkeys("\<Esc>", "xt")
normal! 3J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3>
call feedkeys("\<Esc>", "xt")
normal! dG
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyp
call feedkeys("\<Esc>", "xt")
:v/[ex]/d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%normal Ax
:insert|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! 3>>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:retab 4
call feedkeys("\<Esc>", "xt")
:put =['n1','n2']
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dj
call feedkeys("\<Esc>", "xt")
normal! dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dap
call feedkeys("\<Esc>", "xt")
:d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:v/[ex]/d
:%s/zzz/y/e
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! x
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3y
:k a
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j>"
call feedkeys("\<Esc>", "xt")
normal! 3J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:k a
:normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! D
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! D
:<
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:normal Ax
call feedkeys("\<Esc>", "xt")
:2,3y
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E/g
normal! dw
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:0put ='new'
normal! 3~
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyP
call feedkeys("\<Esc>", "xt")
normal! dj
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/
normal! D
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! A\<CR>x\<C-h>\<C-h>\<C-h>\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! A\<CR>x\<C-h>\<C-h>\<C-h>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3y
:%s/[ex]/\r\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>j$AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUU
:%s/[ex]/E\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3oQ\<Esc>"
normal! x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyp
:retab 4
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:d
normal! yy3p
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ddp
normal! Vjd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<CR>R\<CR>S\<Esc>"
:insert|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-a>"
normal! d$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3rZ
call feedkeys("\<Esc>", "xt")
:4m1
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dap
call feedkeys("\<Esc>", "xt")
normal! dgg
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gJ
call feedkeys("\<Esc>", "xt")
:t.
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjrZ
:4m1
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2change|x
normal! dj
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/normal Ax
normal! Vjd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dgg
call feedkeys("\<Esc>", "xt")
:sort!
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3m$
normal! ylp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:k a
:k a
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyp
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/t.
call feedkeys("\<Esc>", "xt")
execute "normal! 3oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort!
normal! g~~
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:4m1
call feedkeys("\<Esc>", "xt")
execute "normal! CQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! IQ\<Esc>"
normal! ylp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-a>"
call feedkeys("\<Esc>", "xt")
normal! 3J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3d
:m$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ylp
normal! Vjd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,3j
call feedkeys("\<Esc>", "xt")
normal! 3rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gJ
normal! gUip
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t.
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:4m1
:append|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! D
:%d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! vjrZ
call feedkeys("\<Esc>", "xt")
normal! dap
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/e\ne/X/
:put! ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort!
call feedkeys("\<Esc>", "xt")
normal! Vj>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUU
:j
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:v/[ex]/d
call feedkeys("\<Esc>", "xt")
normal! J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! D
normal! yyp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! g~~
call feedkeys("\<Esc>", "xt")
normal! vjU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:s/[ex]/E/
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/\r\r/g
call feedkeys("\<Esc>", "xt")
normal! 3guu
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:append|x
call feedkeys("\<Esc>", "xt")
:normal Ax
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! iQ\<CR>R\<Esc>"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gUU
:2,3normal 0x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/g
normal! 3dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:put! ='new'
call feedkeys("\<Esc>", "xt")
:%d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:k a
call feedkeys("\<Esc>", "xt")
execute "normal! \<C-v>j>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<CR>R\<CR>S\<Esc>"
call feedkeys("\<Esc>", "xt")
normal! yyP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! g~~
call feedkeys("\<Esc>", "xt")
normal! 3J
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/normal Ax
execute "normal! 3iQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3normal 0x
normal! dw
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3~
normal! dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:append|x
normal! dw
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:insert|x
call feedkeys("\<Esc>", "xt")
normal! yy3p
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! xp
execute "normal! iQ\<CR>R\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyP
:2,3normal 0x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t0
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! >>
normal! dj
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,4sort
execute "normal! VjcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! VjJ
execute "normal! \<C-v>jlcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dgg
call feedkeys("\<Esc>", "xt")
:append|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:sort
:1,2t$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:k a
:%s/[ex]/E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:v/[ex]/d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3dd
call feedkeys("\<Esc>", "xt")
:s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! iQ\<CR>R\<Esc>"
:2,3y
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! gJ
normal! xp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! >>
call feedkeys("\<Esc>", "xt")
normal! yyp
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlcQ\<Esc>"
normal! gUU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vj>
:2,3d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E\r/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:0put ='new'
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! Aab cd\<C-u>\<Esc>"
normal! yy3p
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3s/\n/ /
call feedkeys("\<Esc>", "xt")
execute "normal! AQ\<CR>R\<CR>S\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m$
normal! d$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:4m1
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/s//E/
call feedkeys("\<Esc>", "xt")
normal! dj
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/g
call feedkeys("\<Esc>", "xt")
:append|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! CQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:2,3m$
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vj>
execute "normal! \<C-v>jly$p"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:j
normal! gJ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! AQ\<CR>R\<CR>S\<Esc>"
call feedkeys("\<Esc>", "xt")
:t0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3guu
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! d$
call feedkeys("\<Esc>", "xt")
:%d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:normal Ax
execute "normal! \<C-v>jIQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dap
call feedkeys("\<Esc>", "xt")
normal! x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-a>"
call feedkeys("\<Esc>", "xt")
normal! dG
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dgg
call feedkeys("\<Esc>", "xt")
execute "normal! iQ\<CR>R\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3s/\n/ /
execute "normal! Aab cd\<C-u>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vj>
call feedkeys("\<Esc>", "xt")
normal! Vj>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3~
normal! 3dd
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dG
call feedkeys("\<Esc>", "xt")
execute "normal! A\<CR>x\<C-h>\<C-h>\<C-h>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>j$AQ\<Esc>"
normal! 3x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3iQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:g/[ex]/s//E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3dd
normal! vjU
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m$
call feedkeys("\<Esc>", "xt")
normal! d2w
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:normal Ax
execute "normal! 3oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3>>
:2,3normal 0x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyP
:2,3y
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! $X
call feedkeys("\<Esc>", "xt")
execute "normal! Aab cd\<C-u>\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:retab 4
call feedkeys("\<Esc>", "xt")
:m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3oQ\<Esc>"
call feedkeys("\<Esc>", "xt")
:4m1
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,3j
call feedkeys("\<Esc>", "xt")
normal! 3rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! 3x
normal! dgg
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,3j
call feedkeys("\<Esc>", "xt")
:g/[ex]/s//E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! ywP
call feedkeys("\<Esc>", "xt")
normal! 3>>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dap
call feedkeys("\<Esc>", "xt")
:2,3d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! 3ccQ\<Esc>"
execute "normal! \<C-v>jly$p"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dgg
call feedkeys("\<Esc>", "xt")
:g/[ex]/d
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/^/m0
normal! vjrZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
:%s/[ex]/E/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m0
:s/e\ne/X/
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! ccQ\<Esc>"
call feedkeys("\<Esc>", "xt")
execute "normal! OQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,4sort
execute "normal! \<C-v>jly$p"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:2,3d
:<
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! yyP
:>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%normal Ax
execute "normal! \<C-a>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! $X
normal! x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:1,2t$
call feedkeys("\<Esc>", "xt")
execute "normal! VjcQ\<Esc>"
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:m0
call feedkeys("\<Esc>", "xt")
normal! dap
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:t.
normal! 3rZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! dG
call feedkeys("\<Esc>", "xt")
:g/^/m0
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
normal! Vj>
call feedkeys("\<Esc>", "xt")
:2change|x
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('redo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:normal Ax
call feedkeys("\<Esc>", "xt")
normal! vjrZ
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/normal Ax
call feedkeys("\<Esc>", "xt")
:retab 4
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/[ex]/E\r/
call feedkeys("\<Esc>", "xt")
normal! 3>>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g'), substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
execute "normal! \<C-v>jlrZ"
call feedkeys("\<Esc>", "xt")
normal! ywP
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['', 'x', '', 'abc abc abc']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:g/[ex]/normal Ax
call feedkeys("\<Esc>", "xt")
normal! >>
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('normal! 3u'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ['one two three', 'four five', 'six', 'seven eight nine', 'ten']
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
normal! j
:%s/\n//
:%s/[ex]/E/g
call feedkeys("\<Esc>", "xt")
let g:o = [substitute(execute('undo'), '[0-9][0-9]* seconds* ago', 'T', 'g')]
echo string(getline(1,'$')) string(g:o)
