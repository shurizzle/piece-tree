set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos())
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(0))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(1))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(2))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(3))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(-1))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(99))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(1000))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(1001))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(1002))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(1003))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(1004))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(2147483648))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos('1'))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos('x'))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(1.5))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos([]))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos({}))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(function('abs')))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(v:true))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(v:null))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0

normal! j3l

normal! G$
echo string(getcurpos(4294968296))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos())
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(0))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(2))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(3))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(-1))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(99))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1000))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1001))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1002))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1003))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1004))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(2147483648))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos('1'))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos('x'))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1.5))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos([]))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos({}))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(function('abs')))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(v:true))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(v:null))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(4294968296))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos())
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(0))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(2))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(3))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(-1))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(99))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1000))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1001))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1002))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1003))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1004))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(2147483648))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos('1'))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos('x'))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1.5))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos([]))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos({}))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(function('abs')))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(v:true))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(v:null))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
split | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(4294968296))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos())
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(0))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(2))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(3))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(-1))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(99))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1000))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1001))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1002))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1003))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1004))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(2147483648))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos('1'))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos('x'))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(1.5))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos([]))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos({}))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(function('abs')))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(v:true))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(v:null))
"---
set tabstop=4 nonumber
let g:T = ["a\tb\tc", "abcdefghij", "日本語日本語"]
0put =g:T
normal! gg0
vsplit | split
normal! j3l
execute "normal! \<C-w>w"
normal! G$
echo string(getcurpos(4294968296))
