set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Up>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Down>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Home>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<End>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Right>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("i\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>uc\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>u\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Left>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("ia\<Right>\<Right>b\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<CR>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Up>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Down>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Home>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<End>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Right>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("A\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>uc\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>u\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Left>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aa\<Right>\<Right>b\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<CR>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Aab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Up>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Down>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Home>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<End>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Right>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("o\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>uc\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>u\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Left>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oa\<Right>\<Right>b\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<CR>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("oab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Up>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Down>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Home>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<End>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Right>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3i\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>uc\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>u\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Left>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3ia\<Right>\<Right>b\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<CR>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("3iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Up>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Down>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Home>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<End>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Right>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cw\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>uc\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>u\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Left>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwa\<Right>\<Right>b\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<CR>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("cwab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Up>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Down>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Home>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<End>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Right>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2ea\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>uc\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>u\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Left>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaa\<Right>\<Right>b\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaa\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<CR>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("2eaab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<Left>c\<Right>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Up>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Up>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Down>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Down>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Home>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Home>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<End>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<End>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Right>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("I\<Right>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>uc\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>uc\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>u\<Left>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<C-g>u\<Left>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Left>d\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>c\<Left>d\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Ia\<Right>\<Right>b\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Ia\<Right>\<Right>b\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<CR>c\<Esc>", 'xt')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("uu", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("u\<C-r>", "xt")')
echo string(getline(1,'$'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("j.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
"---
set tabstop=4 shiftwidth=4 noexpandtab nonumber
let g:T = ["abc def", "x\ty", "", "日本語abc"]
0put =g:T
normal! gg0w
silent call feedkeys("Iab\<Left>\<CR>c\<Esc>", 'xt')
call execute('call feedkeys("jj0.", "xt")')
echo string(getline(1,'$')) line('.') col('.') line("'[") col("'[") line("']") col("']") line("'^") col("'^") line("'.") col("'.") string(getreg('.')) string(getreg('"'))
