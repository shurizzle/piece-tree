set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=-1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=0
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=1
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=2
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 9u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 2u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! g-
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! 3u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! iQ
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
earlier 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
later 99
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set undolevels=3
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! x
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr() undotree().seq_cur undotree().seq_last len(undotree().entries)
