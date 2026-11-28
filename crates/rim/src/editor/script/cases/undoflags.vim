set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g+"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! xu"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
earlier 2
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
undo 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=unix
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set nomodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! rz"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
substitute/./X/
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! g-"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ddp"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! Ahi"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set modified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! x"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
execute "normal! 2u"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
set ff=dos
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
later 1
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abcdefghijklmnopqrstuvwxyz", "second", "third"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
normal! gg
set nomodified
set invmodified
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
execute "normal! ix"
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
let &modified = 0
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") &modified &ff changenr()
