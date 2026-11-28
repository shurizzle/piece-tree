set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
undo | call feedkeys("rZ", "xt")
undo
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("3J", "xt")
%s/[ex]/E/g | call feedkeys("Ox\<Esc>", "xt")
call feedkeys("D", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("3x", "xt")
call feedkeys("yyp", "xt") | call feedkeys("P", "xt") | call feedkeys("dw", "xt")
call feedkeys("qqxq", "xt")
call feedkeys("2dd", "xt") | call feedkeys("u", "xt") | m0
call feedkeys("\<C-a>", "xt") | redo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("x", "xt") | call feedkeys("xp", "xt")
call feedkeys(".", "xt") | call feedkeys("k", "xt")
call feedkeys("xp", "xt") | call feedkeys("qqAx\<Esc>q", "xt") | 2,3d
undo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(">>", "xt")
call feedkeys(">>", "xt") | s/[ex]/E/
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("x", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
put ="new" | call feedkeys("gg", "xt")
call feedkeys("\<C-a>", "xt")
call feedkeys("2@q", "xt") | j | call feedkeys("J", "xt")
t. | call feedkeys("3x", "xt")
call feedkeys("~", "xt") | call feedkeys("ox\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("P", "xt")
call feedkeys("3u", "xt") | call feedkeys("cwQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
undo | call feedkeys("rZ", "xt")
call feedkeys("g~~", "xt") | call feedkeys("gg", "xt") | g/[ex]/normal Ax
put ="new"
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2@q", "xt")
%s/[ex]/E/g | call feedkeys("dd", "xt") | call feedkeys("ox\<CR>y\<Esc>", "xt")
put ="new"
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ox\<Esc>", "xt")
call feedkeys("$", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
t. | s/[ex]/E/ | g/[ex]/normal Ax
call feedkeys("ddp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqddq", "xt") | call feedkeys("3x", "xt") | %normal Ax
call feedkeys("u", "xt") | call feedkeys("g~~", "xt")
call feedkeys("2u", "xt") | call feedkeys("ox\<Esc>", "xt") | g/[ex]/normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>u", "xt") | call feedkeys("qqddq", "xt")
call feedkeys("rZ", "xt") | call feedkeys("ix\<Esc>", "xt") | call feedkeys("\<C-a>", "xt")
g/[ex]/normal Ax | call feedkeys("2u", "xt") | call feedkeys("xp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(">>", "xt")
undo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
put ="new" | call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("gg", "xt")
call feedkeys("3u", "xt") | s/[ex]/E/ | redo
call feedkeys("yyp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ddp", "xt") | call feedkeys(".", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt")
call feedkeys("dd", "xt") | call feedkeys("yyp", "xt") | call feedkeys("2@q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("P", "xt")
call feedkeys("cwQ\<Esc>", "xt")
%normal Ax | call feedkeys("g~~", "xt")
normal Ax
call feedkeys("w", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("dw", "xt") | call feedkeys("dd", "xt") | call feedkeys("u", "xt")
d | call feedkeys("dw", "xt")
call feedkeys("ddp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
d | 2,3d | call feedkeys("ox\<Esc>", "xt")
call feedkeys("ddp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("D", "xt") | call feedkeys("g~~", "xt") | j
call feedkeys("xp", "xt") | call feedkeys("u", "xt")
call feedkeys("gg", "xt")
call feedkeys("\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
g/[ex]/d | g/[ex]/d | call feedkeys("3x", "xt")
call feedkeys("ddp", "xt") | call feedkeys("xp", "xt") | call feedkeys("J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("gg", "xt") | t.
call feedkeys("u", "xt") | call feedkeys("$", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
undo | call feedkeys("2dd", "xt") | d
call feedkeys("J", "xt") | call feedkeys("2u", "xt") | call feedkeys("dd", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3u", "xt") | call feedkeys("qqAx\<Esc>q", "xt")
%normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("\<C-a>", "xt") | redo | call feedkeys("3ix\<Esc>", "xt")
call feedkeys("$", "xt") | call feedkeys("\<C-r>", "xt")
m0
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("0", "xt")
call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("Ax\<C-g>uy\<Esc>", "xt") | 2,3d
call feedkeys("ox\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("D", "xt") | call feedkeys("yyp", "xt")
call feedkeys("3ix\<Esc>", "xt") | call feedkeys("<<", "xt")
call feedkeys("u", "xt") | call feedkeys(".", "xt")
call feedkeys("k", "xt")
redo | call feedkeys("\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("w", "xt") | m0 | call feedkeys("ddp", "xt")
call feedkeys(".", "xt")
call feedkeys("D", "xt") | call feedkeys(".", "xt") | sort
call feedkeys("dd", "xt") | call feedkeys("ox\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2dd", "xt")
call feedkeys("qqxq", "xt") | call feedkeys("Ox\<Esc>", "xt")
call feedkeys("<<", "xt")
call feedkeys(">>", "xt") | %normal Ax
call feedkeys("\<C-a>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("cwQ\<Esc>", "xt") | call feedkeys("3x", "xt")
call feedkeys("dw", "xt") | call feedkeys("cwQ\<Esc>", "xt")
call feedkeys("2@q", "xt")
redo | call feedkeys("2\<C-r>", "xt")
call feedkeys("ix\<Esc>", "xt") | put ="new" | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
g/[ex]/normal Ax | call feedkeys("g~~", "xt") | call feedkeys("w", "xt")
call feedkeys("\<C-a>", "xt") | call feedkeys("x", "xt")
call feedkeys("2\<C-r>", "xt") | j
m0 | call feedkeys("ox\<CR>y\<Esc>", "xt")
call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("J", "xt") | d
m0 | call feedkeys("@q", "xt") | call feedkeys("dd", "xt")
call feedkeys("2\<C-r>", "xt") | call feedkeys("xp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("gg", "xt") | call feedkeys(".", "xt")
call feedkeys("2dd", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("G", "xt")
call feedkeys("cwQ\<Esc>", "xt")
t. | call feedkeys("ox\<Esc>", "xt") | call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("J", "xt") | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
s/[ex]/E/ | call feedkeys("3ix\<Esc>", "xt")
undo | call feedkeys("qqAx\<Esc>q", "xt") | d
g/[ex]/d | call feedkeys("ox\<CR>y\<Esc>", "xt") | %s/[ex]/E/g
call feedkeys("2@q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("k", "xt")
call feedkeys("<<", "xt") | call feedkeys("2\<C-r>", "xt") | call feedkeys("x", "xt")
g/[ex]/d | call feedkeys("2dd", "xt") | call feedkeys("D", "xt")
call feedkeys("j", "xt") | call feedkeys("~", "xt") | call feedkeys("3u", "xt")
call feedkeys("3ix\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("j", "xt") | call feedkeys("2@q", "xt")
call feedkeys("u", "xt")
call feedkeys("g~~", "xt") | j
call feedkeys("u", "xt") | 2,3d
call feedkeys("rZ", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("g~~", "xt") | call feedkeys("dd", "xt")
call feedkeys("rZ", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3.", "xt")
sort | call feedkeys("qqddq", "xt")
call feedkeys("\<C-r>", "xt") | call feedkeys(">>", "xt") | call feedkeys("\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("\<C-a>", "xt") | call feedkeys("0", "xt")
g/[ex]/d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("ox\<CR>y\<Esc>", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("ox\<Esc>", "xt") | call feedkeys("Ax\<Esc>u", "xt")
> | call feedkeys("ccQ\<Esc>", "xt") | 2,3d
2,3d | call feedkeys("rZ", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("3J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("J", "xt")
g/[ex]/normal Ax | call feedkeys("3J", "xt")
call feedkeys("gg", "xt") | call feedkeys("g~~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("dd", "xt") | call feedkeys("3J", "xt") | call feedkeys("\<C-a>", "xt")
sort | normal Ax | call feedkeys("<<", "xt")
call feedkeys("2\<C-r>", "xt") | j | call feedkeys("2\<C-r>", "xt")
call feedkeys("rZ", "xt") | call feedkeys("ddp", "xt") | call feedkeys("2u", "xt")
call feedkeys("2dd", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("rZ", "xt")
call feedkeys("<<", "xt")
call feedkeys("cwQ\<Esc>", "xt")
call feedkeys("3.", "xt")
call feedkeys("3J", "xt") | call feedkeys("P", "xt") | call feedkeys("ox\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3J", "xt")
put ="new" | call feedkeys("u", "xt")
undo | sort
call feedkeys("ox\<CR>y\<Esc>", "xt") | %normal Ax
call feedkeys("D", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("u", "xt") | normal Ax
%normal Ax | call feedkeys("j", "xt") | call feedkeys("rZ", "xt")
call feedkeys("3ix\<Esc>", "xt") | call feedkeys("3J", "xt") | undo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("j", "xt")
call feedkeys("rZ", "xt") | call feedkeys("2\<C-r>", "xt") | j
call feedkeys(".", "xt") | call feedkeys("<<", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("j", "xt") | call feedkeys("ox\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("j", "xt")
call feedkeys("ccQ\<Esc>", "xt")
j
call feedkeys("u", "xt") | call feedkeys("3J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("p", "xt") | call feedkeys("Ax\<Esc>u", "xt") | call feedkeys("2@q", "xt")
%s/[ex]/E/g | j | call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("j", "xt") | call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("ddp", "xt")
undo | call feedkeys("\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("~", "xt") | put ="new" | call feedkeys("dd", "xt")
call feedkeys(">>", "xt")
call feedkeys("qqxq", "xt") | call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("$", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
g/[ex]/d
call feedkeys("3J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
j | undo
redo | call feedkeys("3J", "xt")
call feedkeys("$", "xt") | call feedkeys("ddp", "xt") | call feedkeys("D", "xt")
call feedkeys("ix\<Esc>", "xt") | g/[ex]/normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("P", "xt") | call feedkeys("G", "xt")
call feedkeys("gg", "xt") | call feedkeys("3.", "xt")
call feedkeys("j", "xt") | d | normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2@q", "xt") | call feedkeys("3.", "xt")
s/[ex]/E/ | call feedkeys("2dd", "xt") | call feedkeys("3x", "xt")
call feedkeys("D", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("k", "xt") | g/[ex]/normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
put ="new" | call feedkeys("p", "xt") | 2,3d
call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
call feedkeys("2u", "xt") | call feedkeys("qqAx\<Esc>q", "xt")
call feedkeys("D", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("u", "xt") | call feedkeys("Ox\<Esc>", "xt") | call feedkeys("qqddq", "xt")
call feedkeys("<<", "xt") | call feedkeys("p", "xt") | call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("p", "xt")
call feedkeys("Ax\<Esc>", "xt") | call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("gg", "xt")
call feedkeys("@q", "xt") | call feedkeys("gg", "xt")
call feedkeys("ox\<Esc>", "xt") | s/[ex]/E/
call feedkeys("g~~", "xt") | call feedkeys("qqxq", "xt") | call feedkeys("2u", "xt")
call feedkeys("2\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2@q", "xt") | call feedkeys("rZ", "xt")
call feedkeys(".", "xt") | call feedkeys("qqxq", "xt") | call feedkeys("rZ", "xt")
call feedkeys("2\<C-r>", "xt")
call feedkeys("\<C-a>", "xt") | call feedkeys("D", "xt") | call feedkeys("P", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("G", "xt") | call feedkeys("2dd", "xt")
call feedkeys("dw", "xt") | call feedkeys(">>", "xt") | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
call feedkeys(".", "xt") | call feedkeys("ddp", "xt") | call feedkeys("J", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("qqxq", "xt") | %normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt") | j
call feedkeys("\<C-r>", "xt") | call feedkeys("ox\<Esc>", "xt")
call feedkeys("~", "xt")
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("$", "xt")
call feedkeys("@q", "xt") | g/[ex]/normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
m0
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("G", "xt")
%normal Ax | call feedkeys("3J", "xt") | call feedkeys("u", "xt")
call feedkeys("xp", "xt") | call feedkeys("xp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("u", "xt") | %s/[ex]/E/g | call feedkeys("3x", "xt")
d
call feedkeys("xp", "xt")
%s/[ex]/E/g | call feedkeys("\<C-r>", "xt") | m0
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("~", "xt") | m0
call feedkeys("$", "xt") | call feedkeys(".", "xt") | call feedkeys("$", "xt")
d | call feedkeys("u", "xt") | 2,3d
call feedkeys("j", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
normal Ax
call feedkeys("2dd", "xt") | normal Ax
put ="new" | g/[ex]/normal Ax | call feedkeys("rZ", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>", "xt") | call feedkeys("cwQ\<Esc>", "xt")
call feedkeys("J", "xt")
call feedkeys("3.", "xt") | call feedkeys("dd", "xt")
redo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
s/[ex]/E/ | call feedkeys("dd", "xt") | call feedkeys("G", "xt")
d
call feedkeys("xp", "xt") | t. | call feedkeys("xp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("xp", "xt") | call feedkeys("2dd", "xt")
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("3J", "xt") | call feedkeys("G", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
redo | j
put ="new" | >
t. | call feedkeys("ox\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ddp", "xt") | call feedkeys("D", "xt") | call feedkeys("k", "xt")
> | call feedkeys("x", "xt") | g/[ex]/d
call feedkeys("u", "xt")
call feedkeys("2dd", "xt") | normal Ax | call feedkeys("3x", "xt")
call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ix\<Esc>", "xt")
g/[ex]/d | call feedkeys("3ix\<Esc>", "xt") | m0
g/[ex]/normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("P", "xt") | call feedkeys("u", "xt")
call feedkeys("<<", "xt") | %s/[ex]/E/g
call feedkeys("Ax\<Esc>", "xt") | call feedkeys("cwQ\<Esc>", "xt") | call feedkeys("P", "xt")
call feedkeys("dd", "xt") | call feedkeys("2u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("\<C-a>", "xt")
sort
call feedkeys("qqxq", "xt")
call feedkeys("u", "xt") | undo | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("j", "xt") | call feedkeys("cwQ\<Esc>", "xt")
call feedkeys("2u", "xt") | call feedkeys("@q", "xt")
call feedkeys("j", "xt") | j
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<C-g>uy\<Esc>", "xt") | call feedkeys("j", "xt")
call feedkeys("Ax\<Left>y\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
redo | call feedkeys(".", "xt") | call feedkeys("P", "xt")
call feedkeys("qqxq", "xt") | call feedkeys("3x", "xt") | call feedkeys("u", "xt")
call feedkeys("w", "xt") | call feedkeys("qqddq", "xt")
call feedkeys("gg", "xt") | call feedkeys("ix\<Esc>", "xt") | call feedkeys("gg", "xt")
m0
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("g~~", "xt") | call feedkeys("2@q", "xt") | redo
call feedkeys("p", "xt") | call feedkeys("Ax\<Esc>", "xt") | call feedkeys("cwQ\<Esc>", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt")
call feedkeys("g~~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3J", "xt") | call feedkeys("2u", "xt")
call feedkeys("u", "xt") | call feedkeys("xp", "xt") | call feedkeys("2\<C-r>", "xt")
call feedkeys("dd", "xt") | call feedkeys("rZ", "xt")
call feedkeys("rZ", "xt") | call feedkeys("J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("k", "xt")
call feedkeys("\<C-r>", "xt") | call feedkeys("ix\<Esc>", "xt") | d
d | call feedkeys("j", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("yyp", "xt") | normal Ax
call feedkeys("ox\<Esc>", "xt")
put ="new"
call feedkeys("u", "xt") | call feedkeys("~", "xt") | call feedkeys("$", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("u", "xt") | call feedkeys("qqxq", "xt") | s/[ex]/E/
call feedkeys("<<", "xt") | call feedkeys("u", "xt") | call feedkeys("3x", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt") | call feedkeys("Ax\<Esc>", "xt") | s/[ex]/E/
g/[ex]/d | %s/[ex]/E/g | j
call feedkeys("J", "xt") | call feedkeys("qqAx\<Esc>q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("<<", "xt") | t.
call feedkeys(".", "xt") | call feedkeys("u", "xt")
t. | call feedkeys("w", "xt") | g/[ex]/d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3J", "xt")
call feedkeys("cwQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("dw", "xt") | call feedkeys("u", "xt")
call feedkeys("J", "xt") | call feedkeys("3J", "xt") | call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("ix\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ddp", "xt") | j
undo | call feedkeys("ox\<Esc>", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt") | call feedkeys("Ox\<Esc>", "xt") | g/[ex]/normal Ax
t. | call feedkeys("k", "xt")
call feedkeys("3x", "xt") | call feedkeys("j", "xt") | 2,3d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
t. | call feedkeys("rZ", "xt")
d | call feedkeys("$", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
undo
s/[ex]/E/ | call feedkeys(">>", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("qqAx\<Esc>q", "xt") | %s/[ex]/E/g
call feedkeys("Ax\<Esc>u", "xt") | sort | call feedkeys("2\<C-r>", "xt")
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("\<C-a>", "xt") | redo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2dd", "xt") | call feedkeys("\<C-a>", "xt") | call feedkeys("xp", "xt")
call feedkeys("qqddq", "xt")
call feedkeys("gg", "xt") | t.
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2@q", "xt") | call feedkeys("u", "xt")
call feedkeys("w", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("yyp", "xt")
call feedkeys("@q", "xt") | call feedkeys("3ix\<Esc>", "xt") | t.
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("~", "xt") | call feedkeys("x", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
normal Ax
call feedkeys("ccQ\<Esc>", "xt")
call feedkeys("ddp", "xt") | call feedkeys("u", "xt") | call feedkeys("dw", "xt")
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("ox\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("dd", "xt") | call feedkeys("ix\<Esc>", "xt") | call feedkeys("\<C-a>", "xt")
call feedkeys("u", "xt") | call feedkeys("dw", "xt")
g/[ex]/normal Ax
call feedkeys("j", "xt")
j
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqddq", "xt") | t.
call feedkeys("dw", "xt")
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("j", "xt") | call feedkeys("\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
> | call feedkeys("k", "xt")
call feedkeys("k", "xt") | call feedkeys("3.", "xt") | call feedkeys("3u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("~", "xt") | call feedkeys("<<", "xt")
t. | redo | call feedkeys("0", "xt")
call feedkeys("2dd", "xt") | m0
s/[ex]/E/
call feedkeys("0", "xt") | g/[ex]/d | m0
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("~", "xt")
call feedkeys("qqddq", "xt") | call feedkeys("2\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(">>", "xt") | call feedkeys("qqxq", "xt")
d | put ="new" | call feedkeys("qqxq", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("gg", "xt") | call feedkeys("3ix\<Esc>", "xt") | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
call feedkeys("gg", "xt") | call feedkeys("~", "xt") | call feedkeys("ddp", "xt")
redo
call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
s/[ex]/E/
%s/[ex]/E/g
m0
call feedkeys("yyp", "xt")
call feedkeys("w", "xt") | put ="new"
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>u", "xt") | call feedkeys("D", "xt") | d
call feedkeys("u", "xt")
d | m0
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("P", "xt") | call feedkeys("\<C-a>", "xt")
sort | call feedkeys("u", "xt")
call feedkeys("cwQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqxq", "xt") | call feedkeys("rZ", "xt") | call feedkeys("p", "xt")
call feedkeys(">>", "xt") | d | 2,3d
call feedkeys("gg", "xt") | call feedkeys("ox\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("xp", "xt") | call feedkeys("3ix\<Esc>", "xt")
d
call feedkeys("\<C-a>", "xt")
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("qqxq", "xt")
s/[ex]/E/ | call feedkeys("2@q", "xt") | %normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
redo | call feedkeys("Ax\<Esc>u", "xt") | %s/[ex]/E/g
call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("J", "xt") | call feedkeys("u", "xt") | call feedkeys("ddp", "xt")
call feedkeys("ddp", "xt") | call feedkeys("D", "xt")
call feedkeys("3.", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("J", "xt") | call feedkeys("3ix\<Esc>", "xt")
call feedkeys("rZ", "xt") | call feedkeys("qqddq", "xt")
call feedkeys(".", "xt")
call feedkeys("2dd", "xt") | call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("Ax\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
g/[ex]/normal Ax | call feedkeys("x", "xt") | call feedkeys("\<C-r>", "xt")
call feedkeys("ccQ\<Esc>", "xt")
normal Ax
call feedkeys("2u", "xt") | call feedkeys("dw", "xt")
s/[ex]/E/ | call feedkeys("2\<C-r>", "xt") | redo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3ix\<Esc>", "xt") | call feedkeys("<<", "xt") | call feedkeys("0", "xt")
call feedkeys("$", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("qqxq", "xt") | call feedkeys("@q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("\<C-r>", "xt") | call feedkeys("@q", "xt") | call feedkeys("dw", "xt")
call feedkeys("p", "xt")
call feedkeys("w", "xt") | call feedkeys("ccQ\<Esc>", "xt") | m0
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("\<C-r>", "xt") | call feedkeys("0", "xt") | call feedkeys("2\<C-r>", "xt")
call feedkeys("@q", "xt") | call feedkeys("2dd", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqxq", "xt")
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("p", "xt") | d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
2,3d | call feedkeys("@q", "xt") | call feedkeys("\<C-r>", "xt")
undo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqddq", "xt") | call feedkeys("ix\<Esc>", "xt")
call feedkeys("u", "xt") | call feedkeys("P", "xt")
call feedkeys("k", "xt") | call feedkeys("u", "xt")
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("D", "xt")
call feedkeys("3u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("u", "xt")
call feedkeys("D", "xt") | call feedkeys("x", "xt") | call feedkeys("qqxq", "xt")
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("G", "xt") | call feedkeys("ddp", "xt")
call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("~", "xt")
call feedkeys("qqxq", "xt") | call feedkeys("gg", "xt") | call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
d | j
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("D", "xt") | call feedkeys("ix\<Esc>", "xt")
call feedkeys("P", "xt") | j
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
put ="new" | call feedkeys("Ax\<Left>y\<Esc>", "xt")
g/[ex]/d | call feedkeys("p", "xt")
call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ix\<Esc>", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt") | call feedkeys("j", "xt")
call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3u", "xt") | call feedkeys("ccQ\<Esc>", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt") | g/[ex]/normal Ax
call feedkeys("ddp", "xt") | call feedkeys("p", "xt")
call feedkeys(".", "xt") | normal Ax | call feedkeys(".", "xt")
call feedkeys("dd", "xt") | redo | call feedkeys("ccQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
put ="new" | call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("2@q", "xt")
normal Ax
call feedkeys("Ax\<Esc>", "xt")
normal Ax | call feedkeys("ox\<Esc>", "xt") | call feedkeys("qqxq", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
m0
call feedkeys("w", "xt") | call feedkeys("xp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
redo | call feedkeys("P", "xt")
put ="new" | call feedkeys("qqxq", "xt")
call feedkeys("D", "xt") | call feedkeys("rZ", "xt")
undo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt")
call feedkeys("k", "xt") | call feedkeys("G", "xt")
call feedkeys("ox\<Esc>", "xt") | redo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("w", "xt") | g/[ex]/d
call feedkeys("ox\<CR>y\<Esc>", "xt")
call feedkeys("w", "xt") | call feedkeys("j", "xt")
g/[ex]/normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(">>", "xt")
%normal Ax | >
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("ox\<Esc>", "xt") | call feedkeys("D", "xt")
call feedkeys("2u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%s/[ex]/E/g | call feedkeys("yyp", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
sort | call feedkeys("~", "xt") | %normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("G", "xt")
put ="new"
call feedkeys("P", "xt") | call feedkeys("3u", "xt")
t. | call feedkeys("3.", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ix\<Esc>", "xt")
call feedkeys("\<C-a>", "xt") | call feedkeys("u", "xt")
>
call feedkeys("qqxq", "xt") | redo | call feedkeys("J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>", "xt") | call feedkeys("2u", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | d | call feedkeys("dd", "xt")
call feedkeys("~", "xt") | normal Ax
call feedkeys("j", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("\<C-r>", "xt") | %s/[ex]/E/g
m0 | call feedkeys("qqAx\<Esc>q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
>
%normal Ax | %s/[ex]/E/g
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("u", "xt") | g/[ex]/normal Ax | j
call feedkeys("2dd", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("p", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("gg", "xt") | call feedkeys("yyp", "xt") | call feedkeys(".", "xt")
call feedkeys("u", "xt")
g/[ex]/d | g/[ex]/normal Ax
call feedkeys("ox\<Esc>", "xt")
call feedkeys("2\<C-r>", "xt") | call feedkeys("2@q", "xt") | d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("dd", "xt") | call feedkeys("Ax\<Esc>", "xt")
call feedkeys("rZ", "xt") | call feedkeys("2@q", "xt") | call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("Ax\<C-g>uy\<Esc>", "xt") | call feedkeys("qqxq", "xt")
call feedkeys("x", "xt") | put ="new" | call feedkeys("x", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("xp", "xt") | t. | call feedkeys("@q", "xt")
call feedkeys(">>", "xt") | call feedkeys("dd", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt") | put ="new"
call feedkeys("ix\<Esc>", "xt") | call feedkeys("rZ", "xt") | call feedkeys("ix\<Esc>", "xt")
t.
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
s/[ex]/E/ | %normal Ax | call feedkeys("gg", "xt")
normal Ax | call feedkeys("\<C-r>", "xt")
call feedkeys("qqddq", "xt")
m0 | call feedkeys("cwQ\<Esc>", "xt")
call feedkeys("g~~", "xt") | call feedkeys("yyp", "xt") | call feedkeys("yyp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("w", "xt")
call feedkeys("2u", "xt") | call feedkeys("D", "xt") | call feedkeys("ix\<Esc>", "xt")
call feedkeys("k", "xt") | call feedkeys("2u", "xt") | call feedkeys("p", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | put ="new"
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | %normal Ax
m0 | call feedkeys("ccQ\<Esc>", "xt") | t.
call feedkeys("g~~", "xt")
call feedkeys("gg", "xt") | call feedkeys("g~~", "xt") | call feedkeys("2@q", "xt")
call feedkeys("g~~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
s/[ex]/E/ | call feedkeys("Ax\<Esc>u", "xt") | call feedkeys("ccQ\<Esc>", "xt")
call feedkeys("u", "xt")
call feedkeys("ox\<Esc>", "xt") | call feedkeys("2@q", "xt") | call feedkeys("2@q", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | put ="new"
call feedkeys("ox\<Esc>", "xt") | call feedkeys("p", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("rZ", "xt")
sort | call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2u", "xt")
%normal Ax
d
call feedkeys("3.", "xt") | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
g/[ex]/normal Ax
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("3.", "xt") | call feedkeys("Ox\<Esc>", "xt")
call feedkeys("cwQ\<Esc>", "xt") | call feedkeys(">>", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("3u", "xt") | call feedkeys("0", "xt")
call feedkeys("Ax\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ox\<Esc>", "xt") | call feedkeys(".", "xt")
call feedkeys("j", "xt") | call feedkeys(".", "xt") | m0
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("\<C-a>", "xt") | normal Ax
call feedkeys("@q", "xt") | call feedkeys("p", "xt") | call feedkeys("Ax\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("xp", "xt") | call feedkeys("x", "xt")
j
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("k", "xt")
call feedkeys("dw", "xt") | call feedkeys("gg", "xt")
put ="new" | call feedkeys("P", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("rZ", "xt") | s/[ex]/E/
call feedkeys("$", "xt")
call feedkeys("p", "xt") | call feedkeys("cwQ\<Esc>", "xt") | call feedkeys("2dd", "xt")
call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
sort | call feedkeys("2dd", "xt")
d | call feedkeys("yyp", "xt") | undo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("yyp", "xt")
call feedkeys("3x", "xt") | call feedkeys("@q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
d | call feedkeys("3J", "xt")
call feedkeys("j", "xt") | call feedkeys("k", "xt")
call feedkeys("2dd", "xt") | call feedkeys("3x", "xt")
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("Ax\<Esc>u", "xt") | m0
%normal Ax | call feedkeys("2\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("w", "xt") | sort
call feedkeys(".", "xt") | call feedkeys("yyp", "xt")
m0 | call feedkeys("3J", "xt") | call feedkeys("@q", "xt")
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("ccQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("g~~", "xt") | %s/[ex]/E/g | call feedkeys("ox\<CR>y\<Esc>", "xt")
>
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%normal Ax
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("0", "xt")
call feedkeys("3x", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3J", "xt") | m0
call feedkeys("ox\<CR>y\<Esc>", "xt") | call feedkeys("dd", "xt") | call feedkeys("cwQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(">>", "xt") | m0 | call feedkeys("0", "xt")
call feedkeys("Ax\<C-g>uy\<Esc>", "xt") | call feedkeys("\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("yyp", "xt") | g/[ex]/normal Ax
call feedkeys("ccQ\<Esc>", "xt") | sort
call feedkeys("3x", "xt") | call feedkeys("Ox\<Esc>", "xt") | g/[ex]/d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
>
call feedkeys("G", "xt") | call feedkeys("2\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("u", "xt")
call feedkeys("u", "xt") | call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("D", "xt") | undo
call feedkeys("w", "xt")
call feedkeys("3.", "xt") | call feedkeys("D", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>", "xt") | call feedkeys("u", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | 2,3d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("j", "xt") | call feedkeys("p", "xt") | call feedkeys("g~~", "xt")
call feedkeys("<<", "xt") | call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("Ox\<Esc>", "xt")
call feedkeys(">>", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("@q", "xt") | call feedkeys("yyp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
j | call feedkeys("qqAx\<Esc>q", "xt") | redo
call feedkeys("u", "xt") | call feedkeys("ox\<CR>y\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("\<C-a>", "xt") | call feedkeys("3u", "xt")
call feedkeys("qqxq", "xt") | call feedkeys("ddp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqxq", "xt") | call feedkeys("ddp", "xt")
call feedkeys("P", "xt") | call feedkeys("yyp", "xt")
normal Ax
call feedkeys("3J", "xt")
call feedkeys("dw", "xt") | >
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("gg", "xt")
g/[ex]/normal Ax
call feedkeys("u", "xt")
call feedkeys("ddp", "xt") | call feedkeys("J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
2,3d | call feedkeys("\<C-a>", "xt") | call feedkeys("0", "xt")
call feedkeys("3x", "xt") | j
2,3d | call feedkeys(".", "xt") | call feedkeys("ox\<CR>y\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("g~~", "xt")
call feedkeys("u", "xt")
call feedkeys("g~~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
> | sort
call feedkeys("\<C-a>", "xt") | call feedkeys("3x", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
normal Ax | d | call feedkeys("k", "xt")
call feedkeys("Ox\<Esc>", "xt")
call feedkeys("2@q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("k", "xt") | call feedkeys(".", "xt") | call feedkeys("u", "xt")
call feedkeys("2\<C-r>", "xt")
call feedkeys("3J", "xt")
undo | call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("~", "xt") | call feedkeys("3.", "xt") | call feedkeys("~", "xt")
call feedkeys("xp", "xt") | call feedkeys("u", "xt")
call feedkeys("2u", "xt")
call feedkeys("\<C-a>", "xt") | call feedkeys("k", "xt")
call feedkeys("Ax\<C-g>uy\<Esc>", "xt") | call feedkeys("w", "xt") | call feedkeys("yyp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3.", "xt") | call feedkeys("$", "xt")
call feedkeys("2@q", "xt") | s/[ex]/E/ | call feedkeys("3x", "xt")
call feedkeys("qqddq", "xt") | call feedkeys("3x", "xt") | call feedkeys("k", "xt")
call feedkeys("g~~", "xt") | call feedkeys("qqAx\<Esc>q", "xt")
call feedkeys("gg", "xt") | call feedkeys(".", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(">>", "xt") | call feedkeys("3J", "xt") | call feedkeys("u", "xt")
call feedkeys("J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2dd", "xt") | >
call feedkeys("Ax\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3ix\<Esc>", "xt") | call feedkeys("u", "xt")
2,3d | call feedkeys("2u", "xt") | call feedkeys("P", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("0", "xt") | call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("<<", "xt") | call feedkeys("P", "xt") | call feedkeys("yyp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Left>y\<Esc>", "xt") | redo | call feedkeys("ox\<CR>y\<Esc>", "xt")
%normal Ax | call feedkeys("Ox\<Esc>", "xt")
put ="new" | call feedkeys("3J", "xt") | call feedkeys("xp", "xt")
call feedkeys("3ix\<Esc>", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("u", "xt") | call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("dd", "xt")
normal Ax | call feedkeys("2dd", "xt")
>
call feedkeys("<<", "xt") | call feedkeys("3J", "xt")
call feedkeys("2\<C-r>", "xt") | call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("J", "xt")
undo | d | s/[ex]/E/
call feedkeys("qqddq", "xt") | call feedkeys("qqddq", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("p", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("w", "xt") | call feedkeys("3ix\<Esc>", "xt") | call feedkeys(">>", "xt")
call feedkeys("ox\<Esc>", "xt") | call feedkeys(">>", "xt")
call feedkeys("Ax\<Esc>", "xt") | call feedkeys("Ox\<Esc>", "xt") | call feedkeys("cwQ\<Esc>", "xt")
call feedkeys("~", "xt") | call feedkeys("k", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("<<", "xt")
g/[ex]/d | call feedkeys("ix\<Esc>", "xt") | s/[ex]/E/
call feedkeys("2dd", "xt") | call feedkeys("j", "xt") | call feedkeys("<<", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("D", "xt") | g/[ex]/normal Ax | call feedkeys("gg", "xt")
call feedkeys("xp", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("<<", "xt") | call feedkeys("gg", "xt")
call feedkeys("3u", "xt") | call feedkeys("ox\<CR>y\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2\<C-r>", "xt") | call feedkeys("3J", "xt") | put ="new"
%s/[ex]/E/g | call feedkeys("2@q", "xt") | call feedkeys("@q", "xt")
%normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
g/[ex]/normal Ax | sort
call feedkeys("0", "xt") | t. | call feedkeys("w", "xt")
call feedkeys("p", "xt")
call feedkeys("P", "xt") | call feedkeys("ix\<Esc>", "xt")
g/[ex]/d | m0 | call feedkeys("j", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%normal Ax | call feedkeys("dw", "xt") | 2,3d
call feedkeys("2u", "xt") | call feedkeys("Ax\<Esc>u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3x", "xt") | %normal Ax | call feedkeys("k", "xt")
call feedkeys(">>", "xt") | call feedkeys("x", "xt") | sort
normal Ax
%normal Ax | %s/[ex]/E/g | call feedkeys("ox\<CR>y\<Esc>", "xt")
call feedkeys("P", "xt") | 2,3d | call feedkeys("ccQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
> | call feedkeys("p", "xt") | call feedkeys("J", "xt")
call feedkeys("qqAx\<Esc>q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%normal Ax | call feedkeys("j", "xt")
call feedkeys("3.", "xt")
call feedkeys("3J", "xt") | call feedkeys("xp", "xt") | put ="new"
call feedkeys("qqAx\<Esc>q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>", "xt") | call feedkeys("Ax\<Esc>", "xt")
call feedkeys("3.", "xt") | call feedkeys("P", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("xp", "xt") | call feedkeys("ox\<Esc>", "xt")
call feedkeys("dd", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2u", "xt") | call feedkeys("gg", "xt") | t.
call feedkeys("ddp", "xt") | call feedkeys("cwQ\<Esc>", "xt") | call feedkeys("xp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("w", "xt") | call feedkeys("0", "xt")
call feedkeys("$", "xt")
call feedkeys("ddp", "xt") | call feedkeys("<<", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("~", "xt") | put ="new" | d
call feedkeys("<<", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("3J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ox\<Esc>", "xt") | call feedkeys("~", "xt") | call feedkeys("Ax\<Esc>", "xt")
call feedkeys("u", "xt") | call feedkeys("k", "xt")
call feedkeys("0", "xt")
call feedkeys("\<C-a>", "xt") | call feedkeys("\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
g/[ex]/normal Ax | undo | call feedkeys("2u", "xt")
call feedkeys("3ix\<Esc>", "xt")
m0 | call feedkeys("\<C-a>", "xt") | call feedkeys("3x", "xt")
call feedkeys("ix\<Esc>", "xt") | >
redo | g/[ex]/normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("2u", "xt")
put ="new" | m0 | call feedkeys("J", "xt")
call feedkeys("3u", "xt") | call feedkeys("Ax\<Esc>u", "xt") | call feedkeys("@q", "xt")
call feedkeys("k", "xt") | call feedkeys("D", "xt")
call feedkeys("yyp", "xt") | call feedkeys("qqAx\<Esc>q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("0", "xt") | call feedkeys("yyp", "xt")
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("k", "xt") | call feedkeys("u", "xt")
call feedkeys("3u", "xt") | call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(">>", "xt") | d | call feedkeys("2\<C-r>", "xt")
call feedkeys("dw", "xt")
sort | call feedkeys("ix\<Esc>", "xt") | call feedkeys("3u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("w", "xt")
%s/[ex]/E/g | call feedkeys("3J", "xt")
call feedkeys("Ax\<Esc>", "xt")
call feedkeys("\<C-a>", "xt")
> | call feedkeys("~", "xt") | call feedkeys("ix\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
m0 | normal Ax
s/[ex]/E/
call feedkeys("@q", "xt") | call feedkeys("<<", "xt") | call feedkeys("qqddq", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqAx\<Esc>q", "xt")
s/[ex]/E/ | call feedkeys("3.", "xt") | call feedkeys("qqAx\<Esc>q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3u", "xt") | call feedkeys("ddp", "xt")
call feedkeys("2dd", "xt") | call feedkeys("3.", "xt")
undo | call feedkeys("Ax\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("g~~", "xt") | call feedkeys("J", "xt") | call feedkeys("ix\<Esc>", "xt")
call feedkeys("@q", "xt") | d | call feedkeys("p", "xt")
normal Ax | call feedkeys("Ax\<Esc>u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%normal Ax | > | call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("2\<C-r>", "xt") | call feedkeys("2@q", "xt") | >
call feedkeys("ddp", "xt")
call feedkeys("<<", "xt") | call feedkeys("ddp", "xt") | %s/[ex]/E/g
call feedkeys(">>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%normal Ax
sort | call feedkeys("Ox\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2dd", "xt")
call feedkeys("Ox\<Esc>", "xt") | redo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("J", "xt")
sort | call feedkeys("\<C-r>", "xt") | call feedkeys("\<C-a>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ox\<Esc>", "xt") | call feedkeys("3u", "xt")
call feedkeys("xp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("J", "xt")
%s/[ex]/E/g
t. | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
call feedkeys("2@q", "xt") | call feedkeys("Ax\<Esc>", "xt") | call feedkeys("Ax\<Esc>", "xt")
call feedkeys("dd", "xt") | call feedkeys("3u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("J", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("dw", "xt") | call feedkeys(">>", "xt")
%s/[ex]/E/g
call feedkeys("2dd", "xt") | call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
redo
call feedkeys("xp", "xt") | call feedkeys("x", "xt") | %normal Ax
call feedkeys("Ax\<Left>y\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
> | t.
>
call feedkeys("3x", "xt") | call feedkeys("qqxq", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%normal Ax | t. | redo
sort | call feedkeys("u", "xt") | call feedkeys("qqxq", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>", "xt")
call feedkeys("qqAx\<Esc>q", "xt")
call feedkeys("2u", "xt") | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("@q", "xt")
redo | call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("dd", "xt")
d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
undo | t.
call feedkeys("ox\<CR>y\<Esc>", "xt") | call feedkeys("dw", "xt") | call feedkeys("qqddq", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2\<C-r>", "xt")
call feedkeys("$", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ox\<Esc>", "xt") | %normal Ax
sort | call feedkeys("yyp", "xt") | call feedkeys("ddp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>u", "xt") | j
g/[ex]/d
call feedkeys("yyp", "xt") | call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("dw", "xt") | g/[ex]/d
call feedkeys("G", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt")
call feedkeys("\<C-r>", "xt")
2,3d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ox\<Esc>", "xt")
2,3d | call feedkeys("D", "xt") | call feedkeys("rZ", "xt")
call feedkeys("ox\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("u", "xt") | %normal Ax | %normal Ax
call feedkeys("~", "xt") | call feedkeys("2@q", "xt") | call feedkeys("Ox\<Esc>", "xt")
call feedkeys("ccQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("p", "xt") | call feedkeys("~", "xt") | d
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("~", "xt")
redo | call feedkeys("$", "xt")
call feedkeys("@q", "xt") | call feedkeys("J", "xt") | call feedkeys("xp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ddp", "xt")
call feedkeys("2\<C-r>", "xt") | call feedkeys("ccQ\<Esc>", "xt")
t.
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2u", "xt") | call feedkeys("u", "xt")
call feedkeys("3u", "xt") | call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("u", "xt")
call feedkeys("2dd", "xt") | call feedkeys("$", "xt") | call feedkeys("j", "xt")
call feedkeys("p", "xt") | call feedkeys("3.", "xt") | call feedkeys("ix\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("dd", "xt")
call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
call feedkeys("\<C-r>", "xt") | call feedkeys("yyp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
j
call feedkeys("3ix\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("@q", "xt") | %normal Ax
call feedkeys("u", "xt") | call feedkeys("qqAx\<Esc>q", "xt") | 2,3d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("gg", "xt")
call feedkeys("u", "xt") | call feedkeys("qqAx\<Esc>q", "xt")
call feedkeys("3u", "xt") | call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("u", "xt") | undo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
2,3d
call feedkeys("j", "xt")
j
call feedkeys("3J", "xt") | call feedkeys("x", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("<<", "xt") | call feedkeys("\<C-r>", "xt") | undo
g/[ex]/d | call feedkeys("x", "xt") | call feedkeys("\<C-r>", "xt")
call feedkeys("2@q", "xt") | call feedkeys("\<C-r>", "xt")
call feedkeys("u", "xt") | call feedkeys("P", "xt") | call feedkeys("J", "xt")
call feedkeys("\<C-r>", "xt") | call feedkeys("2u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(".", "xt")
call feedkeys("$", "xt") | call feedkeys("p", "xt") | call feedkeys("xp", "xt")
call feedkeys("p", "xt") | call feedkeys("qqxq", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqAx\<Esc>q", "xt")
call feedkeys("2\<C-r>", "xt")
call feedkeys("G", "xt")
call feedkeys("P", "xt") | call feedkeys("ddp", "xt")
call feedkeys("2u", "xt") | call feedkeys("Ax\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2\<C-r>", "xt") | call feedkeys("2\<C-r>", "xt") | j
call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("w", "xt") | %s/[ex]/E/g | call feedkeys("g~~", "xt")
call feedkeys("qqddq", "xt") | call feedkeys(".", "xt") | %s/[ex]/E/g
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%s/[ex]/E/g | call feedkeys("qqddq", "xt")
call feedkeys("dd", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("j", "xt") | call feedkeys("yyp", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("<<", "xt") | call feedkeys("@q", "xt")
g/[ex]/normal Ax | d
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("@q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("P", "xt") | call feedkeys("0", "xt") | call feedkeys("k", "xt")
call feedkeys("x", "xt") | call feedkeys("@q", "xt")
call feedkeys("3u", "xt") | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("dd", "xt")
call feedkeys("\<C-r>", "xt")
call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("~", "xt") | call feedkeys("Ax\<Esc>", "xt") | redo
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2@q", "xt") | call feedkeys("ccQ\<Esc>", "xt")
call feedkeys("2@q", "xt")
call feedkeys(">>", "xt") | t. | t.
call feedkeys("2dd", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("P", "xt") | t.
call feedkeys(".", "xt")
redo
call feedkeys("yyp", "xt") | call feedkeys("dw", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqddq", "xt") | call feedkeys("3.", "xt")
normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
put ="new" | call feedkeys("yyp", "xt")
call feedkeys("p", "xt") | sort
call feedkeys("gg", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("qqxq", "xt") | call feedkeys("u", "xt")
call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("gg", "xt") | call feedkeys("2\<C-r>", "xt")
call feedkeys("gg", "xt") | call feedkeys("3x", "xt")
call feedkeys("J", "xt") | call feedkeys("rZ", "xt") | call feedkeys("ccQ\<Esc>", "xt")
call feedkeys("Ax\<Esc>", "xt")
call feedkeys("2@q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("D", "xt") | call feedkeys("P", "xt")
call feedkeys("P", "xt") | call feedkeys("0", "xt")
call feedkeys("u", "xt")
call feedkeys("qqAx\<Esc>q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2@q", "xt")
call feedkeys("$", "xt") | call feedkeys("g~~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqddq", "xt") | call feedkeys("j", "xt") | call feedkeys("qqxq", "xt")
call feedkeys("k", "xt") | call feedkeys("D", "xt") | call feedkeys("J", "xt")
call feedkeys("g~~", "xt") | call feedkeys("qqddq", "xt") | call feedkeys("P", "xt")
call feedkeys("u", "xt") | call feedkeys("j", "xt") | call feedkeys("dd", "xt")
call feedkeys("ddp", "xt") | put ="new"
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(">>", "xt") | call feedkeys("ox\<CR>y\<Esc>", "xt") | call feedkeys("qqddq", "xt")
call feedkeys("3u", "xt") | 2,3d | call feedkeys("~", "xt")
%s/[ex]/E/g | call feedkeys("dd", "xt")
undo
call feedkeys("k", "xt") | call feedkeys("j", "xt") | call feedkeys("rZ", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2@q", "xt")
call feedkeys("ox\<CR>y\<Esc>", "xt") | normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("w", "xt")
2,3d | call feedkeys("Ax\<Left>y\<Esc>", "xt")
call feedkeys("dd", "xt") | call feedkeys("k", "xt") | %s/[ex]/E/g
call feedkeys("J", "xt") | call feedkeys("u", "xt") | call feedkeys("u", "xt")
call feedkeys("u", "xt") | g/[ex]/d | call feedkeys("2\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>u", "xt") | s/[ex]/E/ | call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("u", "xt") | call feedkeys("0", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("xp", "xt")
j | put ="new" | call feedkeys("dd", "xt")
> | call feedkeys("G", "xt")
call feedkeys("J", "xt") | g/[ex]/d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("\<C-a>", "xt") | call feedkeys("0", "xt")
call feedkeys("\<C-r>", "xt")
call feedkeys("p", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt") | put ="new"
j
normal Ax | call feedkeys("2u", "xt") | call feedkeys("qqAx\<Esc>q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("2dd", "xt") | call feedkeys("ox\<Esc>", "xt")
m0 | undo | call feedkeys("dd", "xt")
j | call feedkeys("\<C-r>", "xt")
call feedkeys("3ix\<Esc>", "xt") | call feedkeys("\<C-r>", "xt")
call feedkeys("3u", "xt") | s/[ex]/E/ | call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("p", "xt")
call feedkeys("u", "xt") | call feedkeys("$", "xt")
call feedkeys("dd", "xt") | s/[ex]/E/ | sort
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3x", "xt")
call feedkeys("3ix\<Esc>", "xt") | normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(".", "xt") | call feedkeys("Ox\<Esc>", "xt") | sort
undo | call feedkeys("2dd", "xt") | %normal Ax
call feedkeys("j", "xt") | call feedkeys("Ax\<Esc>", "xt")
call feedkeys("qqddq", "xt") | call feedkeys("ox\<CR>y\<Esc>", "xt")
call feedkeys("2dd", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2dd", "xt") | call feedkeys("rZ", "xt") | call feedkeys("@q", "xt")
call feedkeys("3u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
s/[ex]/E/ | t. | call feedkeys("Ax\<Left>y\<Esc>", "xt")
normal Ax | m0 | j
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
2,3d | call feedkeys("2dd", "xt") | call feedkeys("$", "xt")
call feedkeys("3.", "xt") | call feedkeys("2\<C-r>", "xt") | sort
call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
2,3d | call feedkeys("Ax\<Esc>", "xt") | j
call feedkeys("0", "xt") | call feedkeys("cwQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
sort | >
2,3d
call feedkeys("2u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("\<C-r>", "xt")
call feedkeys("p", "xt") | call feedkeys("yyp", "xt") | call feedkeys("2dd", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
sort
g/[ex]/normal Ax | call feedkeys("yyp", "xt")
call feedkeys("gg", "xt")
call feedkeys("cwQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>", "xt")
m0 | call feedkeys("p", "xt") | call feedkeys("u", "xt")
call feedkeys("Ax\<C-g>uy\<Esc>", "xt") | call feedkeys("dd", "xt")
call feedkeys("qqddq", "xt") | normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%s/[ex]/E/g | call feedkeys("@q", "xt")
call feedkeys("dd", "xt")
d | call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("cwQ\<Esc>", "xt") | call feedkeys("<<", "xt")
call feedkeys("3J", "xt")
undo | call feedkeys("rZ", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2\<C-r>", "xt") | call feedkeys("qqddq", "xt") | call feedkeys("k", "xt")
normal Ax | call feedkeys("2\<C-r>", "xt")
call feedkeys("u", "xt") | call feedkeys("$", "xt")
call feedkeys("Ax\<C-g>uy\<Esc>", "xt") | call feedkeys("3.", "xt") | call feedkeys("dd", "xt")
%s/[ex]/E/g | put ="new"
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("u", "xt") | call feedkeys("3.", "xt") | redo
%normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%normal Ax | call feedkeys("u", "xt") | call feedkeys("J", "xt")
call feedkeys("2\<C-r>", "xt") | call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("rZ", "xt") | call feedkeys("ddp", "xt") | call feedkeys("<<", "xt")
t.
call feedkeys("G", "xt") | undo | d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
sort | call feedkeys("ddp", "xt") | call feedkeys("<<", "xt")
call feedkeys("Ox\<Esc>", "xt")
call feedkeys("<<", "xt") | call feedkeys("w", "xt")
call feedkeys("0", "xt") | call feedkeys("P", "xt") | call feedkeys("cwQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqddq", "xt") | call feedkeys("\<C-r>", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
j | call feedkeys("dd", "xt")
call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("ddp", "xt") | call feedkeys("qqddq", "xt")
t. | call feedkeys("cwQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("@q", "xt") | call feedkeys("rZ", "xt")
call feedkeys("Ax\<C-g>uy\<Esc>", "xt") | call feedkeys("3ix\<Esc>", "xt") | call feedkeys("P", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ox\<Esc>", "xt") | call feedkeys("\<C-a>", "xt") | call feedkeys("2dd", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("u", "xt") | m0
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("<<", "xt") | call feedkeys("x", "xt")
call feedkeys("D", "xt") | %s/[ex]/E/g | g/[ex]/normal Ax
call feedkeys("qqAx\<Esc>q", "xt") | g/[ex]/normal Ax | call feedkeys("ccQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("dw", "xt") | call feedkeys("qqxq", "xt") | call feedkeys(".", "xt")
call feedkeys("\<C-a>", "xt") | call feedkeys("xp", "xt")
call feedkeys("qqAx\<Esc>q", "xt")
call feedkeys("qqxq", "xt")
s/[ex]/E/ | call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
2,3d | call feedkeys("\<C-r>", "xt") | call feedkeys("x", "xt")
call feedkeys("k", "xt")
g/[ex]/normal Ax | call feedkeys("~", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("p", "xt") | call feedkeys("<<", "xt")
normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
t. | g/[ex]/normal Ax | call feedkeys("Ox\<Esc>", "xt")
call feedkeys("ccQ\<Esc>", "xt") | call feedkeys("ox\<CR>y\<Esc>", "xt") | call feedkeys("2\<C-r>", "xt")
call feedkeys("\<C-r>", "xt")
call feedkeys("qqxq", "xt") | call feedkeys("w", "xt") | call feedkeys("rZ", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("dw", "xt")
call feedkeys("rZ", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("0", "xt")
g/[ex]/d | call feedkeys("ix\<Esc>", "xt") | normal Ax
call feedkeys("p", "xt") | > | call feedkeys("yyp", "xt")
call feedkeys(".", "xt")
call feedkeys("dw", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
g/[ex]/d | call feedkeys("Ox\<Esc>", "xt") | call feedkeys("J", "xt")
call feedkeys("D", "xt") | call feedkeys("ox\<Esc>", "xt") | j
call feedkeys("dw", "xt") | call feedkeys("<<", "xt") | call feedkeys("Ax\<Esc>u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("w", "xt")
call feedkeys("0", "xt")
call feedkeys("ddp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3ix\<Esc>", "xt")
g/[ex]/d | call feedkeys("k", "xt") | call feedkeys("Ax\<Esc>", "xt")
undo | call feedkeys("3J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
d | call feedkeys("D", "xt")
call feedkeys("2dd", "xt") | call feedkeys("rZ", "xt") | t.
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
put ="new" | s/[ex]/E/ | call feedkeys("3.", "xt")
call feedkeys("g~~", "xt") | call feedkeys("ix\<Esc>", "xt") | g/[ex]/normal Ax
%normal Ax | call feedkeys(">>", "xt") | call feedkeys("D", "xt")
call feedkeys("3.", "xt") | %s/[ex]/E/g
call feedkeys("qqddq", "xt") | call feedkeys("3J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
put ="new" | j | call feedkeys("qqAx\<Esc>q", "xt")
call feedkeys("~", "xt")
call feedkeys("gg", "xt") | normal Ax | call feedkeys(".", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2@q", "xt") | call feedkeys("Ox\<Esc>", "xt") | call feedkeys("@q", "xt")
call feedkeys("\<C-r>", "xt") | call feedkeys("J", "xt")
call feedkeys("P", "xt")
call feedkeys(".", "xt") | call feedkeys("ox\<CR>y\<Esc>", "xt")
g/[ex]/normal Ax | call feedkeys("rZ", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2dd", "xt") | call feedkeys("@q", "xt") | call feedkeys("ccQ\<Esc>", "xt")
call feedkeys("2\<C-r>", "xt") | call feedkeys("rZ", "xt")
call feedkeys("@q", "xt") | call feedkeys("\<C-a>", "xt") | g/[ex]/d
j | call feedkeys("x", "xt") | call feedkeys("<<", "xt")
call feedkeys("x", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys(".", "xt") | call feedkeys("u", "xt") | call feedkeys("2\<C-r>", "xt")
call feedkeys("2dd", "xt") | call feedkeys("yyp", "xt") | call feedkeys("0", "xt")
call feedkeys("Ax\<Esc>u", "xt") | call feedkeys("2u", "xt") | call feedkeys("cwQ\<Esc>", "xt")
call feedkeys("u", "xt") | call feedkeys("u", "xt") | call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
put ="new" | call feedkeys("qqxq", "xt") | 2,3d
call feedkeys("u", "xt") | call feedkeys("Ax\<Esc>", "xt") | call feedkeys("\<C-a>", "xt")
call feedkeys("ix\<Esc>", "xt")
call feedkeys("dw", "xt") | call feedkeys("gg", "xt") | call feedkeys("k", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
sort | call feedkeys("P", "xt") | %normal Ax
call feedkeys("dw", "xt")
call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("u", "xt") | %normal Ax
call feedkeys("P", "xt")
call feedkeys("2dd", "xt") | call feedkeys("u", "xt") | call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("2dd", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ix\<Esc>", "xt")
> | call feedkeys("g~~", "xt") | call feedkeys("J", "xt")
> | call feedkeys("~", "xt") | %normal Ax
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqxq", "xt") | call feedkeys("p", "xt")
m0 | call feedkeys("3.", "xt") | call feedkeys("$", "xt")
call feedkeys("G", "xt") | call feedkeys("u", "xt")
call feedkeys("3x", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2u", "xt") | undo
undo
call feedkeys("P", "xt") | call feedkeys("g~~", "xt")
normal Ax | call feedkeys("3J", "xt")
s/[ex]/E/ | call feedkeys("ddp", "xt") | call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
put ="new" | call feedkeys("2u", "xt")
call feedkeys("2u", "xt") | sort
call feedkeys("~", "xt")
call feedkeys("j", "xt")
call feedkeys("xp", "xt") | call feedkeys("Ax\<Esc>", "xt") | call feedkeys("$", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>u", "xt")
call feedkeys("$", "xt")
s/[ex]/E/ | d | %normal Ax
call feedkeys("Ax\<Left>y\<Esc>", "xt") | call feedkeys("3x", "xt")
call feedkeys("3ix\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ix\<Esc>", "xt")
call feedkeys("<<", "xt")
call feedkeys("yyp", "xt") | call feedkeys("Ax\<Esc>", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("p", "xt")
call feedkeys("p", "xt") | t.
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("G", "xt") | call feedkeys("ddp", "xt")
call feedkeys("dw", "xt")
t. | call feedkeys("u", "xt") | call feedkeys("j", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("cwQ\<Esc>", "xt") | call feedkeys("u", "xt") | call feedkeys("\<C-r>", "xt")
d | call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ix\<Esc>", "xt") | call feedkeys("u", "xt")
call feedkeys("ccQ\<Esc>", "xt") | m0 | call feedkeys("P", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("2\<C-r>", "xt")
call feedkeys("ox\<Esc>", "xt")
undo | call feedkeys("3.", "xt") | call feedkeys("qqddq", "xt")
redo
call feedkeys("3ix\<Esc>", "xt") | call feedkeys("@q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("gg", "xt") | call feedkeys("Ax\<C-g>uy\<Esc>", "xt") | call feedkeys("u", "xt")
call feedkeys("~", "xt")
call feedkeys("3J", "xt") | call feedkeys("Ax\<Esc>u", "xt") | call feedkeys("3ix\<Esc>", "xt")
call feedkeys("gg", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("\<C-a>", "xt") | %normal Ax
call feedkeys("cwQ\<Esc>", "xt")
call feedkeys("qqddq", "xt")
call feedkeys("J", "xt")
call feedkeys("2\<C-r>", "xt") | redo | call feedkeys("0", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
%normal Ax | call feedkeys("k", "xt") | normal Ax
call feedkeys("qqAx\<Esc>q", "xt")
call feedkeys("u", "xt") | sort
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ax\<Esc>", "xt") | call feedkeys("3.", "xt") | g/[ex]/normal Ax
call feedkeys("D", "xt") | call feedkeys("qqAx\<Esc>q", "xt") | g/[ex]/normal Ax
call feedkeys("3J", "xt") | call feedkeys("cwQ\<Esc>", "xt")
g/[ex]/d | call feedkeys("<<", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("xp", "xt") | call feedkeys("qqAx\<Esc>q", "xt") | call feedkeys("3u", "xt")
call feedkeys("3J", "xt")
sort
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
s/[ex]/E/
call feedkeys(".", "xt") | d
call feedkeys("2u", "xt") | call feedkeys("2dd", "xt") | call feedkeys("ox\<CR>y\<Esc>", "xt")
m0 | call feedkeys("\<C-r>", "xt") | call feedkeys("rZ", "xt")
call feedkeys("~", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3x", "xt")
call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
2,3d | call feedkeys("dw", "xt")
call feedkeys("gg", "xt") | call feedkeys("$", "xt") | sort
call feedkeys("ox\<Esc>", "xt") | normal Ax
call feedkeys("~", "xt") | call feedkeys("g~~", "xt") | j
call feedkeys("J", "xt") | call feedkeys("cwQ\<Esc>", "xt") | call feedkeys("3J", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("k", "xt")
call feedkeys("ix\<Esc>", "xt") | %s/[ex]/E/g | 2,3d
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("xp", "xt") | call feedkeys("u", "xt")
call feedkeys("dw", "xt") | call feedkeys("u", "xt") | call feedkeys("g~~", "xt")
call feedkeys("~", "xt") | call feedkeys("ix\<Esc>", "xt")
call feedkeys("k", "xt") | undo | call feedkeys("$", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("p", "xt") | call feedkeys("ix\<Esc>", "xt") | d
call feedkeys("$", "xt")
call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
t. | call feedkeys(">>", "xt") | t.
call feedkeys("x", "xt") | call feedkeys("\<C-r>", "xt")
g/[ex]/d | call feedkeys("J", "xt") | call feedkeys("Ax\<Left>y\<Esc>", "xt")
>
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
t. | redo
call feedkeys("ox\<CR>y\<Esc>", "xt") | call feedkeys("G", "xt") | call feedkeys("u", "xt")
call feedkeys("qqAx\<Esc>q", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("ox\<Esc>", "xt")
call feedkeys("\<C-a>", "xt") | call feedkeys("3u", "xt") | call feedkeys("x", "xt")
g/[ex]/d
call feedkeys("ix\<Esc>", "xt") | call feedkeys("u", "xt") | call feedkeys("$", "xt")
call feedkeys("\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("~", "xt") | normal Ax | call feedkeys("3ix\<Esc>", "xt")
call feedkeys("Ax\<Esc>u", "xt") | call feedkeys("J", "xt")
call feedkeys("u", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("qqxq", "xt")
> | call feedkeys("0", "xt")
call feedkeys("2dd", "xt") | call feedkeys("u", "xt")
call feedkeys("u", "xt") | call feedkeys("2\<C-r>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["a b c", "d e f"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("Ox\<Esc>", "xt") | call feedkeys("Ax\<Esc>", "xt") | call feedkeys("D", "xt")
g/[ex]/normal Ax | sort | call feedkeys("dw", "xt")
call feedkeys("xp", "xt") | call feedkeys("G", "xt") | call feedkeys("Ax\<C-g>uy\<Esc>", "xt")
call feedkeys("2dd", "xt") | call feedkeys("xp", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["", "x", "", "abc abc abc"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("<<", "xt") | d
call feedkeys("P", "xt")
g/[ex]/d | j | call feedkeys("cwQ\<Esc>", "xt")
echo string(getline(1,"$"))
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8 | let g:T = ["one two three", "four five", "six", "seven eight nine", "ten"] | 0put =g:T | $delete _ | call feedkeys("gg", "xt")
call feedkeys("3x", "xt") | call feedkeys("$", "xt")
call feedkeys("ccQ\<Esc>", "xt")
echo string(getline(1,"$"))
