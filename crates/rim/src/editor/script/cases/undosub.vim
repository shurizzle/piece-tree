set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 3G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 2G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "x", "b", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 5G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 4G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "", "x", "b", "a", "abc", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "a", "x", "", "", "a", "x", "abc", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 6G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["", "b", "x", "a", "x", "a", "a", "a", "b", "b", "x", "a", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 7G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "b", "x", "b", "", "ab", "abc", "a", "", "a", "abc", ""]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 8G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "x", "a", "", "ab", "ab", "b", "x", "ab", "a", "a", "x", "a", "abc", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 10G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "abc", "a", "a", "", "a", "b", "b", "a", "abc", "abc", "", "abc", "abc", "a", "x", "", "b", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '%s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '%s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '%s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '%s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '%s/\n\n/_/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '%s/a\nb/Q/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '%s/[xb]\n/Z/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '2,$s/\n/+/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '%s/\n/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '%s/b/\r/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '%s/\n.\n/#/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-1s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-1s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '$s/\n/!/'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-1s/b\n/X/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "a", "ab", "ab", "a", "abc", "a", "b", "b", "", "a", "a", "a", "abc", "abc", "b", "", "x", "b", "abc", "x", "b", "", "b", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-1s/\n$//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "a", "abc", "abc", "b", "a", "ab", "x", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "a", "abc", "abc", "b", "a", "ab", "x", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "a", "abc", "abc", "b", "a", "ab", "x", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "a", "abc", "abc", "b", "a", "ab", "x", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "a", "abc", "abc", "b", "a", "ab", "x", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "a", "abc", "abc", "b", "a", "ab", "x", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "a", "abc", "abc", "b", "a", "ab", "x", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "a", "abc", "abc", "b", "a", "ab", "x", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "a", "abc", "abc", "b", "a", "ab", "x", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "a", "abc", "abc", "b", "a", "ab", "x", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "x", "x", "a", "a", "b", "b", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "x", "x", "a", "a", "b", "b", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "x", "x", "a", "a", "b", "b", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "x", "x", "a", "a", "b", "b", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "x", "x", "a", "a", "b", "b", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "x", "x", "a", "a", "b", "b", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "x", "x", "a", "a", "b", "b", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "x", "x", "a", "a", "b", "b", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "x", "x", "a", "a", "b", "b", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "x", "x", "a", "a", "b", "b", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "abc", "a", "a", "a", "", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "abc", "a", "a", "a", "", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "abc", "a", "a", "a", "", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "abc", "a", "a", "a", "", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "abc", "a", "a", "a", "", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "abc", "a", "a", "a", "", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "abc", "a", "a", "a", "", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "abc", "a", "a", "a", "", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "abc", "a", "a", "a", "", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "abc", "a", "a", "a", "", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 11G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "x", "abc", "b", "x", "abc", "x", "b", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "x", "abc", "b", "x", "abc", "x", "b", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "x", "abc", "b", "x", "abc", "x", "b", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "x", "abc", "b", "x", "abc", "x", "b", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "x", "abc", "b", "x", "abc", "x", "b", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "x", "abc", "b", "x", "abc", "x", "b", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "x", "abc", "b", "x", "abc", "x", "b", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "x", "abc", "b", "x", "abc", "x", "b", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "x", "abc", "b", "x", "abc", "x", "b", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "ab", "ab", "x", "abc", "b", "x", "abc", "x", "b", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "ab", "b", "x", "b", "b", "b", "x", "b", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "ab", "b", "x", "b", "b", "b", "x", "b", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "ab", "b", "x", "b", "b", "b", "x", "b", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "ab", "b", "x", "b", "b", "b", "x", "b", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "ab", "b", "x", "b", "b", "b", "x", "b", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "ab", "b", "x", "b", "b", "b", "x", "b", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "ab", "b", "x", "b", "b", "b", "x", "b", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "ab", "b", "x", "b", "b", "b", "x", "b", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "ab", "b", "x", "b", "b", "b", "x", "b", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "ab", "b", "x", "b", "b", "b", "x", "b", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "a", "a", "a", "x", "ab", "", "", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "a", "a", "a", "x", "ab", "", "", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "a", "a", "a", "x", "ab", "", "", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "a", "a", "a", "x", "ab", "", "", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "a", "a", "a", "x", "ab", "", "", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "a", "a", "a", "x", "ab", "", "", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "a", "a", "a", "x", "ab", "", "", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "a", "a", "a", "x", "ab", "", "", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "a", "a", "a", "x", "ab", "", "", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "a", "a", "a", "x", "ab", "", "", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 12G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "ab", "x", "b", "a", "b", "b", "abc", "x", "x", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "ab", "x", "b", "a", "b", "b", "abc", "x", "x", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "ab", "x", "b", "a", "b", "b", "abc", "x", "x", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "ab", "x", "b", "a", "b", "b", "abc", "x", "x", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "ab", "x", "b", "a", "b", "b", "abc", "x", "x", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "ab", "x", "b", "a", "b", "b", "abc", "x", "x", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "ab", "x", "b", "a", "b", "b", "abc", "x", "x", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "ab", "x", "b", "a", "b", "b", "abc", "x", "x", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "ab", "x", "b", "a", "b", "b", "abc", "x", "x", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "abc", "ab", "x", "b", "a", "b", "b", "abc", "x", "x", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "b", "a", "a", "ab", "abc", "abc", "b", "a", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "b", "a", "a", "ab", "abc", "abc", "b", "a", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "b", "a", "a", "ab", "abc", "abc", "b", "a", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "b", "a", "a", "ab", "abc", "abc", "b", "a", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "b", "a", "a", "ab", "abc", "abc", "b", "a", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "b", "a", "a", "ab", "abc", "abc", "b", "a", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "b", "a", "a", "ab", "abc", "abc", "b", "a", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "b", "a", "a", "ab", "abc", "abc", "b", "a", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "b", "a", "a", "ab", "abc", "abc", "b", "a", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "b", "a", "a", "ab", "abc", "abc", "b", "a", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "x", "x", "b", "a", "ab", "b", "abc", "ab", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "x", "x", "b", "a", "ab", "b", "abc", "ab", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "x", "x", "b", "a", "ab", "b", "abc", "ab", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "x", "x", "b", "a", "ab", "b", "abc", "ab", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "x", "x", "b", "a", "ab", "b", "abc", "ab", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "x", "x", "b", "a", "ab", "b", "abc", "ab", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "x", "x", "b", "a", "ab", "b", "abc", "ab", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "x", "x", "b", "a", "ab", "b", "abc", "ab", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "x", "x", "b", "a", "ab", "b", "abc", "ab", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "x", "x", "b", "a", "ab", "b", "abc", "ab", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 13G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "ab", "ab", "a", "a", "x", "a", "abc", "a", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "ab", "ab", "a", "a", "x", "a", "abc", "a", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "ab", "ab", "a", "a", "x", "a", "abc", "a", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "ab", "ab", "a", "a", "x", "a", "abc", "a", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "ab", "ab", "a", "a", "x", "a", "abc", "a", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "ab", "ab", "a", "a", "x", "a", "abc", "a", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "ab", "ab", "a", "a", "x", "a", "abc", "a", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "ab", "ab", "a", "a", "x", "a", "abc", "a", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "ab", "ab", "a", "a", "x", "a", "abc", "a", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "ab", "ab", "a", "a", "x", "a", "abc", "a", "ab", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "x", "ab", "a", "b", "ab", "ab", "a", "abc", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "x", "ab", "a", "b", "ab", "ab", "a", "abc", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "x", "ab", "a", "b", "ab", "ab", "a", "abc", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "x", "ab", "a", "b", "ab", "ab", "a", "abc", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "x", "ab", "a", "b", "ab", "ab", "a", "abc", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "x", "ab", "a", "b", "ab", "ab", "a", "abc", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "x", "ab", "a", "b", "ab", "ab", "a", "abc", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "x", "ab", "a", "b", "ab", "ab", "a", "abc", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "x", "ab", "a", "b", "ab", "ab", "a", "abc", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "abc", "x", "ab", "a", "b", "ab", "ab", "a", "abc", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "a", "x", "abc", "abc", "x", "a", "x", "a", "", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "a", "x", "abc", "abc", "x", "a", "x", "a", "", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "a", "x", "abc", "abc", "x", "a", "x", "a", "", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "a", "x", "abc", "abc", "x", "a", "x", "a", "", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "a", "x", "abc", "abc", "x", "a", "x", "a", "", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "a", "x", "abc", "abc", "x", "a", "x", "a", "", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "a", "x", "abc", "abc", "x", "a", "x", "a", "", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "a", "x", "abc", "abc", "x", "a", "x", "a", "", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "a", "x", "abc", "abc", "x", "a", "x", "a", "", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "x", "a", "x", "abc", "abc", "x", "a", "x", "a", "", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 14G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "ab", "abc", "x", "abc", "abc", "abc", "x", "a", "x", "x", "a", "ab", "x", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "ab", "abc", "x", "abc", "abc", "abc", "x", "a", "x", "x", "a", "ab", "x", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "ab", "abc", "x", "abc", "abc", "abc", "x", "a", "x", "x", "a", "ab", "x", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "ab", "abc", "x", "abc", "abc", "abc", "x", "a", "x", "x", "a", "ab", "x", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "ab", "abc", "x", "abc", "abc", "abc", "x", "a", "x", "x", "a", "ab", "x", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "ab", "abc", "x", "abc", "abc", "abc", "x", "a", "x", "x", "a", "ab", "x", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "ab", "abc", "x", "abc", "abc", "abc", "x", "a", "x", "x", "a", "ab", "x", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "ab", "abc", "x", "abc", "abc", "abc", "x", "a", "x", "x", "a", "ab", "x", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "ab", "abc", "x", "abc", "abc", "abc", "x", "a", "x", "x", "a", "ab", "x", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "ab", "abc", "x", "abc", "abc", "abc", "x", "a", "x", "x", "a", "ab", "x", "", "abc"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "b", "a", "abc", "x", "abc", "ab", "a", "ab", "ab", "b", "x", "b", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "b", "a", "abc", "x", "abc", "ab", "a", "ab", "ab", "b", "x", "b", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "b", "a", "abc", "x", "abc", "ab", "a", "ab", "ab", "b", "x", "b", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "b", "a", "abc", "x", "abc", "ab", "a", "ab", "ab", "b", "x", "b", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "b", "a", "abc", "x", "abc", "ab", "a", "ab", "ab", "b", "x", "b", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "b", "a", "abc", "x", "abc", "ab", "a", "ab", "ab", "b", "x", "b", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "b", "a", "abc", "x", "abc", "ab", "a", "ab", "ab", "b", "x", "b", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "b", "a", "abc", "x", "abc", "ab", "a", "ab", "ab", "b", "x", "b", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "b", "a", "abc", "x", "abc", "ab", "a", "ab", "ab", "b", "x", "b", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "b", "a", "abc", "x", "abc", "ab", "a", "ab", "ab", "b", "x", "b", "", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "abc", "b", "ab", "abc", "ab", "b", "abc", "b", "b", "abc", "b", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "abc", "b", "ab", "abc", "ab", "b", "abc", "b", "b", "abc", "b", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "abc", "b", "ab", "abc", "ab", "b", "abc", "b", "b", "abc", "b", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "abc", "b", "ab", "abc", "ab", "b", "abc", "b", "b", "abc", "b", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "abc", "b", "ab", "abc", "ab", "b", "abc", "b", "b", "abc", "b", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "abc", "b", "ab", "abc", "ab", "b", "abc", "b", "b", "abc", "b", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "abc", "b", "ab", "abc", "ab", "b", "abc", "b", "b", "abc", "b", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "abc", "b", "ab", "abc", "ab", "b", "abc", "b", "b", "abc", "b", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "abc", "b", "ab", "abc", "ab", "b", "abc", "b", "b", "abc", "b", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["abc", "abc", "b", "ab", "abc", "ab", "b", "abc", "b", "b", "abc", "b", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 16G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "ab", "a", "a", "ab", "b", "a", "abc", "abc", "ab", "b", "abc", "abc", "x", "abc", "ab", "x", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "ab", "a", "a", "ab", "b", "a", "abc", "abc", "ab", "b", "abc", "abc", "x", "abc", "ab", "x", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "ab", "a", "a", "ab", "b", "a", "abc", "abc", "ab", "b", "abc", "abc", "x", "abc", "ab", "x", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "ab", "a", "a", "ab", "b", "a", "abc", "abc", "ab", "b", "abc", "abc", "x", "abc", "ab", "x", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "ab", "a", "a", "ab", "b", "a", "abc", "abc", "ab", "b", "abc", "abc", "x", "abc", "ab", "x", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "ab", "a", "a", "ab", "b", "a", "abc", "abc", "ab", "b", "abc", "abc", "x", "abc", "ab", "x", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "ab", "a", "a", "ab", "b", "a", "abc", "abc", "ab", "b", "abc", "abc", "x", "abc", "ab", "x", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "ab", "a", "a", "ab", "b", "a", "abc", "abc", "ab", "b", "abc", "abc", "x", "abc", "ab", "x", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "ab", "a", "a", "ab", "b", "a", "abc", "abc", "ab", "b", "abc", "abc", "x", "abc", "ab", "x", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "ab", "a", "a", "ab", "b", "a", "abc", "abc", "ab", "b", "abc", "abc", "x", "abc", "ab", "x", "", "ab"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "ab", "x", "a", "ab", "x", "ab", "ab", "x", "a", "b", "abc", "abc", "b", "a", "ab", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "ab", "x", "a", "ab", "x", "ab", "ab", "x", "a", "b", "abc", "abc", "b", "a", "ab", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "ab", "x", "a", "ab", "x", "ab", "ab", "x", "a", "b", "abc", "abc", "b", "a", "ab", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "ab", "x", "a", "ab", "x", "ab", "ab", "x", "a", "b", "abc", "abc", "b", "a", "ab", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "ab", "x", "a", "ab", "x", "ab", "ab", "x", "a", "b", "abc", "abc", "b", "a", "ab", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "ab", "x", "a", "ab", "x", "ab", "ab", "x", "a", "b", "abc", "abc", "b", "a", "ab", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "ab", "x", "a", "ab", "x", "ab", "ab", "x", "a", "b", "abc", "abc", "b", "a", "ab", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "ab", "x", "a", "ab", "x", "ab", "ab", "x", "a", "b", "abc", "abc", "b", "a", "ab", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "ab", "x", "a", "ab", "x", "ab", "ab", "x", "a", "b", "abc", "abc", "b", "a", "ab", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "a", "ab", "x", "a", "ab", "x", "ab", "ab", "x", "a", "b", "abc", "abc", "b", "a", "ab", "", "", "a"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "x", "ab", "a", "b", "b", "abc", "ab", "b", "a", "abc", "x", "a", "b", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "x", "ab", "a", "b", "b", "abc", "ab", "b", "a", "abc", "x", "a", "b", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "x", "ab", "a", "b", "b", "abc", "ab", "b", "a", "abc", "x", "a", "b", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "x", "ab", "a", "b", "b", "abc", "ab", "b", "a", "abc", "x", "a", "b", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "x", "ab", "a", "b", "b", "abc", "ab", "b", "a", "abc", "x", "a", "b", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "x", "ab", "a", "b", "b", "abc", "ab", "b", "a", "abc", "x", "a", "b", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "x", "ab", "a", "b", "b", "abc", "ab", "b", "a", "abc", "x", "a", "b", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "x", "ab", "a", "b", "b", "abc", "ab", "b", "a", "abc", "x", "a", "b", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "x", "ab", "a", "b", "b", "abc", "ab", "b", "a", "abc", "x", "a", "b", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["a", "abc", "a", "x", "ab", "a", "b", "b", "abc", "ab", "b", "a", "abc", "x", "a", "b", "", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 20G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "x", "x", "b", "abc", "b", "a", "abc", "abc", "b", "abc", "abc", "b", "a", "abc", "x", "x", "x", "ab", "abc", "ab", "b", "a", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "x", "x", "b", "abc", "b", "a", "abc", "abc", "b", "abc", "abc", "b", "a", "abc", "x", "x", "x", "ab", "abc", "ab", "b", "a", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "x", "x", "b", "abc", "b", "a", "abc", "abc", "b", "abc", "abc", "b", "a", "abc", "x", "x", "x", "ab", "abc", "ab", "b", "a", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "x", "x", "b", "abc", "b", "a", "abc", "abc", "b", "abc", "abc", "b", "a", "abc", "x", "x", "x", "ab", "abc", "ab", "b", "a", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "x", "x", "b", "abc", "b", "a", "abc", "abc", "b", "abc", "abc", "b", "a", "abc", "x", "x", "x", "ab", "abc", "ab", "b", "a", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "x", "x", "b", "abc", "b", "a", "abc", "abc", "b", "abc", "abc", "b", "a", "abc", "x", "x", "x", "ab", "abc", "ab", "b", "a", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "x", "x", "b", "abc", "b", "a", "abc", "abc", "b", "abc", "abc", "b", "a", "abc", "x", "x", "x", "ab", "abc", "ab", "b", "a", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "x", "x", "b", "abc", "b", "a", "abc", "abc", "b", "abc", "abc", "b", "a", "abc", "x", "x", "x", "ab", "abc", "ab", "b", "a", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "x", "x", "b", "abc", "b", "a", "abc", "abc", "b", "abc", "abc", "b", "a", "abc", "x", "x", "x", "ab", "abc", "ab", "b", "a", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["x", "x", "x", "b", "abc", "b", "a", "abc", "abc", "b", "abc", "abc", "b", "a", "abc", "x", "x", "x", "ab", "abc", "ab", "b", "a", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "a", "ab", "x", "ab", "ab", "a", "ab", "x", "a", "a", "abc", "ab", "x", "abc", "ab", "abc", "a", "b", "a", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "a", "ab", "x", "ab", "ab", "a", "ab", "x", "a", "a", "abc", "ab", "x", "abc", "ab", "abc", "a", "b", "a", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "a", "ab", "x", "ab", "ab", "a", "ab", "x", "a", "a", "abc", "ab", "x", "abc", "ab", "abc", "a", "b", "a", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "a", "ab", "x", "ab", "ab", "a", "ab", "x", "a", "a", "abc", "ab", "x", "abc", "ab", "abc", "a", "b", "a", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "a", "ab", "x", "ab", "ab", "a", "ab", "x", "a", "a", "abc", "ab", "x", "abc", "ab", "abc", "a", "b", "a", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "a", "ab", "x", "ab", "ab", "a", "ab", "x", "a", "a", "abc", "ab", "x", "abc", "ab", "abc", "a", "b", "a", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "a", "ab", "x", "ab", "ab", "a", "ab", "x", "a", "a", "abc", "ab", "x", "abc", "ab", "abc", "a", "b", "a", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "a", "ab", "x", "ab", "ab", "a", "ab", "x", "a", "a", "abc", "ab", "x", "abc", "ab", "abc", "a", "b", "a", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "a", "ab", "x", "ab", "ab", "a", "ab", "x", "a", "a", "abc", "ab", "x", "abc", "ab", "abc", "a", "b", "a", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["b", "abc", "a", "ab", "x", "ab", "ab", "a", "ab", "x", "a", "a", "abc", "ab", "x", "abc", "ab", "abc", "a", "b", "a", "abc", "", "", "x"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "abc", "b", "x", "x", "abc", "abc", "x", "a", "b", "abc", "x", "x", "ab", "x", "b", "x", "x", "x", "ab", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "abc", "b", "x", "x", "abc", "abc", "x", "a", "b", "abc", "x", "x", "ab", "x", "b", "x", "x", "x", "ab", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "abc", "b", "x", "x", "abc", "abc", "x", "a", "b", "abc", "x", "x", "ab", "x", "b", "x", "x", "x", "ab", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "abc", "b", "x", "x", "abc", "abc", "x", "a", "b", "abc", "x", "x", "ab", "x", "b", "x", "x", "x", "ab", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/\n/-/g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "abc", "b", "x", "x", "abc", "abc", "x", "a", "b", "abc", "x", "x", "ab", "x", "b", "x", "x", "x", "ab", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "abc", "b", "x", "x", "abc", "abc", "x", "a", "b", "abc", "x", "x", "ab", "x", "b", "x", "x", "x", "ab", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/\n//'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "abc", "b", "x", "x", "abc", "abc", "x", "a", "b", "abc", "x", "x", "ab", "x", "b", "x", "x", "x", "ab", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "abc", "b", "x", "x", "abc", "abc", "x", "a", "b", "abc", "x", "x", "ab", "x", "b", "x", "x", "x", "ab", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-3s/\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "abc", "b", "x", "x", "abc", "abc", "x", "a", "b", "abc", "x", "x", "ab", "x", "b", "x", "x", "x", "ab", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 1G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
"---
set tabstop=8 nonumber noexpandtab shiftwidth=8
let g:T = ["ab", "b", "abc", "b", "x", "x", "abc", "abc", "x", "a", "b", "abc", "x", "x", "ab", "x", "b", "x", "x", "x", "ab", "", "", "", "b"]
0put =g:T
$delete _
call feedkeys("\<Esc>", "xt")
execute "normal! 25G"
execute '1,$-2s/b\n//g'
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") changenr()
normal! u
call feedkeys("\<Esc>", "xt")
echo string(getline(1,"$")) line(".") col(".") line("'[") line("']")
execute "normal! \<C-r>"
call feedkeys("\<Esc>", "xt")
echo line(".") col(".")
